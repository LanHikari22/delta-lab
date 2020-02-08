#include <stdio.h>
#include <string.h>
#include "CL/cl.h"

#define HEIGHT_A 2

#define WIDTH_A 2

#define HEIGHT_B 2

#define WIDTH_B 2

#define BLOCK_SIZE 16

const char *KernelSource =

"__kernel void matrixMul(__global float *A, __global float *B, __global float *C, __global char *dbg_str, int widthA, int widthB )\n"\
"{\n"\
"   size_t i = get_global_id(1);\n"\
"   size_t j = get_global_id(1);\n"\
"   float value=0;\n"\
"   int k;\n"\
"   for( k = 0; k < widthA; k++)\n"\
"   {\n"\
"       value = value + A[k + j * widthA] * B[k*widthB + i];"\
"   printf(\"it is not defined!\\n\"); \n"\
"   }\n"\
"   C[i + widthA * j] = value;"\
"}\n"\
"\n";

int main(void)

{
    cl_context context;
    cl_context_properties properties[3];
    cl_kernel kernel;
    cl_command_queue command_queue;
    cl_program program;
    cl_int err;
    cl_uint num_of_platforms=0;
    cl_platform_id platform_id;
    cl_device_id device_id;
    cl_uint num_of_devices=0;
    cl_mem input_A, input_B, output_C;
    cl_mem dbg_str; // TODO: debug
    char *dbg_str_container;
    uint height_A = HEIGHT_A;
    uint width_A = WIDTH_A;
    uint height_B = HEIGHT_B;
    uint width_B = WIDTH_B;
    
    float *A;
    float *B;
    float *result;

    A = (float*)malloc(sizeof(float)*height_A*width_A);
    B = (float*)malloc(sizeof(float)*height_B*width_B);
    result = (float*)malloc(sizeof(float)*height_A*width_B);


    printf("\nMatrix A \n");

    int i, j; 

    for(i = 0; i < height_A; i++){
        for(j = 0; j < width_A; j++){
            *(A+i*width_A + j)=((j*rand())+1)%1000;
            printf("%f ",*(A+i*width_A + j));
        }
        printf("\n");
    }

    printf("\nMatrix B \n");

    for(i = 0; i < height_B; i++){
        for(j = 0; j < width_B; j++){
            *(B+i*width_B + j)=((j*rand())+1)%1000;
            printf("%f ",*(B+i*width_B + j));
        }

        printf("\n");

    }

    if(clGetPlatformIDs(1, &platform_id, &num_of_platforms) != CL_SUCCESS)
    {
        printf("Unable to get platform_id\n");
        return 1;
    }



    if (clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_GPU, 1, &device_id, &num_of_devices) != CL_SUCCESS)
    {
        printf("Unable to get device_id\n");
        return 1;
    }


    properties[0]= CL_CONTEXT_PLATFORM ;
    properties[1]=(cl_context_properties) platform_id;
    properties[2]= 0;

    context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
    command_queue = clCreateCommandQueue(context, device_id, 0, &err);
    program = clCreateProgramWithSource(context, 1, (const char **) &KernelSource, NULL, &err);

    if (clBuildProgram(program, 0, NULL, NULL, NULL, NULL) != CL_SUCCESS)
    {
        printf("Error building program\n");
        char buffer[4096];
        size_t length;

        clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), buffer, &length);

        printf("%s\n",buffer);
        return 1;
    }
    else
    {
        printf("Processed.\n");
    }

    kernel = clCreateKernel(program,"matrixMul",&err);
    
    input_A = clCreateBuffer(context, CL_MEM_READ_ONLY|CL_MEM_COPY_HOST_PTR  , height_A * width_A * sizeof(float), A, &err);
    if(err != CL_SUCCESS){
        printf("got ya\n");
    }
    input_B = clCreateBuffer(context, CL_MEM_READ_ONLY|CL_MEM_COPY_HOST_PTR  , height_B * width_B * sizeof(float), B, &err);
    if(err != CL_SUCCESS){
        printf("got ya\n");
    }
    dbg_str = clCreateBuffer(context, CL_MEM_WRITE_ONLY, 1024, NULL, &err);
    if (err != CL_SUCCESS) {
        printf("beep\n");
    }
    output_C = clCreateBuffer(context, CL_MEM_WRITE_ONLY , height_A * width_B * sizeof(float), NULL, &err);
    if(err != CL_SUCCESS){
        printf("got ya\n");
    }

    int order = 0;
    clSetKernelArg(kernel, order++, sizeof(cl_mem), &input_A);
    clSetKernelArg(kernel, order++, sizeof(cl_mem), &input_B);
    clSetKernelArg(kernel, order++, sizeof(cl_mem), &output_C);
    clSetKernelArg(kernel, order++, sizeof(cl_mem), &dbg_str);
    clSetKernelArg(kernel, order++, sizeof(int), &width_A);
    clSetKernelArg(kernel, order++, sizeof(int), &width_B);

    size_t global[2];
    global[0] = height_A;
    global[1] = width_B;

    size_t local[2];
    local[0] = BLOCK_SIZE;
    local[1] = BLOCK_SIZE;

    clEnqueueNDRangeKernel(command_queue,kernel,2,NULL,global,local,0,NULL,NULL);
    clFinish(command_queue);
    clEnqueueReadBuffer(command_queue, output_C, CL_TRUE, 0, height_A * width_B * sizeof(float), result, 0, NULL,NULL);
    clEnqueueReadBuffer(command_queue, dbg_str, CL_TRUE, 0, 1024, dbg_str_container, 0, NULL, NULL);
    /* printf("debug_str %s\n", dbg_str_container); */

    printf("\nResult\n");
    for (i = 0; i < height_A; i++){
        for(j = 0; j < width_B; j++){
            printf("%f ",*(result+i*width_B + j));
        }
        printf("\n");
    }

    clReleaseMemObject(input_A);
    clReleaseMemObject(input_B);
    clReleaseMemObject(output_C);
    clReleaseMemObject(dbg_str);
    clReleaseProgram(program);
    clReleaseKernel(kernel);
    clReleaseCommandQueue(command_queue);
    clReleaseContext(context);

    return 0;
}

