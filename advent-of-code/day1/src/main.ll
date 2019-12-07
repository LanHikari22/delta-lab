; ModuleID = 'main.7rcbfp3g-cgu.0'
source_filename = "main.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Formatter" = type { [0 x i64], { i64, i64 }, [0 x i64], { i64, i64 }, [0 x i64], { {}*, [3 x i64]* }, [0 x i64], { i64*, i64* }, [0 x i64], { [0 x { i8*, i8* }]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i8], i8, [7 x i8] }
%"core::marker::PhantomData<u32>" = type {}
%"core::marker::PhantomData<u8>" = type {}
%"core::ops::range::RangeInclusive<usize>" = type { [0 x i64], i64, [0 x i64], i64, [0 x i8], i8, [7 x i8] }
%"alloc::vec::Vec<u8>" = type { [0 x i64], { i8*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::result::Result<std::fs::File, std::io::error::Error>" = type { [0 x i32], i32, [5 x i32] }
%"std::fs::OpenOptions" = type { [0 x i32], %"std::sys::unix::fs::OpenOptions", [0 x i32] }
%"std::sys::unix::fs::OpenOptions" = type { [0 x i32], i32, [0 x i32], i32, [0 x i8], i8, [0 x i8], i8, [0 x i8], i8, [0 x i8], i8, [0 x i8], i8, [0 x i8], i8, [2 x i8] }
%"std::path::Path" = type { [0 x i8], %"std::ffi::os_str::OsStr" }
%"std::ffi::os_str::OsStr" = type { [0 x i8], %"std::sys_common::os_str_bytes::Slice" }
%"std::sys_common::os_str_bytes::Slice" = type { [0 x i8], [0 x i8] }
%"core::result::Result<usize, std::io::error::Error>" = type { [0 x i64], i64, [2 x i64] }
%"std::io::buffered::BufReader<std::fs::File>" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], i64, [0 x i64], i64, [0 x i32], i32, [1 x i32] }
%"std::io::error::Error" = type { [0 x i64], %"std::io::error::Repr", [0 x i64] }
%"std::io::error::Repr" = type { [0 x i8], i8, [15 x i8] }
%"core::result::Result<&[u8], std::io::error::Error>" = type { [0 x i64], i64, [2 x i64] }
%"core::result::Result<&[u8], std::io::error::Error>::Err" = type { [1 x i64], %"std::io::error::Error", [0 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Err" = type { [1 x i64], %"std::io::error::Error", [0 x i64] }
%"core::result::Result<&[u8], std::io::error::Error>::Ok" = type { [1 x i64], { [0 x i8]*, i64 }, [0 x i64] }
%"core::option::Option<usize>::Some" = type { [1 x i64], i64, [0 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64, [0 x i64] }
%"alloc::string::String" = type { [0 x i64], %"alloc::vec::Vec<u8>", [0 x i64] }
%"std::io::append_to_string::{{closure}}<std::io::BufRead::read_line::{{closure}}<std::io::buffered::BufReader<std::fs::File>>>" = type {}
%"core::result::Result<&str, core::str::Utf8Error>" = type { [0 x i64], i64, [2 x i64] }
%"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>" = type { [0 x i64], %"std::io::buffered::BufReader<std::fs::File>", [0 x i64] }
%"core::fmt::builders::DebugList" = type { [0 x i64], %"core::fmt::builders::DebugInner", [0 x i64] }
%"core::fmt::builders::DebugInner" = type { [0 x i64], %"core::fmt::Formatter"*, [0 x i8], i8, [0 x i8], i8, [6 x i8] }
%"alloc::alloc::Global" = type {}
%"core::fmt::Void" = type { [0 x i8], {}, [0 x i8], %"core::marker::PhantomData<*mut core::ops::function::Fn<(), Output=()>>", [0 x i8] }
%"core::marker::PhantomData<*mut core::ops::function::Fn<(), Output=()>>" = type {}
%"core::alloc::LayoutErr" = type { [0 x i8], {}, [0 x i8] }
%"core::fmt::Arguments" = type { [0 x i64], { [0 x { [0 x i8]*, i64 }]*, i64 }, [0 x i64], { i64*, i64 }, [0 x i64], { [0 x { i8*, i8* }]*, i64 }, [0 x i64] }
%"alloc::vec::Vec<u32>" = type { [0 x i64], { i32*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::mem::ManuallyDrop<alloc::vec::Vec<u8>>" = type { [0 x i64], %"alloc::vec::Vec<u8>", [0 x i64] }
%"core::marker::PhantomData<core::any::Any>" = type {}
%"core::marker::PhantomData<[u8]>" = type {}
%"std::io::error::Custom" = type { [0 x i64], { {}*, [3 x i64]* }, [0 x i8], i8, [7 x i8] }
%"core::result::Result<alloc::string::String, std::io::error::Error>" = type { [0 x i64], i64, [3 x i64] }
%"core::result::Result<alloc::string::String, std::io::error::Error>::Ok" = type { [1 x i64], %"alloc::string::String", [0 x i64] }
%"core::result::Result<alloc::string::String, std::io::error::Error>::Err" = type { [1 x i64], %"std::io::error::Error", [0 x i64] }
%"std::io::error::Repr::Custom" = type { [1 x i64], %"std::io::error::Custom"*, [0 x i64] }
%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>" = type { [0 x i64], i64, [3 x i64] }
%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some" = type { [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }
%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>" = type { [0 x i64], %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>", [0 x i64], i64, [0 x i64] }
%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>" = type { [1 x i64], i64, [3 x i64] }
%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some" = type { [0 x i64], { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, [0 x i64] }
%"core::mem::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>" = type { [4 x i64] }
%"core::mem::ManuallyDrop<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>" = type { [0 x i64], %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock", [0 x i64] }
%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock" = type { [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::mem::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"core::mem::ManuallyDrop<alloc::alloc::Global>" = type { [0 x i8], %"alloc::alloc::Global", [0 x i8] }
%"core::result::Result<u32, core::num::ParseIntError>" = type { [0 x i8], i8, [7 x i8] }
%"core::option::Option<u32>::Some" = type { [1 x i32], i32, [0 x i32] }
%"core::str::traits::{{impl}}::index::{{closure}}" = type { [0 x i64], { [0 x i8]*, i64 }*, [0 x i64], i64*, [0 x i64], i64*, [0 x i64] }
%"main::{{closure}}" = type {}
%"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err" = type { [0 x i8], %"core::alloc::LayoutErr", [0 x i8] }
%"core::alloc::{{impl}}::array::{{closure}}<u32>" = type {}
%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>" = type { [1 x i64], i64, [1 x i64] }
%"core::alloc::{{impl}}::array::{{closure}}<u8>" = type {}
%"core::result::Result<usize, core::alloc::LayoutErr>::Ok" = type { [1 x i64], i64, [0 x i64] }
%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok" = type { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }
%"core::slice::Repr<u32>" = type { [2 x i64] }
%"core::slice::Repr<u8>" = type { [2 x i64] }
%"core::marker::PhantomData<&u8>" = type {}
%"core::marker::PhantomData<&u32>" = type {}
%"core::result::Result<usize, alloc::collections::CollectionAllocErr>" = type { [0 x i8], i8, [15 x i8] }
%"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok" = type { [1 x i64], i64, [0 x i64] }
%"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err" = type { [1 x i8], i8, [0 x i8] }
%"core::result::Result<usize, core::alloc::LayoutErr>::Err" = type { [8 x i8], %"core::alloc::LayoutErr", [0 x i8] }
%"core::result::Result<&u8, core::option::NoneError>::Err" = type { [0 x i8], %"core::option::NoneError", [0 x i8] }
%"core::option::NoneError" = type {}
%"core::result::Result<core::ptr::NonNull<u8>, core::alloc::AllocErr>::Err" = type { [0 x i8], %"core::alloc::AllocErr", [0 x i8] }
%"core::alloc::AllocErr" = type {}
%"core::result::Result<char, core::option::NoneError>::Err" = type { [0 x i8], %"core::option::NoneError", [0 x i8] }
%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>" = type { [0 x i8], i8, [23 x i8] }
%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok" = type { [1 x i64], { i64, i64 }, [0 x i64] }
%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err" = type { [1 x i8], i8, [0 x i8] }
%"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok" = type { [0 x i8], {}, [0 x i8] }
%"alloc::raw_vec::{{impl}}::allocate_in::{{closure}}<u8, alloc::alloc::Global>.1" = type {}
%"alloc::raw_vec::{{impl}}::allocate_in::{{closure}}<u8, alloc::alloc::Global>" = type {}
%"alloc::raw_vec::{{impl}}::reserve_internal::{{closure}}<u8, alloc::alloc::Global>" = type {}
%"alloc::raw_vec::{{impl}}::reserve_internal::{{closure}}<u32, alloc::alloc::Global>" = type {}
%"core::ops::range::RangeFull" = type {}
%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Err" = type { [0 x i8], %"core::alloc::LayoutErr", [0 x i8] }
%"main::{{closure}}.0" = type {}
%"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>" = type { [0 x i8], {}, [0 x i8], %"main::{{closure}}", [0 x i8] }
%"core::str::{{impl}}::next_back::{{closure}}" = type {}
%"core::result::Result<std::fs::File, std::io::error::Error>::Err" = type { [1 x i64], %"std::io::error::Error", [0 x i64] }
%"core::result::Result<std::fs::File, std::io::error::Error>::Ok" = type { [1 x i32], i32, [0 x i32] }
%"core::result::Result<u32, core::num::ParseIntError>::Err" = type { [1 x i8], i8, [0 x i8] }
%"core::result::Result<u32, core::num::ParseIntError>::Ok" = type { [1 x i32], i32, [0 x i32] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@0 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0F" }>, align 1
@1 = private unnamed_addr constant <{ [34 x i8] }> <{ [34 x i8] c"stream did not contain valid UTF-8" }>, align 1
@vtable.0 = private unnamed_addr constant { void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8**)* } { void (i8**)* @_ZN4core3ptr18real_drop_in_place17h6a2b31df727b4a4eE, i64 8, i64 8, i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0e190d26b7152ab9E", i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0e190d26b7152ab9E", i32 (i8**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hae663ab919a77e25E" }, align 8
@vtable.1 = private unnamed_addr constant { void ({ i8*, i64 }*)*, i64, i64, { {}*, [3 x i64]* } ({ i8*, i64 }*)*, { {}*, [3 x i64]* } ({ i8*, i64 }*)* } { void ({ i8*, i64 }*)* @_ZN4core3ptr18real_drop_in_place17h858fb983229c8843E, i64 16, i64 8, { {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$9box_me_up17hc3ffd14048f32af6E", { {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h475ffefc38270354E" }, align 8
@str.2 = internal constant [46 x i8] c"/usr/src/rustc-1.36.0/src/libcore/ops/arith.rs"
@str.3 = internal constant [28 x i8] c"attempt to add with overflow"
@panic_loc.4 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([46 x i8]* @str.2 to [0 x i8]*), i64 46 }, i32 100, i32 45 }, align 8
@vtable.5 = private unnamed_addr constant { void (i32**)*, i64, i64, i1 (i32**, %"core::fmt::Formatter"*)* } { void (i32**)* @_ZN4core3ptr18real_drop_in_place17h1465bfca74e90596E, i64 8, i64 8, i1 (i32**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3fbcd9f413dc809cE" }, align 8
@2 = private unnamed_addr constant <{ [62 x i8] }> <{ [62 x i8] c"assertion failed: Layout::from_size_align(size, align).is_ok()" }>, align 1
@3 = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"src/libcore/alloc.rs" }>, align 1
@4 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [62 x i8] }>, <{ [62 x i8] }>* @2, i32 0, i32 0, i32 0), [8 x i8] c">\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [20 x i8] }>, <{ [20 x i8] }>* @3, i32 0, i32 0, i32 0), [16 x i8] c"\14\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"assertion failed: offs == mem::size_of::<T>()" }>, align 1
@6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [45 x i8] }>, <{ [45 x i8] }>* @5, i32 0, i32 0, i32 0), [8 x i8] c"-\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [20 x i8] }>, <{ [20 x i8] }>* @3, i32 0, i32 0, i32 0), [16 x i8] c"\14\00\00\00\00\00\00\00C\01\00\00\11\00\00\00" }>, align 8
@str.6 = internal constant [46 x i8] c"/usr/src/rustc-1.36.0/src/libcore/slice/mod.rs"
@str.7 = internal constant [25 x i8] c"attempt to divide by zero"
@panic_loc.8 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([25 x i8]* @str.7 to [0 x i8]*), i64 25 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([46 x i8]* @str.6 to [0 x i8]*), i64 46 }, i32 3009, i32 13 }, align 8
@str.9 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@panic_loc.a = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([57 x i8]* @str.9 to [0 x i8]*), i64 57 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([46 x i8]* @str.6 to [0 x i8]*), i64 46 }, i32 5093, i32 19 }, align 8
@7 = private unnamed_addr constant <{ [33 x i8] }> <{ [33 x i8] c"attempt to create unaligned slice" }>, align 1
@8 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"src/libcore/slice/mod.rs" }>, align 1
@9 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [33 x i8] }>, <{ [33 x i8] }>* @7, i32 0, i32 0, i32 0), [8 x i8] c"!\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @8, i32 0, i32 0, i32 0), [16 x i8] c"\18\00\00\00\00\00\00\00\E5\13\00\00\05\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ [55 x i8] }> <{ [55 x i8] c"attempt to create slice covering half the address space" }>, align 1
@11 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [55 x i8] }>, <{ [55 x i8] }>* @10, i32 0, i32 0, i32 0), [8 x i8] c"7\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @8, i32 0, i32 0, i32 0), [16 x i8] c"\18\00\00\00\00\00\00\00\E6\13\00\00\05\00\00\00" }>, align 8
@panic_loc.b = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([57 x i8]* @str.9 to [0 x i8]*), i64 57 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([46 x i8]* @str.6 to [0 x i8]*), i64 46 }, i32 5114, i32 19 }, align 8
@12 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [33 x i8] }>, <{ [33 x i8] }>* @7, i32 0, i32 0, i32 0), [8 x i8] c"!\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @8, i32 0, i32 0, i32 0), [16 x i8] c"\18\00\00\00\00\00\00\00\FA\13\00\00\05\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [55 x i8] }>, <{ [55 x i8] }>* @10, i32 0, i32 0, i32 0), [8 x i8] c"7\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @8, i32 0, i32 0, i32 0), [16 x i8] c"\18\00\00\00\00\00\00\00\FB\13\00\00\05\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"assertion failed: `(left == right)`\0A  left: `" }>, align 1
@15 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"`,\0A right: `" }>, align 1
@16 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"`: " }>, align 1
@17 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [45 x i8] }>, <{ [45 x i8] }>* @14, i32 0, i32 0, i32 0), [8 x i8] c"-\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @15, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [3 x i8] }>, <{ [3 x i8] }>* @16, i32 0, i32 0, i32 0), [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"destination and source slices have different lengths" }>, align 1
@19 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [52 x i8] }>, <{ [52 x i8] }>* @18, i32 0, i32 0, i32 0), [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@21 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [24 x i8] }>, <{ [24 x i8] }>* @8, i32 0, i32 0, i32 0), [16 x i8] c"\18\00\00\00\00\00\00\00K\08\00\00\09\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c": " }>, align 1
@23 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @20, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @22, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"src/libcore/result.rs" }>, align 1
@25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @24, i32 0, i32 0, i32 0), [16 x i8] c"\15\00\00\00\00\00\00\00\E7\03\00\00\05\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@27 = private unnamed_addr constant <{ [44 x i8] }> <{ [44 x i8] c"assertion failed: new_len <= self.capacity()" }>, align 1
@28 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"src/liballoc/vec.rs" }>, align 1
@29 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [44 x i8] }>, <{ [44 x i8] }>* @27, i32 0, i32 0, i32 0), [8 x i8] c",\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @28, i32 0, i32 0, i32 0), [16 x i8] c"\13\00\00\00\00\00\00\003\03\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ [36 x i8] }> <{ [36 x i8] c"Tried to shrink to a larger capacity" }>, align 1
@31 = private unnamed_addr constant <{ [23 x i8] }> <{ [23 x i8] c"src/liballoc/raw_vec.rs" }>, align 1
@32 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [36 x i8] }>, <{ [36 x i8] }>* @30, i32 0, i32 0, i32 0), [8 x i8] c"$\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @31, i32 0, i32 0, i32 0), [16 x i8] c"\17\00\00\00\00\00\00\00@\02\00\00\09\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ [54 x i8] }> <{ [54 x i8] c"assertion failed: new_layout.align() == layout.align()" }>, align 1
@34 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [54 x i8] }>, <{ [54 x i8] }>* @33, i32 0, i32 0, i32 0), [8 x i8] c"6\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @31, i32 0, i32 0, i32 0), [16 x i8] c"\17\00\00\00\00\00\00\00\99\02\00\00\15\00\00\00" }>, align 8
@str.c = internal constant [45 x i8] c"/usr/src/rustc-1.36.0/src/liballoc/raw_vec.rs"
@panic_bounds_check_loc.d = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([45 x i8]* @str.c to [0 x i8]*), i64 45 }, i32 60, i32 18 }, align 8
@35 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@36 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @35, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @31, i32 0, i32 0, i32 0), [16 x i8] c"\17\00\00\00\00\00\00\00\ED\01\00\00\1E\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ [25 x i8] }> <{ [25 x i8] c"src/libstd/io/buffered.rs" }>, align 1
@38 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [25 x i8] }>, <{ [25 x i8] }>* @37, i32 0, i32 0, i32 0), [16 x i8] c"\19\00\00\00\00\00\00\00\19\01\00\00\0D\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ [38 x i8] }> <{ [38 x i8] c"assertion failed: self.pos == self.cap" }>, align 1
@40 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@41 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0D" }>, align 1
@vtable.e = private unnamed_addr constant { void ({ [0 x i8]*, i64 }*)*, i64, i64, i64 ({ [0 x i8]*, i64 }*)* } { void ({ [0 x i8]*, i64 }*)* @_ZN4core3ptr18real_drop_in_place17hfc1d37c7a08f955dE, i64 16, i64 8, i64 ({ [0 x i8]*, i64 }*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h9dcc0a35da4df93dE" }, align 8
@vtable.f = private unnamed_addr constant { void ({}*)*, i64, i64, i64 ({}*)* } { void ({}*)* @_ZN4core3ptr18real_drop_in_place17h2b85e02e7b412fe3E, i64 0, i64 1, i64 ({}*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5a19295821b6a5eeE" }, align 8
@42 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"couldn't open " }>, align 1
@43 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @42, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @22, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"main.rs" }>, align 1
@45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @44, i32 0, i32 0, i32 0), [16 x i8] c"\07\00\00\00\00\00\00\00\13\00\00\00\15\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ [26 x i8] }> <{ [26 x i8] c"error while reading line: " }>, align 1
@47 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [26 x i8] }>, <{ [26 x i8] }>* @46, i32 0, i32 0, i32 0), [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @44, i32 0, i32 0, i32 0), [16 x i8] c"\07\00\00\00\00\00\00\00\1B\00\00\00\19\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"could not parse \22" }>, align 1
@50 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"\22 on line " }>, align 1
@51 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @49, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @50, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @22, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [7 x i8] }>, <{ [7 x i8] }>* @44, i32 0, i32 0, i32 0), [16 x i8] c"\07\00\00\00\00\00\00\00\1F\00\00\00\19\00\00\00" }>, align 8
@str.g = internal constant [7 x i8] c"main.rs"
@str.h = internal constant [33 x i8] c"attempt to subtract with overflow"
@panic_loc.i = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.h to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([7 x i8]* @str.g to [0 x i8]*), i64 7 }, i32 45, i32 5 }, align 8
@53 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"challenge1.in" }>, align 1
@54 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"out " }>, align 1
@55 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @54, i32 0, i32 0, i32 0), [8 x i8] c"\04\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @40, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"module_masses " }>, align 1
@57 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @56, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @40, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@panic_loc.j = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([7 x i8]* @str.g to [0 x i8]*), i64 7 }, i32 54, i32 37 }, align 8

; <core::slice::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable_or_null(1) i8* @"_ZN100_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h75ab70b66b86447eE"({ i8*, i8* }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_0.i = alloca i8*, align 8
  %_0 = alloca i8*, align 8
  %0 = bitcast { i8*, i8* }* %self to i8**
  %1 = load i8*, i8** %0, align 8
; call core::ptr::<impl *const T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4e8ac3715e01649dE"(i8* %1)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::mem::size_of
  %4 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
; call core::ptr::<impl *const T>::is_null
  %8 = call zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4e8ac3715e01649dE"(i8* %7)
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = xor i1 %8, true
  call void @llvm.assume(i1 %9)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  %10 = bitcast { i8*, i8* }* %self to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb7
  %15 = bitcast i8** %_0 to {}**
  store {}* null, {}** %15, align 8
  br label %bb11

bb9:                                              ; preds = %bb7
; call core::mem::size_of
  %16 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %bb2.i, label %bb4.i

bb2.i:                                            ; preds = %bb9
  %18 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
; call core::ptr::<impl *const T>::wrapping_offset
  %20 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17h3e4cb31731a67fbbE"(i8* %19, i64 -1)
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast { i8*, i8* }* %self to i8**
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %_0.i, align 8
  br label %"_ZN4core5slice13Iter$LT$T$GT$11pre_dec_end17hbe4e5aa317f47a61E.exit"

bb4.i:                                            ; preds = %bb9
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
; call core::ptr::<impl *const T>::offset
  %26 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h7335ff09340acbc6E"(i8* %25, i64 -1)
  %27 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %_0.i, align 8
  br label %"_ZN4core5slice13Iter$LT$T$GT$11pre_dec_end17hbe4e5aa317f47a61E.exit"

"_ZN4core5slice13Iter$LT$T$GT$11pre_dec_end17hbe4e5aa317f47a61E.exit": ; preds = %bb2.i, %bb4.i
  %30 = load i8*, i8** %_0.i, align 8
  br label %bb10

bb10:                                             ; preds = %"_ZN4core5slice13Iter$LT$T$GT$11pre_dec_end17hbe4e5aa317f47a61E.exit"
  store i8* %30, i8** %_0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %31 = load i8*, i8** %_0, align 8
  ret i8* %31
}

; <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17h0826ac918d326c57E"(i8* nonnull %unique) unnamed_addr #0 {
start:
  %_0 = alloca i8*, align 8
  store i8* %unique, i8** %_0, align 8
  %0 = load i8*, i8** %_0, align 8, !nonnull !2
  ret i8* %0
}

; <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17hbd7255b0bfb05237E"(i32* nonnull %unique) unnamed_addr #0 {
start:
  %_0 = alloca i32*, align 8
  store i32* %unique, i32** %_0, align 8
  %0 = load i32*, i32** %_0, align 8, !nonnull !2
  ret i32* %0
}

; <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17hdbf0254b1c09d1e4E"(i8* nonnull %unique.0, i64* noalias readonly align 8 dereferenceable(24) %unique.1) unnamed_addr #0 {
start:
  %_0 = alloca { i8*, i64* }, align 8
  %0 = bitcast i8* %unique.0 to {}*
  %1 = bitcast i64* %unique.1 to [3 x i64]*
  %2 = bitcast { i8*, i64* }* %_0 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  store {}* %0, {}** %3, align 8
  %4 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  store [3 x i64]* %1, [3 x i64]** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !nonnull !2
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_0, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8, !nonnull !2
  %9 = insertvalue { i8*, i64* } undef, i8* %6, 0
  %10 = insertvalue { i8*, i64* } %9, i64* %8, 1
  ret { i8*, i64* } %10
}

; <core::ptr::Unique<T> as core::convert::From<core::ptr::NonNull<T>>>::from
; Function Attrs: nonlazybind uwtable
define internal nonnull i32* @"_ZN101_$LT$core..ptr..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..NonNull$LT$T$GT$$GT$$GT$4from17h2df52738ef45a3c5E"(i32* nonnull %p) unnamed_addr #1 {
start:
  %_3 = alloca %"core::marker::PhantomData<u32>", align 1
  %_0 = alloca i32*, align 8
  store i32* %p, i32** %_0, align 8
  %0 = bitcast i32** %_0 to %"core::marker::PhantomData<u32>"*
  %1 = load i32*, i32** %_0, align 8, !nonnull !2
  ret i32* %1
}

; <core::ptr::Unique<T> as core::convert::From<core::ptr::NonNull<T>>>::from
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN101_$LT$core..ptr..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..NonNull$LT$T$GT$$GT$$GT$4from17h3c96e64036848989E"(i8* nonnull %p) unnamed_addr #1 {
start:
  %_3 = alloca %"core::marker::PhantomData<u8>", align 1
  %_0 = alloca i8*, align 8
  store i8* %p, i8** %_0, align 8
  %0 = bitcast i8** %_0 to %"core::marker::PhantomData<u8>"*
  %1 = load i8*, i8** %_0, align 8, !nonnull !2
  ret i8* %1
}

; <core::ops::range::RangeFrom<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN103_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17heee8884c5eb0e636E"(i64 %self, [0 x i8]* nonnull align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_5 = alloca { i64, i64 }, align 8
; call core::slice::<impl [T]>::len
  %0 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_5 to i64*
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
; call <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut
  %7 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h66728948fc4911e3E"(i64 %4, i64 %6, [0 x i8]* nonnull align 1 %slice.0, i64 %slice.1)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; <core::ops::range::RangeFrom<usize> as core::slice::SliceIndex<[T]>>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN103_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd3e7c413aabc6513E"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_4 = alloca { i64, i64 }, align 8
; call core::slice::<impl [T]>::len
  %0 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_4 to i64*
  store i64 %self, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
; call <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index
  %7 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hb5c6615cd8cb2325E"(i64 %4, i64 %6, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; <alloc::collections::CollectionAllocErr as core::convert::From<core::alloc::AllocErr>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN107_$LT$alloc..collections..CollectionAllocErr$u20$as$u20$core..convert..From$LT$core..alloc..AllocErr$GT$$GT$4from17h3f18c0e854ca29a2E"() unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
  store i8 1, i8* %_0, align 1
  %0 = load i8, i8* %_0, align 1, !range !3
  %1 = trunc i8 %0 to i1
  ret i1 %1
}

; <core::ops::range::RangeInclusive<usize> as core::slice::SliceIndex<[T]>>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h997707a779265761E"(%"core::ops::range::RangeInclusive<usize>"* noalias nocapture dereferenceable(24) %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_9 = alloca { i64, i64 }, align 8
; call core::ops::range::RangeInclusive<Idx>::end
  %0 = call align 8 dereferenceable(8) i64* @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3end17hea3f1cac3f2441e2E"(%"core::ops::range::RangeInclusive<usize>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = load i64, i64* %0, align 8
; call core::num::<impl usize>::max_value
  %2 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$9max_value17h099bf99af4ab8d76E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
; call core::slice::slice_index_overflow_fail
  call void @_ZN4core5slice25slice_index_overflow_fail17h47e2c0d97a57b1aeE()
  unreachable

bb4:                                              ; preds = %bb2
; call core::ops::range::RangeInclusive<Idx>::start
  %4 = call align 8 dereferenceable(8) i64* @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$5start17h5c37d85b7fea163dE"(%"core::ops::range::RangeInclusive<usize>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb5

bb5:                                              ; preds = %bb4
  %5 = load i64, i64* %4, align 8
; call core::ops::range::RangeInclusive<Idx>::end
  %6 = call align 8 dereferenceable(8) i64* @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3end17hea3f1cac3f2441e2E"(%"core::ops::range::RangeInclusive<usize>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <&usize as core::ops::arith::Add<usize>>::add
  %7 = call i64 @"_ZN64_$LT$$RF$usize$u20$as$u20$core..ops..arith..Add$LT$usize$GT$$GT$3add17hae16d86e316054a7E"(i64* noalias readonly align 8 dereferenceable(8) %6, i64 1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %8 = bitcast { i64, i64 }* %_9 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
; call <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index
  %14 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hb5c6615cd8cb2325E"(i64 %11, i64 %13, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  %15 = extractvalue { [0 x i8]*, i64 } %14, 0
  %16 = extractvalue { [0 x i8]*, i64 } %14, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %17 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %15, 0
  %18 = insertvalue { [0 x i8]*, i64 } %17, i64 %16, 1
  ret { [0 x i8]*, i64 } %18
}

; <alloc::vec::Vec<T> as alloc::vec::SpecExtend<&T,core::slice::Iter<T>>>::spec_extend
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb85c7b77fafe4003E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i8*, i8*) unnamed_addr #1 {
start:
  %_23 = alloca i64, align 8
  %iterator = alloca { i8*, i8* }, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iterator, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iterator, i32 0, i32 1
  store i8* %1, i8** %3, align 8
; call core::slice::Iter<T>::as_slice
  %4 = call { [0 x i8]*, i64 } @"_ZN4core5slice13Iter$LT$T$GT$8as_slice17h19819ef1a03a152dE"({ i8*, i8* }* noalias readonly align 8 dereferenceable(16) %iterator)
  %5 = extractvalue { [0 x i8]*, i64 } %4, 0
  %6 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::len
  %7 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %5, i64 %6)
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::vec::Vec<T>::reserve
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$7reserve17had008904b3efcb65E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i64 %7)
  br label %bb3

bb3:                                              ; preds = %bb2
; call alloc::vec::Vec<T>::len
  %8 = call i64 @"_ZN5alloc3vec12Vec$LT$T$GT$3len17h751dc25b11efb097E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::slice::<impl [T]>::len
  %9 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %5, i64 %6)
  br label %bb5

bb5:                                              ; preds = %bb4
  %10 = add i64 %8, %9
; call alloc::vec::Vec<T>::set_len
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$7set_len17hae9f683f451614ffE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i64 %10)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %11 = call { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h97ea3c9aa1c6148dE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
  %12 = extractvalue { [0 x i8]*, i64 } %11, 0
  %13 = extractvalue { [0 x i8]*, i64 } %11, 1
  br label %bb7

bb7:                                              ; preds = %bb6
  store i64 %8, i64* %_23, align 8
  %14 = load i64, i64* %_23, align 8
; call core::slice::<impl [T]>::get_unchecked_mut
  %15 = call { [0 x i8]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hbe8447c9e7683e88E"([0 x i8]* nonnull align 1 %12, i64 %13, i64 %14)
  %16 = extractvalue { [0 x i8]*, i64 } %15, 0
  %17 = extractvalue { [0 x i8]*, i64 } %15, 1
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::slice::<impl [T]>::copy_from_slice
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h8464ab3c04eea6adE"([0 x i8]* nonnull align 1 %16, i64 %17, [0 x i8]* noalias nonnull readonly align 1 %5, i64 %6)
  br label %bb9

bb9:                                              ; preds = %bb8
  ret void
}

; <core::ops::range::RangeToInclusive<usize> as core::slice::SliceIndex<[T]>>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeToInclusive$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8a2895c165f83406E"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ops::range::RangeInclusive<usize>", align 8
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h5eff3040b4fbc566E"(%"core::ops::range::RangeInclusive<usize>"* noalias nocapture sret dereferenceable(24) %_4, i64 0, i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
; call <core::ops::range::RangeInclusive<usize> as core::slice::SliceIndex<[T]>>::index
  %0 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h997707a779265761E"(%"core::ops::range::RangeInclusive<usize>"* noalias nocapture dereferenceable(24) %_4, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; <T as core::any::Any>::type_id
; Function Attrs: nonlazybind uwtable
define internal i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5a19295821b6a5eeE"({}* noalias nonnull readonly align 1 %self) unnamed_addr #1 {
start:
; call core::any::TypeId::of
  %0 = call i64 @_ZN4core3any6TypeId2of17h302339bb857f123bE()
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; <T as core::any::Any>::type_id
; Function Attrs: nonlazybind uwtable
define internal i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h9dcc0a35da4df93dE"({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call core::any::TypeId::of
  %0 = call i64 @_ZN4core3any6TypeId2of17ha33c34132dfab004E()
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; std::fs::OpenOptions::open
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2fs11OpenOptions4open17hc93f529ccf9f9cdfE(%"core::result::Result<std::fs::File, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"std::fs::OpenOptions"* noalias readonly align 4 dereferenceable(16) %self, %"std::path::Path"* noalias nonnull readonly align 1, i64) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %path = alloca { %"std::path::Path"*, i64 }, align 8
  %3 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 0
  store %"std::path::Path"* %1, %"std::path::Path"** %3, align 8
  %4 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 1
  store i64 %2, i64* %4, align 8
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %5 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h8f919fdacbd1a827E"({ %"std::path::Path"*, i64 }* noalias readonly align 8 dereferenceable(16) %path)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  %12 = extractvalue { %"std::path::Path"*, i64 } %5, 0
  %13 = extractvalue { %"std::path::Path"*, i64 } %5, 1
; invoke std::fs::OpenOptions::_open
  invoke void @_ZN3std2fs11OpenOptions5_open17h65996290dbdd0304E(%"core::result::Result<std::fs::File, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, %"std::fs::OpenOptions"* noalias readonly align 4 dereferenceable(16) %self, %"std::path::Path"* noalias nonnull readonly align 1 %12, i64 %13)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb1

bb4:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void

cleanup:                                          ; preds = %bb2, %start
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb3
}

; std::fs::File::open
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2fs4File4open17h6d437a006f2c1e5aE(%"core::result::Result<std::fs::File, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), { %"std::path::Path"*, i64 }* noalias readonly align 8 dereferenceable(16)) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_5 = alloca %"std::fs::OpenOptions", align 4
  %path = alloca { %"std::path::Path"*, i64 }*, align 8
  store { %"std::path::Path"*, i64 }* %1, { %"std::path::Path"*, i64 }** %path, align 8
; invoke std::fs::OpenOptions::new
  invoke void @_ZN3std2fs11OpenOptions3new17hbba6b28e76992d75E(%"std::fs::OpenOptions"* noalias nocapture sret dereferenceable(16) %_5)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1
  resume { i8*, i32 } %7

bb2:                                              ; preds = %start
; invoke std::fs::OpenOptions::read
  %8 = invoke align 4 dereferenceable(16) %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions4read17h401e9f795c3884e9E(%"std::fs::OpenOptions"* align 4 dereferenceable(16) %_5, i1 zeroext true)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb1

bb4:                                              ; preds = %bb2
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %9 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h9a9dd7c95ceee6a4E"({ %"std::path::Path"*, i64 }** noalias readonly align 8 dereferenceable(8) %path)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %10 = extractvalue { %"std::path::Path"*, i64 } %9, 0
  %11 = extractvalue { %"std::path::Path"*, i64 } %9, 1
; invoke std::fs::OpenOptions::open
  invoke void @_ZN3std2fs11OpenOptions4open17hc93f529ccf9f9cdfE(%"core::result::Result<std::fs::File, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, %"std::fs::OpenOptions"* noalias readonly align 4 dereferenceable(16) %8, %"std::path::Path"* noalias nonnull readonly align 1 %10, i64 %11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6
  ret void

cleanup:                                          ; preds = %bb5, %bb4, %bb2, %start
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb3
}

; std::io::read_until
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2io10read_until17h472b46f7df9cea60E(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %r, i8 %delim, %"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %buf) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_46 = alloca i8, align 1
  %_33 = alloca i64, align 8
  %_22 = alloca { i64, i64 }, align 8
  %_21 = alloca %"std::io::error::Error", align 8
  %e1 = alloca %"std::io::error::Error", align 8
  %_17 = alloca i8, align 1
  %e = alloca %"std::io::error::Error"*, align 8
  %_9 = alloca %"core::result::Result<&[u8], std::io::error::Error>", align 8
  %_7 = alloca { i8, i64 }, align 8
  %read = alloca i64, align 8
  store i64 0, i64* %read, align 8
  br label %bb2

bb1:                                              ; preds = %bb10
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %bb28, %bb12, %start
; call <std::io::buffered::BufReader<R> as std::io::BufRead>::fill_buf
  call void @"_ZN74_$LT$std..io..buffered..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hd75ac46b593c6f92E"(%"core::result::Result<&[u8], std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %_9, %"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %r)
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %_9 to i64*
  %8 = load i64, i64* %7, align 8, !range !4
  switch i64 %8, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb8
  ]

bb4:                                              ; preds = %bb11
  %9 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %_9 to %"core::result::Result<&[u8], std::io::error::Error>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<&[u8], std::io::error::Error>::Err", %"core::result::Result<&[u8], std::io::error::Error>::Err"* %9, i32 0, i32 1
  %11 = bitcast %"std::io::error::Error"* %e1 to i8*
  %12 = bitcast %"std::io::error::Error"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = bitcast %"std::io::error::Error"* %_21 to i8*
  %14 = bitcast %"std::io::error::Error"* %e1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %16 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %15, i32 0, i32 1
  %17 = bitcast %"std::io::error::Error"* %16 to i8*
  %18 = bitcast %"std::io::error::Error"* %_21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to i64*
  store i64 1, i64* %19, align 8
  %20 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %_9 to i64*
  %21 = load i64, i64* %20, align 8, !range !4
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %bb29, label %bb30

bb5:                                              ; preds = %bb15, %bb3
  unreachable

bb6:                                              ; preds = %bb3
  %23 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %_9 to %"core::result::Result<&[u8], std::io::error::Error>::Ok"*
  %24 = getelementptr inbounds %"core::result::Result<&[u8], std::io::error::Error>::Ok", %"core::result::Result<&[u8], std::io::error::Error>::Ok"* %23, i32 0, i32 1
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %24, i32 0, i32 0
  %26 = load [0 x i8]*, [0 x i8]** %25, align 8, !nonnull !2
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h195fb2a9f44cf582E(%"core::result::Result<&[u8], std::io::error::Error>"* align 8 dereferenceable(24) %_9)
  br label %bb14

bb7:                                              ; preds = %bb11
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h195fb2a9f44cf582E(%"core::result::Result<&[u8], std::io::error::Error>"* align 8 dereferenceable(24) %_9)
  br label %bb12

bb8:                                              ; preds = %bb3
  %29 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %_9 to %"core::result::Result<&[u8], std::io::error::Error>::Err"*
  %30 = getelementptr inbounds %"core::result::Result<&[u8], std::io::error::Error>::Err", %"core::result::Result<&[u8], std::io::error::Error>::Err"* %29, i32 0, i32 1
  store %"std::io::error::Error"* %30, %"std::io::error::Error"** %e, align 8
  %31 = load %"std::io::error::Error"*, %"std::io::error::Error"** %e, align 8, !nonnull !2
; invoke std::io::error::Error::kind
  %32 = invoke i8 @_ZN3std2io5error5Error4kind17hd7469582a743f280E(%"std::io::error::Error"* noalias readonly align 8 dereferenceable(16) %31)
          to label %bb9 unwind label %cleanup, !range !5

bb9:                                              ; preds = %bb8
  store i8 %32, i8* %_17, align 1
; invoke <std::io::error::ErrorKind as core::cmp::PartialEq>::eq
  %33 = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h82255b684a237d85E"(i8* noalias readonly align 1 dereferenceable(1) %_17, i8* noalias readonly align 1 dereferenceable(1) getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @0, i32 0, i32 0, i32 0))
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %cleanup
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h195fb2a9f44cf582E(%"core::result::Result<&[u8], std::io::error::Error>"* align 8 dereferenceable(24) %_9) #12
  br label %bb1

bb11:                                             ; preds = %bb9
  br i1 %33, label %bb7, label %bb4

bb12:                                             ; preds = %bb7
  br label %bb2

bb13:                                             ; preds = %bb27, %bb29
  ret void

bb14:                                             ; preds = %bb6
; call std::memchr::memchr
  %34 = call { i64, i64 } @_ZN3std6memchr6memchr17h3239efdc91a30e91E(i8 %delim, [0 x i8]* noalias nonnull readonly align 1 %26, i64 %28)
  store { i64, i64 } %34, { i64, i64 }* %_22, align 8
  br label %bb15

bb15:                                             ; preds = %bb14
  %35 = bitcast { i64, i64 }* %_22 to i64*
  %36 = load i64, i64* %35, align 8, !range !4
  switch i64 %36, label %bb5 [
    i64 0, label %bb19
    i64 1, label %bb16
  ]

bb16:                                             ; preds = %bb15
  %37 = bitcast { i64, i64 }* %_22 to %"core::option::Option<usize>::Some"*
  %38 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %_33, align 8
  %40 = load i64, i64* %_33, align 8
; call core::slice::<impl core::ops::index::Index<I> for [T]>::index
  %41 = call { [0 x i8]*, i64 } @"_ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h633111c86077452eE"([0 x i8]* noalias nonnull readonly align 1 %26, i64 %28, i64 %40)
  %42 = extractvalue { [0 x i8]*, i64 } %41, 0
  %43 = extractvalue { [0 x i8]*, i64 } %41, 1
  br label %bb17

bb17:                                             ; preds = %bb16
; call alloc::vec::Vec<T>::extend_from_slice
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$17extend_from_slice17h06dcb4bb1d883cf1E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %buf, [0 x i8]* noalias nonnull readonly align 1 %42, i64 %43)
  br label %bb18

bb18:                                             ; preds = %bb17
  %44 = add i64 %39, 1
  %45 = bitcast { i8, i64 }* %_7 to i8*
  store i8 1, i8* %45, align 8
  %46 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %_7, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %bb22

bb19:                                             ; preds = %bb15
; call alloc::vec::Vec<T>::extend_from_slice
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$17extend_from_slice17h06dcb4bb1d883cf1E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %buf, [0 x i8]* noalias nonnull readonly align 1 %26, i64 %28)
  br label %bb20

bb20:                                             ; preds = %bb19
; call core::slice::<impl [T]>::len
  %47 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %26, i64 %28)
  br label %bb21

bb21:                                             ; preds = %bb20
  %48 = bitcast { i8, i64 }* %_7 to i8*
  store i8 0, i8* %48, align 8
  %49 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %_7, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %bb22

bb22:                                             ; preds = %bb21, %bb18
  %50 = bitcast { i8, i64 }* %_7 to i8*
  %51 = load i8, i8* %50, align 8, !range !3
  %52 = trunc i8 %51 to i1
  %53 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %_7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
; call <std::io::buffered::BufReader<R> as std::io::BufRead>::consume
  call void @"_ZN74_$LT$std..io..buffered..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17h905a27729d6c3c2fE"(%"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %r, i64 %54)
  br label %bb23

bb23:                                             ; preds = %bb22
  %55 = load i64, i64* %read, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %read, align 8
  br i1 %52, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  store i8 1, i8* %_46, align 1
  br label %bb26

bb25:                                             ; preds = %bb23
  %57 = icmp eq i64 %54, 0
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %_46, align 1
  br label %bb26

bb26:                                             ; preds = %bb25, %bb24
  %59 = load i8, i8* %_46, align 1, !range !3
  %60 = trunc i8 %59 to i1
  br i1 %60, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  %61 = load i64, i64* %read, align 8
  %62 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %63 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to i64*
  store i64 0, i64* %64, align 8
  br label %bb13

bb28:                                             ; preds = %bb26
  br label %bb2

bb29:                                             ; preds = %bb30, %bb4
  br label %bb13

bb30:                                             ; preds = %bb4
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h195fb2a9f44cf582E(%"core::result::Result<&[u8], std::io::error::Error>"* align 8 dereferenceable(24) %_9)
  br label %bb29

cleanup:                                          ; preds = %bb9, %bb8
  %65 = landingpad { i8*, i32 }
          cleanup
  %66 = extractvalue { i8*, i32 } %65, 0
  %67 = extractvalue { i8*, i32 } %65, 1
  %68 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %bb10
}

; std::io::Initializer::initialize
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std2io11Initializer10initialize17h27bb4949aa91ec61E(i8* noalias readonly align 1 dereferenceable(1) %self, [0 x i8]* nonnull align 1 %buf.0, i64 %buf.1) unnamed_addr #0 {
start:
; call std::io::Initializer::should_initialize
  %0 = call zeroext i1 @_ZN3std2io11Initializer17should_initialize17ha4c455633fbaf18cE(i8* noalias readonly align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %0, label %bb2, label %bb6

bb2:                                              ; preds = %bb1
; call core::slice::<impl [T]>::as_mut_ptr
  %1 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hf9735092727bee5cE"([0 x i8]* nonnull align 1 %buf.0, i64 %buf.1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::slice::<impl [T]>::len
  %2 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %buf.0, i64 %buf.1)
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::intrinsics::write_bytes
  call void @_ZN4core10intrinsics11write_bytes17hb764dd49b2973f94E(i8* %1, i8 0, i64 %2)
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  ret void
}

; std::io::Initializer::should_initialize
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN3std2io11Initializer17should_initialize17ha4c455633fbaf18cE(i8* noalias readonly align 1 dereferenceable(1) %self) unnamed_addr #0 {
start:
  %0 = load i8, i8* %self, align 1, !range !3
  %1 = trunc i8 %0 to i1
  ret i1 %1
}

; std::io::Initializer::nop
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN3std2io11Initializer3nop17he6431239b6e57f5dE() unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
  store i8 0, i8* %_0, align 1
  %0 = load i8, i8* %_0, align 1, !range !3
  %1 = trunc i8 %0 to i1
  ret i1 %1
}

; std::io::append_to_string
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2io16append_to_string17h22d0f02be3bf861eE(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"alloc::string::String"* align 8 dereferenceable(24) %buf, i64* align 8 dereferenceable(8) %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_27 = alloca i8, align 1
  %_26 = alloca i8, align 1
  %_23 = alloca %"std::io::append_to_string::{{closure}}<std::io::BufRead::read_line::{{closure}}<std::io::buffered::BufReader<std::fs::File>>>", align 1
  %_22 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_20 = alloca i64, align 8
  %_15 = alloca %"core::result::Result<&str, core::str::Utf8Error>", align 8
  %_11 = alloca i64*, align 8
  %ret = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %g = alloca { i64*, i64 }, align 8
  store i8 0, i8* %_27, align 1
  store i8 0, i8* %_26, align 1
  store i8 1, i8* %_26, align 1
; invoke alloc::string::String::len
  %1 = invoke i64 @_ZN5alloc6string6String3len17h30b3c12cd9db7626E(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %buf)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb15, %bb16
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1
  resume { i8*, i32 } %7

bb2:                                              ; preds = %start
; invoke alloc::string::String::as_mut_vec
  %8 = invoke align 8 dereferenceable(24) %"alloc::vec::Vec<u8>"* @_ZN5alloc6string6String10as_mut_vec17h8c49959ebd481fe9E(%"alloc::string::String"* align 8 dereferenceable(24) %buf)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %9 = bitcast { i64*, i64 }* %g to %"alloc::vec::Vec<u8>"**
  store %"alloc::vec::Vec<u8>"* %8, %"alloc::vec::Vec<u8>"** %9, align 8
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %g, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  store i8 0, i8* %_26, align 1
  %11 = bitcast { i64*, i64 }* %g to %"alloc::vec::Vec<u8>"**
  %12 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %11, align 8, !nonnull !2
  %13 = bitcast i64** %_11 to %"alloc::vec::Vec<u8>"**
  store %"alloc::vec::Vec<u8>"* %12, %"alloc::vec::Vec<u8>"** %13, align 8
  %14 = load i64*, i64** %_11, align 8, !nonnull !2
  %15 = bitcast i64* %14 to %"alloc::vec::Vec<u8>"*
; invoke std::io::BufRead::read_line::{{closure}}
  invoke void @"_ZN3std2io7BufRead9read_line28_$u7b$$u7b$closure$u7d$$u7d$17h89cea78304e2159dE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %ret, i64* align 8 dereferenceable(8) %f, %"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %15)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  store i8 1, i8* %_27, align 1
  %16 = bitcast { i64*, i64 }* %g to %"alloc::vec::Vec<u8>"**
  %17 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %16, align 8, !nonnull !2
  %18 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %g, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %_20, align 8
  %20 = load i64, i64* %_20, align 8
; invoke <alloc::vec::Vec<T> as core::ops::index::Index<I>>::index
  %21 = invoke { [0 x i8]*, i64 } @"_ZN77_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcd1d0c137bdc9c74E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %17, i64 %20)
          to label %bb6 unwind label %cleanup2

bb5:                                              ; preds = %bb17, %bb18, %cleanup1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h4f228827eac40069E({ i64*, i64 }* align 8 dereferenceable(16) %g) #12
  br label %bb16

bb6:                                              ; preds = %bb4
  %22 = extractvalue { [0 x i8]*, i64 } %21, 0
  %23 = extractvalue { [0 x i8]*, i64 } %21, 1
; invoke core::str::from_utf8
  invoke void @_ZN4core3str9from_utf817h9b0af2ab335bed95E(%"core::result::Result<&str, core::str::Utf8Error>"* noalias nocapture sret dereferenceable(24) %_15, [0 x i8]* noalias nonnull readonly align 1 %22, i64 %23)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %bb6
; invoke core::result::Result<T,E>::is_err
  %24 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h761e7daf96878ea2E"(%"core::result::Result<&str, core::str::Utf8Error>"* noalias readonly align 8 dereferenceable(24) %_15)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  br i1 %24, label %bb9, label %bb11

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_27, align 1
  %25 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_22 to i8*
  %26 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
; invoke core::result::Result<T,E>::and_then
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$8and_then17h9c78142add739e8bE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, %"core::result::Result<usize, std::io::error::Error>"* noalias nocapture dereferenceable(24) %_22)
          to label %bb10 unwind label %cleanup2

bb10:                                             ; preds = %bb9
  br label %bb13

bb11:                                             ; preds = %bb8
  %27 = bitcast { i64*, i64 }* %g to %"alloc::vec::Vec<u8>"**
  %28 = load %"alloc::vec::Vec<u8>"*, %"alloc::vec::Vec<u8>"** %27, align 8, !nonnull !2
; invoke alloc::vec::Vec<T>::len
  %29 = invoke i64 @"_ZN5alloc3vec12Vec$LT$T$GT$3len17h751dc25b11efb097E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %28)
          to label %bb12 unwind label %cleanup2

bb12:                                             ; preds = %bb11
  %30 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %g, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  store i8 0, i8* %_27, align 1
  %31 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to i8*
  %32 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  br label %bb13

bb13:                                             ; preds = %bb12, %bb10
  store i8 0, i8* %_27, align 1
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17h4f228827eac40069E({ i64*, i64 }* align 8 dereferenceable(16) %g)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  ret void

bb15:                                             ; preds = %bb16
  store i8 0, i8* %_26, align 1
  br label %bb1

bb16:                                             ; preds = %bb5, %cleanup
  %33 = load i8, i8* %_26, align 1, !range !3
  %34 = trunc i8 %33 to i1
  br i1 %34, label %bb15, label %bb1

bb17:                                             ; preds = %bb18
  store i8 0, i8* %_27, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %ret) #12
  br label %bb5

bb18:                                             ; preds = %cleanup2
  %35 = load i8, i8* %_27, align 1, !range !3
  %36 = trunc i8 %35 to i1
  br i1 %36, label %bb17, label %bb5

cleanup:                                          ; preds = %bb13, %bb2, %start
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  %39 = extractvalue { i8*, i32 } %37, 1
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %bb16

cleanup1:                                         ; preds = %bb3
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  %44 = extractvalue { i8*, i32 } %42, 1
  %45 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %bb5

cleanup2:                                         ; preds = %bb11, %bb9, %bb7, %bb6, %bb4
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  %49 = extractvalue { i8*, i32 } %47, 1
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %bb18
}

; std::io::append_to_string::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN3std2io16append_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h9044c851117bb364E"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), i64 %arg1) unnamed_addr #1 {
start:
  %_4 = alloca i8, align 1
  %_3 = alloca %"std::io::error::Error", align 8
  store i8 12, i8* %_4, align 1
  %1 = load i8, i8* %_4, align 1, !range !5
; call std::io::error::Error::new
  call void @_ZN3std2io5error5Error3new17hbbdbd389fede3bdeE(%"std::io::error::Error"* noalias nocapture sret dereferenceable(16) %_3, i8 %1, [0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [34 x i8] }>* @1 to [0 x i8]*), i64 34)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %3 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %2, i32 0, i32 1
  %4 = bitcast %"std::io::error::Error"* %3 to i8*
  %5 = bitcast %"std::io::error::Error"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  %6 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to i64*
  store i64 1, i64* %6, align 8
  ret void
}

; std::io::error::Error::new
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2io5error5Error3new17hbbdbd389fede3bdeE(%"std::io::error::Error"* noalias nocapture sret dereferenceable(16), i8 %kind, [0 x i8]* noalias nonnull readonly align 1 %error.0, i64 %error.1) unnamed_addr #1 {
start:
; call <T as core::convert::Into<U>>::into
  %1 = call { {}*, [3 x i64]* } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h17142035c17afe91E"([0 x i8]* noalias nonnull readonly align 1 %error.0, i64 %error.1)
  %2 = extractvalue { {}*, [3 x i64]* } %1, 0
  %3 = extractvalue { {}*, [3 x i64]* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
; call std::io::error::Error::_new
  call void @_ZN3std2io5error5Error4_new17h561ec74ed0654576E(%"std::io::error::Error"* noalias nocapture sret dereferenceable(16) %0, i8 %kind, {}* noalias nonnull align 1 %2, [3 x i64]* noalias readonly align 8 dereferenceable(24) %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; std::io::BufRead::lines
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2io7BufRead5lines17hc8ae994ffde8a588E(%"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* noalias nocapture sret dereferenceable(40), %"std::io::buffered::BufReader<std::fs::File>"* noalias nocapture dereferenceable(40) %self) unnamed_addr #1 {
start:
  %_2 = alloca %"std::io::buffered::BufReader<std::fs::File>", align 8
  %1 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %_2 to i8*
  %2 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 40, i1 false)
  %3 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %0 to %"std::io::buffered::BufReader<std::fs::File>"*
  %4 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %3 to i8*
  %5 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 40, i1 false)
  ret void
}

; std::io::BufRead::read_line
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2io7BufRead9read_line17ha5d30085a5bbb0e8E(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40), %"alloc::string::String"* align 8 dereferenceable(24) %buf) unnamed_addr #1 {
start:
  %_4 = alloca i64*, align 8
  %self = alloca %"std::io::buffered::BufReader<std::fs::File>"*, align 8
  store %"std::io::buffered::BufReader<std::fs::File>"* %1, %"std::io::buffered::BufReader<std::fs::File>"** %self, align 8
  %2 = bitcast i64** %_4 to %"std::io::buffered::BufReader<std::fs::File>"***
  store %"std::io::buffered::BufReader<std::fs::File>"** %self, %"std::io::buffered::BufReader<std::fs::File>"*** %2, align 8
  %3 = load i64*, i64** %_4, align 8, !nonnull !2
; call std::io::append_to_string
  call void @_ZN3std2io16append_to_string17h22d0f02be3bf861eE(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, %"alloc::string::String"* align 8 dereferenceable(24) %buf, i64* align 8 dereferenceable(8) %3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; std::io::BufRead::read_line::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN3std2io7BufRead9read_line28_$u7b$$u7b$closure$u7d$$u7d$17h89cea78304e2159dE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), i64* align 8 dereferenceable(8) %arg0, %"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %b) unnamed_addr #1 {
start:
  %1 = bitcast i64* %arg0 to %"std::io::buffered::BufReader<std::fs::File>"**
  %2 = bitcast i64* %arg0 to %"std::io::buffered::BufReader<std::fs::File>"**
  %3 = load %"std::io::buffered::BufReader<std::fs::File>"*, %"std::io::buffered::BufReader<std::fs::File>"** %2, align 8, !nonnull !2
; call std::io::read_until
  call void @_ZN3std2io10read_until17h472b46f7df9cea60E(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, %"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %3, i8 10, %"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %b)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; std::io::buffered::BufReader<R>::with_capacity
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN3std2io8buffered18BufReader$LT$R$GT$13with_capacity17h6dc511eebe4e64a3E"(%"std::io::buffered::BufReader<std::fs::File>"* noalias nocapture sret dereferenceable(40), i64 %capacity, i32) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_20 = alloca i8, align 1
  %_19 = alloca i8, align 1
  %_18 = alloca %"alloc::vec::Vec<u8>", align 8
  %_16 = alloca i32, align 4
  %_10 = alloca i8, align 1
  %buffer = alloca %"alloc::vec::Vec<u8>", align 8
  %inner = alloca i32, align 4
  store i32 %1, i32* %inner, align 4
  store i8 0, i8* %_19, align 1
  store i8 0, i8* %_20, align 1
  store i8 1, i8* %_19, align 1
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17he92b5fa78959a43dE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24) %buffer, i64 %capacity)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb9, %bb10
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1
  resume { i8*, i32 } %7

bb2:                                              ; preds = %start
  store i8 1, i8* %_20, align 1
; invoke alloc::vec::Vec<T>::set_len
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$7set_len17hae9f683f451614ffE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %buffer, i64 %capacity)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
; invoke <std::fs::File as std::io::Read>::initializer
  %8 = invoke zeroext i1 @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$11initializer17h8e17dbeec691f47bE"(i32* noalias readonly align 4 dereferenceable(4) %inner)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %_10, align 1
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %10 = invoke { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h97ea3c9aa1c6148dE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %buffer)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %11 = extractvalue { [0 x i8]*, i64 } %10, 0
  %12 = extractvalue { [0 x i8]*, i64 } %10, 1
; invoke std::io::Initializer::initialize
  invoke void @_ZN3std2io11Initializer10initialize17h27bb4949aa91ec61E(i8* noalias readonly align 1 dereferenceable(1) %_10, [0 x i8]* nonnull align 1 %11, i64 %12)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_19, align 1
  %13 = load i32, i32* %inner, align 4
  store i32 %13, i32* %_16, align 4
  store i8 0, i8* %_20, align 1
  %14 = bitcast %"alloc::vec::Vec<u8>"* %_18 to i8*
  %15 = bitcast %"alloc::vec::Vec<u8>"* %buffer to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
; invoke alloc::vec::Vec<T>::into_boxed_slice
  %16 = invoke { [0 x i8]*, i64 } @"_ZN5alloc3vec12Vec$LT$T$GT$16into_boxed_slice17hf9c7a3fd06963516E"(%"alloc::vec::Vec<u8>"* noalias nocapture dereferenceable(24) %_18)
          to label %bb8 unwind label %cleanup2

bb7:                                              ; preds = %cleanup2
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h4190a6ebbeffadfaE(i32* align 4 dereferenceable(4) %_16) #12
  br label %bb12

bb8:                                              ; preds = %bb6
  %17 = extractvalue { [0 x i8]*, i64 } %16, 0
  %18 = extractvalue { [0 x i8]*, i64 } %16, 1
  %19 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %0, i32 0, i32 7
  %20 = load i32, i32* %_16, align 4
  store i32 %20, i32* %19, align 8
  %21 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %0 to { [0 x i8]*, i64 }*
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %21, i32 0, i32 0
  store [0 x i8]* %17, [0 x i8]** %22, align 8
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %21, i32 0, i32 1
  store i64 %18, i64* %23, align 8
  %24 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %0, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %0, i32 0, i32 5
  store i64 0, i64* %25, align 8
  store i8 0, i8* %_20, align 1
  ret void

bb9:                                              ; preds = %bb10
  store i8 0, i8* %_19, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h4190a6ebbeffadfaE(i32* align 4 dereferenceable(4) %inner) #12
  br label %bb1

bb10:                                             ; preds = %bb11, %bb12, %cleanup
  %26 = load i8, i8* %_19, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb9, label %bb1

bb11:                                             ; preds = %bb12
  store i8 0, i8* %_20, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hb3f84a622bbdc27fE(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %buffer) #12
  br label %bb10

bb12:                                             ; preds = %bb7, %cleanup1
  %28 = load i8, i8* %_20, align 1, !range !3
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb11, label %bb10

cleanup:                                          ; preds = %start
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %bb10

cleanup1:                                         ; preds = %bb5, %bb4, %bb3, %bb2
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  %37 = extractvalue { i8*, i32 } %35, 1
  %38 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %bb12

cleanup2:                                         ; preds = %bb6
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  %42 = extractvalue { i8*, i32 } %40, 1
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %bb7
}

; std::io::buffered::BufReader<R>::new
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN3std2io8buffered18BufReader$LT$R$GT$3new17h8a9bb8c9442d243cE"(%"std::io::buffered::BufReader<std::fs::File>"* noalias nocapture sret dereferenceable(40), i32 %inner) unnamed_addr #1 {
start:
; call std::io::buffered::BufReader<R>::with_capacity
  call void @"_ZN3std2io8buffered18BufReader$LT$R$GT$13with_capacity17h6dc511eebe4e64a3E"(%"std::io::buffered::BufReader<std::fs::File>"* noalias nocapture sret dereferenceable(40) %0, i64 8192, i32 %inner)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hf023860a8fd403c2E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 {
start:
  %_7 = alloca i8*, align 8
  %0 = bitcast i8** %_7 to void ()**
  store void ()* %main, void ()** %0, align 8
  %1 = bitcast i8** %_7 to {}*
; call std::rt::lang_start_internal
  %2 = call i64 @_ZN3std2rt19lang_start_internal17h9cd44eb8664c0278E({}* nonnull align 1 %1, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8**)* }* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; std::rt::lang_start::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0e190d26b7152ab9E"(i8** noalias readonly align 8 dereferenceable(8) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast i8** %arg0 to void ()**
  %1 = load void ()*, void ()** %0, align 8, !nonnull !2
  call void %1()
  br label %bb1

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %2 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4828aba117d42022E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %2
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h2e1c07787c41991fE(i8* noalias readonly align 1 dereferenceable(1) %self) unnamed_addr #0 {
start:
  %0 = load i8, i8* %self, align 1
  %1 = zext i8 %0 to i32
  ret i32 %1
}

; std::path::Path::new
; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17h829c9cf0adca3619E([0 x i8]* noalias nonnull readonly align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
; call std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for str>::as_ref
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h7704cc2d80101a12E"([0 x i8]* noalias nonnull readonly align 1 %s.0, i64 %s.1)
  %1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast %"std::ffi::os_str::OsStr"* %1 to %"std::path::Path"*
  %4 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %5 = insertvalue { %"std::path::Path"*, i64 } %4, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %5
}

; std::memchr::memchr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN3std6memchr6memchr17h3239efdc91a30e91E(i8 %needle, [0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
; call std::sys::unix::memchr::memchr
  %0 = call { i64, i64 } @_ZN3std3sys4unix6memchr6memchr17h00117751dbc1a40aE(i8 %needle, [0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; std::panicking::begin_panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
define internal void @_ZN3std9panicking11begin_panic17h8bc591753635f535E([0 x i8]* noalias nonnull readonly align 1 %msg.0, i64 %msg.1, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) %file_line_col) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_9 = alloca i64*, align 8
  %_7 = alloca { i8*, i64 }, align 8
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
  br i1 false, label %bb2, label %bb3

bb1:                                              ; preds = %bb6, %bb7
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb2:                                              ; preds = %start
  call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
; invoke std::panicking::begin_panic::PanicPayload<A>::new
  %6 = invoke { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17hd8eab0b8bda17064E"([0 x i8]* noalias nonnull readonly align 1 %msg.0, i64 %msg.1)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %cleanup1
  br label %bb7

bb5:                                              ; preds = %bb3
  store { i8*, i64 } %6, { i8*, i64 }* %_7, align 8
  %7 = bitcast { i8*, i64 }* %_7 to {}*
  %8 = bitcast i64** %_9 to {}**
  store {}* null, {}** %8, align 8
  %9 = load i64*, i64** %_9, align 8
; invoke std::panicking::rust_panic_with_hook
  invoke void @_ZN3std9panicking20rust_panic_with_hook17hb12bd3736bcb7a4fE({}* nonnull align 1 %7, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void ({ i8*, i64 }*)*, i64, i64, { {}*, [3 x i64]* } ({ i8*, i64 }*)*, { {}*, [3 x i64]* } ({ i8*, i64 }*)* }* @vtable.1 to [3 x i64]*), i64* noalias readonly align 8 dereferenceable_or_null(48) %9, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) %file_line_col)
          to label %unreachable unwind label %cleanup1

bb6:                                              ; preds = %bb7
  store i8 0, i8* %_11, align 1
  br label %bb1

bb7:                                              ; preds = %bb4, %cleanup
  %10 = load i8, i8* %_11, align 1, !range !3
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb6, label %bb1

cleanup:                                          ; preds = %bb3
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %bb7

unreachable:                                      ; preds = %bb5
  unreachable

cleanup1:                                         ; preds = %bb5
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %bb4
}

; std::panicking::begin_panic::PanicPayload<A>::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17hd8eab0b8bda17064E"([0 x i8]* noalias nonnull readonly align 1 %inner.0, i64 %inner.1) unnamed_addr #1 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %_0 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %inner.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %inner.1, i64* %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = insertvalue { i8*, i64 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i64 } %13, i64 %12, 1
  ret { i8*, i64 } %14
}

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3fbcd9f413dc809cE"(i32** noalias readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #1 {
start:
  %0 = load i32*, i32** %self, align 8, !nonnull !2
; call core::fmt::num::<impl core::fmt::Debug for u32>::fmt
  %1 = call zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hba92653e7357acb3E"(i32* noalias readonly align 4 dereferenceable(4) %0, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %1
}

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac518cac536385a9E"(i64** noalias readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #1 {
start:
  %0 = load i64*, i64** %self, align 8, !nonnull !2
; call core::fmt::num::<impl core::fmt::Debug for usize>::fmt
  %1 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbf1ab52420e592d6E"(i64* noalias readonly align 8 dereferenceable(8) %0, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %1
}

; <&T as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab02f78835b2d3dfE"({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %1 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
; call <str as core::fmt::Display>::fmt
  %4 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h354afe01c03b7397E"([0 x i8]* noalias nonnull readonly align 1 %1, i64 %3, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; <u32 as core::ops::arith::Add>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN45_$LT$u32$u20$as$u20$core..ops..arith..Add$GT$3add17h2e9cd31ac4d96060E"(i32 %self, i32 %other) unnamed_addr #0 {
start:
  %0 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %self, i32 %other)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %panic, label %bb1

bb1:                                              ; preds = %start
  ret i32 %1

panic:                                            ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.4 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; <std::fs::File as std::io::Read>::initializer
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$11initializer17h8e17dbeec691f47bE"(i32* noalias readonly align 4 dereferenceable(4) %self) unnamed_addr #0 {
start:
; call std::io::Initializer::nop
  %0 = call zeroext i1 @_ZN3std2io11Initializer3nop17he6431239b6e57f5dE()
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; <usize as core::ops::arith::Add>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN47_$LT$usize$u20$as$u20$core..ops..arith..Add$GT$3add17hf1ab003e3538c6c8E"(i64 %self, i64 %other) unnamed_addr #0 {
start:
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %other)
  %1 = extractvalue { i64, i1 } %0, 0
  %2 = extractvalue { i64, i1 } %0, 1
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %panic, label %bb1

bb1:                                              ; preds = %start
  ret i64 %1

panic:                                            ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.4 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; <[T] as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c65a5472cd80fa5E"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #1 {
start:
  %_6 = alloca %"core::fmt::builders::DebugList", align 8
; call core::fmt::Formatter::debug_list
  call void @_ZN4core3fmt9Formatter10debug_list17hde557362e6b33b2eE(%"core::fmt::builders::DebugList"* noalias nocapture sret dereferenceable(16) %_6, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::iter
  %0 = call { i32*, i32* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf342370c7971263bE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1)
  %1 = extractvalue { i32*, i32* } %0, 0
  %2 = extractvalue { i32*, i32* } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::fmt::builders::DebugList::entries
  %3 = call align 8 dereferenceable(16) %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hde1ffe40484c5466E(%"core::fmt::builders::DebugList"* align 8 dereferenceable(16) %_6, i32* %1, i32* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::fmt::builders::DebugList::finish
  %4 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h796fd2901b76fbc1E(%"core::fmt::builders::DebugList"* align 8 dereferenceable(16) %3)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i1 %4
}

; core::intrinsics::write_bytes
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics11write_bytes17hb764dd49b2973f94E(i8* %dst, i8 %val, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h40e143e08364eb65E({ i8*, i64 }* %src, { i8*, i64 }* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 16, %count
  %1 = bitcast { i8*, i64 }* %dst to i8*
  %2 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h5c8df3309f91cf5eE({ i8*, i64 }* %src, { i8*, i64 }* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 16, %count
  %1 = bitcast { i8*, i64 }* %dst to i8*
  %2 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %src, i8* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17hf2be61a87952cb10E(%"alloc::alloc::Global"* %src, %"alloc::alloc::Global"* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 0, %count
  %1 = bitcast %"alloc::alloc::Global"* %dst to i8*
  %2 = bitcast %"alloc::alloc::Global"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::any::TypeId::of
; Function Attrs: nonlazybind uwtable
define internal i64 @_ZN4core3any6TypeId2of17h302339bb857f123bE() unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  %_0 = alloca i64, align 8
  store i64 7549865886324542212, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %0, i64* %_0, align 8
  %1 = load i64, i64* %_0, align 8
  ret i64 %1
}

; core::any::TypeId::of
; Function Attrs: nonlazybind uwtable
define internal i64 @_ZN4core3any6TypeId2of17ha33c34132dfab004E() unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  %_0 = alloca i64, align 8
  store i64 1229646359891580772, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %0, i64* %_0, align 8
  %1 = load i64, i64* %_0, align 8
  ret i64 %1
}

; core::cmp::Ord::max
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3max17h96cadf1280d1d535E(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_0 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 0, i8* %_6, align 1
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_6, align 1
  store i8 1, i8* %_7, align 1
; invoke core::cmp::impls::<impl core::cmp::PartialOrd for usize>::ge
  %2 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17h744d710afb0d3c65E"(i64* noalias readonly align 8 dereferenceable(8) %other, i64* noalias readonly align 8 dereferenceable(8) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb10, %bb3
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

bb2:                                              ; preds = %start
  br i1 %2, label %bb5, label %bb6

bb3:                                              ; preds = %bb4
  %9 = load i8, i8* %_6, align 1, !range !3
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb10, label %bb1

bb4:                                              ; preds = %cleanup
  store i8 0, i8* %_7, align 1
  br label %bb3

bb5:                                              ; preds = %bb2
  store i8 0, i8* %_7, align 1
  %11 = load i64, i64* %other, align 8
  store i64 %11, i64* %_0, align 8
  br label %bb7

bb6:                                              ; preds = %bb2
  store i8 0, i8* %_6, align 1
  %12 = load i64, i64* %self, align 8
  store i64 %12, i64* %_0, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, i8* %_7, align 1, !range !3
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb11, label %bb8

bb8:                                              ; preds = %bb11, %bb7
  %15 = load i8, i8* %_6, align 1, !range !3
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb9:                                              ; preds = %bb12, %bb8
  %17 = load i64, i64* %_0, align 8
  ret i64 %17

bb10:                                             ; preds = %bb3
  store i8 0, i8* %_6, align 1
  br label %bb1

bb11:                                             ; preds = %bb7
  store i8 0, i8* %_7, align 1
  br label %bb8

bb12:                                             ; preds = %bb8
  store i8 0, i8* %_6, align 1
  br label %bb9

cleanup:                                          ; preds = %start
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb4
}

; core::cmp::Ord::min
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17hff8e74b730297f5aE(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_0 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 0, i8* %_6, align 1
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_6, align 1
  store i8 1, i8* %_7, align 1
; invoke core::cmp::impls::<impl core::cmp::PartialOrd for usize>::le
  %2 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h48f2e55825e4953dE"(i64* noalias readonly align 8 dereferenceable(8) %self, i64* noalias readonly align 8 dereferenceable(8) %other)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb10, %bb3
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

bb2:                                              ; preds = %start
  br i1 %2, label %bb5, label %bb6

bb3:                                              ; preds = %bb4
  %9 = load i8, i8* %_6, align 1, !range !3
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb10, label %bb1

bb4:                                              ; preds = %cleanup
  store i8 0, i8* %_7, align 1
  br label %bb3

bb5:                                              ; preds = %bb2
  store i8 0, i8* %_6, align 1
  %11 = load i64, i64* %self, align 8
  store i64 %11, i64* %_0, align 8
  br label %bb7

bb6:                                              ; preds = %bb2
  store i8 0, i8* %_7, align 1
  %12 = load i64, i64* %other, align 8
  store i64 %12, i64* %_0, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, i8* %_7, align 1, !range !3
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb11, label %bb8

bb8:                                              ; preds = %bb11, %bb7
  %15 = load i8, i8* %_6, align 1, !range !3
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb9:                                              ; preds = %bb12, %bb8
  %17 = load i64, i64* %_0, align 8
  ret i64 %17

bb10:                                             ; preds = %bb3
  store i8 0, i8* %_6, align 1
  br label %bb1

bb11:                                             ; preds = %bb7
  store i8 0, i8* %_7, align 1
  br label %bb8

bb12:                                             ; preds = %bb8
  store i8 0, i8* %_6, align 1
  br label %bb9

cleanup:                                          ; preds = %start
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb4
}

; core::cmp::max
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3max17h3da27b910449c668E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
; call core::cmp::Ord::max
  %0 = call i64 @_ZN4core3cmp3Ord3max17h96cadf1280d1d535E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::min
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3min17h5fe1caffa6b3da49E(i64 %v1, i64 %v2) unnamed_addr #0 {
start:
; call core::cmp::Ord::min
  %0 = call i64 @_ZN4core3cmp3Ord3min17hff8e74b730297f5aE(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::impls::<impl core::cmp::PartialOrd for usize>::ge
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17h744d710afb0d3c65E"(i64* noalias readonly align 8 dereferenceable(8) %self, i64* noalias readonly align 8 dereferenceable(8) %other) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  %1 = load i64, i64* %other, align 8
  %2 = icmp uge i64 %0, %1
  ret i1 %2
}

; core::cmp::impls::<impl core::cmp::PartialOrd for usize>::le
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h48f2e55825e4953dE"(i64* noalias readonly align 8 dereferenceable(8) %self, i64* noalias readonly align 8 dereferenceable(8) %other) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
  %1 = load i64, i64* %other, align 8
  %2 = icmp ule i64 %0, %1
  ret i1 %2
}

; core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h2a349559795d63ccE"({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %self, { [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %1 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
; call core::str::traits::<impl core::cmp::PartialEq for str>::eq
  %8 = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h78f85f1c53e4e4c9E"([0 x i8]* noalias nonnull readonly align 1 %1, i64 %3, [0 x i8]* noalias nonnull readonly align 1 %5, i64 %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %8
}

; core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hda97e4a8ae3b1fbcE"({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %self, { [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %other) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %1 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %other, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
; call core::slice::<impl core::cmp::PartialEq<[B]> for [A]>::eq
  %8 = call zeroext i1 @"_ZN4core5slice81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hd798ecba6f7e74b9E"([0 x i8]* noalias nonnull readonly align 1 %1, i64 %3, [0 x i8]* noalias nonnull readonly align 1 %5, i64 %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %8
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h874f9884860177e6E(i32* noalias readonly align 4 dereferenceable(4) %x, i1 (i32*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (i32*, %"core::fmt::Formatter"*)**
  store i1 (i32*, %"core::fmt::Formatter"*)* %f, i1 (i32*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to i32**
  store i32* %x, i32** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h932ee9f760cc8792E({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %x, i1 ({ i8*, i64 }*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 ({ i8*, i64 }*, %"core::fmt::Formatter"*)**
  store i1 ({ i8*, i64 }*, %"core::fmt::Formatter"*)* %f, i1 ({ i8*, i64 }*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to { i8*, i64 }**
  store { i8*, i64 }* %x, { i8*, i64 }** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9af8e774b0b45ac0E({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)**
  store i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %x, { [0 x i8]*, i64 }** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9f4f20278ede914bE(%"core::alloc::LayoutErr"* noalias nonnull readonly align 1 %x, i1 (%"core::alloc::LayoutErr"*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (%"core::alloc::LayoutErr"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::alloc::LayoutErr"*, %"core::fmt::Formatter"*)* %f, i1 (%"core::alloc::LayoutErr"*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to %"core::alloc::LayoutErr"**
  store %"core::alloc::LayoutErr"* %x, %"core::alloc::LayoutErr"** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hb22ab475cf5c6e21E(i64* noalias readonly align 8 dereferenceable(8) %x, i1 (i64*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (i64*, %"core::fmt::Formatter"*)**
  store i1 (i64*, %"core::fmt::Formatter"*)* %f, i1 (i64*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to i64**
  store i64* %x, i64** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hb39a036a1d06b306E(i64** noalias readonly align 8 dereferenceable(8) %x, i1 (i64**, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (i64**, %"core::fmt::Formatter"*)**
  store i1 (i64**, %"core::fmt::Formatter"*)* %f, i1 (i64**, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to i64***
  store i64** %x, i64*** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hbf867313cc1a17a6E(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48) %x, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* %f, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to %"core::fmt::Arguments"**
  store %"core::fmt::Arguments"* %x, %"core::fmt::Arguments"** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hc350544b00c9b7e5E(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %x, i1 (%"alloc::vec::Vec<u32>"*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (%"alloc::vec::Vec<u32>"*, %"core::fmt::Formatter"*)**
  store i1 (%"alloc::vec::Vec<u32>"*, %"core::fmt::Formatter"*)* %f, i1 (%"alloc::vec::Vec<u32>"*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to %"alloc::vec::Vec<u32>"**
  store %"alloc::vec::Vec<u32>"* %x, %"alloc::vec::Vec<u32>"** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hef692d738a8d9b2bE(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %transmute_temp1 = alloca %"core::fmt::Void"*, align 8
  %transmute_temp = alloca i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp to i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)**
  store i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)** %0, align 8
  %1 = load i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %transmute_temp, align 8, !nonnull !2
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::fmt::Void"** %transmute_temp1 to %"alloc::string::String"**
  store %"alloc::string::String"* %x, %"alloc::string::String"** %2, align 8
  %3 = load %"core::fmt::Void"*, %"core::fmt::Void"** %transmute_temp1, align 8, !nonnull !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i8* }* %_0 to %"core::fmt::Void"**
  store %"core::fmt::Void"* %3, %"core::fmt::Void"** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %6 = bitcast i8** %5 to i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* %1, i1 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !nonnull !2
  %11 = insertvalue { i8*, i8* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i8* } %11, i8* %10, 1
  ret { i8*, i8* } %12
}

; core::fmt::num::<impl core::fmt::Debug for u32>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hba92653e7357acb3E"(i32* noalias readonly align 4 dereferenceable(4) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
; call core::fmt::Formatter::debug_lower_hex
  %0 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h9d614193026a11b5E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96) %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
; call core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
  %1 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17hca6f6aba863375f0E"(i32* noalias readonly align 4 dereferenceable(4) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %_0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb4:                                              ; preds = %bb1
; call core::fmt::Formatter::debug_upper_hex
  %3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hb3a17c3af21433f0E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96) %f)
  br label %bb5

bb5:                                              ; preds = %bb4
  br i1 %3, label %bb6, label %bb8

bb6:                                              ; preds = %bb5
; call core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
  %4 = call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h6ae37a85cb64b340E"(i32* noalias readonly align 4 dereferenceable(4) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %_0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb8:                                              ; preds = %bb5
; call core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
  %6 = call zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h63c921613965607cE"(i32* noalias readonly align 4 dereferenceable(4) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %_0, align 1
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %8 = load i8, i8* %_0, align 1, !range !3
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; core::fmt::num::<impl core::fmt::Debug for usize>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hbf1ab52420e592d6E"(i64* noalias readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
; call core::fmt::Formatter::debug_lower_hex
  %0 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h9d614193026a11b5E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96) %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
; call core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt
  %1 = call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h2752b1e42eb2a06bE"(i64* noalias readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %_0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb4:                                              ; preds = %bb1
; call core::fmt::Formatter::debug_upper_hex
  %3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hb3a17c3af21433f0E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96) %f)
  br label %bb5

bb5:                                              ; preds = %bb4
  br i1 %3, label %bb6, label %bb8

bb6:                                              ; preds = %bb5
; call core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt
  %4 = call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h1f86146cb8056ecbE"(i64* noalias readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %_0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb8:                                              ; preds = %bb5
; call core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt
  %6 = call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hd894ce7814f1f2b4E"(i64* noalias readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %_0, align 1
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %8 = load i8, i8* %_0, align 1, !range !3
  %9 = trunc i8 %8 to i1
  ret i1 %9
}

; core::fmt::builders::DebugList::entries
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(16) %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList7entries17hde1ffe40484c5466E(%"core::fmt::builders::DebugList"* align 8 dereferenceable(16) %self, i32* %entries.0, i32* %entries.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_20 = alloca i8, align 1
  %entry = alloca i32*, align 8
  %_8 = alloca i32*, align 8
  %iter = alloca { i32*, i32* }, align 8
  store i8 0, i8* %_20, align 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32*, i32* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2a98db4360d31616E"(i32* %entries.0, i32* %entries.1)
  %1 = extractvalue { i32*, i32* } %0, 0
  %2 = extractvalue { i32*, i32* } %0, 1
  br label %bb2

bb1:                                              ; preds = %bb4
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

bb2:                                              ; preds = %start
  %9 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %iter, i32 0, i32 0
  store i32* %1, i32** %9, align 8
  %10 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %iter, i32 0, i32 1
  store i32* %2, i32** %10, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb2
; invoke <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next
  %11 = invoke align 4 dereferenceable_or_null(4) i32* @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfc8333dd231bc597E"({ i32*, i32* }* align 8 dereferenceable(16) %iter)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %bb14, %bb15
  br label %bb1

bb5:                                              ; preds = %bb3
  store i32* %11, i32** %_8, align 8
  %12 = bitcast i32** %_8 to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %15 = select i1 %14, i64 0, i64 1
  switch i64 %15, label %bb6 [
    i64 0, label %bb8
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb5
  unreachable

bb7:                                              ; preds = %bb5
  %16 = load i32*, i32** %_8, align 8, !nonnull !2
  store i8 1, i8* %_20, align 1
  %17 = bitcast i32** %_8 to {}**
  %18 = load {}*, {}** %17, align 8
  %19 = icmp eq {}* %18, null
  %20 = select i1 %19, i64 0, i64 1
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %bb16, label %bb17

bb8:                                              ; preds = %bb5
  br label %bb9

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_20, align 1
  br label %bb13

bb10:                                             ; preds = %bb16
  br label %bb12

bb11:                                             ; preds = %cleanup1
  br label %bb15

bb12:                                             ; preds = %bb10
  store i8 0, i8* %_20, align 1
  br label %bb3

bb13:                                             ; preds = %bb9
  ret %"core::fmt::builders::DebugList"* %self

bb14:                                             ; preds = %bb15
  store i8 0, i8* %_20, align 1
  br label %bb4

bb15:                                             ; preds = %bb11, %cleanup
  %22 = load i8, i8* %_20, align 1, !range !3
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb14, label %bb4

bb16:                                             ; preds = %bb17, %bb7
  store i8 0, i8* %_20, align 1
  store i32* %16, i32** %entry, align 8
  %24 = bitcast i32** %entry to {}*
; invoke core::fmt::builders::DebugList::entry
  %25 = invoke align 8 dereferenceable(16) %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17ha53c3d0af4f15703E(%"core::fmt::builders::DebugList"* align 8 dereferenceable(16) %self, {}* nonnull align 1 %24, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i32**)*, i64, i64, i1 (i32**, %"core::fmt::Formatter"*)* }* @vtable.5 to [3 x i64]*))
          to label %bb10 unwind label %cleanup1

bb17:                                             ; preds = %bb7
  br label %bb16

cleanup:                                          ; preds = %bb3
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %bb15

cleanup1:                                         ; preds = %bb16
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb11
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48), [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_4 = alloca { i64*, i64 }, align 8
  %1 = bitcast { i64*, i64 }* %_4 to {}**
  store {}* null, {}** %1, align 8
  %2 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %3 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %2, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %3, align 8
  %4 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %2, i32 0, i32 1
  store i64 %pieces.1, i64* %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 3
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_4, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_4, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 0
  store i64* %7, i64** %10, align 8
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 5
  %13 = getelementptr inbounds { [0 x { i8*, i8* }]*, i64 }, { [0 x { i8*, i8* }]*, i64 }* %12, i32 0, i32 0
  store [0 x { i8*, i8* }]* %args.0, [0 x { i8*, i8* }]** %13, align 8
  %14 = getelementptr inbounds { [0 x { i8*, i8* }]*, i64 }, { [0 x { i8*, i8* }]*, i64 }* %12, i32 0, i32 1
  store i64 %args.1, i64* %14, align 8
  ret void
}

; core::mem::size_of_val
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11size_of_val17hdaba4eecb1b554dbE([0 x i8]* noalias nonnull readonly align 1 %val.0, i64 %val.1) unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = mul i64 %val.1, 1
  store i64 %0, i64* %tmp_ret, align 8
  %1 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::mem::swap
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem4swap17h46e128fe17a75fbeE({ i8*, i64 }* align 8 dereferenceable(16) %x, { i8*, i64 }* align 8 dereferenceable(16) %y) unnamed_addr #0 {
start:
; call core::ptr::swap_nonoverlapping_one
  call void @_ZN4core3ptr23swap_nonoverlapping_one17h247a5f3ec3ff80bdE({ i8*, i64 }* %x, { i8*, i64 }* %y)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem6forget17h04e71e6035cec7d8E({}* noalias nonnull align 1 %t.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %t.1) unnamed_addr #0 {
start:
  %_0.i = alloca { i8*, i64* }, align 8
  %0 = bitcast { i8*, i64* }* %_0.i to { {}*, [3 x i64]* }*
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %0, i32 0, i32 0
  store {}* %t.0, {}** %1, align 8, !noalias !6
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %0, i32 0, i32 1
  store [3 x i64]* %t.1, [3 x i64]** %2, align 8, !noalias !6
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_0.i, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !noalias !6, !nonnull !2
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_0.i, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !noalias !6, !nonnull !2
  %7 = insertvalue { i8*, i64* } undef, i8* %4, 0
  %8 = insertvalue { i8*, i64* } %7, i64* %6, 1
  %9 = extractvalue { i8*, i64* } %8, 0
  %10 = extractvalue { i8*, i64* } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem6forget17h7ece8451481b7667E(i8* nonnull %t.0, i64 %t.1) unnamed_addr #0 {
start:
  %_0.i = alloca { i8*, i64 }, align 8
  %0 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 0
  store i8* %t.0, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 1
  store i64 %t.1, i64* %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !nonnull !2
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i64 } %6, i64 %5, 1
  %8 = extractvalue { i8*, i64 } %7, 0
  %9 = extractvalue { i8*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem6forget17h9e811223138a9de9E(%"alloc::vec::Vec<u8>"* noalias nocapture dereferenceable(24) %t) unnamed_addr #0 {
start:
  %_2.i = alloca %"alloc::vec::Vec<u8>", align 8
  %_3 = alloca %"alloc::vec::Vec<u8>", align 8
  %_2 = alloca %"core::mem::ManuallyDrop<alloc::vec::Vec<u8>>", align 8
  %0 = bitcast %"alloc::vec::Vec<u8>"* %_3 to i8*
  %1 = bitcast %"alloc::vec::Vec<u8>"* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast %"alloc::vec::Vec<u8>"* %_2.i to i8*
  %3 = bitcast %"alloc::vec::Vec<u8>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false), !noalias !10
  %4 = bitcast %"core::mem::ManuallyDrop<alloc::vec::Vec<u8>>"* %_2 to %"alloc::vec::Vec<u8>"*
  %5 = bitcast %"alloc::vec::Vec<u8>"* %4 to i8*
  %6 = bitcast %"alloc::vec::Vec<u8>"* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false), !noalias !13
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem6forget17hf21e0e437d6ecaa9E([0 x i32]* noalias nonnull align 4 %t.0, i64 %t.1) unnamed_addr #0 {
start:
  %_0.i = alloca { i32*, i64 }, align 8
  %0 = bitcast { i32*, i64 }* %_0.i to { [0 x i32]*, i64 }*
  %1 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %0, i32 0, i32 0
  store [0 x i32]* %t.0, [0 x i32]** %1, align 8, !noalias !15
  %2 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %0, i32 0, i32 1
  store i64 %t.1, i64* %2, align 8, !noalias !15
  %3 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_0.i, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8, !noalias !15, !nonnull !2
  %5 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_0.i, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !noalias !15
  %7 = insertvalue { i32*, i64 } undef, i32* %4, 0
  %8 = insertvalue { i32*, i64 } %7, i64 %6, 1
  %9 = extractvalue { i32*, i64 } %8, 0
  %10 = extractvalue { i32*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::replace
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN4core3mem7replace17hace80fd0e472d5dfE({ i8*, i64 }* align 8 dereferenceable(16) %dest, i8* noalias readonly align 1, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %src = alloca { i8*, i64 }, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; invoke core::mem::swap
  invoke void @_ZN4core3mem4swap17h46e128fe17a75fbeE({ i8*, i64 }* align 8 dereferenceable(16) %dest, { i8*, i64 }* align 8 dereferenceable(16) %src)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15

bb3:                                              ; preds = %cleanup
  br label %bb1

cleanup:                                          ; preds = %start
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb3
}

; core::mem::size_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem7size_of17h47b2d41015953472E() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 4, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::size_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem7size_of17h4ac17df8cfdce96bE() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 16, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::size_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem7size_of17h592060904b8a69ffE() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 1, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::size_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem7size_of17h653a3b3c0e77a61fE() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 32, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::size_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem7size_of17h869455189d2d485bE() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 8, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::align_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 1, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::align_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem8align_of17h68b0f665a0d271d2E() unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 4, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::num::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num12NonZeroUsize13new_unchecked17hf1139cab4bf22240E(i64 %n) unnamed_addr #0 {
start:
  %_0 = alloca i64, align 8
  store i64 %n, i64* %_0, align 8
  %0 = load i64, i64* %_0, align 8, !range !18
  ret i64 %0
}

; core::num::NonZeroUsize::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num12NonZeroUsize3get17h5a3de4aca8950627E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; core::num::<impl usize>::checked_add
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hfd3b276676d6545cE"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %_0 = alloca { i64, i64 }, align 8
; call core::num::<impl usize>::overflowing_add
  %0 = call { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h41544c303faad7fcE"(i64 %self, i64 %rhs)
  %1 = extractvalue { i64, i8 } %0, 0
  %2 = extractvalue { i64, i8 } %0, 1
  %3 = trunc i8 %2 to i1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %4 = bitcast { i64, i64 }* %_0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %5 = bitcast { i64, i64 }* %_0 to %"core::option::Option<usize>::Some"*
  %6 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %5, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = bitcast { i64, i64 }* %_0 to i64*
  store i64 1, i64* %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !range !4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13
}

; core::num::<impl usize>::checked_mul
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h68611ef6e3a3d663E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %_0 = alloca { i64, i64 }, align 8
; call core::num::<impl usize>::overflowing_mul
  %0 = call { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h1b5068b6ba9731f7E"(i64 %self, i64 %rhs)
  %1 = extractvalue { i64, i8 } %0, 0
  %2 = extractvalue { i64, i8 } %0, 1
  %3 = trunc i8 %2 to i1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %4 = bitcast { i64, i64 }* %_0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %5 = bitcast { i64, i64 }* %_0 to %"core::option::Option<usize>::Some"*
  %6 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %5, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = bitcast { i64, i64 }* %_0 to i64*
  store i64 1, i64* %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !range !4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13
}

; core::num::<impl usize>::wrapping_add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17h28ede189b055d8a8E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = add i64 %self, %rhs
  store i64 %0, i64* %tmp_ret, align 8
  %1 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::num::<impl usize>::wrapping_sub
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = sub i64 %self, %rhs
  store i64 %0, i64* %tmp_ret, align 8
  %1 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::num::<impl usize>::saturating_mul
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h6d89b9f70b692ea8E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
; call core::num::<impl usize>::checked_mul
  %0 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h68611ef6e3a3d663E"(i64 %self, i64 %rhs)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::max_value
  %3 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$9max_value17h099bf99af4ab8d76E"()
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::unwrap_or
  %4 = call i64 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h2e8fcb3e537b7de4E"(i64 %1, i64 %2, i64 %3)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64 %4
}

; core::num::<impl usize>::is_power_of_two
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h1d901604f963b0cdE"(i64 %self) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
; call core::num::<impl usize>::wrapping_sub
  %0 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %self, i64 1)
  br label %bb4

bb1:                                              ; preds = %bb4
  store i8 0, i8* %_0, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %1 = icmp eq i64 %self, 0
  %2 = xor i1 %1, true
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %_0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_0, align 1, !range !3
  %5 = trunc i8 %4 to i1
  ret i1 %5

bb4:                                              ; preds = %start
  %6 = and i64 %0, %self
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %bb2, label %bb1
}

; core::num::<impl usize>::overflowing_add
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h41544c303faad7fcE"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %tmp_ret = alloca { i64, i8 }, align 8
  %_0 = alloca { i64, i8 }, align 8
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
  %1 = extractvalue { i64, i1 } %0, 0
  %2 = extractvalue { i64, i1 } %0, 1
  %3 = zext i1 %2 to i8
  %4 = bitcast { i64, i8 }* %tmp_ret to i64*
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1
  store i8 %3, i8* %5, align 8
  %6 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1
  %9 = load i8, i8* %8, align 8, !range !3
  %10 = trunc i8 %9 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %11 = bitcast { i64, i8 }* %_0 to i64*
  store i64 %7, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1
  %13 = zext i1 %10 to i8
  store i8 %13, i8* %12, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1
  %17 = load i8, i8* %16, align 8, !range !3
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i8
  %20 = insertvalue { i64, i8 } undef, i64 %15, 0
  %21 = insertvalue { i64, i8 } %20, i8 %19, 1
  ret { i64, i8 } %21
}

; core::num::<impl usize>::overflowing_mul
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h1b5068b6ba9731f7E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %tmp_ret = alloca { i64, i8 }, align 8
  %_0 = alloca { i64, i8 }, align 8
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %1 = extractvalue { i64, i1 } %0, 0
  %2 = extractvalue { i64, i1 } %0, 1
  %3 = zext i1 %2 to i8
  %4 = bitcast { i64, i8 }* %tmp_ret to i64*
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1
  store i8 %3, i8* %5, align 8
  %6 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1
  %9 = load i8, i8* %8, align 8, !range !3
  %10 = trunc i8 %9 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %11 = bitcast { i64, i8 }* %_0 to i64*
  store i64 %7, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1
  %13 = zext i1 %10 to i8
  store i8 %13, i8* %12, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1
  %17 = load i8, i8* %16, align 8, !range !3
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i8
  %20 = insertvalue { i64, i8 } undef, i64 %15, 0
  %21 = insertvalue { i64, i8 } %20, i8 %19, 1
  ret { i64, i8 } %21
}

; core::num::<impl usize>::max_value
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$9max_value17h099bf99af4ab8d76E"() unnamed_addr #0 {
start:
  ret i64 -1
}

; core::ops::range::RangeInclusive<Idx>::end
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(8) i64* @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3end17hea3f1cac3f2441e2E"(%"core::ops::range::RangeInclusive<usize>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %self, i32 0, i32 3
  ret i64* %0
}

; core::ops::range::RangeInclusive<Idx>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h5eff3040b4fbc566E"(%"core::ops::range::RangeInclusive<usize>"* noalias nocapture sret dereferenceable(24), i64 %start1, i64 %end) unnamed_addr #0 {
start:
  %_5 = alloca i8, align 1
  store i8 2, i8* %_5, align 1
  %1 = bitcast %"core::ops::range::RangeInclusive<usize>"* %0 to i64*
  store i64 %start1, i64* %1, align 8
  %2 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %0, i32 0, i32 3
  store i64 %end, i64* %2, align 8
  %3 = getelementptr inbounds %"core::ops::range::RangeInclusive<usize>", %"core::ops::range::RangeInclusive<usize>"* %0, i32 0, i32 5
  %4 = load i8, i8* %_5, align 1, !range !19
  store i8 %4, i8* %3, align 8
  ret void
}

; core::ops::range::RangeInclusive<Idx>::start
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(8) i64* @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$5start17h5c37d85b7fea163dE"(%"core::ops::range::RangeInclusive<usize>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"core::ops::range::RangeInclusive<usize>"* %self to i64*
  ret i64* %0
}

; core::ops::function::FnMut::call_mut
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN4core3ops8function5FnMut8call_mut17hc1baed387f1f99c3E({}* nonnull align 1 %arg0, i32, i32) unnamed_addr #1 {
start:
  %arg1 = alloca { i32, i32 }, align 4
  %2 = bitcast { i32, i32 }* %arg1 to i32*
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %arg1, i32 0, i32 1
  store i32 %1, i32* %3, align 4
  %4 = bitcast { i32, i32 }* %arg1 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %arg1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
; call <u32 as core::ops::arith::Add>::add
  %8 = call i32 @"_ZN45_$LT$u32$u20$as$u20$core..ops..arith..Add$GT$3add17h2e9cd31ac4d96060E"(i32 %5, i32 %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %8
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hae663ab919a77e25E"(i8** %arg0) unnamed_addr #1 {
start:
  %arg1 = alloca {}, align 1
  %0 = load i8*, i8** %arg0, align 8, !nonnull !2
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h91469acd2a3ab7f2E(i8* nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::ops::function::FnOnce::call_once
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h91469acd2a3ab7f2E(i8* nonnull) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %arg1 = alloca {}, align 1
  %arg0 = alloca i8*, align 8
  store i8* %0, i8** %arg0, align 8
; invoke std::rt::lang_start::{{closure}}
  %1 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0e190d26b7152ab9E"(i8** align 8 dereferenceable(8) %arg0)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1

bb3:                                              ; preds = %cleanup
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1
  resume { i8*, i32 } %7

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3
}

; core::ptr::Unique<T>::new_unchecked
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17h1d5febaaa742953fE"({}* %ptr.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %ptr.1) unnamed_addr #1 {
start:
  %_5 = alloca %"core::marker::PhantomData<core::any::Any>", align 1
  %_0 = alloca { i8*, i64* }, align 8
  %0 = bitcast { i8*, i64* }* %_0 to { {}*, [3 x i64]* }*
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %0, i32 0, i32 0
  store {}* %ptr.0, {}** %1, align 8
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %0, i32 0, i32 1
  store [3 x i64]* %ptr.1, [3 x i64]** %2, align 8
  %3 = bitcast { i8*, i64* }* %_0 to %"core::marker::PhantomData<core::any::Any>"*
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %_0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !2
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  ret { i8*, i64* } %9
}

; core::ptr::Unique<T>::new_unchecked
; Function Attrs: nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17h2f9ecae88fdfd6ecE"(i32* %ptr) unnamed_addr #1 {
start:
  %_5 = alloca %"core::marker::PhantomData<u32>", align 1
  %_0 = alloca i32*, align 8
  store i32* %ptr, i32** %_0, align 8
  %0 = bitcast i32** %_0 to %"core::marker::PhantomData<u32>"*
  %1 = load i32*, i32** %_0, align 8, !nonnull !2
  ret i32* %1
}

; core::ptr::Unique<T>::new_unchecked
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17hd010d6ba620ea1c8E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #1 {
start:
  %_5 = alloca %"core::marker::PhantomData<[u8]>", align 1
  %_0 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_0 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast { i8*, i64 }* %_0 to %"core::marker::PhantomData<[u8]>"*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; core::ptr::Unique<T>::new_unchecked
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17hfeb95b4af03c3c1eE"(i8* %ptr) unnamed_addr #1 {
start:
  %_5 = alloca %"core::marker::PhantomData<u8>", align 1
  %_0 = alloca i8*, align 8
  store i8* %ptr, i8** %_0, align 8
  %0 = bitcast i8** %_0 to %"core::marker::PhantomData<u8>"*
  %1 = load i8*, i8** %_0, align 8, !nonnull !2
  ret i8* %1
}

; core::ptr::Unique<T>::empty
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr15Unique$LT$T$GT$5empty17hd321f0f9ff9ca28fE"() unnamed_addr #1 {
start:
; call core::mem::align_of
  %0 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = inttoptr i64 %0 to i8*
; call core::ptr::Unique<T>::new_unchecked
  %2 = call nonnull i8* @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17hfeb95b4af03c3c1eE"(i8* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %2
}

; core::ptr::Unique<T>::as_mut
; Function Attrs: nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_mut17h384aeb6572b7aa42E"({ i8*, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %1 = load i8*, i8** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %3 = load i64*, i64** %2, align 8, !nonnull !2
; call core::ptr::Unique<T>::as_ptr
  %4 = call { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hf5d4a504bf78f1feE"(i8* nonnull %1, i64* noalias readonly align 8 dereferenceable(24) %3)
  %5 = extractvalue { {}*, [3 x i64]* } %4, 0
  %6 = extractvalue { {}*, [3 x i64]* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { {}*, [3 x i64]* } undef, {}* %5, 0
  %8 = insertvalue { {}*, [3 x i64]* } %7, [3 x i64]* %6, 1
  ret { {}*, [3 x i64]* } %8
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal i32* @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17h1b98ca4267d7e44dE"(i32* nonnull %self) unnamed_addr #1 {
start:
  ret i32* %self
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17h599909fd1fadc6feE"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self.0 to {}*
  %1 = bitcast i64* %self.1 to [3 x i64]*
  %2 = insertvalue { {}*, [3 x i64]* } undef, {}* %0, 0
  %3 = insertvalue { {}*, [3 x i64]* } %2, [3 x i64]* %1, 1
  ret { {}*, [3 x i64]* } %3
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17h9575c479c876339aE"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self.0 to [0 x i8]*
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %2
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal %"std::io::error::Custom"* @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17ha4a7cb001933ffbdE"(i64* nonnull %self) unnamed_addr #1 {
start:
  %0 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %0
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hc3c744971eb678aaE"(i32* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast i32* %self.0 to [0 x i32]*
  %1 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %0, 0
  %2 = insertvalue { [0 x i32]*, i64 } %1, i64 %self.1, 1
  ret { [0 x i32]*, i64 } %2
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal i8* @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hc830104fced25063E"(i8* nonnull %self) unnamed_addr #1 {
start:
  ret i8* %self
}

; core::ptr::Unique<T>::as_ptr
; Function Attrs: nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hf5d4a504bf78f1feE"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self.0 to {}*
  %1 = bitcast i64* %self.1 to [3 x i64]*
  %2 = insertvalue { {}*, [3 x i64]* } undef, {}* %0, 0
  %3 = insertvalue { {}*, [3 x i64]* } %2, [3 x i64]* %1, 1
  ret { {}*, [3 x i64]* } %3
}

; core::ptr::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h45308fd7d572427bE"(i8* %ptr) unnamed_addr #0 {
start:
  %_0 = alloca i8*, align 8
  store i8* %ptr, i8** %_0, align 8
  %0 = load i8*, i8** %_0, align 8, !nonnull !2
  ret i8* %0
}

; core::ptr::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h6c77f66d42498671E"(i32* %ptr) unnamed_addr #0 {
start:
  %_0 = alloca i32*, align 8
  store i32* %ptr, i32** %_0, align 8
  %0 = load i32*, i32** %_0, align 8, !nonnull !2
  ret i32* %0
}

; core::ptr::NonNull<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr16NonNull$LT$T$GT$3new17hcab81e40f261e30aE"(i8* %ptr) unnamed_addr #0 {
start:
  %_0 = alloca i8*, align 8
; call core::ptr::<impl *mut T>::is_null
  %0 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81630a2ce924e9baE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = xor i1 %0, true
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
; call core::ptr::NonNull<T>::new_unchecked
  %2 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h45308fd7d572427bE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %2, i8** %_0, align 8
  br label %bb5

bb4:                                              ; preds = %bb1
  %3 = bitcast i8** %_0 to {}**
  store {}* null, {}** %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %4 = load i8*, i8** %_0, align 8
  ret i8* %4
}

; core::ptr::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h4035dd144b5d99feE"(i32* nonnull %self) unnamed_addr #0 {
start:
; call core::ptr::NonNull<T>::as_ptr
  %0 = call i32* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h6469e4b4c471b6b6E"(i32* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i32* %0 to i8*
; call core::ptr::NonNull<T>::new_unchecked
  %2 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h45308fd7d572427bE"(i8* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %2
}

; core::ptr::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %self) unnamed_addr #0 {
start:
; call core::ptr::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h199e06d7666ffc1bE"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::NonNull<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h45308fd7d572427bE"(i8* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17hd4dc68bb516297e0E"(i8* nonnull %self) unnamed_addr #0 {
start:
; call core::ptr::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h199e06d7666ffc1bE"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8* %0 to i32*
; call core::ptr::NonNull<T>::new_unchecked
  %2 = call nonnull i32* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h6c77f66d42498671E"(i32* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32* %2
}

; core::ptr::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h199e06d7666ffc1bE"(i8* nonnull %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::ptr::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h6469e4b4c471b6b6E"(i32* nonnull %self) unnamed_addr #0 {
start:
  ret i32* %self
}

; core::ptr::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17hd9b5cf9919129599E"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self.0 to {}*
  %1 = bitcast i64* %self.1 to [3 x i64]*
  %2 = insertvalue { {}*, [3 x i64]* } undef, {}* %0, 0
  %3 = insertvalue { {}*, [3 x i64]* } %2, [3 x i64]* %1, 1
  ret { {}*, [3 x i64]* } %3
}

; core::ptr::NonNull<T>::dangling
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$8dangling17h5ec0213bf56fa858E"() unnamed_addr #0 {
start:
; call core::mem::align_of
  %0 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = inttoptr i64 %0 to i8*
; call core::ptr::NonNull<T>::new_unchecked
  %2 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$13new_unchecked17h45308fd7d572427bE"(i8* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %2
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h11c469ca13554a87E({}* nonnull align 1 %arg0.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %arg0.1) unnamed_addr #1 {
start:
  %0 = bitcast [3 x i64]* %arg0.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !2, !nonnull !2
  call void %2({}* align 1 %arg0.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h1465bfca74e90596E(i32** align 8 dereferenceable(8) %arg0) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h14a377da3589cddcE(%"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %0 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %arg0, i32 0, i32 7
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17h4190a6ebbeffadfaE(i32* align 4 dereferenceable(4) %0)
          to label %bb4 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %bb4
  ret void

bb3:                                              ; preds = %cleanup
  %7 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %arg0 to { [0 x i8]*, i64 }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h316d4f2f914a5cfbE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %7) #12
  br label %bb1

bb4:                                              ; preds = %start
  %8 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %arg0 to { [0 x i8]*, i64 }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h316d4f2f914a5cfbE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %8)
  br label %bb2

cleanup:                                          ; preds = %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h195fb2a9f44cf582E(%"core::result::Result<&[u8], std::io::error::Error>"* align 8 dereferenceable(24) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %arg0 to i64*
  %1 = load i64, i64* %0, align 8, !range !4
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %arg0 to %"core::result::Result<&[u8], std::io::error::Error>::Err"*
  %4 = getelementptr inbounds %"core::result::Result<&[u8], std::io::error::Error>::Err", %"core::result::Result<&[u8], std::io::error::Error>::Err"* %3, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %4)
  br label %bb1
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h274a8a217f6b2a6eE(%"core::result::Result<alloc::string::String, std::io::error::Error>"* align 8 dereferenceable(32) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %arg0 to i64*
  %1 = load i64, i64* %0, align 8, !range !4
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb2, label %bb3

bb1:                                              ; preds = %bb2, %bb3
  ret void

bb2:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %arg0 to %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"*
  %4 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok", %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"* %3, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %4)
  br label %bb1

bb3:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %arg0 to %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"*
  %6 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Err", %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"* %5, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %6)
  br label %bb1
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h29e642ed75c3b294E(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
  invoke void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15f3a4d951cb3e81E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %arg0)
          to label %bb4 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb2:                                              ; preds = %bb4
  ret void

bb3:                                              ; preds = %cleanup
  %6 = bitcast %"alloc::vec::Vec<u32>"* %arg0 to { i32*, i64 }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hd7d610c0003d8d7bE({ i32*, i64 }* align 8 dereferenceable(16) %6) #12
  br label %bb1

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u32>"* %arg0 to { i32*, i64 }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hd7d610c0003d8d7bE({ i32*, i64 }* align 8 dereferenceable(16) %7)
  br label %bb2

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h2b85e02e7b412fe3E({}* nonnull align 1 %arg0) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h2d0e5bd5179421e7E(%"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* align 8 dereferenceable(40) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %arg0 to %"std::io::buffered::BufReader<std::fs::File>"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h14a377da3589cddcE(%"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h316d4f2f914a5cfbE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  br label %bb3

bb1:                                              ; preds = %bb3
  ret void

bb2:                                              ; preds = %bb4
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb3:                                              ; preds = %start
  %6 = bitcast { [0 x i8]*, i64 }* %arg0 to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h2de6167c7ab3fdf7E(i8* nonnull %8, i64 %10)
  br label %bb1

bb4:                                              ; No predecessors!
  %11 = bitcast { [0 x i8]*, i64 }* %arg0 to { i8*, i64 }*
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !nonnull !2
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h2de6167c7ab3fdf7E(i8* nonnull %13, i64 %15) #12
  br label %bb2
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h3db1af61fc2be8f1E(i32* align 4 dereferenceable(4) %arg0) unnamed_addr #1 {
start:
; call <std::sys::unix::fd::FileDesc as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$std..sys..unix..fd..FileDesc$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdfe1be64d95c52f8E"(i32* align 4 dereferenceable(4) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h4190a6ebbeffadfaE(i32* align 4 dereferenceable(4) %arg0) unnamed_addr #1 {
start:
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h77a93e820be800dfE(i32* align 4 dereferenceable(4) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h4778a085aa21cca2E(%"std::io::error::Repr"* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Repr"* %arg0 to i8*
  %1 = load i8, i8* %0, align 8, !range !19
  %2 = zext i8 %1 to i64
  switch i64 %2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
  ]

bb1:                                              ; preds = %bb2, %start, %start
  ret void

bb2:                                              ; preds = %start
  %3 = bitcast %"std::io::error::Repr"* %arg0 to %"std::io::error::Repr::Custom"*
  %4 = getelementptr inbounds %"std::io::error::Repr::Custom", %"std::io::error::Repr::Custom"* %3, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h95841912912099fcE(%"std::io::error::Custom"** align 8 dereferenceable(8) %4)
  br label %bb1
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h4f228827eac40069E({ i64*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
; call <std::io::Guard as core::ops::drop::Drop>::drop
  call void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca46b82eb547a0f5E"({ i64*, i64 }* align 8 dereferenceable(16) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %arg0 to %"alloc::vec::Vec<u8>"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hb3f84a622bbdc27fE(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h6a2b31df727b4a4eE(i8** align 8 dereferenceable(8) %arg0) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h77a93e820be800dfE(i32* align 4 dereferenceable(4) %arg0) unnamed_addr #1 {
start:
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h3db1af61fc2be8f1E(i32* align 4 dereferenceable(4) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h858fb983229c8843E({ i8*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h8cfcae9b4504e94cE(%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* align 8 dereferenceable(32) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %arg0 to i64*
  %1 = load i64, i64* %0, align 8, !range !20
  %2 = icmp eq i64 %1, 2
  %3 = select i1 %2, i64 0, i64 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %5 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %arg0 to %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"*
  %6 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"* %5 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h274a8a217f6b2a6eE(%"core::result::Result<alloc::string::String, std::io::error::Error>"* align 8 dereferenceable(32) %6)
  br label %bb1
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h90c9d4121ea23c62E({ [0 x i32]*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  br label %bb3

bb1:                                              ; preds = %bb3
  ret void

bb2:                                              ; preds = %bb4
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb3:                                              ; preds = %start
  %6 = bitcast { [0 x i32]*, i64 }* %arg0 to { i32*, i64 }*
  %7 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17hcb13562f8d63ce8aE(i32* nonnull %8, i64 %10)
  br label %bb1

bb4:                                              ; No predecessors!
  %11 = bitcast { [0 x i32]*, i64 }* %arg0 to { i32*, i64 }*
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8, !nonnull !2
  %14 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17hcb13562f8d63ce8aE(i32* nonnull %13, i64 %15) #12
  br label %bb2
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h95841912912099fcE(%"std::io::error::Custom"** align 8 dereferenceable(8) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %0 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %arg0, align 8, !nonnull !2
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17hc1eee214bbf268ceE(%"std::io::error::Custom"* align 8 dereferenceable(24) %0)
          to label %bb3 unwind label %cleanup

bb1:                                              ; preds = %bb3
  ret void

bb2:                                              ; preds = %bb4
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb3:                                              ; preds = %start
  %7 = bitcast %"std::io::error::Custom"** %arg0 to i64**
  %8 = load i64*, i64** %7, align 8, !nonnull !2
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h85879eafdf2eff2cE(i64* nonnull %8)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %9 = bitcast %"std::io::error::Custom"** %arg0 to i64**
  %10 = load i64*, i64** %9, align 8, !nonnull !2
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h85879eafdf2eff2cE(i64* nonnull %10) #12
  br label %bb2

cleanup:                                          ; preds = %start
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb4
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h9b79a35ec268aed7E(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* align 8 dereferenceable(48) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %arg0 to %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h2d0e5bd5179421e7E(%"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* align 8 dereferenceable(40) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17ha95fc9ef522a6adeE({ [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* align 8 dereferenceable(40) %arg0) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %arg0, i32 0, i32 3
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h274a8a217f6b2a6eE(%"core::result::Result<alloc::string::String, std::io::error::Error>"* align 8 dereferenceable(32) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hab86ae9b491f7b0dE(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* align 8 dereferenceable(40) %arg0) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>", %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %arg0, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !20
  %2 = icmp eq i64 %1, 2
  %3 = select i1 %2, i64 0, i64 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %5 = bitcast %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %arg0 to %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some"*
  %6 = bitcast %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some"* %5 to { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17ha95fc9ef522a6adeE({ [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* align 8 dereferenceable(40) %6)
  br label %bb1
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hb3f84a622bbdc27fE(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
  invoke void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f93ed98166dccd6E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %arg0)
          to label %bb4 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb2:                                              ; preds = %bb4
  ret void

bb3:                                              ; preds = %cleanup
  %6 = bitcast %"alloc::vec::Vec<u8>"* %arg0 to { i8*, i64 }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hcd98eb5be8d15d30E({ i8*, i64 }* align 8 dereferenceable(16) %6) #12
  br label %bb1

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u8>"* %arg0 to { i8*, i64 }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hcd98eb5be8d15d30E({ i8*, i64 }* align 8 dereferenceable(16) %7)
  br label %bb2

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hc0ec3c425c733586E({ {}*, [3 x i64]* }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %0 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %arg0, i32 0, i32 0
  %1 = load {}*, {}** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %arg0, i32 0, i32 1
  %3 = load [3 x i64]*, [3 x i64]** %2, align 8, !nonnull !2
  %4 = bitcast [3 x i64]* %3 to void ({}*)**
  %5 = getelementptr inbounds void ({}*)*, void ({}*)** %4, i64 0
  %6 = load void ({}*)*, void ({}*)** %5, align 8, !invariant.load !2, !nonnull !2
  invoke void %6({}* align 1 %1)
          to label %bb3 unwind label %cleanup

bb1:                                              ; preds = %bb3
  ret void

bb2:                                              ; preds = %bb4
  %7 = bitcast { i8*, i32 }* %personalityslot to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb3:                                              ; preds = %start
  %13 = bitcast { {}*, [3 x i64]* }* %arg0 to { i8*, i64* }*
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !nonnull !2
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8, !nonnull !2
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h23ac896dc963a886E(i8* nonnull %15, i64* noalias readonly align 8 dereferenceable(24) %17)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %18 = bitcast { {}*, [3 x i64]* }* %arg0 to { i8*, i64* }*
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !nonnull !2
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8, !nonnull !2
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h23ac896dc963a886E(i8* nonnull %20, i64* noalias readonly align 8 dereferenceable(24) %22) #12
  br label %bb2

cleanup:                                          ; preds = %start
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %bb4
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hc1eee214bbf268ceE(%"std::io::error::Custom"* align 8 dereferenceable(24) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Custom"* %arg0 to { {}*, [3 x i64]* }*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hcb035ead59afb08fE({ {}*, [3 x i64]* }* align 8 dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hcb035ead59afb08fE({ {}*, [3 x i64]* }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %0 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %arg0, i32 0, i32 0
  %1 = load {}*, {}** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %arg0, i32 0, i32 1
  %3 = load [3 x i64]*, [3 x i64]** %2, align 8, !nonnull !2
  %4 = bitcast [3 x i64]* %3 to void ({}*)**
  %5 = getelementptr inbounds void ({}*)*, void ({}*)** %4, i64 0
  %6 = load void ({}*)*, void ({}*)** %5, align 8, !invariant.load !2, !nonnull !2
  invoke void %6({}* align 1 %1)
          to label %bb3 unwind label %cleanup

bb1:                                              ; preds = %bb3
  ret void

bb2:                                              ; preds = %bb4
  %7 = bitcast { i8*, i32 }* %personalityslot to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb3:                                              ; preds = %start
  %13 = bitcast { {}*, [3 x i64]* }* %arg0 to { i8*, i64* }*
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !nonnull !2
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8, !nonnull !2
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h695c028a9a7e7601E(i8* nonnull %15, i64* noalias readonly align 8 dereferenceable(24) %17)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %18 = bitcast { {}*, [3 x i64]* }* %arg0 to { i8*, i64* }*
  %19 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !nonnull !2
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %18, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8, !nonnull !2
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h695c028a9a7e7601E(i8* nonnull %20, i64* noalias readonly align 8 dereferenceable(24) %22) #12
  br label %bb2

cleanup:                                          ; preds = %start
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %bb4
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hcd98eb5be8d15d30E({ i8*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0801a65309fabe0fE"({ i8*, i64 }* align 8 dereferenceable(16) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hd7d610c0003d8d7bE({ i32*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656dda41e2e5e3bE"({ i32*, i64 }* align 8 dereferenceable(16) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"std::io::error::Error"* %arg0 to %"std::io::error::Repr"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h4778a085aa21cca2E(%"std::io::error::Repr"* align 8 dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hefc2367b7e9e5fbcE({}* nonnull align 1 %arg0.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %arg0.1) unnamed_addr #1 {
start:
  %0 = bitcast [3 x i64]* %arg0.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !2, !nonnull !2
  call void %2({}* align 1 %arg0.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %arg0 to i64*
  %1 = load i64, i64* %0, align 8, !range !4
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %arg0 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %4 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %3, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %4)
  br label %bb1
}

; core::ptr::real_drop_in_place
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17hfc1d37c7a08f955dE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %arg0) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::swap_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping17h2bd04b49dc7ab7c3E({ i8*, i64 }* %x, { i8*, i64 }* %y, i64 %count) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %x to i8*
  %1 = bitcast { i8*, i64 }* %y to i8*
; call core::mem::size_of
  %2 = call i64 @_ZN4core3mem7size_of17h4ac17df8cfdce96bE()
  br label %bb1

bb1:                                              ; preds = %start
  %3 = mul i64 %2, %count
; call core::ptr::swap_nonoverlapping_bytes
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17h43a5bd7a1a910719E(i8* %0, i8* %1, i64 %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; core::ptr::swap_nonoverlapping_one
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr23swap_nonoverlapping_one17h247a5f3ec3ff80bdE({ i8*, i64 }* %x, { i8*, i64 }* %y) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  store i8 0, i8* %_18, align 1
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h4ac17df8cfdce96bE()
  br label %bb2

bb1:                                              ; preds = %bb10, %bb11
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = icmp ult i64 %0, 32
  br i1 %7, label %bb3, label %bb7

bb3:                                              ; preds = %bb2
  store i8 1, i8* %_18, align 1
; call core::ptr::read
  %8 = call { i8*, i64 } @_ZN4core3ptr4read17h12a3e32a5a529932E({ i8*, i64 }* %x)
  %9 = extractvalue { i8*, i64 } %8, 0
  %10 = extractvalue { i8*, i64 } %8, 1
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::intrinsics::copy_nonoverlapping
  invoke void @_ZN4core10intrinsics19copy_nonoverlapping17h5c8df3309f91cf5eE({ i8*, i64 }* %y, { i8*, i64 }* %x, i64 1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_18, align 1
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17hd1768e8f502150eaE({ i8*, i64 }* %y, i8* noalias readonly align 1 %9, i64 %10)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_18, align 1
  br label %bb9

bb7:                                              ; preds = %bb2
; call core::ptr::swap_nonoverlapping
  call void @_ZN4core3ptr19swap_nonoverlapping17h2bd04b49dc7ab7c3E({ i8*, i64 }* %x, { i8*, i64 }* %y, i64 1)
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb8, %bb6
  ret void

bb10:                                             ; preds = %bb11
  store i8 0, i8* %_18, align 1
  br label %bb1

bb11:                                             ; preds = %cleanup
  %11 = load i8, i8* %_18, align 1, !range !3
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb10, label %bb1

cleanup:                                          ; preds = %bb5, %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %bb11
}

; core::ptr::swap_nonoverlapping_bytes
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes17h43a5bd7a1a910719E(i8* %x, i8* %y, i64 %len) unnamed_addr #0 {
start:
  %t1 = alloca %"core::mem::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>", align 8
  %t = alloca <4 x i64>, align 32
  %i = alloca i64, align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h653a3b3c0e77a61fE()
  br label %bb1

bb1:                                              ; preds = %start
  store i64 0, i64* %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb11, %bb1
  %1 = load i64, i64* %i, align 8
  %2 = add i64 %1, %0
  %3 = icmp ule i64 %2, %len
  br i1 %3, label %bb4, label %bb3

bb3:                                              ; preds = %bb2
  %4 = load i64, i64* %i, align 8
  %5 = icmp ult i64 %4, %len
  br i1 %5, label %bb12, label %bb20

bb4:                                              ; preds = %bb2
  %6 = bitcast <4 x i64>* %t to {}*
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb5
  %7 = bitcast <4 x i64>* %t to i8*
  %8 = load i64, i64* %i, align 8
; call core::ptr::<impl *mut T>::add
  %9 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h513a4abb42d32901E"(i8* %x, i64 %8)
  br label %bb7

bb7:                                              ; preds = %bb6
  %10 = load i64, i64* %i, align 8
; call core::ptr::<impl *mut T>::add
  %11 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h513a4abb42d32901E"(i8* %y, i64 %10)
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %9, i8* %7, i64 %0)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %11, i8* %9, i64 %0)
  br label %bb10

bb10:                                             ; preds = %bb9
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %7, i8* %11, i64 %0)
  br label %bb11

bb11:                                             ; preds = %bb10
  %12 = load i64, i64* %i, align 8
  %13 = add i64 %12, %0
  store i64 %13, i64* %i, align 8
  br label %bb2

bb12:                                             ; preds = %bb3
  %14 = bitcast %"core::mem::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>"* %t1 to {}*
  br label %bb13

bb13:                                             ; preds = %bb12
  %15 = load i64, i64* %i, align 8
  %16 = sub i64 %len, %15
  %17 = bitcast %"core::mem::MaybeUninit<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>"* %t1 to %"core::mem::ManuallyDrop<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>"*
  %18 = bitcast %"core::mem::ManuallyDrop<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>"* %17 to %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"*
  br label %bb14

bb14:                                             ; preds = %bb13
  %19 = bitcast %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* %18 to i8*
  %20 = load i64, i64* %i, align 8
; call core::ptr::<impl *mut T>::add
  %21 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h513a4abb42d32901E"(i8* %x, i64 %20)
  br label %bb15

bb15:                                             ; preds = %bb14
  %22 = load i64, i64* %i, align 8
; call core::ptr::<impl *mut T>::add
  %23 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h513a4abb42d32901E"(i8* %y, i64 %22)
  br label %bb16

bb16:                                             ; preds = %bb15
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %21, i8* %19, i64 %16)
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %23, i8* %21, i64 %16)
  br label %bb18

bb18:                                             ; preds = %bb17
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %19, i8* %23, i64 %16)
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb20

bb20:                                             ; preds = %bb19, %bb3
  ret void
}

; core::ptr::<impl *mut T>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h15483c6fb3aa8038E"(i32* %self, i64 %count) unnamed_addr #0 {
start:
; call core::ptr::<impl *mut T>::offset
  %0 = call i32* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h698f31f3a475bbf6E"(i32* %self, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %0
}

; core::ptr::<impl *mut T>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h513a4abb42d32901E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
; call core::ptr::<impl *mut T>::offset
  %0 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h92037a7c21844171E"(i8* %self, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::ptr::<impl *mut T>::offset
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h698f31f3a475bbf6E"(i32* %self, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i32*, align 8
  %0 = getelementptr inbounds i32, i32* %self, i64 %count
  store i32* %0, i32** %tmp_ret, align 8
  %1 = load i32*, i32** %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %1
}

; core::ptr::<impl *mut T>::offset
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h92037a7c21844171E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i8*, align 8
  %0 = getelementptr inbounds i8, i8* %self, i64 %count
  store i8* %0, i8** %tmp_ret, align 8
  %1 = load i8*, i8** %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; core::ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h15f10a3a87700003E"(i32* %self) unnamed_addr #0 {
start:
  %0 = bitcast i32* %self to i8*
; call core::ptr::null_mut
  %1 = call i8* @_ZN4core3ptr8null_mut17h8dac6181ee80b872E()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = icmp eq i8* %0, %1
  ret i1 %2
}

; core::ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81630a2ce924e9baE"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::null_mut
  %0 = call i8* @_ZN4core3ptr8null_mut17h8dac6181ee80b872E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i8* %self, %0
  ret i1 %1
}

; core::ptr::<impl *const T>::wrapping_add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$12wrapping_add17h9987f0cfab639885E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
; call core::ptr::<impl *const T>::wrapping_offset
  %0 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17h3e4cb31731a67fbbE"(i8* %self, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::ptr::<impl *const T>::wrapping_offset
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17h3e4cb31731a67fbbE"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i8*, align 8
  %0 = getelementptr i8, i8* %self, i64 %count
  store i8* %0, i8** %tmp_ret, align 8
  %1 = load i8*, i8** %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; core::ptr::<impl *const T>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h104ee3166db6d565E"(i32* %self, i64 %count) unnamed_addr #0 {
start:
; call core::ptr::<impl *const T>::offset
  %0 = call i32* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17hf28d1907ef53bf7dE"(i32* %self, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %0
}

; core::ptr::<impl *const T>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h6382c2a38ab424a9E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
; call core::ptr::<impl *const T>::offset
  %0 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h7335ff09340acbc6E"(i8* %self, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::ptr::<impl *const T>::offset
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h7335ff09340acbc6E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i8*, align 8
  %0 = getelementptr inbounds i8, i8* %self, i64 %count
  store i8* %0, i8** %tmp_ret, align 8
  %1 = load i8*, i8** %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; core::ptr::<impl *const T>::offset
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17hf28d1907ef53bf7dE"(i32* %self, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i32*, align 8
  %0 = getelementptr inbounds i32, i32* %self, i64 %count
  store i32* %0, i32** %tmp_ret, align 8
  %1 = load i32*, i32** %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %1
}

; core::ptr::<impl *const T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4e8ac3715e01649dE"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::null
  %0 = call i8* @_ZN4core3ptr4null17h2081875afbaabcc2E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i8* %self, %0
  ret i1 %1
}

; core::ptr::<impl *const T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb6275bae240a8e80E"(i32* %self) unnamed_addr #0 {
start:
  %0 = bitcast i32* %self to i8*
; call core::ptr::null
  %1 = call i8* @_ZN4core3ptr4null17h2081875afbaabcc2E()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = icmp eq i8* %0, %1
  ret i1 %2
}

; core::ptr::null
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr4null17h2081875afbaabcc2E() unnamed_addr #0 {
start:
  ret i8* null
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN4core3ptr4read17h12a3e32a5a529932E({ i8*, i64 }* %src) unnamed_addr #0 {
start:
  %_0.i = alloca { i8*, i64 }, align 8
  %tmp = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_0.i to {}*
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  store { i8*, i64 } %6, { i8*, i64 }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5c8df3309f91cf5eE({ i8*, i64 }* %src, { i8*, i64 }* %tmp, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  %13 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %14 = insertvalue { i8*, i64 } %13, i64 %10, 1
  %15 = extractvalue { i8*, i64 } %14, 0
  %16 = extractvalue { i8*, i64 } %14, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %17 = insertvalue { i8*, i64 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i64 } %17, i64 %16, 1
  ret { i8*, i64 } %18
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr4read17hb0a75885f1a04642E(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
start:
  %_0.i = alloca %"core::mem::MaybeUninit<alloc::alloc::Global>", align 1
  %tmp = alloca %"core::mem::MaybeUninit<alloc::alloc::Global>", align 1
  %0 = bitcast %"core::mem::MaybeUninit<alloc::alloc::Global>"* %_0.i to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::mem::MaybeUninit<alloc::alloc::Global>"* %tmp to %"core::mem::ManuallyDrop<alloc::alloc::Global>"*
  %2 = bitcast %"core::mem::ManuallyDrop<alloc::alloc::Global>"* %1 to %"alloc::alloc::Global"*
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17hf2be61a87952cb10E(%"alloc::alloc::Global"* %src, %"alloc::alloc::Global"* %2, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN4core3ptr4read17hc2dabe0207c1d709E({ i8*, i64 }* %src) unnamed_addr #0 {
start:
  %_0.i = alloca { i8*, i64 }, align 8
  %tmp = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_0.i to {}*
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0.i, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  store { i8*, i64 } %6, { i8*, i64 }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h40e143e08364eb65E({ i8*, i64 }* %src, { i8*, i64 }* %tmp, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64 } %11, i64 %10, 1
  %13 = insertvalue { i8*, i64 } undef, i8* %8, 0
  %14 = insertvalue { i8*, i64 } %13, i64 %10, 1
  %15 = extractvalue { i8*, i64 } %14, 0
  %16 = extractvalue { i8*, i64 } %14, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %17 = insertvalue { i8*, i64 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i64 } %17, i64 %16, 1
  ret { i8*, i64 } %18
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17h87b7781840248bfdE({ i8*, i64 }* %dst, i8* nonnull %src.0, i64 %src.1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %dst, i32 0, i32 0
  store i8* %src.0, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %dst, i32 0, i32 1
  store i64 %src.1, i64* %1, align 8
  ret void
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17h8ce97eab2193685dE(i32* %dst, i32 %src) unnamed_addr #0 {
start:
  store i32 %src, i32* %dst, align 4
  ret void
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17hd1768e8f502150eaE({ i8*, i64 }* %dst, i8* noalias readonly align 1 %src.0, i64 %src.1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %dst, i32 0, i32 0
  store i8* %src.0, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %dst, i32 0, i32 1
  store i64 %src.1, i64* %1, align 8
  ret void
}

; core::ptr::null_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr8null_mut17h8dac6181ee80b872E() unnamed_addr #0 {
start:
  ret i8* null
}

; core::str::unwrap_or_0
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3str11unwrap_or_017h42e05b7f487d178eE(i8* noalias readonly align 1 dereferenceable_or_null(1)) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
  %opt = alloca i8*, align 8
  store i8* %0, i8** %opt, align 8
  %1 = bitcast i8** %opt to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %4 = select i1 %3, i64 0, i64 1
  switch i64 %4, label %bb1 [
    i64 0, label %bb3
    i64 1, label %bb2
  ]

bb1:                                              ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %5 = load i8*, i8** %opt, align 8, !nonnull !2
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %_0, align 1
  br label %bb4

bb3:                                              ; preds = %start
  store i8 0, i8* %_0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %7 = load i8, i8* %_0, align 1
  ret i8 %7
}

; core::str::utf8_first_byte
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3str15utf8_first_byte17h8786d170845b2dc2E(i8 %byte, i32 %width) unnamed_addr #0 {
start:
  %0 = trunc i32 %width to i8
  %1 = and i8 %0, 7
  %2 = lshr i8 127, %1
  %3 = and i8 %byte, %2
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; core::str::utf8_is_cont_byte
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN4core3str17utf8_is_cont_byte17h9e7a305a1a77aed8E(i8 %byte) unnamed_addr #0 {
start:
  %0 = and i8 %byte, -64
  %1 = icmp eq i8 %0, -128
  ret i1 %1
}

; core::str::utf8_acc_cont_byte
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3str18utf8_acc_cont_byte17h10cc928054abdaf6E(i32 %ch, i8 %byte) unnamed_addr #0 {
start:
  %0 = shl i32 %ch, 6
  %1 = and i8 %byte, 63
  %2 = zext i8 %1 to i32
  %3 = or i32 %0, %2
  ret i32 %3
}

; core::str::from_utf8_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str19from_utf8_unchecked17h1b7fce7b9e729797E([0 x i8]* noalias nonnull readonly align 1 %v.0, i64 %v.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %v.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %v.1, 1
  ret { [0 x i8]*, i64 } %1
}

; core::str::<impl str>::is_char_boundary
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17hbc990623353aabe2E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
  %_2.i = alloca { i8*, i64 }, align 8
  %_10 = alloca i8*, align 8
  %_3 = alloca i8, align 1
  %_0 = alloca i8, align 1
  %0 = icmp eq i64 %index, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb2:                                              ; preds = %start
; call core::str::<impl str>::len
  %1 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb4

bb3:                                              ; preds = %bb4, %bb1
  %2 = load i8, i8* %_3, align 1, !range !3
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb7

bb4:                                              ; preds = %bb2
  %4 = icmp eq i64 %index, %1
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %_3, align 1
  br label %bb3

bb5:                                              ; preds = %bb3
  store i8 1, i8* %_0, align 1
  br label %bb6

bb6:                                              ; preds = %bb13, %bb5
  %6 = load i8, i8* %_0, align 1, !range !3
  %7 = trunc i8 %6 to i1
  ret i1 %7

bb7:                                              ; preds = %bb3
  %8 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %8, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %9, align 8, !noalias !21
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %8, i32 0, i32 1
  store i64 %self.1, i64* %10, align 8, !noalias !21
  %11 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8, !noalias !21, !nonnull !2
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !noalias !21
  %16 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %13, 0
  %17 = insertvalue { [0 x i8]*, i64 } %16, i64 %15, 1
  %18 = extractvalue { [0 x i8]*, i64 } %17, 0
  %19 = extractvalue { [0 x i8]*, i64 } %17, 1
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::slice::<impl [T]>::get
  %20 = call align 1 dereferenceable_or_null(1) i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h481edce028ea8763E"([0 x i8]* noalias nonnull readonly align 1 %18, i64 %19, i64 %index)
  store i8* %20, i8** %_10, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %21 = bitcast i8** %_10 to {}**
  %22 = load {}*, {}** %21, align 8
  %23 = icmp eq {}* %22, null
  %24 = select i1 %23, i64 0, i64 1
  switch i64 %24, label %bb10 [
    i64 0, label %bb11
    i64 1, label %bb12
  ]

bb10:                                             ; preds = %bb9
  unreachable

bb11:                                             ; preds = %bb9
  store i8 0, i8* %_0, align 1
  br label %bb13

bb12:                                             ; preds = %bb9
  %25 = load i8*, i8** %_10, align 8, !nonnull !2
  %26 = load i8, i8* %25, align 1
  %27 = icmp sge i8 %26, -64
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %_0, align 1
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  br label %bb6
}

; core::str::<impl str>::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.i = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8, !noalias !24
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8, !noalias !24
  %3 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !noalias !24, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !noalias !24
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %10 = extractvalue { [0 x i8]*, i64 } %9, 0
  %11 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::len
  %12 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %10, i64 %11)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %12
}

; core::str::<impl str>::chars
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6afff5120f044b83E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.i = alloca { i8*, i64 }, align 8
  %_0 = alloca { i8*, i8* }, align 8
  %0 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8, !noalias !27
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8, !noalias !27
  %3 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !noalias !27, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !noalias !27
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %10 = extractvalue { [0 x i8]*, i64 } %9, 0
  %11 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::iter
  %12 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h4587a83c6c580daeE"([0 x i8]* noalias nonnull readonly align 1 %10, i64 %11)
  %13 = extractvalue { i8*, i8* } %12, 0
  %14 = extractvalue { i8*, i8* } %12, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = insertvalue { i8*, i8* } undef, i8* %18, 0
  %22 = insertvalue { i8*, i8* } %21, i8* %20, 1
  ret { i8*, i8* } %22
}

; core::str::<impl str>::parse
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h98902f9deee6090eE"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %abi_cast = alloca i64, align 8
  %_0 = alloca %"core::result::Result<u32, core::num::ParseIntError>", align 4
; call core::num::<impl core::str::FromStr for u32>::from_str
  %0 = call i64 @"_ZN4core3num52_$LT$impl$u20$core..str..FromStr$u20$for$u20$u32$GT$8from_str17h60a47ebb9a2f2f32E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  store i64 %0, i64* %abi_cast, align 8
  %1 = bitcast %"core::result::Result<u32, core::num::ParseIntError>"* %_0 to i8*
  %2 = bitcast i64* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 8 %2, i64 8, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast %"core::result::Result<u32, core::num::ParseIntError>"* %_0 to i64*
  %4 = load i64, i64* %3, align 4
  ret i64 %4
}

; core::str::<impl str>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17hdef539896aac1871E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; core::str::<impl str>::ends_with
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$9ends_with17h8faf29b788ce3083E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %pat.0, i64 %pat.1) unnamed_addr #1 {
start:
; call <&str as core::str::pattern::Pattern>::is_suffix_of
  %0 = call zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h12cec75a82f0b273E"([0 x i8]* noalias nonnull readonly align 1 %pat.0, i64 %pat.1, [0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; core::str::next_code_point_reverse
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @_ZN4core3str23next_code_point_reverse17hf876e98a33e7881bE({ i8*, i8* }* align 8 dereferenceable(16) %bytes) unnamed_addr #0 {
start:
  %ch = alloca i32, align 4
  %_4 = alloca i8*, align 8
  %_0 = alloca { i32, i32 }, align 4
; call <core::slice::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %0 = call align 1 dereferenceable_or_null(1) i8* @"_ZN100_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h75ab70b66b86447eE"({ i8*, i8* }* align 8 dereferenceable(16) %bytes)
  br label %bb1

bb1:                                              ; preds = %start
; call <core::option::Option<T> as core::ops::try::Try>::into_result
  %1 = call align 1 dereferenceable_or_null(1) i8* @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h2d27ce842fd27b74E"(i8* noalias readonly align 1 dereferenceable_or_null(1) %0)
  store i8* %1, i8** %_4, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast i8** %_4 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %5 = select i1 %4, i64 1, i64 0
  switch i64 %5, label %bb3 [
    i64 0, label %bb9
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  unreachable

bb4:                                              ; preds = %bb2
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hecd8cccde7d1e353E"()
  br label %bb5

bb5:                                              ; preds = %bb4
; call <core::option::Option<T> as core::ops::try::Try>::from_error
  %6 = call { i32, i32 } @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h2f89be98de9d2671E"()
  store { i32, i32 } %6, { i32, i32 }* %_0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb8

bb7:                                              ; preds = %bb29, %bb8
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4, !range !30
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = insertvalue { i32, i32 } undef, i32 %8, 0
  %12 = insertvalue { i32, i32 } %11, i32 %10, 1
  ret { i32, i32 } %12

bb8:                                              ; preds = %bb11, %bb6
  br label %bb7

bb9:                                              ; preds = %bb2
  %13 = load i8*, i8** %_4, align 8, !nonnull !2
  %14 = load i8, i8* %13, align 1
  %15 = icmp ult i8 %14, -128
  br i1 %15, label %bb11, label %bb10

bb10:                                             ; preds = %bb9
  %16 = load i8, i8* %13, align 1
; call <core::slice::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %17 = call align 1 dereferenceable_or_null(1) i8* @"_ZN100_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h75ab70b66b86447eE"({ i8*, i8* }* align 8 dereferenceable(16) %bytes)
  br label %bb12

bb11:                                             ; preds = %bb9
  %18 = load i8, i8* %13, align 1
  %19 = zext i8 %18 to i32
  %20 = bitcast { i32, i32 }* %_0 to %"core::option::Option<u32>::Some"*
  %21 = getelementptr inbounds %"core::option::Option<u32>::Some", %"core::option::Option<u32>::Some"* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = bitcast { i32, i32 }* %_0 to i32*
  store i32 1, i32* %22, align 4
  br label %bb8

bb12:                                             ; preds = %bb10
; call core::str::unwrap_or_0
  %23 = call i8 @_ZN4core3str11unwrap_or_017h42e05b7f487d178eE(i8* noalias readonly align 1 dereferenceable_or_null(1) %17)
  br label %bb13

bb13:                                             ; preds = %bb12
; call core::str::utf8_first_byte
  %24 = call i32 @_ZN4core3str15utf8_first_byte17h8786d170845b2dc2E(i8 %23, i32 2)
  br label %bb14

bb14:                                             ; preds = %bb13
  store i32 %24, i32* %ch, align 4
; call core::str::utf8_is_cont_byte
  %25 = call zeroext i1 @_ZN4core3str17utf8_is_cont_byte17h9e7a305a1a77aed8E(i8 %23)
  br label %bb15

bb15:                                             ; preds = %bb14
  br i1 %25, label %bb16, label %bb28

bb16:                                             ; preds = %bb15
; call <core::slice::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %26 = call align 1 dereferenceable_or_null(1) i8* @"_ZN100_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h75ab70b66b86447eE"({ i8*, i8* }* align 8 dereferenceable(16) %bytes)
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::str::unwrap_or_0
  %27 = call i8 @_ZN4core3str11unwrap_or_017h42e05b7f487d178eE(i8* noalias readonly align 1 dereferenceable_or_null(1) %26)
  br label %bb18

bb18:                                             ; preds = %bb17
; call core::str::utf8_first_byte
  %28 = call i32 @_ZN4core3str15utf8_first_byte17h8786d170845b2dc2E(i8 %27, i32 3)
  br label %bb19

bb19:                                             ; preds = %bb18
  store i32 %28, i32* %ch, align 4
; call core::str::utf8_is_cont_byte
  %29 = call zeroext i1 @_ZN4core3str17utf8_is_cont_byte17h9e7a305a1a77aed8E(i8 %27)
  br label %bb20

bb20:                                             ; preds = %bb19
  br i1 %29, label %bb21, label %bb26

bb21:                                             ; preds = %bb20
; call <core::slice::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %30 = call align 1 dereferenceable_or_null(1) i8* @"_ZN100_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h75ab70b66b86447eE"({ i8*, i8* }* align 8 dereferenceable(16) %bytes)
  br label %bb22

bb22:                                             ; preds = %bb21
; call core::str::unwrap_or_0
  %31 = call i8 @_ZN4core3str11unwrap_or_017h42e05b7f487d178eE(i8* noalias readonly align 1 dereferenceable_or_null(1) %30)
  br label %bb23

bb23:                                             ; preds = %bb22
; call core::str::utf8_first_byte
  %32 = call i32 @_ZN4core3str15utf8_first_byte17h8786d170845b2dc2E(i8 %31, i32 4)
  br label %bb24

bb24:                                             ; preds = %bb23
  store i32 %32, i32* %ch, align 4
  %33 = load i32, i32* %ch, align 4
; call core::str::utf8_acc_cont_byte
  %34 = call i32 @_ZN4core3str18utf8_acc_cont_byte17h10cc928054abdaf6E(i32 %33, i8 %27)
  br label %bb25

bb25:                                             ; preds = %bb24
  store i32 %34, i32* %ch, align 4
  br label %bb26

bb26:                                             ; preds = %bb25, %bb20
  %35 = load i32, i32* %ch, align 4
; call core::str::utf8_acc_cont_byte
  %36 = call i32 @_ZN4core3str18utf8_acc_cont_byte17h10cc928054abdaf6E(i32 %35, i8 %23)
  br label %bb27

bb27:                                             ; preds = %bb26
  store i32 %36, i32* %ch, align 4
  br label %bb28

bb28:                                             ; preds = %bb27, %bb15
  %37 = load i32, i32* %ch, align 4
; call core::str::utf8_acc_cont_byte
  %38 = call i32 @_ZN4core3str18utf8_acc_cont_byte17h10cc928054abdaf6E(i32 %37, i8 %16)
  br label %bb29

bb29:                                             ; preds = %bb28
  store i32 %38, i32* %ch, align 4
  %39 = load i32, i32* %ch, align 4
  %40 = bitcast { i32, i32 }* %_0 to %"core::option::Option<u32>::Some"*
  %41 = getelementptr inbounds %"core::option::Option<u32>::Some", %"core::option::Option<u32>::Some"* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = bitcast { i32, i32 }* %_0 to i32*
  store i32 1, i32* %42, align 4
  br label %bb7
}

; core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::get_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17hfebad01b5ea3ad73E"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
; call core::str::<impl str>::as_ptr
  %0 = call i8* @"_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17hdef539896aac1871E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *const T>::add
  %1 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h6382c2a38ab424a9E"(i8* %0, i64 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::str::<impl str>::len
  %2 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = sub i64 %2, %self
; call core::slice::from_raw_parts
  %4 = call { [0 x i8]*, i64 } @_ZN4core5slice14from_raw_parts17h61ce1423689c514fE(i8* %1, i64 %3)
  %5 = extractvalue { [0 x i8]*, i64 } %4, 0
  %6 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::str::from_utf8_unchecked
  %7 = call { [0 x i8]*, i64 } @_ZN4core3str19from_utf8_unchecked17h1b7fce7b9e729797E([0 x i8]* noalias nonnull readonly align 1 %5, i64 %6)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h5c85ecbf9637e492E"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_0 = alloca { i8*, i64 }, align 8
; call core::str::<impl str>::is_char_boundary
  %0 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17hbc990623353aabe2E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1, i64 %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
; call core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::get_unchecked
  %1 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$13get_unchecked17hfebad01b5ea3ad73E"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast { i8*, i64 }* %_0 to { [0 x i8]*, i64 }*
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0
  store [0 x i8]* %2, [0 x i8]** %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6, align 8
  br label %bb5

bb4:                                              ; preds = %bb1
  %7 = bitcast { i8*, i64 }* %_0 to {}**
  store {}* null, {}** %7, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i8*, i64 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64 } %12, i64 %11, 1
  ret { i8*, i64 } %13
}

; core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17he43ebcee775f62dbE"(i64 %self, [0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #0 {
start:
  %_13 = alloca %"core::str::traits::{{impl}}::index::{{closure}}", align 8
  %_5 = alloca { i64, i64 }, align 8
  %end = alloca i64, align 8
  %start1 = alloca i64, align 8
  %slice = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %slice, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %slice, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %slice, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %slice, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
; call core::str::<impl str>::len
  %8 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %5, i64 %7)
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %_5 to i64*
  store i64 %self, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %_5 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %start1, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %end, align 8
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %slice, i32 0, i32 0
  %16 = load [0 x i8]*, [0 x i8]** %15, align 8, !nonnull !2
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %slice, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
; call core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::get
  %19 = call { i8*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h5c85ecbf9637e492E"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %16, i64 %18)
  %20 = extractvalue { i8*, i64 } %19, 0
  %21 = extractvalue { i8*, i64 } %19, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %22 = bitcast %"core::str::traits::{{impl}}::index::{{closure}}"* %_13 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %slice, { [0 x i8]*, i64 }** %22, align 8
  %23 = getelementptr inbounds %"core::str::traits::{{impl}}::index::{{closure}}", %"core::str::traits::{{impl}}::index::{{closure}}"* %_13, i32 0, i32 3
  store i64* %start1, i64** %23, align 8
  %24 = getelementptr inbounds %"core::str::traits::{{impl}}::index::{{closure}}", %"core::str::traits::{{impl}}::index::{{closure}}"* %_13, i32 0, i32 5
  store i64* %end, i64** %24, align 8
; call core::option::Option<T>::unwrap_or_else
  %25 = call { [0 x i8]*, i64 } @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hec9200e92dd2c6e5E"(i8* noalias readonly align 1 %20, i64 %21, %"core::str::traits::{{impl}}::index::{{closure}}"* noalias nocapture dereferenceable(24) %_13)
  %26 = extractvalue { [0 x i8]*, i64 } %25, 0
  %27 = extractvalue { [0 x i8]*, i64 } %25, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %28 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %26, 0
  %29 = insertvalue { [0 x i8]*, i64 } %28, i64 %27, 1
  ret { [0 x i8]*, i64 } %29
}

; core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::index::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17hf011a698be548037E"(%"core::str::traits::{{impl}}::index::{{closure}}"* noalias nocapture dereferenceable(24) %arg0) unnamed_addr #1 {
start:
  %0 = bitcast %"core::str::traits::{{impl}}::index::{{closure}}"* %arg0 to { [0 x i8]*, i64 }**
  %1 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %3 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !2
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %"core::str::traits::{{impl}}::index::{{closure}}", %"core::str::traits::{{impl}}::index::{{closure}}"* %arg0, i32 0, i32 3
  %7 = load i64*, i64** %6, align 8, !nonnull !2
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %"core::str::traits::{{impl}}::index::{{closure}}", %"core::str::traits::{{impl}}::index::{{closure}}"* %arg0, i32 0, i32 5
  %10 = load i64*, i64** %9, align 8, !nonnull !2
  %11 = load i64, i64* %10, align 8
; call core::str::slice_error_fail
  call void @_ZN4core3str16slice_error_fail17hc451bcd344c84b82E([0 x i8]* noalias nonnull readonly align 1 %3, i64 %5, i64 %8, i64 %11)
  unreachable
}

; core::str::traits::<impl core::cmp::PartialEq for str>::eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h78f85f1c53e4e4c9E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1) unnamed_addr #0 {
start:
  %_2.i1 = alloca { i8*, i64 }, align 8
  %_2.i = alloca { i8*, i64 }, align 8
  %_7 = alloca { [0 x i8]*, i64 }, align 8
  %_4 = alloca { [0 x i8]*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8, !noalias !31
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8, !noalias !31
  %3 = bitcast { i8*, i64 }* %_2.i to { [0 x i8]*, i64 }*
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !noalias !31, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !noalias !31
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  store { [0 x i8]*, i64 } %9, { [0 x i8]*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = bitcast { i8*, i64 }* %_2.i1 to { [0 x i8]*, i64 }*
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 0
  store [0 x i8]* %other.0, [0 x i8]** %11, align 8, !noalias !34
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %10, i32 0, i32 1
  store i64 %other.1, i64* %12, align 8, !noalias !34
  %13 = bitcast { i8*, i64 }* %_2.i1 to { [0 x i8]*, i64 }*
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 0
  %15 = load [0 x i8]*, [0 x i8]** %14, align 8, !noalias !34, !nonnull !2
  %16 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %13, i32 0, i32 1
  %17 = load i64, i64* %16, align 8, !noalias !34
  %18 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %15, 0
  %19 = insertvalue { [0 x i8]*, i64 } %18, i64 %17, 1
  store { [0 x i8]*, i64 } %19, { [0 x i8]*, i64 }* %_7, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::eq
  %20 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hda97e4a8ae3b1fbcE"({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %_4, { [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %_7)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i1 %20
}

; core::str::traits::<impl core::ops::index::Index<I> for str>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h854b63d6e5a213b1E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
; call core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::index
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17he43ebcee775f62dbE"(i64 %index, [0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::char::convert::from_u32_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core4char7convert18from_u32_unchecked17h4e568bceeb828bcdE(i32 %i) unnamed_addr #0 {
start:
  %transmute_temp = alloca i32, align 4
  store i32 %i, i32* %transmute_temp, align 4
  %0 = load i32, i32* %transmute_temp, align 4, !range !37
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; core::char::methods::<impl char>::len_utf8
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817he839bcd2c321b9c5E"(i32 %self) unnamed_addr #0 {
start:
  %_0 = alloca i64, align 8
  %0 = icmp ule i32 %self, 1114111
  call void @llvm.assume(i1 %0)
  %1 = icmp ult i32 %self, 128
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i64 1, i64* %_0, align 8
  br label %bb9

bb2:                                              ; preds = %start
  %2 = icmp ult i32 %self, 2048
  br i1 %2, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  store i64 2, i64* %_0, align 8
  br label %bb8

bb4:                                              ; preds = %bb2
  %3 = icmp ult i32 %self, 65536
  br i1 %3, label %bb5, label %bb6

bb5:                                              ; preds = %bb4
  store i64 3, i64* %_0, align 8
  br label %bb7

bb6:                                              ; preds = %bb4
  store i64 4, i64* %_0, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  br label %bb9

bb9:                                              ; preds = %bb8, %bb1
  %4 = load i64, i64* %_0, align 8
  ret i64 %4
}

; core::iter::traits::iterator::Iterator::map
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32*, i32* } @_ZN4core4iter6traits8iterator8Iterator3map17hee2149633d021fb7E(i32* %self.0, i32* %self.1) unnamed_addr #0 {
start:
; call core::iter::adapters::Map<I,F>::new
  %0 = call { i32*, i32* } @"_ZN4core4iter8adapters16Map$LT$I$C$F$GT$3new17h9f2b7363e9b78924E"(i32* %self.0, i32* %self.1)
  %1 = extractvalue { i32*, i32* } %0, 0
  %2 = extractvalue { i32*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32*, i32* } undef, i32* %1, 0
  %4 = insertvalue { i32*, i32* } %3, i32* %2, 1
  ret { i32*, i32* } %4
}

; core::iter::traits::iterator::Iterator::rev
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @_ZN4core4iter6traits8iterator8Iterator3rev17h59db50c3f7c4a6a8E(i8* %self.0, i8* %self.1) unnamed_addr #0 {
start:
; call core::iter::adapters::Rev<T>::new
  %0 = call { i8*, i8* } @"_ZN4core4iter8adapters12Rev$LT$T$GT$3new17he7634a50a6541b93E"(i8* %self.0, i8* %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; core::iter::traits::iterator::Iterator::sum
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN4core4iter6traits8iterator8Iterator3sum17hf9daba299e97471bE(i32* %self.0, i32* %self.1) unnamed_addr #1 {
start:
; call <u32 as core::iter::traits::accum::Sum>::sum
  %0 = call i32 @"_ZN54_$LT$u32$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17h61903a6c66315023E"(i32* %self.0, i32* %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; core::iter::traits::iterator::Iterator::enumerate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h57223d6371a83b6bE(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture sret dereferenceable(48), %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* noalias nocapture dereferenceable(40) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>", align 8
  %1 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %_2 to i8*
  %2 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 40, i1 false)
; call core::iter::adapters::Enumerate<I>::new
  call void @"_ZN4core4iter8adapters18Enumerate$LT$I$GT$3new17h11fc478d9e7f576bE"(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture sret dereferenceable(48) %0, %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* noalias nocapture dereferenceable(40) %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::iter::adapters::Rev<T>::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core4iter8adapters12Rev$LT$T$GT$3new17he7634a50a6541b93E"(i8* %iter.0, i8* %iter.1) unnamed_addr #1 {
start:
  %_0 = alloca { i8*, i8* }, align 8
  %0 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  store i8* %iter.0, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  store i8* %iter.1, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = insertvalue { i8*, i8* } undef, i8* %3, 0
  %7 = insertvalue { i8*, i8* } %6, i8* %5, 1
  ret { i8*, i8* } %7
}

; core::iter::adapters::Map<I,F>::new
; Function Attrs: nonlazybind uwtable
define internal { i32*, i32* } @"_ZN4core4iter8adapters16Map$LT$I$C$F$GT$3new17h9f2b7363e9b78924E"(i32* %iter.0, i32* %iter.1) unnamed_addr #1 {
start:
  %_0 = alloca { i32*, i32* }, align 8
  %0 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 0
  store i32* %iter.0, i32** %0, align 8
  %1 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 1
  store i32* %iter.1, i32** %1, align 8
  %2 = bitcast { i32*, i32* }* %_0 to %"main::{{closure}}"*
  %3 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 0
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = insertvalue { i32*, i32* } undef, i32* %4, 0
  %8 = insertvalue { i32*, i32* } %7, i32* %6, 1
  ret { i32*, i32* } %8
}

; core::iter::adapters::Enumerate<I>::new
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core4iter8adapters18Enumerate$LT$I$GT$3new17h11fc478d9e7f576bE"(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture sret dereferenceable(48), %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* noalias nocapture dereferenceable(40) %iter) unnamed_addr #1 {
start:
  %_2 = alloca %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>", align 8
  %1 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %_2 to i8*
  %2 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 40, i1 false)
  %3 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %0 to %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"*
  %4 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %3 to i8*
  %5 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 40, i1 false)
  %6 = getelementptr inbounds %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %0, i32 0, i32 3
  store i64 0, i64* %6, align 8
  ret void
}

; core::alloc::size_align
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc10size_align17ha2bf5ef8156f7dfaE() unnamed_addr #1 {
start:
  %_0 = alloca { i64, i64 }, align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb1

bb1:                                              ; preds = %start
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_0 to i64*
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; core::alloc::size_align
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc10size_align17hfd4b510f0608b848E() unnamed_addr #1 {
start:
  %_0 = alloca { i64, i64 }, align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb1

bb1:                                              ; preds = %start
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h68b0f665a0d271d2E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_0 to i64*
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; core::alloc::Layout::from_size_align
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6Layout15from_size_align17h6d6073e83facac76E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_14 = alloca {}, align 1
  %_13 = alloca %"core::alloc::LayoutErr", align 1
  %_7 = alloca {}, align 1
  %_6 = alloca %"core::alloc::LayoutErr", align 1
  %_0 = alloca { i64, i64 }, align 8
; call core::num::<impl usize>::is_power_of_two
  %0 = call zeroext i1 @"_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h1d901604f963b0cdE"(i64 %align)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = xor i1 %0, true
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %2 = bitcast %"core::alloc::LayoutErr"* %_6 to {}*
  %3 = bitcast { i64, i64 }* %_0 to %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"*
  %4 = bitcast %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"* %3 to %"core::alloc::LayoutErr"*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  br label %bb3

bb3:                                              ; preds = %bb7, %bb5, %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11

bb4:                                              ; preds = %bb1
  %12 = sub i64 %align, 1
  %13 = sub i64 -1, %12
  %14 = icmp ugt i64 %size, %13
  br i1 %14, label %bb5, label %bb6

bb5:                                              ; preds = %bb4
  %15 = bitcast %"core::alloc::LayoutErr"* %_13 to {}*
  %16 = bitcast { i64, i64 }* %_0 to %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"*
  %17 = bitcast %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"* %16 to %"core::alloc::LayoutErr"*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %bb3

bb6:                                              ; preds = %bb4
; call core::alloc::Layout::from_size_align_unchecked
  %19 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %size, i64 %align)
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  br label %bb7

bb7:                                              ; preds = %bb6
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %bb3
}

; core::alloc::Layout::padding_needed_for
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6Layout18padding_needed_for17he7219b88d00a41edE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %align) unnamed_addr #0 {
start:
; call core::alloc::Layout::size
  %0 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::wrapping_add
  %1 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17h28ede189b055d8a8E"(i64 %0, i64 %align)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::num::<impl usize>::wrapping_sub
  %2 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %1, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::num::<impl usize>::wrapping_sub
  %3 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %align, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = xor i64 %3, -1
  %5 = and i64 %2, %4
; call core::num::<impl usize>::wrapping_sub
  %6 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %5, i64 %0)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret i64 %6
}

; core::alloc::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_0 = alloca { i64, i64 }, align 8
; call core::num::NonZeroUsize::new_unchecked
  %0 = call i64 @_ZN4core3num12NonZeroUsize13new_unchecked17hf1139cab4bf22240E(i64 %align), !range !18
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %_0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !18
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; core::alloc::Layout::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6Layout3new17h4f1edd7f54a2161bE() unnamed_addr #0 {
start:
  %_8 = alloca { i64, i64 }, align 8
; call core::alloc::size_align
  %0 = call { i64, i64 } @_ZN4core5alloc10size_align17hfd4b510f0608b848E()
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 false, label %bb2, label %bb7

bb2:                                              ; preds = %bb1
; call core::alloc::Layout::from_size_align
  %3 = call { i64, i64 } @_ZN4core5alloc6Layout15from_size_align17h6d6073e83facac76E(i64 %1, i64 %2)
  store { i64, i64 } %3, { i64, i64 }* %_8, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::result::Result<T,E>::is_ok
  %4 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8af5902c4128fa77E"({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %_8)
  br label %bb4

bb4:                                              ; preds = %bb3
  %5 = xor i1 %4, true
  br i1 %5, label %bb5, label %bb6

bb5:                                              ; preds = %bb4
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @4 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb6:                                              ; preds = %bb4
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
; call core::alloc::Layout::from_size_align_unchecked
  %6 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %1, i64 %2)
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %9 = insertvalue { i64, i64 } undef, i64 %7, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; core::alloc::Layout::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6Layout3new17h64b7e00bfe5e53b1E() unnamed_addr #0 {
start:
  %_8 = alloca { i64, i64 }, align 8
; call core::alloc::size_align
  %0 = call { i64, i64 } @_ZN4core5alloc10size_align17ha2bf5ef8156f7dfaE()
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 false, label %bb2, label %bb7

bb2:                                              ; preds = %bb1
; call core::alloc::Layout::from_size_align
  %3 = call { i64, i64 } @_ZN4core5alloc6Layout15from_size_align17h6d6073e83facac76E(i64 %1, i64 %2)
  store { i64, i64 } %3, { i64, i64 }* %_8, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::result::Result<T,E>::is_ok
  %4 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8af5902c4128fa77E"({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %_8)
  br label %bb4

bb4:                                              ; preds = %bb3
  %5 = xor i1 %4, true
  br i1 %5, label %bb5, label %bb6

bb5:                                              ; preds = %bb4
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @4 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb6:                                              ; preds = %bb4
  br label %bb7

bb7:                                              ; preds = %bb6, %bb1
; call core::alloc::Layout::from_size_align_unchecked
  %6 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %1, i64 %2)
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %9 = insertvalue { i64, i64 } undef, i64 %7, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; core::alloc::Layout::size
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; core::alloc::Layout::align
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !18
; call core::num::NonZeroUsize::get
  %2 = call i64 @_ZN4core3num12NonZeroUsize3get17h5a3de4aca8950627E(i64 %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; core::alloc::Layout::array
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6Layout5array17h44c61d784d4488afE(i64 %n) unnamed_addr #0 {
start:
  %_6 = alloca %"core::alloc::{{impl}}::array::{{closure}}<u32>", align 1
  %_4 = alloca { i64, i64 }, align 8
  %_2 = alloca %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", align 8
; call core::alloc::Layout::new
  %0 = call { i64, i64 } @_ZN4core5alloc6Layout3new17h4f1edd7f54a2161bE()
  store { i64, i64 } %0, { i64, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::repeat
  call void @_ZN4core5alloc6Layout6repeat17hd19ed8c0468403dfE(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture sret dereferenceable(24) %_2, { i64, i64 }* noalias readonly align 8 dereferenceable(16) %_4, i64 %n)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::result::Result<T,E>::map
  %1 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h0cbad6176a3a39f6E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture dereferenceable(24) %_2)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; core::alloc::Layout::array
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6Layout5array17h963d77217f740491E(i64 %n) unnamed_addr #0 {
start:
  %_6 = alloca %"core::alloc::{{impl}}::array::{{closure}}<u8>", align 1
  %_4 = alloca { i64, i64 }, align 8
  %_2 = alloca %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", align 8
; call core::alloc::Layout::new
  %0 = call { i64, i64 } @_ZN4core5alloc6Layout3new17h64b7e00bfe5e53b1E()
  store { i64, i64 } %0, { i64, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::repeat
  call void @_ZN4core5alloc6Layout6repeat17hd19ed8c0468403dfE(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture sret dereferenceable(24) %_2, { i64, i64 }* noalias readonly align 8 dereferenceable(16) %_4, i64 %n)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::result::Result<T,E>::map
  %1 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$3map17hd4077ab670019765E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture dereferenceable(24) %_2)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; core::alloc::Layout::array::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core5alloc6Layout5array28_$u7b$$u7b$closure$u7d$$u7d$17h33d081a224816dfcE"({ [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* noalias nocapture dereferenceable(24) %arg1) unnamed_addr #1 {
start:
  %0 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %arg1 to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8, !range !18
  %5 = getelementptr inbounds { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %arg1, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  br i1 false, label %bb1, label %bb5

bb1:                                              ; preds = %start
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = icmp eq i64 %6, %7
  %9 = xor i1 %8, true
  br i1 %9, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @6 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb4, %start
  %10 = insertvalue { i64, i64 } undef, i64 %2, 0
  %11 = insertvalue { i64, i64 } %10, i64 %4, 1
  ret { i64, i64 } %11
}

; core::alloc::Layout::array::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core5alloc6Layout5array28_$u7b$$u7b$closure$u7d$$u7d$17h987e9c1a9cd77457E"({ [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* noalias nocapture dereferenceable(24) %arg1) unnamed_addr #1 {
start:
  %0 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %arg1 to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8, !range !18
  %5 = getelementptr inbounds { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %arg1, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  br i1 false, label %bb1, label %bb5

bb1:                                              ; preds = %start
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = icmp eq i64 %6, %7
  %9 = xor i1 %8, true
  br i1 %9, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @6 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb4, %start
  %10 = insertvalue { i64, i64 } undef, i64 %2, 0
  %11 = insertvalue { i64, i64 } %10, i64 %4, 1
  ret { i64, i64 } %11
}

; core::alloc::Layout::repeat
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core5alloc6Layout6repeat17hd19ed8c0468403dfE(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture sret dereferenceable(24), { i64, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %n) unnamed_addr #0 {
start:
  %_33 = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_27 = alloca {}, align 1
  %_26 = alloca %"core::alloc::LayoutErr", align 1
  %_21 = alloca { i64, i64 }, align 8
  %_14 = alloca {}, align 1
  %_13 = alloca %"core::alloc::LayoutErr", align 1
  %_4 = alloca { i64, i64 }, align 8
; call core::alloc::Layout::size
  %1 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::align
  %2 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::alloc::Layout::padding_needed_for
  %3 = call i64 @_ZN4core5alloc6Layout18padding_needed_for17he7219b88d00a41edE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %2)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::num::<impl usize>::checked_add
  %4 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hfd3b276676d6545cE"(i64 %1, i64 %3)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = bitcast %"core::alloc::LayoutErr"* %_13 to {}*
; call core::option::Option<T>::ok_or
  %8 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17ha02a29d217f431fbE"(i64 %5, i64 %6)
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  br label %bb5

bb5:                                              ; preds = %bb4
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  %11 = call { i64, i64 } @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8e54b5d36964f30bE"(i64 %9, i64 %10)
  store { i64, i64 } %11, { i64, i64 }* %_4, align 8
  br label %bb6

bb6:                                              ; preds = %bb5
  %12 = bitcast { i64, i64 }* %_4 to i64*
  %13 = load i64, i64* %12, align 8, !range !4
  switch i64 %13, label %bb7 [
    i64 0, label %bb13
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb16, %bb6
  unreachable

bb8:                                              ; preds = %bb6
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hdc1817bda7362ccfE"()
  br label %bb9

bb9:                                              ; preds = %bb8
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h41f0bda670223f38E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture sret dereferenceable(24) %0)
  br label %bb10

bb10:                                             ; preds = %bb9
  br label %bb12

bb11:                                             ; preds = %bb22, %bb12
  ret void

bb12:                                             ; preds = %bb19, %bb10
  br label %bb11

bb13:                                             ; preds = %bb6
  %14 = bitcast { i64, i64 }* %_4 to %"core::result::Result<usize, core::alloc::LayoutErr>::Ok"*
  %15 = getelementptr inbounds %"core::result::Result<usize, core::alloc::LayoutErr>::Ok", %"core::result::Result<usize, core::alloc::LayoutErr>::Ok"* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
; call core::num::<impl usize>::checked_mul
  %17 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h68611ef6e3a3d663E"(i64 %16, i64 %n)
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %20 = bitcast %"core::alloc::LayoutErr"* %_26 to {}*
; call core::option::Option<T>::ok_or
  %21 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17ha02a29d217f431fbE"(i64 %18, i64 %19)
  %22 = extractvalue { i64, i64 } %21, 0
  %23 = extractvalue { i64, i64 } %21, 1
  br label %bb15

bb15:                                             ; preds = %bb14
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  %24 = call { i64, i64 } @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8e54b5d36964f30bE"(i64 %22, i64 %23)
  store { i64, i64 } %24, { i64, i64 }* %_21, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  %25 = bitcast { i64, i64 }* %_21 to i64*
  %26 = load i64, i64* %25, align 8, !range !4
  switch i64 %26, label %bb7 [
    i64 0, label %bb20
    i64 1, label %bb17
  ]

bb17:                                             ; preds = %bb16
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hdc1817bda7362ccfE"()
  br label %bb18

bb18:                                             ; preds = %bb17
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h41f0bda670223f38E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture sret dereferenceable(24) %0)
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb12

bb20:                                             ; preds = %bb16
  %27 = bitcast { i64, i64 }* %_21 to %"core::result::Result<usize, core::alloc::LayoutErr>::Ok"*
  %28 = getelementptr inbounds %"core::result::Result<usize, core::alloc::LayoutErr>::Ok", %"core::result::Result<usize, core::alloc::LayoutErr>::Ok"* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
; call core::alloc::Layout::align
  %30 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  br label %bb21

bb21:                                             ; preds = %bb20
; call core::alloc::Layout::from_size_align_unchecked
  %31 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %29, i64 %30)
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = extractvalue { i64, i64 } %31, 1
  br label %bb22

bb22:                                             ; preds = %bb21
  %34 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_33 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = getelementptr inbounds { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_33, i32 0, i32 3
  store i64 %16, i64* %37, align 8
  %38 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %0 to %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok"*
  %39 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok"* %38 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
  %40 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %39 to i8*
  %41 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  br label %bb11
}

; core::slice::Iter<T>::as_slice
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice13Iter$LT$T$GT$8as_slice17h19819ef1a03a152dE"({ i8*, i8* }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_4.i = alloca i64, align 8
  %0 = bitcast { i8*, i8* }* %self to i8**
  %1 = load i8*, i8** %0, align 8, !alias.scope !38
  %2 = bitcast { i8*, i8* }* %self to i8**
  %3 = load i8*, i8** %2, align 8, !alias.scope !38
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8, !alias.scope !38
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %3 to i64
; call core::num::<impl usize>::wrapping_sub
  %8 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %6, i64 %7), !noalias !38
; call core::mem::size_of
  %9 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE(), !noalias !38
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %bb3.i, label %bb4.i

bb3.i:                                            ; preds = %start
  store i64 %8, i64* %_4.i, align 8, !noalias !38
  br label %"_ZN4core5slice13Iter$LT$T$GT$10make_slice17hd9f412f269cce8ecE.exit"

bb4.i:                                            ; preds = %start
  %11 = icmp eq i64 %9, 0
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false)
  br i1 %12, label %panic.i, label %bb5.i

bb5.i:                                            ; preds = %bb4.i
  %13 = udiv i64 %8, %9
  store i64 %13, i64* %_4.i, align 8, !noalias !38
  br label %"_ZN4core5slice13Iter$LT$T$GT$10make_slice17hd9f412f269cce8ecE.exit"

panic.i:                                          ; preds = %bb4.i
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.8 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !noalias !38
  unreachable

"_ZN4core5slice13Iter$LT$T$GT$10make_slice17hd9f412f269cce8ecE.exit": ; preds = %bb3.i, %bb5.i
  %14 = load i64, i64* %_4.i, align 8, !noalias !38
; call core::slice::from_raw_parts
  %15 = call { [0 x i8]*, i64 } @_ZN4core5slice14from_raw_parts17h61ce1423689c514fE(i8* %1, i64 %14), !noalias !38
  %16 = extractvalue { [0 x i8]*, i64 } %15, 0
  %17 = extractvalue { [0 x i8]*, i64 } %15, 1
  %18 = extractvalue { [0 x i8]*, i64 } %15, 0
  %19 = extractvalue { [0 x i8]*, i64 } %15, 1
  br label %bb1

bb1:                                              ; preds = %"_ZN4core5slice13Iter$LT$T$GT$10make_slice17hd9f412f269cce8ecE.exit"
  %20 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %18, 0
  %21 = insertvalue { [0 x i8]*, i64 } %20, i64 %19, 1
  ret { [0 x i8]*, i64 } %21
}

; core::slice::from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @_ZN4core5slice14from_raw_parts17h2c738df3b45220caE(i32* %data, i64 %len) unnamed_addr #0 {
start:
  %_23 = alloca { i32*, i64 }, align 8
  %_22 = alloca %"core::slice::Repr<u32>", align 8
  br i1 false, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %0 = ptrtoint i32* %data to i64
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h68b0f665a0d271d2E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = icmp eq i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %4 = urem i64 %0, %1
  %5 = icmp eq i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @9 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %start
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %bb6
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::num::<impl usize>::saturating_mul
  %8 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h6d89b9f70b692ea8E"(i64 %7, i64 %len)
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = icmp ule i64 %8, 9223372036854775807
  %10 = xor i1 %9, true
  br i1 %10, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @11 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb11:                                             ; preds = %bb9
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6
  %11 = bitcast { i32*, i64 }* %_23 to i32**
  store i32* %data, i32** %11, align 8
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_23, i32 0, i32 1
  store i64 %len, i64* %12, align 8
  %13 = bitcast %"core::slice::Repr<u32>"* %_22 to { i32*, i64 }*
  %14 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_23, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_23, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %13, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %13, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = bitcast %"core::slice::Repr<u32>"* %_22 to { [0 x i32]*, i64 }*
  %21 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %20, i32 0, i32 0
  %22 = load [0 x i32]*, [0 x i32]** %21, align 8, !nonnull !2
  %23 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %22, 0
  %26 = insertvalue { [0 x i32]*, i64 } %25, i64 %24, 1
  ret { [0 x i32]*, i64 } %26

panic:                                            ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.a to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; core::slice::from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core5slice14from_raw_parts17h61ce1423689c514fE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_23 = alloca { i8*, i64 }, align 8
  %_22 = alloca %"core::slice::Repr<u8>", align 8
  br i1 false, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %0 = ptrtoint i8* %data to i64
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = icmp eq i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %4 = urem i64 %0, %1
  %5 = icmp eq i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @9 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %start
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %bb6
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::num::<impl usize>::saturating_mul
  %8 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h6d89b9f70b692ea8E"(i64 %7, i64 %len)
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = icmp ule i64 %8, 9223372036854775807
  %10 = xor i1 %9, true
  br i1 %10, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @11 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb11:                                             ; preds = %bb9
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6
  %11 = bitcast { i8*, i64 }* %_23 to i8**
  store i8* %data, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_23, i32 0, i32 1
  store i64 %len, i64* %12, align 8
  %13 = bitcast %"core::slice::Repr<u8>"* %_22 to { i8*, i64 }*
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_23, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_23, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = bitcast %"core::slice::Repr<u8>"* %_22 to { [0 x i8]*, i64 }*
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  %22 = load [0 x i8]*, [0 x i8]** %21, align 8, !nonnull !2
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %22, 0
  %26 = insertvalue { [0 x i8]*, i64 } %25, i64 %24, 1
  ret { [0 x i8]*, i64 } %26

panic:                                            ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.a to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; core::slice::from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @_ZN4core5slice18from_raw_parts_mut17h6ee543b9c50f6bb9E(i32* %data, i64 %len) unnamed_addr #0 {
start:
  %_24 = alloca { i32*, i64 }, align 8
  %_23 = alloca %"core::slice::Repr<u32>", align 8
  br i1 false, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %0 = ptrtoint i32* %data to i64
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h68b0f665a0d271d2E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = icmp eq i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %4 = urem i64 %0, %1
  %5 = icmp eq i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @12 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %start
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %bb6
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::num::<impl usize>::saturating_mul
  %8 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h6d89b9f70b692ea8E"(i64 %7, i64 %len)
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = icmp ule i64 %8, 9223372036854775807
  %10 = xor i1 %9, true
  br i1 %10, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @13 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb11:                                             ; preds = %bb9
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6
  %11 = bitcast { i32*, i64 }* %_24 to i32**
  store i32* %data, i32** %11, align 8
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_24, i32 0, i32 1
  store i64 %len, i64* %12, align 8
  %13 = bitcast %"core::slice::Repr<u32>"* %_23 to { i32*, i64 }*
  %14 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_24, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_24, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %13, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %13, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = bitcast %"core::slice::Repr<u32>"* %_23 to { [0 x i32]*, i64 }*
  %21 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %20, i32 0, i32 0
  %22 = load [0 x i32]*, [0 x i32]** %21, align 8, !nonnull !2
  %23 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %22, 0
  %26 = insertvalue { [0 x i32]*, i64 } %25, i64 %24, 1
  ret { [0 x i32]*, i64 } %26

panic:                                            ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.b to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; core::slice::from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core5slice18from_raw_parts_mut17hf687a010146ec8f0E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_24 = alloca { i8*, i64 }, align 8
  %_23 = alloca %"core::slice::Repr<u8>", align 8
  br i1 false, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %0 = ptrtoint i8* %data to i64
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = icmp eq i64 %1, 0
  %3 = call i1 @llvm.expect.i1(i1 %2, i1 false)
  br i1 %3, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %4 = urem i64 %0, %1
  %5 = icmp eq i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @12 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %start
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %bb6
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::num::<impl usize>::saturating_mul
  %8 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h6d89b9f70b692ea8E"(i64 %7, i64 %len)
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = icmp ule i64 %8, 9223372036854775807
  %10 = xor i1 %9, true
  br i1 %10, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @13 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb11:                                             ; preds = %bb9
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6
  %11 = bitcast { i8*, i64 }* %_24 to i8**
  store i8* %data, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 1
  store i64 %len, i64* %12, align 8
  %13 = bitcast %"core::slice::Repr<u8>"* %_23 to { i8*, i64 }*
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = bitcast %"core::slice::Repr<u8>"* %_23 to { [0 x i8]*, i64 }*
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  %22 = load [0 x i8]*, [0 x i8]** %21, align 8, !nonnull !2
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %22, 0
  %26 = insertvalue { [0 x i8]*, i64 } %25, i64 %24, 1
  ret { [0 x i8]*, i64 } %26

panic:                                            ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.b to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; core::slice::<impl [T]>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h34d6a621f5558919E"([0 x i32]* nonnull align 4 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i32]* %self.0 to i32*
  ret i32* %0
}

; core::slice::<impl [T]>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hf9735092727bee5cE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; core::slice::<impl [T]>::copy_from_slice
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h8464ab3c04eea6adE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %src.0, i64 %src.1) unnamed_addr #1 {
start:
  %_30 = alloca %"core::fmt::Arguments", align 8
  %_28 = alloca i64*, align 8
  %_26 = alloca i64*, align 8
  %_24 = alloca { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }, align 8
  %_23 = alloca [3 x { i8*, i8* }], align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_8 = alloca i64, align 8
  %_5 = alloca i64, align 8
  %_3 = alloca { i64*, i64* }, align 8
; call core::slice::<impl [T]>::len
  %0 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  store i64 %0, i64* %_5, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::len
  %1 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %src.0, i64 %src.1)
  store i64 %1, i64* %_8, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64*, i64* }* %_3 to i64**
  store i64* %_5, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_3, i32 0, i32 1
  store i64* %_8, i64** %3, align 8
  %4 = bitcast { i64*, i64* }* %_3 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_3, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %8, %9
  %11 = xor i1 %10, true
  br i1 %11, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  store i64* %5, i64** %_26, align 8
  store i64* %7, i64** %_28, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_30, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8] }>* @19 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 bitcast (<{ [0 x i8] }>* @20 to [0 x { i8*, i8* }]*), i64 0)
  br label %bb5

bb4:                                              ; preds = %bb2
; call core::slice::<impl [T]>::as_ptr
  %12 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %src.0, i64 %src.1)
  br label %bb10

bb5:                                              ; preds = %bb3
  %13 = bitcast { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }* %_24 to i64***
  store i64** %_26, i64*** %13, align 8
  %14 = getelementptr inbounds { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }, { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }* %_24, i32 0, i32 3
  store i64** %_28, i64*** %14, align 8
  %15 = getelementptr inbounds { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }, { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }* %_24, i32 0, i32 5
  store %"core::fmt::Arguments"* %_30, %"core::fmt::Arguments"** %15, align 8
  %16 = bitcast { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }* %_24 to i64***
  %17 = load i64**, i64*** %16, align 8, !nonnull !2
  %18 = getelementptr inbounds { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }, { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }* %_24, i32 0, i32 3
  %19 = load i64**, i64*** %18, align 8, !nonnull !2
  %20 = getelementptr inbounds { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }, { [0 x i64], i64**, [0 x i64], i64**, [0 x i64], %"core::fmt::Arguments"*, [0 x i64] }* %_24, i32 0, i32 5
  %21 = load %"core::fmt::Arguments"*, %"core::fmt::Arguments"** %20, align 8, !nonnull !2
; call core::fmt::ArgumentV1::new
  %22 = call { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hb39a036a1d06b306E(i64** noalias readonly align 8 dereferenceable(8) %17, i1 (i64**, %"core::fmt::Formatter"*)* nonnull @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac518cac536385a9E")
  %23 = extractvalue { i8*, i8* } %22, 0
  %24 = extractvalue { i8*, i8* } %22, 1
  br label %bb6

bb6:                                              ; preds = %bb5
; call core::fmt::ArgumentV1::new
  %25 = call { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hb39a036a1d06b306E(i64** noalias readonly align 8 dereferenceable(8) %19, i1 (i64**, %"core::fmt::Formatter"*)* nonnull @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac518cac536385a9E")
  %26 = extractvalue { i8*, i8* } %25, 0
  %27 = extractvalue { i8*, i8* } %25, 1
  br label %bb7

bb7:                                              ; preds = %bb6
; call core::fmt::ArgumentV1::new
  %28 = call { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hbf867313cc1a17a6E(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48) %21, i1 (%"core::fmt::Arguments"*, %"core::fmt::Formatter"*)* nonnull @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h4f1f6e031efe982fE")
  %29 = extractvalue { i8*, i8* } %28, 0
  %30 = extractvalue { i8*, i8* } %28, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %31 = bitcast [3 x { i8*, i8* }]* %_23 to { i8*, i8* }*
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %31, i32 0, i32 0
  store i8* %23, i8** %32, align 8
  %33 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %31, i32 0, i32 1
  store i8* %24, i8** %33, align 8
  %34 = getelementptr inbounds [3 x { i8*, i8* }], [3 x { i8*, i8* }]* %_23, i32 0, i32 1
  %35 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 0
  store i8* %26, i8** %35, align 8
  %36 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 1
  store i8* %27, i8** %36, align 8
  %37 = getelementptr inbounds [3 x { i8*, i8* }], [3 x { i8*, i8* }]* %_23, i32 0, i32 2
  %38 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %37, i32 0, i32 0
  store i8* %29, i8** %38, align 8
  %39 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %37, i32 0, i32 1
  store i8* %30, i8** %39, align 8
  %40 = bitcast [3 x { i8*, i8* }]* %_23 to [0 x { i8*, i8* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_16, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @17 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %40, i64 3)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3d735cbb4b6fcb5bE(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_16, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @21 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb10:                                             ; preds = %bb4
; call core::slice::<impl [T]>::as_mut_ptr
  %41 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hf9735092727bee5cE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  br label %bb11

bb11:                                             ; preds = %bb10
; call core::slice::<impl [T]>::len
  %42 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb12

bb12:                                             ; preds = %bb11
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h5e5a55767a224286E(i8* %12, i8* %41, i64 %42)
  br label %bb13

bb13:                                             ; preds = %bb12
  ret void
}

; core::slice::<impl [T]>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hbe8447c9e7683e88E"([0 x i8]* nonnull align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
; call <core::ops::range::RangeFrom<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut
  %0 = call { [0 x i8]*, i64 } @"_ZN103_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17heee8884c5eb0e636E"(i64 %index, [0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::slice::<impl [T]>::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable_or_null(1) i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h481edce028ea8763E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
; call <usize as core::slice::SliceIndex<[T]>>::get
  %0 = call align 1 dereferenceable_or_null(1) i8* @"_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h14239c3f1498be6fE"(i64 %index, [0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::slice::<impl [T]>::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::slice::Repr<u8>", align 8
  %0 = bitcast %"core::slice::Repr<u8>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::slice::Repr<u8>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; core::slice::<impl [T]>::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hc70d987a2163e8adE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::slice::Repr<u32>", align 8
  %0 = bitcast %"core::slice::Repr<u32>"* %_2 to { [0 x i32]*, i64 }*
  %1 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %0, i32 0, i32 0
  store [0 x i32]* %self.0, [0 x i32]** %1, align 8
  %2 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::slice::Repr<u32>"* %_2 to { i32*, i64 }*
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; core::slice::<impl [T]>::iter
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h4587a83c6c580daeE"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_21 = alloca %"core::marker::PhantomData<&u8>", align 1
  %end = alloca i8*, align 8
  %_0 = alloca { i8*, i8* }, align 8
; call core::slice::<impl [T]>::as_ptr
  %0 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *const T>::is_null
  %1 = call zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h4e8ac3715e01649dE"(i8* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = xor i1 %1, true
  call void @llvm.assume(i1 %2)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::mem::size_of
  %3 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb5, label %bb8

bb5:                                              ; preds = %bb4
; call core::slice::<impl [T]>::len
  %5 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb6

bb6:                                              ; preds = %bb5
; call core::ptr::<impl *const T>::wrapping_add
  %6 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$12wrapping_add17h9987f0cfab639885E"(i8* %0, i64 %5)
  br label %bb7

bb7:                                              ; preds = %bb6
  store i8* %6, i8** %end, align 8
  br label %bb11

bb8:                                              ; preds = %bb4
; call core::slice::<impl [T]>::len
  %7 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::ptr::<impl *const T>::add
  %8 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h6382c2a38ab424a9E"(i8* %0, i64 %7)
  store i8* %8, i8** %end, align 8
  br label %bb10

bb10:                                             ; preds = %bb9
  br label %bb11

bb11:                                             ; preds = %bb10, %bb7
  %9 = load i8*, i8** %end, align 8
  %10 = bitcast { i8*, i8* }* %_0 to i8**
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = bitcast { i8*, i8* }* %_0 to %"core::marker::PhantomData<&u8>"*
  %13 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = insertvalue { i8*, i8* } undef, i8* %14, 0
  %18 = insertvalue { i8*, i8* } %17, i8* %16, 1
  ret { i8*, i8* } %18
}

; core::slice::<impl [T]>::iter
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32*, i32* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf342370c7971263bE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_21 = alloca %"core::marker::PhantomData<&u32>", align 1
  %end = alloca i32*, align 8
  %_0 = alloca { i32*, i32* }, align 8
; call core::slice::<impl [T]>::as_ptr
  %0 = call i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hedd377caa7bbd02cE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *const T>::is_null
  %1 = call zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb6275bae240a8e80E"(i32* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = xor i1 %1, true
  call void @llvm.assume(i1 %2)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::mem::size_of
  %3 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb5, label %bb8

bb5:                                              ; preds = %bb4
  %5 = bitcast i32* %0 to i8*
; call core::slice::<impl [T]>::len
  %6 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hc70d987a2163e8adE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1)
  br label %bb6

bb6:                                              ; preds = %bb5
; call core::ptr::<impl *const T>::wrapping_add
  %7 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$12wrapping_add17h9987f0cfab639885E"(i8* %5, i64 %6)
  br label %bb7

bb7:                                              ; preds = %bb6
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %end, align 8
  br label %bb11

bb8:                                              ; preds = %bb4
; call core::slice::<impl [T]>::len
  %9 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hc70d987a2163e8adE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::ptr::<impl *const T>::add
  %10 = call i32* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h104ee3166db6d565E"(i32* %0, i64 %9)
  store i32* %10, i32** %end, align 8
  br label %bb10

bb10:                                             ; preds = %bb9
  br label %bb11

bb11:                                             ; preds = %bb10, %bb7
  %11 = load i32*, i32** %end, align 8
  %12 = bitcast { i32*, i32* }* %_0 to i32**
  store i32* %0, i32** %12, align 8
  %13 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = bitcast { i32*, i32* }* %_0 to %"core::marker::PhantomData<&u32>"*
  %15 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %_0, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = insertvalue { i32*, i32* } undef, i32* %16, 0
  %20 = insertvalue { i32*, i32* } %19, i32* %18, 1
  ret { i32*, i32* } %20
}

; core::slice::<impl [T]>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; core::slice::<impl [T]>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hedd377caa7bbd02cE"([0 x i32]* noalias nonnull readonly align 4 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i32]* %self.0 to i32*
  ret i32* %0
}

; core::slice::<impl core::ops::index::Index<I> for [T]>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h633111c86077452eE"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
; call <core::ops::range::RangeToInclusive<usize> as core::slice::SliceIndex<[T]>>::index
  %0 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeToInclusive$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h8a2895c165f83406E"(i64 %index, [0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::slice::<impl core::ops::index::Index<I> for [T]>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h883d682ea82dff43E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, i64 %index.0, i64 %index.1) unnamed_addr #0 {
start:
; call <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index
  %0 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hb5c6615cd8cb2325E"(i64 %index.0, i64 %index.1, [0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::slice::<impl core::ops::index::Index<I> for [T]>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17ha8bcd627867e2570E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #0 {
start:
; call <core::ops::range::RangeFrom<usize> as core::slice::SliceIndex<[T]>>::index
  %0 = call { [0 x i8]*, i64 } @"_ZN103_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd3e7c413aabc6513E"(i64 %index, [0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h411a32176e8856cfE"([0 x i32]* nonnull align 4 %self.0, i64 %self.1) unnamed_addr #0 {
start:
; call <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
  %0 = call { [0 x i32]*, i64 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdfe45f572f261208E"([0 x i32]* nonnull align 4 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i32]*, i64 } %0, 0
  %2 = extractvalue { [0 x i32]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %1, 0
  %4 = insertvalue { [0 x i32]*, i64 } %3, i64 %2, 1
  ret { [0 x i32]*, i64 } %4
}

; core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9b32eae241cf3fcdE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
; call <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
  %0 = call { [0 x i8]*, i64 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h79fa7e22ad71cbdcE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::slice::<impl core::cmp::PartialEq<[B]> for [A]>::eq
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5slice81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17hd798ecba6f7e74b9E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
; call <[A] as core::slice::SlicePartialEq<A>>::equal
  %0 = call zeroext i1 @"_ZN68_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..SlicePartialEq$LT$A$GT$$GT$5equal17hb8549e6aeb3d0844E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; core::option::Option<T>::unwrap_or_else
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hd21b8965df6d4fbdE"(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca {}, align 1
  %_0 = alloca i64, align 8
  %self = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %4 = bitcast { i64, i64 }* %self to i64*
  %5 = load i64, i64* %4, align 8, !range !4
  switch i64 %5, label %bb2 [
    i64 0, label %bb4
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %12 = bitcast { i64, i64 }* %self to %"core::option::Option<usize>::Some"*
  %13 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %_0, align 8
  br label %bb6

bb4:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
; invoke alloc::raw_vec::RawVec<T,A>::allocate_in::{{closure}}
  %15 = invoke i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h86d7d4dd69e3dac7E"()
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i64 %15, i64* %_0, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %16 = load i8, i8* %_8, align 1, !range !3
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb12, label %bb7

bb7:                                              ; preds = %bb12, %bb6
  %18 = bitcast { i64, i64 }* %self to i64*
  %19 = load i64, i64* %18, align 8, !range !4
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %bb14, label %bb16

bb8:                                              ; preds = %bb11
  %21 = load i8, i8* %_7, align 1, !range !3
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb11
  br label %bb1

bb11:                                             ; preds = %cleanup
  %23 = bitcast { i64, i64 }* %self to i64*
  %24 = load i64, i64* %23, align 8, !range !4
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %bb8, label %bb10

bb12:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb13:                                             ; preds = %bb15, %bb14, %bb16
  %26 = load i64, i64* %_0, align 8
  ret i64 %26

bb14:                                             ; preds = %bb7
  %27 = load i8, i8* %_7, align 1, !range !3
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb15, label %bb13

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_7, align 1
  br label %bb13

bb16:                                             ; preds = %bb7
  br label %bb13

cleanup:                                          ; preds = %bb4
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  %31 = extractvalue { i8*, i32 } %29, 1
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %bb11
}

; core::option::Option<T>::unwrap_or_else
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hec9200e92dd2c6e5E"(i8* noalias readonly align 1, i64, %"core::str::traits::{{impl}}::index::{{closure}}"* noalias nocapture dereferenceable(24) %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca {}, align 1
  %_5 = alloca %"core::str::traits::{{impl}}::index::{{closure}}", align 8
  %_0 = alloca { [0 x i8]*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %4 = bitcast { i8*, i64 }* %self to {}**
  %5 = load {}*, {}** %4, align 8
  %6 = icmp eq {}* %5, null
  %7 = select i1 %6, i64 0, i64 1
  switch i64 %7, label %bb2 [
    i64 0, label %bb4
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %8 = bitcast { i8*, i32 }* %personalityslot to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %14 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %15 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %14, i32 0, i32 0
  %16 = load [0 x i8]*, [0 x i8]** %15, align 8, !nonnull !2
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_0, i32 0, i32 0
  store [0 x i8]* %16, [0 x i8]** %19, align 8
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_0, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %bb6

bb4:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %21 = bitcast %"core::str::traits::{{impl}}::index::{{closure}}"* %_5 to i8*
  %22 = bitcast %"core::str::traits::{{impl}}::index::{{closure}}"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
; invoke core::str::traits::<impl core::slice::SliceIndex<str> for core::ops::range::RangeFrom<usize>>::index::{{closure}}
  %23 = invoke { [0 x i8]*, i64 } @"_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17hf011a698be548037E"(%"core::str::traits::{{impl}}::index::{{closure}}"* noalias nocapture dereferenceable(24) %_5)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store { [0 x i8]*, i64 } %23, { [0 x i8]*, i64 }* %_0, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %24 = load i8, i8* %_8, align 1, !range !3
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb12, label %bb7

bb7:                                              ; preds = %bb12, %bb6
  %26 = bitcast { i8*, i64 }* %self to {}**
  %27 = load {}*, {}** %26, align 8
  %28 = icmp eq {}* %27, null
  %29 = select i1 %28, i64 0, i64 1
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %bb14, label %bb16

bb8:                                              ; preds = %bb11
  %31 = load i8, i8* %_7, align 1, !range !3
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb11
  br label %bb1

bb11:                                             ; preds = %cleanup
  %33 = bitcast { i8*, i64 }* %self to {}**
  %34 = load {}*, {}** %33, align 8
  %35 = icmp eq {}* %34, null
  %36 = select i1 %35, i64 0, i64 1
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %bb8, label %bb10

bb12:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb13:                                             ; preds = %bb15, %bb14, %bb16
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_0, i32 0, i32 0
  %39 = load [0 x i8]*, [0 x i8]** %38, align 8, !nonnull !2
  %40 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_0, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %39, 0
  %43 = insertvalue { [0 x i8]*, i64 } %42, i64 %41, 1
  ret { [0 x i8]*, i64 } %43

bb14:                                             ; preds = %bb7
  %44 = load i8, i8* %_7, align 1, !range !3
  %45 = trunc i8 %44 to i1
  br i1 %45, label %bb15, label %bb13

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_7, align 1
  br label %bb13

bb16:                                             ; preds = %bb7
  br label %bb13

cleanup:                                          ; preds = %bb4
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  %48 = extractvalue { i8*, i32 } %46, 1
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %bb11
}

; core::option::Option<T>::map
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$3map17h8c166908f6865ad1E"(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* noalias nocapture sret dereferenceable(40), %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* noalias nocapture dereferenceable(32) %self, i64* align 8 dereferenceable(8) %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_8 = alloca %"core::result::Result<alloc::string::String, std::io::error::Error>", align 8
  %_7 = alloca { [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, align 8
  %_5 = alloca { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, align 8
  %x = alloca %"core::result::Result<alloc::string::String, std::io::error::Error>", align 8
  store i8 0, i8* %_9, align 1
  store i8 0, i8* %_10, align 1
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_10, align 1
  %1 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !20
  %3 = icmp eq i64 %2, 2
  %4 = select i1 %3, i64 0, i64 1
  switch i64 %4, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %11 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %self to %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"*
  %12 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"* %11 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
  %13 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %x to i8*
  %14 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  store i8 0, i8* %_10, align 1
  %15 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_8 to i8*
  %16 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = bitcast { [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %_7 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
  %18 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %17 to i8*
  %19 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = bitcast { [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %_7 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
; invoke <core::iter::adapters::Enumerate<I> as core::iter::traits::iterator::Iterator>::next::{{closure}}
  invoke void @"_ZN99_$LT$core..iter..adapters..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17he4f1f30cd46069edE"({ [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* noalias nocapture sret dereferenceable(40) %_5, i64* align 8 dereferenceable(8) %f, %"core::result::Result<alloc::string::String, std::io::error::Error>"* noalias nocapture dereferenceable(32) %20)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %21 = bitcast %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %0 to %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some"*
  %22 = bitcast %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some"* %21 to { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }*
  %23 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %22 to i8*
  %24 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 40, i1 false)
  br label %bb6

bb5:                                              ; preds = %start
  %25 = getelementptr inbounds %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>", %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %0, i32 0, i32 1
  store i64 2, i64* %25, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %26 = load i8, i8* %_10, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb12, label %bb7

bb7:                                              ; preds = %bb12, %bb6
  %28 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %self to i64*
  %29 = load i64, i64* %28, align 8, !range !20
  %30 = icmp eq i64 %29, 2
  %31 = select i1 %30, i64 0, i64 1
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %bb14, label %bb16

bb8:                                              ; preds = %bb11
  %33 = load i8, i8* %_9, align 1, !range !3
  %34 = trunc i8 %33 to i1
  br i1 %34, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_9, align 1
  %35 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %self to %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"*
  %36 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"* %35 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h274a8a217f6b2a6eE(%"core::result::Result<alloc::string::String, std::io::error::Error>"* align 8 dereferenceable(32) %36) #12
  br label %bb1

bb10:                                             ; preds = %bb11
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h8cfcae9b4504e94cE(%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* align 8 dereferenceable(32) %self) #12
  br label %bb1

bb11:                                             ; preds = %cleanup
  %37 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %self to i64*
  %38 = load i64, i64* %37, align 8, !range !20
  %39 = icmp eq i64 %38, 2
  %40 = select i1 %39, i64 0, i64 1
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %bb8, label %bb10

bb12:                                             ; preds = %bb6
  store i8 0, i8* %_10, align 1
  br label %bb7

bb13:                                             ; preds = %bb15, %bb14, %bb16
  ret void

bb14:                                             ; preds = %bb7
  %42 = load i8, i8* %_9, align 1, !range !3
  %43 = trunc i8 %42 to i1
  br i1 %43, label %bb15, label %bb13

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_9, align 1
  %44 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %self to %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"*
  %45 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"* %44 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h274a8a217f6b2a6eE(%"core::result::Result<alloc::string::String, std::io::error::Error>"* align 8 dereferenceable(32) %45)
  br label %bb13

bb16:                                             ; preds = %bb7
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h8cfcae9b4504e94cE(%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* align 8 dereferenceable(32) %self)
  br label %bb13

cleanup:                                          ; preds = %bb3
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  %48 = extractvalue { i8*, i32 } %46, 1
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %bb11
}

; core::option::Option<T>::map
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core6option15Option$LT$T$GT$3map17h9dda55991ac16bf9E"(i32, i32) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_7 = alloca i32, align 4
  %_0 = alloca i32, align 4
  %self = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %3, align 4
  store i8 0, i8* %_9, align 1
  store i8 0, i8* %_10, align 1
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_10, align 1
  %4 = bitcast { i32, i32 }* %self to i32*
  %5 = load i32, i32* %4, align 4, !range !30
  %6 = zext i32 %5 to i64
  switch i64 %6, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %7 = bitcast { i8*, i32 }* %personalityslot to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %13 = bitcast { i32, i32 }* %self to %"core::option::Option<u32>::Some"*
  %14 = getelementptr inbounds %"core::option::Option<u32>::Some", %"core::option::Option<u32>::Some"* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i8 0, i8* %_10, align 1
  store i32 %15, i32* %_7, align 4
  %16 = load i32, i32* %_7, align 4
; invoke <core::str::Chars as core::iter::traits::double_ended::DoubleEndedIterator>::next_back::{{closure}}
  %17 = invoke i32 @"_ZN90_$LT$core..str..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back28_$u7b$$u7b$closure$u7d$$u7d$17hbdbd706a8dcfa6a5E"(i32 %16)
          to label %bb4 unwind label %cleanup, !range !37

bb4:                                              ; preds = %bb3
  store i32 %17, i32* %_0, align 4
  br label %bb6

bb5:                                              ; preds = %start
  store i32 1114112, i32* %_0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %18 = load i8, i8* %_10, align 1, !range !3
  %19 = trunc i8 %18 to i1
  br i1 %19, label %bb12, label %bb7

bb7:                                              ; preds = %bb12, %bb6
  %20 = bitcast { i32, i32 }* %self to i32*
  %21 = load i32, i32* %20, align 4, !range !30
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %bb14, label %bb16

bb8:                                              ; preds = %bb11
  %24 = load i8, i8* %_9, align 1, !range !3
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_9, align 1
  br label %bb1

bb10:                                             ; preds = %bb11
  br label %bb1

bb11:                                             ; preds = %cleanup
  %26 = bitcast { i32, i32 }* %self to i32*
  %27 = load i32, i32* %26, align 4, !range !30
  %28 = zext i32 %27 to i64
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %bb8, label %bb10

bb12:                                             ; preds = %bb6
  store i8 0, i8* %_10, align 1
  br label %bb7

bb13:                                             ; preds = %bb15, %bb14, %bb16
  %30 = load i32, i32* %_0, align 4, !range !41
  ret i32 %30

bb14:                                             ; preds = %bb7
  %31 = load i8, i8* %_9, align 1, !range !3
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb15, label %bb13

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_9, align 1
  br label %bb13

bb16:                                             ; preds = %bb7
  br label %bb13

cleanup:                                          ; preds = %bb3
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %bb11
}

; core::option::Option<T>::take
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hfd36c9f81d5a42daE"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_3 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_3 to {}**
  store {}* null, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
; call core::mem::replace
  %5 = call { i8*, i64 } @_ZN4core3mem7replace17hace80fd0e472d5dfE({ i8*, i64 }* align 8 dereferenceable(16) %self, i8* noalias readonly align 1 %2, i64 %4)
  %6 = extractvalue { i8*, i64 } %5, 0
  %7 = extractvalue { i8*, i64 } %5, 1
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { i8*, i64 } undef, i8* %6, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1452fbaa2e91e9adE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16), i64, i64, i1 zeroext %err) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %6 = load i64, i64* %5, align 8, !range !4
  switch i64 %6, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %7 = bitcast { i8*, i32 }* %personalityslot to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  resume { i8*, i32 } %12

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %13 = bitcast { i64, i64 }* %self to %"core::option::Option<usize>::Some"*
  %14 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %17 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 0, i8* %18, align 8
  br label %bb6

bb4:                                              ; No predecessors!
  %19 = bitcast { i64, i64 }* %self to i64*
  %20 = load i64, i64* %19, align 8, !range !4
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %bb8, label %bb10

bb5:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %22 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %23 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %22, i32 0, i32 1
  %24 = zext i1 %err to i8
  store i8 %24, i8* %23, align 1
  %25 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 1, i8* %25, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %26 = load i8, i8* %_8, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb11, label %bb7

bb7:                                              ; preds = %bb11, %bb6
  %28 = bitcast { i64, i64 }* %self to i64*
  %29 = load i64, i64* %28, align 8, !range !4
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %bb13, label %bb15

bb8:                                              ; preds = %bb4
  %31 = load i8, i8* %_7, align 1, !range !3
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb4
  br label %bb1

bb11:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  ret void

bb13:                                             ; preds = %bb7
  %33 = load i8, i8* %_7, align 1, !range !3
  %34 = trunc i8 %33 to i1
  br i1 %34, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_7, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17ha02a29d217f431fbE"(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_0 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %4 = bitcast { i64, i64 }* %self to i64*
  %5 = load i64, i64* %4, align 8, !range !4
  switch i64 %5, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %12 = bitcast { i64, i64 }* %self to %"core::option::Option<usize>::Some"*
  %13 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = bitcast { i64, i64 }* %_0 to %"core::result::Result<usize, core::alloc::LayoutErr>::Ok"*
  %16 = getelementptr inbounds %"core::result::Result<usize, core::alloc::LayoutErr>::Ok", %"core::result::Result<usize, core::alloc::LayoutErr>::Ok"* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = bitcast { i64, i64 }* %_0 to i64*
  store i64 0, i64* %17, align 8
  br label %bb6

bb4:                                              ; No predecessors!
  %18 = bitcast { i64, i64 }* %self to i64*
  %19 = load i64, i64* %18, align 8, !range !4
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %bb8, label %bb10

bb5:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %21 = bitcast { i64, i64 }* %_0 to %"core::result::Result<usize, core::alloc::LayoutErr>::Err"*
  %22 = getelementptr inbounds %"core::result::Result<usize, core::alloc::LayoutErr>::Err", %"core::result::Result<usize, core::alloc::LayoutErr>::Err"* %21, i32 0, i32 1
  %23 = bitcast { i64, i64 }* %_0 to i64*
  store i64 1, i64* %23, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %24 = load i8, i8* %_8, align 1, !range !3
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb11, label %bb7

bb7:                                              ; preds = %bb11, %bb6
  %26 = bitcast { i64, i64 }* %self to i64*
  %27 = load i64, i64* %26, align 8, !range !4
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %bb13, label %bb15

bb8:                                              ; preds = %bb4
  %29 = load i8, i8* %_7, align 1, !range !3
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb4
  br label %bb1

bb11:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !4
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36

bb13:                                             ; preds = %bb7
  %37 = load i8, i8* %_7, align 1, !range !3
  %38 = trunc i8 %37 to i1
  br i1 %38, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_7, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable_or_null(1) i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hb517c7bb4505053eE"(i8* noalias readonly align 1 dereferenceable_or_null(1)) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_0 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %1 = bitcast i8** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %4 = select i1 %3, i64 0, i64 1
  switch i64 %4, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %11 = load i8*, i8** %self, align 8, !nonnull !2
  store i8* %11, i8** %_0, align 8
  br label %bb6

bb4:                                              ; No predecessors!
  %12 = bitcast i8** %self to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %15 = select i1 %14, i64 0, i64 1
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %bb8, label %bb10

bb5:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %17 = bitcast i8** %_0 to %"core::result::Result<&u8, core::option::NoneError>::Err"*
  %18 = bitcast %"core::result::Result<&u8, core::option::NoneError>::Err"* %17 to %"core::option::NoneError"*
  %19 = bitcast i8** %_0 to {}**
  store {}* null, {}** %19, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %20 = load i8, i8* %_8, align 1, !range !3
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb11, label %bb7

bb7:                                              ; preds = %bb11, %bb6
  %22 = bitcast i8** %self to {}**
  %23 = load {}*, {}** %22, align 8
  %24 = icmp eq {}* %23, null
  %25 = select i1 %24, i64 0, i64 1
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %bb13, label %bb15

bb8:                                              ; preds = %bb4
  %27 = load i8, i8* %_7, align 1, !range !3
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb4
  br label %bb1

bb11:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  %29 = load i8*, i8** %_0, align 8
  ret i8* %29

bb13:                                             ; preds = %bb7
  %30 = load i8, i8* %_7, align 1, !range !3
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_7, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hbe0886607961db9cE"(i8*) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_0 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %1 = bitcast i8** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %4 = select i1 %3, i64 0, i64 1
  switch i64 %4, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %11 = load i8*, i8** %self, align 8, !nonnull !2
  store i8* %11, i8** %_0, align 8
  br label %bb6

bb4:                                              ; No predecessors!
  %12 = bitcast i8** %self to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %15 = select i1 %14, i64 0, i64 1
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %bb8, label %bb10

bb5:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %17 = bitcast i8** %_0 to %"core::result::Result<core::ptr::NonNull<u8>, core::alloc::AllocErr>::Err"*
  %18 = bitcast %"core::result::Result<core::ptr::NonNull<u8>, core::alloc::AllocErr>::Err"* %17 to %"core::alloc::AllocErr"*
  %19 = bitcast i8** %_0 to {}**
  store {}* null, {}** %19, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %20 = load i8, i8* %_8, align 1, !range !3
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb11, label %bb7

bb7:                                              ; preds = %bb11, %bb6
  %22 = bitcast i8** %self to {}**
  %23 = load {}*, {}** %22, align 8
  %24 = icmp eq {}* %23, null
  %25 = select i1 %24, i64 0, i64 1
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %bb13, label %bb15

bb8:                                              ; preds = %bb4
  %27 = load i8, i8* %_7, align 1, !range !3
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb4
  br label %bb1

bb11:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  %29 = load i8*, i8** %_0, align 8
  ret i8* %29

bb13:                                             ; preds = %bb7
  %30 = load i8, i8* %_7, align 1, !range !3
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_7, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core6option15Option$LT$T$GT$5ok_or17hff02ee80563c3582E"(i32) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_0 = alloca i32, align 4
  %self = alloca i32, align 4
  store i32 %0, i32* %self, align 4
  store i8 0, i8* %_7, align 1
  store i8 0, i8* %_8, align 1
  store i8 1, i8* %_7, align 1
  store i8 1, i8* %_8, align 1
  %1 = load i32, i32* %self, align 4, !range !41
  %2 = icmp eq i32 %1, 1114112
  %3 = select i1 %2, i64 0, i64 1
  switch i64 %3, label %bb2 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %10 = load i32, i32* %self, align 4, !range !37
  store i32 %10, i32* %_0, align 4
  br label %bb6

bb4:                                              ; No predecessors!
  %11 = load i32, i32* %self, align 4, !range !41
  %12 = icmp eq i32 %11, 1114112
  %13 = select i1 %12, i64 0, i64 1
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %bb8, label %bb10

bb5:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %15 = bitcast i32* %_0 to %"core::result::Result<char, core::option::NoneError>::Err"*
  %16 = bitcast %"core::result::Result<char, core::option::NoneError>::Err"* %15 to %"core::option::NoneError"*
  store i32 1114112, i32* %_0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5, %bb3
  %17 = load i8, i8* %_8, align 1, !range !3
  %18 = trunc i8 %17 to i1
  br i1 %18, label %bb11, label %bb7

bb7:                                              ; preds = %bb11, %bb6
  %19 = load i32, i32* %self, align 4, !range !41
  %20 = icmp eq i32 %19, 1114112
  %21 = select i1 %20, i64 0, i64 1
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %bb13, label %bb15

bb8:                                              ; preds = %bb4
  %23 = load i8, i8* %_7, align 1, !range !3
  %24 = trunc i8 %23 to i1
  br i1 %24, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_7, align 1
  br label %bb1

bb10:                                             ; preds = %bb4
  br label %bb1

bb11:                                             ; preds = %bb6
  store i8 0, i8* %_8, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  %25 = load i32, i32* %_0, align 4, !range !41
  ret i32 %25

bb13:                                             ; preds = %bb7
  %26 = load i8, i8* %_7, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_7, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; core::option::Option<T>::unwrap_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h2e8fcb3e537b7de4E"(i64, i64, i64 %def) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_6 = alloca i8, align 1
  %_5 = alloca i8, align 1
  %_0 = alloca i64, align 8
  %self = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  store i8 0, i8* %_5, align 1
  store i8 0, i8* %_6, align 1
  store i8 1, i8* %_5, align 1
  store i8 1, i8* %_6, align 1
  %4 = bitcast { i64, i64 }* %self to i64*
  %5 = load i64, i64* %4, align 8, !range !4
  switch i64 %5, label %bb2 [
    i64 0, label %bb4
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_5, align 1
  %12 = bitcast { i64, i64 }* %self to %"core::option::Option<usize>::Some"*
  %13 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %_0, align 8
  br label %bb6

bb4:                                              ; preds = %start
  store i8 0, i8* %_6, align 1
  store i64 %def, i64* %_0, align 8
  br label %bb6

bb5:                                              ; No predecessors!
  %15 = bitcast { i64, i64 }* %self to i64*
  %16 = load i64, i64* %15, align 8, !range !4
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %bb8, label %bb10

bb6:                                              ; preds = %bb4, %bb3
  %18 = load i8, i8* %_6, align 1, !range !3
  %19 = trunc i8 %18 to i1
  br i1 %19, label %bb11, label %bb7

bb7:                                              ; preds = %bb11, %bb6
  %20 = bitcast { i64, i64 }* %self to i64*
  %21 = load i64, i64* %20, align 8, !range !4
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %bb13, label %bb15

bb8:                                              ; preds = %bb5
  %23 = load i8, i8* %_5, align 1, !range !3
  %24 = trunc i8 %23 to i1
  br i1 %24, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_5, align 1
  br label %bb1

bb10:                                             ; preds = %bb5
  br label %bb1

bb11:                                             ; preds = %bb6
  store i8 0, i8* %_6, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  %25 = load i64, i64* %_0, align 8
  ret i64 %25

bb13:                                             ; preds = %bb7
  %26 = load i8, i8* %_5, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_5, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
define internal void @_ZN4core6result13unwrap_failed17h9d2ce0a1f41a32a4E([0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca { i64*, i8* }, align 8
  %_10 = alloca [2 x { i8*, i8* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  %error = alloca %"core::alloc::LayoutErr", align 1
  %msg = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %msg, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %msg, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = bitcast { i64*, i8* }* %_11 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %msg, { [0 x i8]*, i64 }** %4, align 8
  %5 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %_11, i32 0, i32 1
  %6 = bitcast i8** %5 to %"core::alloc::LayoutErr"**
  store %"core::alloc::LayoutErr"* %error, %"core::alloc::LayoutErr"** %6, align 8
  %7 = bitcast { i64*, i8* }* %_11 to { [0 x i8]*, i64 }**
  %8 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %7, align 8, !nonnull !2
  %9 = getelementptr inbounds { i64*, i8* }, { i64*, i8* }* %_11, i32 0, i32 1
  %10 = bitcast i8** %9 to %"core::alloc::LayoutErr"**
  %11 = load %"core::alloc::LayoutErr"*, %"core::alloc::LayoutErr"** %10, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %12 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9af8e774b0b45ac0E({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %8, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab02f78835b2d3dfE")
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %13 = bitcast { i8*, i32 }* %personalityslot to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb2:                                              ; preds = %start
  %19 = extractvalue { i8*, i8* } %12, 0
  %20 = extractvalue { i8*, i8* } %12, 1
; invoke core::fmt::ArgumentV1::new
  %21 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9f4f20278ede914bE(%"core::alloc::LayoutErr"* noalias nonnull readonly align 1 %11, i1 (%"core::alloc::LayoutErr"*, %"core::fmt::Formatter"*)* nonnull @"_ZN59_$LT$core..alloc..LayoutErr$u20$as$u20$core..fmt..Debug$GT$3fmt17h72612c632f535bfdE")
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb1

bb4:                                              ; preds = %bb2
  %22 = extractvalue { i8*, i8* } %21, 0
  %23 = extractvalue { i8*, i8* } %21, 1
  %24 = bitcast [2 x { i8*, i8* }]* %_10 to { i8*, i8* }*
  %25 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %24, i32 0, i32 0
  store i8* %19, i8** %25, align 8
  %26 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %24, i32 0, i32 1
  store i8* %20, i8** %26, align 8
  %27 = getelementptr inbounds [2 x { i8*, i8* }], [2 x { i8*, i8* }]* %_10, i32 0, i32 1
  %28 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %27, i32 0, i32 0
  store i8* %22, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %27, i32 0, i32 1
  store i8* %23, i8** %29, align 8
  %30 = bitcast [2 x { i8*, i8* }]* %_10 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_3, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @23 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %30, i64 2)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17h3d735cbb4b6fcb5bE(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_3, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @25 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
          to label %unreachable unwind label %cleanup

cleanup:                                          ; preds = %bb5, %bb4, %bb2, %start
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb3

unreachable:                                      ; preds = %bb5
  unreachable
}

; core::result::Result<T,E>::unwrap_or_else
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17hf2a86af745fd5c02E"(i8) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_0 = alloca {}, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 0, i8* %_9, align 1
  store i8 0, i8* %_10, align 1
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_9, align 1
  store i8 1, i8* %_10, align 1
  store i8 1, i8* %_11, align 1
  %1 = load i8, i8* %self, align 1, !range !19
  %2 = icmp eq i8 %1, 2
  %3 = select i1 %2, i64 0, i64 1
  switch i64 %3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb11, %bb10
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_10, align 1
  br label %bb6

bb4:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %10 = load i8, i8* %self, align 1, !range !3
  %11 = trunc i8 %10 to i1
  store i8 0, i8* %_11, align 1
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %_7, align 1
  %13 = load i8, i8* %_7, align 1, !range !3
  %14 = trunc i8 %13 to i1
; invoke alloc::raw_vec::RawVec<T,A>::allocate_in::{{closure}}
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17ha9837d8928e6b26dE"(i1 zeroext %14)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  %15 = load i8, i8* %_11, align 1, !range !3
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb13, label %bb7

bb7:                                              ; preds = %bb13, %bb6
  %17 = load i8, i8* %self, align 1, !range !19
  %18 = icmp eq i8 %17, 2
  %19 = select i1 %18, i64 0, i64 1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %bb15, label %bb17

bb8:                                              ; preds = %bb12
  %21 = load i8, i8* %_10, align 1, !range !3
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_10, align 1
  br label %bb1

bb10:                                             ; preds = %bb12
  %23 = load i8, i8* %_9, align 1, !range !3
  %24 = trunc i8 %23 to i1
  br i1 %24, label %bb11, label %bb1

bb11:                                             ; preds = %bb10
  store i8 0, i8* %_9, align 1
  br label %bb1

bb12:                                             ; preds = %cleanup
  %25 = load i8, i8* %self, align 1, !range !19
  %26 = icmp eq i8 %25, 2
  %27 = select i1 %26, i64 0, i64 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %bb8, label %bb10

bb13:                                             ; preds = %bb6
  store i8 0, i8* %_11, align 1
  br label %bb7

bb14:                                             ; preds = %bb16, %bb15, %bb18, %bb17
  ret void

bb15:                                             ; preds = %bb7
  %29 = load i8, i8* %_10, align 1, !range !3
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb16, label %bb14

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_10, align 1
  br label %bb14

bb17:                                             ; preds = %bb7
  %31 = load i8, i8* %_9, align 1, !range !3
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb18, label %bb14

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_9, align 1
  br label %bb14

cleanup:                                          ; preds = %bb4
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %bb12
}

; core::result::Result<T,E>::map
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h0cbad6176a3a39f6E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_8 = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_7 = alloca { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }, align 8
  %t = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_0 = alloca { i64, i64 }, align 8
  store i8 0, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  store i8 0, i8* %_13, align 1
  store i8 1, i8* %_11, align 1
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_13, align 1
  %0 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = icmp eq i64 %1, 0
  %3 = select i1 %2, i64 1, i64 0
  switch i64 %3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb11, %bb10
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
  %10 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self to %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok"*
  %11 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok"* %10 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
  %12 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %t to i8*
  %13 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  store i8 0, i8* %_13, align 1
  %14 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_8 to i8*
  %15 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = bitcast { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }* %_7 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
  %17 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %16 to i8*
  %18 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = bitcast { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }* %_7 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
; invoke core::alloc::Layout::array::{{closure}}
  %20 = invoke { i64, i64 } @"_ZN4core5alloc6Layout5array28_$u7b$$u7b$closure$u7d$$u7d$17h987e9c1a9cd77457E"({ [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* noalias nocapture dereferenceable(24) %19)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %bb6

bb5:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %25 = bitcast { i64, i64 }* %_0 to %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"*
  %26 = bitcast %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"* %25 to %"core::alloc::LayoutErr"*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %28 = load i8, i8* %_13, align 1, !range !3
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb13, label %bb7

bb7:                                              ; preds = %bb13, %bb6
  %30 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = select i1 %32, i64 1, i64 0
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %bb15, label %bb17

bb8:                                              ; preds = %bb12
  %35 = load i8, i8* %_12, align 1, !range !3
  %36 = trunc i8 %35 to i1
  br i1 %36, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_12, align 1
  br label %bb1

bb10:                                             ; preds = %bb12
  %37 = load i8, i8* %_11, align 1, !range !3
  %38 = trunc i8 %37 to i1
  br i1 %38, label %bb11, label %bb1

bb11:                                             ; preds = %bb10
  store i8 0, i8* %_11, align 1
  br label %bb1

bb12:                                             ; preds = %cleanup
  %39 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = select i1 %41, i64 1, i64 0
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %bb8, label %bb10

bb13:                                             ; preds = %bb6
  store i8 0, i8* %_13, align 1
  br label %bb7

bb14:                                             ; preds = %bb16, %bb15, %bb18, %bb17
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = insertvalue { i64, i64 } undef, i64 %45, 0
  %49 = insertvalue { i64, i64 } %48, i64 %47, 1
  ret { i64, i64 } %49

bb15:                                             ; preds = %bb7
  %50 = load i8, i8* %_12, align 1, !range !3
  %51 = trunc i8 %50 to i1
  br i1 %51, label %bb16, label %bb14

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_12, align 1
  br label %bb14

bb17:                                             ; preds = %bb7
  %52 = load i8, i8* %_11, align 1, !range !3
  %53 = trunc i8 %52 to i1
  br i1 %53, label %bb18, label %bb14

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_11, align 1
  br label %bb14

cleanup:                                          ; preds = %bb3
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %bb12
}

; core::result::Result<T,E>::map
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$3map17hd4077ab670019765E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_8 = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_7 = alloca { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }, align 8
  %t = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_0 = alloca { i64, i64 }, align 8
  store i8 0, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  store i8 0, i8* %_13, align 1
  store i8 1, i8* %_11, align 1
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_13, align 1
  %0 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = icmp eq i64 %1, 0
  %3 = select i1 %2, i64 1, i64 0
  switch i64 %3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb11, %bb10
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
  %10 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self to %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok"*
  %11 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Ok"* %10 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
  %12 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %t to i8*
  %13 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  store i8 0, i8* %_13, align 1
  %14 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_8 to i8*
  %15 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = bitcast { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }* %_7 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
  %17 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %16 to i8*
  %18 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = bitcast { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }* %_7 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
; invoke core::alloc::Layout::array::{{closure}}
  %20 = invoke { i64, i64 } @"_ZN4core5alloc6Layout5array28_$u7b$$u7b$closure$u7d$$u7d$17h33d081a224816dfcE"({ [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* noalias nocapture dereferenceable(24) %19)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %bb6

bb5:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %25 = bitcast { i64, i64 }* %_0 to %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"*
  %26 = bitcast %"core::result::Result<core::alloc::Layout, core::alloc::LayoutErr>::Err"* %25 to %"core::alloc::LayoutErr"*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %28 = load i8, i8* %_13, align 1, !range !3
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb13, label %bb7

bb7:                                              ; preds = %bb13, %bb6
  %30 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = select i1 %32, i64 1, i64 0
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %bb15, label %bb17

bb8:                                              ; preds = %bb12
  %35 = load i8, i8* %_12, align 1, !range !3
  %36 = trunc i8 %35 to i1
  br i1 %36, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_12, align 1
  br label %bb1

bb10:                                             ; preds = %bb12
  %37 = load i8, i8* %_11, align 1, !range !3
  %38 = trunc i8 %37 to i1
  br i1 %38, label %bb11, label %bb1

bb11:                                             ; preds = %bb10
  store i8 0, i8* %_11, align 1
  br label %bb1

bb12:                                             ; preds = %cleanup
  %39 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %self, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = select i1 %41, i64 1, i64 0
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %bb8, label %bb10

bb13:                                             ; preds = %bb6
  store i8 0, i8* %_13, align 1
  br label %bb7

bb14:                                             ; preds = %bb16, %bb15, %bb18, %bb17
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = insertvalue { i64, i64 } undef, i64 %45, 0
  %49 = insertvalue { i64, i64 } %48, i64 %47, 1
  ret { i64, i64 } %49

bb15:                                             ; preds = %bb7
  %50 = load i8, i8* %_12, align 1, !range !3
  %51 = trunc i8 %50 to i1
  br i1 %51, label %bb16, label %bb14

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_12, align 1
  br label %bb14

bb17:                                             ; preds = %bb7
  %52 = load i8, i8* %_11, align 1, !range !3
  %53 = trunc i8 %52 to i1
  br i1 %53, label %bb18, label %bb14

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_11, align 1
  br label %bb14

cleanup:                                          ; preds = %bb3
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %bb12
}

; core::result::Result<T,E>::is_ok
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8af5902c4128fa77E"({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = icmp eq i64 %1, 0
  %3 = select i1 %2, i64 1, i64 0
  switch i64 %3, label %bb1 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  store i8 1, i8* %_0, align 1
  br label %bb4

bb3:                                              ; preds = %start
  store i8 0, i8* %_0, align 1
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %4 = load i8, i8* %_0, align 1, !range !3
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; core::result::Result<T,E>::is_ok
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17hce3c89973fc67d82E"(%"core::result::Result<&str, core::str::Utf8Error>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
  %0 = bitcast %"core::result::Result<&str, core::str::Utf8Error>"* %self to i64*
  %1 = load i64, i64* %0, align 8, !range !4
  switch i64 %1, label %bb1 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb1:                                              ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  store i8 1, i8* %_0, align 1
  br label %bb4

bb3:                                              ; preds = %start
  store i8 0, i8* %_0, align 1
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %2 = load i8, i8* %_0, align 1, !range !3
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; core::result::Result<T,E>::is_err
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h761e7daf96878ea2E"(%"core::result::Result<&str, core::str::Utf8Error>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call core::result::Result<T,E>::is_ok
  %0 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17hce3c89973fc67d82E"(%"core::result::Result<&str, core::str::Utf8Error>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = xor i1 %0, true
  ret i1 %1
}

; core::result::Result<T,E>::unwrap
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hee98cc9c489af50eE"(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, i64 1, i64 0
  switch i64 %7, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb5, %bb6
  %8 = bitcast { i8*, i32 }* %personalityslot to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %17 = load i64, i64* %16, align 8, !range !18
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, i64 1, i64 0
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %bb7, label %bb8

bb4:                                              ; preds = %start
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17h9d2ce0a1f41a32a4E([0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [43 x i8] }>* @26 to [0 x i8]*), i64 43)
          to label %unreachable unwind label %cleanup

bb5:                                              ; preds = %bb6
  br label %bb1

bb6:                                              ; preds = %cleanup
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i64 1, i64 0
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %bb5, label %bb1

bb7:                                              ; preds = %bb8, %bb3
  %28 = insertvalue { i64, i64 } undef, i64 %15, 0
  %29 = insertvalue { i64, i64 } %28, i64 %17, 1
  ret { i64, i64 } %29

bb8:                                              ; preds = %bb3
  br label %bb7

unreachable:                                      ; preds = %bb4
  unreachable

cleanup:                                          ; preds = %bb4
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %bb6
}

; core::result::Result<T,E>::map_err
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h72e828aea12785c0E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_9 = alloca { [0 x i8], %"core::alloc::LayoutErr", [0 x i8] }, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  store i8 0, i8* %_13, align 1
  store i8 1, i8* %_11, align 1
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_13, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, i64 1, i64 0
  switch i64 %8, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb1:                                              ; preds = %bb10, %bb9, %bb12, %bb11
  %9 = bitcast { i8*, i32 }* %personalityslot to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !18
  %19 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"*
  %20 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"* %19, i32 0, i32 1
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %16, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %18, i64* %22, align 8
  %23 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 0, i8* %23, align 8
  br label %bb7

bb4:                                              ; preds = %cleanup
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i64 1, i64 0
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %bb9, label %bb11

bb5:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  store i8 0, i8* %_13, align 1
  %29 = bitcast { [0 x i8], %"core::alloc::LayoutErr", [0 x i8] }* %_9 to %"core::alloc::LayoutErr"*
; invoke alloc::raw_vec::RawVec<T,A>::reserve_internal::{{closure}}
  %30 = invoke zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal28_$u7b$$u7b$closure$u7d$$u7d$17h13f3bdbf3c7e1885E"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %31 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"*
  %32 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"* %31, i32 0, i32 1
  %33 = zext i1 %30 to i8
  store i8 %33, i8* %32, align 1
  %34 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 1, i8* %34, align 8
  br label %bb7

bb7:                                              ; preds = %bb3, %bb6
  %35 = load i8, i8* %_13, align 1, !range !3
  %36 = trunc i8 %35 to i1
  br i1 %36, label %bb13, label %bb8

bb8:                                              ; preds = %bb13, %bb7
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i64 1, i64 0
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %bb15, label %bb17

bb9:                                              ; preds = %bb4
  %42 = load i8, i8* %_12, align 1, !range !3
  %43 = trunc i8 %42 to i1
  br i1 %43, label %bb10, label %bb1

bb10:                                             ; preds = %bb9
  store i8 0, i8* %_12, align 1
  br label %bb1

bb11:                                             ; preds = %bb4
  %44 = load i8, i8* %_11, align 1, !range !3
  %45 = trunc i8 %44 to i1
  br i1 %45, label %bb12, label %bb1

bb12:                                             ; preds = %bb11
  store i8 0, i8* %_11, align 1
  br label %bb1

bb13:                                             ; preds = %bb7
  store i8 0, i8* %_13, align 1
  br label %bb8

bb14:                                             ; preds = %bb16, %bb15, %bb18, %bb17
  ret void

bb15:                                             ; preds = %bb8
  %46 = load i8, i8* %_12, align 1, !range !3
  %47 = trunc i8 %46 to i1
  br i1 %47, label %bb16, label %bb14

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_12, align 1
  br label %bb14

bb17:                                             ; preds = %bb8
  %48 = load i8, i8* %_11, align 1, !range !3
  %49 = trunc i8 %48 to i1
  br i1 %49, label %bb18, label %bb14

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_11, align 1
  br label %bb14

cleanup:                                          ; preds = %bb5
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  %52 = extractvalue { i8*, i32 } %50, 1
  %53 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %bb4
}

; core::result::Result<T,E>::map_err
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd935bea7abb73214E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_9 = alloca { [0 x i8], %"core::alloc::LayoutErr", [0 x i8] }, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  store i8 0, i8* %_13, align 1
  store i8 1, i8* %_11, align 1
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_13, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, i64 1, i64 0
  switch i64 %8, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb1:                                              ; preds = %bb10, %bb9, %bb12, %bb11
  %9 = bitcast { i8*, i32 }* %personalityslot to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !range !18
  %19 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"*
  %20 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"* %19, i32 0, i32 1
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %16, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %18, i64* %22, align 8
  %23 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 0, i8* %23, align 8
  br label %bb7

bb4:                                              ; preds = %cleanup
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i64 1, i64 0
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %bb9, label %bb11

bb5:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  store i8 0, i8* %_13, align 1
  %29 = bitcast { [0 x i8], %"core::alloc::LayoutErr", [0 x i8] }* %_9 to %"core::alloc::LayoutErr"*
; invoke alloc::raw_vec::RawVec<T,A>::reserve_internal::{{closure}}
  %30 = invoke zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal28_$u7b$$u7b$closure$u7d$$u7d$17h10c92d1380ee476bE"()
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %31 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"*
  %32 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"* %31, i32 0, i32 1
  %33 = zext i1 %30 to i8
  store i8 %33, i8* %32, align 1
  %34 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 1, i8* %34, align 8
  br label %bb7

bb7:                                              ; preds = %bb3, %bb6
  %35 = load i8, i8* %_13, align 1, !range !3
  %36 = trunc i8 %35 to i1
  br i1 %36, label %bb13, label %bb8

bb8:                                              ; preds = %bb13, %bb7
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i64 1, i64 0
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %bb15, label %bb17

bb9:                                              ; preds = %bb4
  %42 = load i8, i8* %_12, align 1, !range !3
  %43 = trunc i8 %42 to i1
  br i1 %43, label %bb10, label %bb1

bb10:                                             ; preds = %bb9
  store i8 0, i8* %_12, align 1
  br label %bb1

bb11:                                             ; preds = %bb4
  %44 = load i8, i8* %_11, align 1, !range !3
  %45 = trunc i8 %44 to i1
  br i1 %45, label %bb12, label %bb1

bb12:                                             ; preds = %bb11
  store i8 0, i8* %_11, align 1
  br label %bb1

bb13:                                             ; preds = %bb7
  store i8 0, i8* %_13, align 1
  br label %bb8

bb14:                                             ; preds = %bb16, %bb15, %bb18, %bb17
  ret void

bb15:                                             ; preds = %bb8
  %46 = load i8, i8* %_12, align 1, !range !3
  %47 = trunc i8 %46 to i1
  br i1 %47, label %bb16, label %bb14

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_12, align 1
  br label %bb14

bb17:                                             ; preds = %bb8
  %48 = load i8, i8* %_11, align 1, !range !3
  %49 = trunc i8 %48 to i1
  br i1 %49, label %bb18, label %bb14

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_11, align 1
  br label %bb14

cleanup:                                          ; preds = %bb5
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  %52 = extractvalue { i8*, i32 } %50, 1
  %53 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %bb4
}

; core::result::Result<T,E>::and_then
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$8and_then17h9c78142add739e8bE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"core::result::Result<usize, std::io::error::Error>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_10 = alloca i8, align 1
  %_9 = alloca %"std::io::error::Error", align 8
  %e = alloca %"std::io::error::Error", align 8
  %_6 = alloca i64, align 8
  store i8 0, i8* %_10, align 1
  store i8 0, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_10, align 1
  store i8 1, i8* %_11, align 1
  store i8 1, i8* %_12, align 1
  %1 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !4
  switch i64 %2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb11, %bb10
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %9 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %10 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i8 0, i8* %_12, align 1
  store i64 %11, i64* %_6, align 8
  %12 = load i64, i64* %_6, align 8
; invoke std::io::append_to_string::{{closure}}
  invoke void @"_ZN3std2io16append_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h9044c851117bb364E"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, i64 %12)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  br label %bb6

bb5:                                              ; preds = %start
  store i8 0, i8* %_10, align 1
  %13 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %14 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %13, i32 0, i32 1
  %15 = bitcast %"std::io::error::Error"* %e to i8*
  %16 = bitcast %"std::io::error::Error"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = bitcast %"std::io::error::Error"* %_9 to i8*
  %18 = bitcast %"std::io::error::Error"* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %20 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %19, i32 0, i32 1
  %21 = bitcast %"std::io::error::Error"* %20 to i8*
  %22 = bitcast %"std::io::error::Error"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to i64*
  store i64 1, i64* %23, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %24 = load i8, i8* %_12, align 1, !range !3
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb13, label %bb7

bb7:                                              ; preds = %bb13, %bb6
  %26 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to i64*
  %27 = load i64, i64* %26, align 8, !range !4
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %bb15, label %bb17

bb8:                                              ; preds = %bb12
  %29 = load i8, i8* %_11, align 1, !range !3
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_11, align 1
  br label %bb1

bb10:                                             ; preds = %bb12
  %31 = load i8, i8* %_10, align 1, !range !3
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb11, label %bb1

bb11:                                             ; preds = %bb10
  store i8 0, i8* %_10, align 1
  %33 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %34 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %33, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %34) #12
  br label %bb1

bb12:                                             ; preds = %cleanup
  %35 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to i64*
  %36 = load i64, i64* %35, align 8, !range !4
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %bb8, label %bb10

bb13:                                             ; preds = %bb6
  store i8 0, i8* %_12, align 1
  br label %bb7

bb14:                                             ; preds = %bb16, %bb15, %bb18, %bb17
  ret void

bb15:                                             ; preds = %bb7
  %38 = load i8, i8* %_11, align 1, !range !3
  %39 = trunc i8 %38 to i1
  br i1 %39, label %bb16, label %bb14

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_11, align 1
  br label %bb14

bb17:                                             ; preds = %bb7
  %40 = load i8, i8* %_10, align 1, !range !3
  %41 = trunc i8 %40 to i1
  br i1 %41, label %bb18, label %bb14

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_10, align 1
  %42 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %43 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %42, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %43)
  br label %bb14

cleanup:                                          ; preds = %bb3
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  %46 = extractvalue { i8*, i32 } %44, 1
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %bb12
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %t) unnamed_addr #1 {
start:
  ret i1 %t
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb9c908b3fabbfae7E"(%"std::io::error::Error"* noalias nocapture sret dereferenceable(16), %"std::io::error::Error"* noalias nocapture dereferenceable(16) %t) unnamed_addr #1 {
start:
  %1 = bitcast %"std::io::error::Error"* %0 to i8*
  %2 = bitcast %"std::io::error::Error"* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  ret void
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hdc1817bda7362ccfE"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hecd8cccde7d1e353E"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h17142035c17afe91E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call std::error::<impl core::convert::From<&str> for alloc::boxed::Box<dyn +std::error::Error+core::marker::Sync+core::marker::Send>>::from
  %0 = call { {}*, [3 x i64]* } @"_ZN3std5error166_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$$u2b$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$4from17he95dbf56c88e7dc7E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h714c3089422a1d9bE"(i8* nonnull %self) unnamed_addr #1 {
start:
; call <core::ptr::Unique<T> as core::convert::From<core::ptr::NonNull<T>>>::from
  %0 = call nonnull i8* @"_ZN101_$LT$core..ptr..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..NonNull$LT$T$GT$$GT$$GT$4from17h3c96e64036848989E"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb7bcff8c5b0ad34fE"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
; call <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
  %0 = call { i8*, i64* } @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17hdbf0254b1c09d1e4E"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1)
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1
  ret { i8*, i64* } %4
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal nonnull i32* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdb8cc0c76ec8ae3fE"(i32* nonnull %self) unnamed_addr #1 {
start:
; call <core::ptr::Unique<T> as core::convert::From<core::ptr::NonNull<T>>>::from
  %0 = call nonnull i32* @"_ZN101_$LT$core..ptr..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..NonNull$LT$T$GT$$GT$$GT$4from17h2df52738ef45a3c5E"(i32* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %0
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4828aba117d42022E"() unnamed_addr #0 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hb87122421f702329E"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <u32 as core::iter::traits::accum::Sum>::sum
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN54_$LT$u32$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17h61903a6c66315023E"(i32* %iter.0, i32* %iter.1) unnamed_addr #1 {
start:
; call <core::iter::adapters::Map<I,F> as core::iter::traits::iterator::Iterator>::fold
  %0 = call i32 @"_ZN97_$LT$core..iter..adapters..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he931d0f1c4f6b39bE"(i32* %iter.0, i32* %iter.1, i32 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h8f919fdacbd1a827E"({ %"std::path::Path"*, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 0
  %1 = load %"std::path::Path"*, %"std::path::Path"** %0, align 8, !nonnull !2
  %2 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
; call <std::path::Path as core::convert::AsRef<std::path::Path>>::as_ref
  %4 = call { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17ha521b5c71ef91357E"(%"std::path::Path"* noalias nonnull readonly align 1 %1, i64 %3)
  %5 = extractvalue { %"std::path::Path"*, i64 } %4, 0
  %6 = extractvalue { %"std::path::Path"*, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %5, 0
  %8 = insertvalue { %"std::path::Path"*, i64 } %7, i64 %6, 1
  ret { %"std::path::Path"*, i64 } %8
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h9a9dd7c95ceee6a4E"({ %"std::path::Path"*, i64 }** noalias readonly align 8 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = load { %"std::path::Path"*, i64 }*, { %"std::path::Path"*, i64 }** %self, align 8, !nonnull !2
; call <&T as core::convert::AsRef<U>>::as_ref
  %1 = call { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h8f919fdacbd1a827E"({ %"std::path::Path"*, i64 }* noalias readonly align 8 dereferenceable(16) %0)
  %2 = extractvalue { %"std::path::Path"*, i64 } %1, 0
  %3 = extractvalue { %"std::path::Path"*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %2, 0
  %5 = insertvalue { %"std::path::Path"*, i64 } %4, i64 %3, 1
  ret { %"std::path::Path"*, i64 } %5
}

; <&str as core::str::pattern::Pattern>::is_suffix_of
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$12is_suffix_of17h12cec75a82f0b273E"([0 x i8]* noalias nonnull readonly align 1, i64, [0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  %_22 = alloca i64, align 8
  %_19 = alloca { [0 x i8]*, i64 }, align 8
  %_3 = alloca i8, align 1
  %_0 = alloca i8, align 1
  %self = alloca { [0 x i8]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
; call core::str::<impl str>::len
  %8 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %5, i64 %7)
  br label %bb7

bb1:                                              ; preds = %bb6
  store i8 0, i8* %_0, align 1
  br label %bb3

bb2:                                              ; preds = %bb6
; call core::str::<impl str>::len
  %9 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1)
  br label %bb12

bb3:                                              ; preds = %bb1, %bb15
  %10 = load i8, i8* %_0, align 1, !range !3
  %11 = trunc i8 %10 to i1
  ret i1 %11

bb4:                                              ; preds = %bb8
  store i8 0, i8* %_3, align 1
  br label %bb6

bb5:                                              ; preds = %bb8
; call core::str::<impl str>::len
  %12 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1)
  br label %bb9

bb6:                                              ; preds = %bb4, %bb11
  %13 = load i8, i8* %_3, align 1, !range !3
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb2, label %bb1

bb7:                                              ; preds = %start
; call core::str::<impl str>::len
  %15 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1)
  br label %bb8

bb8:                                              ; preds = %bb7
  %16 = icmp ule i64 %8, %15
  br i1 %16, label %bb5, label %bb4

bb9:                                              ; preds = %bb5
  %17 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %18 = load [0 x i8]*, [0 x i8]** %17, align 8, !nonnull !2
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
; call core::str::<impl str>::len
  %21 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %18, i64 %20)
  br label %bb10

bb10:                                             ; preds = %bb9
  %22 = sub i64 %12, %21
; call core::str::<impl str>::is_char_boundary
  %23 = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17hbc990623353aabe2E"([0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1, i64 %22)
  br label %bb11

bb11:                                             ; preds = %bb10
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %_3, align 1
  br label %bb6

bb12:                                             ; preds = %bb2
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %26 = load [0 x i8]*, [0 x i8]** %25, align 8, !nonnull !2
  %27 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
; call core::str::<impl str>::len
  %29 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1dc9d2d6044c6cc3E"([0 x i8]* noalias nonnull readonly align 1 %26, i64 %28)
  br label %bb13

bb13:                                             ; preds = %bb12
  %30 = sub i64 %9, %29
  store i64 %30, i64* %_22, align 8
  %31 = load i64, i64* %_22, align 8
; call core::str::traits::<impl core::ops::index::Index<I> for str>::index
  %32 = call { [0 x i8]*, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h854b63d6e5a213b1E"([0 x i8]* noalias nonnull readonly align 1 %haystack.0, i64 %haystack.1, i64 %31)
  %33 = extractvalue { [0 x i8]*, i64 } %32, 0
  %34 = extractvalue { [0 x i8]*, i64 } %32, 1
  br label %bb14

bb14:                                             ; preds = %bb13
  %35 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 0
  store [0 x i8]* %33, [0 x i8]** %35, align 8
  %36 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_19, i32 0, i32 1
  store i64 %34, i64* %36, align 8
; call core::cmp::impls::<impl core::cmp::PartialEq<&B> for &A>::eq
  %37 = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h2a349559795d63ccE"({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %self, { [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %_19)
  br label %bb15

bb15:                                             ; preds = %bb14
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %_0, align 1
  br label %bb3
}

; <alloc::alloc::Global as core::alloc::Alloc>::alloc_zeroed
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$12alloc_zeroed17he78a9bd2e4227482E"(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::alloc::AllocErr", align 1
; call alloc::alloc::alloc_zeroed
  %0 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h46321931f5655086E(i64 %layout.0, i64 %layout.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::NonNull<T>::new
  %1 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$3new17hcab81e40f261e30aE"(i8* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::ok_or
  %2 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hbe0886607961db9cE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; <alloc::alloc::Global as core::alloc::Alloc>::alloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$5alloc17h176a4edc344ab054E"(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::alloc::AllocErr", align 1
; call alloc::alloc::alloc
  %0 = call i8* @_ZN5alloc5alloc5alloc17h21e3150ba9dfd4dcE(i64 %layout.0, i64 %layout.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::NonNull<T>::new
  %1 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$3new17hcab81e40f261e30aE"(i8* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::ok_or
  %2 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hbe0886607961db9cE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; <alloc::alloc::Global as core::alloc::Alloc>::dealloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7dealloc17hbe9cadedd5566839E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call core::ptr::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h199e06d7666ffc1bE"(i8* nonnull %ptr)
  br label %bb1

bb1:                                              ; preds = %start
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %0, i64 %layout.0, i64 %layout.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <alloc::alloc::Global as core::alloc::Alloc>::realloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7realloc17h0791e9ff9f0dca53E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1, i64 %new_size) unnamed_addr #0 {
start:
  %_11 = alloca %"core::alloc::AllocErr", align 1
; call core::ptr::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17h199e06d7666ffc1bE"(i8* nonnull %ptr)
  br label %bb1

bb1:                                              ; preds = %start
; call alloc::alloc::realloc
  %1 = call i8* @_ZN5alloc5alloc7realloc17hfb690620bea70360E(i8* %0, i64 %layout.0, i64 %layout.1, i64 %new_size)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::NonNull<T>::new
  %2 = call i8* @"_ZN4core3ptr16NonNull$LT$T$GT$3new17hcab81e40f261e30aE"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::option::Option<T>::ok_or
  %3 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hbe0886607961db9cE"(i8* %2)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i8* %3
}

; alloc::vec::Vec<T>::shrink_to_fit
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$13shrink_to_fit17h481afc51f3ec7b52E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
; call alloc::vec::Vec<T>::capacity
  %0 = call i64 @"_ZN5alloc3vec12Vec$LT$T$GT$8capacity17h35c36f553e7f7bf9E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %0, %2
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
; call alloc::raw_vec::RawVec<T,A>::shrink_to_fit
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h0610bc5425df081fE"({ i8*, i64 }* align 8 dereferenceable(16) %4, i64 %6)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void
}

; alloc::vec::Vec<T>::with_capacity
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17he92b5fa78959a43dE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24), i64 %capacity) unnamed_addr #0 {
start:
; call alloc::raw_vec::RawVec<T>::with_capacity
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$13with_capacity17h44ad6547ad46041eE"(i64 %capacity)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %2, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 3
  store i64 0, i64* %7, align 8
  ret void
}

; alloc::vec::Vec<T>::from_raw_parts
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17hae0d17cf04b10904E"(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24), i32* %ptr, i64 %length, i64 %capacity) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T>::from_raw_parts
  %1 = call { i32*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$14from_raw_parts17hd768b8187b483720E"(i32* %ptr, i64 %capacity)
  %2 = extractvalue { i32*, i64 } %1, 0
  %3 = extractvalue { i32*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::vec::Vec<u32>"* %0 to { i32*, i64 }*
  %5 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %4, i32 0, i32 0
  store i32* %2, i32** %5, align 8
  %6 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %0, i32 0, i32 3
  store i64 %length, i64* %7, align 8
  ret void
}

; alloc::vec::Vec<T>::into_boxed_slice
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN5alloc3vec12Vec$LT$T$GT$16into_boxed_slice17hf9c7a3fd06963516E"(%"alloc::vec::Vec<u8>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_9 = alloca %"alloc::vec::Vec<u8>", align 8
  %buf = alloca { i8*, i64 }, align 8
  store i8 0, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
; invoke alloc::vec::Vec<T>::shrink_to_fit
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13shrink_to_fit17h481afc51f3ec7b52E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb7
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb2:                                              ; preds = %start
  %6 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; invoke core::ptr::read
  %7 = invoke { i8*, i64 } @_ZN4core3ptr4read17hc2dabe0207c1d709E({ i8*, i64 }* %6)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store { i8*, i64 } %7, { i8*, i64 }* %buf, align 8
  store i8 1, i8* %_12, align 1
  store i8 0, i8* %_11, align 1
  %8 = bitcast %"alloc::vec::Vec<u8>"* %_9 to i8*
  %9 = bitcast %"alloc::vec::Vec<u8>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
; invoke core::mem::forget
  invoke void @_ZN4core3mem6forget17h9e811223138a9de9E(%"alloc::vec::Vec<u8>"* noalias nocapture dereferenceable(24) %_9)
          to label %bb4 unwind label %cleanup1

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_12, align 1
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %buf, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !2
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %buf, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
; invoke alloc::raw_vec::RawVec<T>::into_box
  %14 = invoke { [0 x i8]*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$8into_box17h80aa1a5071a97abcE"(i8* nonnull %11, i64 %13)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %15 = extractvalue { [0 x i8]*, i64 } %14, 0
  %16 = extractvalue { [0 x i8]*, i64 } %14, 1
  store i8 0, i8* %_12, align 1
  %17 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %15, 0
  %18 = insertvalue { [0 x i8]*, i64 } %17, i64 %16, 1
  ret { [0 x i8]*, i64 } %18

bb6:                                              ; preds = %bb7
  store i8 0, i8* %_11, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hb3f84a622bbdc27fE(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) #12
  br label %bb1

bb7:                                              ; preds = %bb8, %bb9, %cleanup
  %19 = load i8, i8* %_11, align 1, !range !3
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb6, label %bb1

bb8:                                              ; preds = %bb9
  store i8 0, i8* %_12, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hcd98eb5be8d15d30E({ i8*, i64 }* align 8 dereferenceable(16) %buf) #12
  br label %bb7

bb9:                                              ; preds = %cleanup1
  %21 = load i8, i8* %_12, align 1, !range !3
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb8, label %bb7

cleanup:                                          ; preds = %bb2, %start
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %bb7

cleanup1:                                         ; preds = %bb4, %bb3
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %bb9
}

; alloc::vec::Vec<T>::extend_from_slice
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$17extend_from_slice17h06dcb4bb1d883cf1E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, [0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
; call core::slice::<impl [T]>::iter
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h4587a83c6c580daeE"([0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <alloc::vec::Vec<T> as alloc::vec::SpecExtend<&T,core::slice::Iter<T>>>::spec_extend
  call void @"_ZN109_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb85c7b77fafe4003E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i8* %1, i8* %2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::vec::Vec<T>::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN5alloc3vec12Vec$LT$T$GT$3len17h751dc25b11efb097E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; alloc::vec::Vec<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h033a17d73486c27aE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24)) unnamed_addr #0 {
start:
; call alloc::raw_vec::RawVec<T>::new
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$3new17h282470b819ad11caE"()
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %2, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 3
  store i64 0, i64* %7, align 8
  ret void
}

; alloc::vec::Vec<T>::push
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$4push17hb389de8a6018e5c4E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self, i32 %value) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_0.i = alloca i64, align 8
  %personalityslot = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  store i8 0, i8* %_18, align 1
  store i8 1, i8* %_18, align 1
  %0 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %2 = bitcast %"alloc::vec::Vec<u32>"* %self to { i32*, i64 }*
; invoke core::mem::size_of
  %3 = invoke i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %start
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb2.i, label %bb3.i

bb2.i:                                            ; preds = %.noexc
  store i64 -1, i64* %_0.i, align 8, !noalias !42
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit"

bb3.i:                                            ; preds = %.noexc
  %5 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !alias.scope !42
  store i64 %6, i64* %_0.i, align 8, !noalias !42
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit": ; preds = %bb2.i, %bb3.i
  %7 = load i64, i64* %_0.i, align 8, !noalias !42
  br label %bb2

bb1:                                              ; preds = %bb10, %bb11
  %8 = bitcast { i8*, i32 }* %personalityslot to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit"
  %14 = icmp eq i64 %1, %7
  br i1 %14, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
; invoke alloc::vec::Vec<T>::reserve
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hdf2da2ed02186a58E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self, i64 1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %15 = invoke { [0 x i32]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h5035ead652a95950E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %16 = extractvalue { [0 x i32]*, i64 } %15, 0
  %17 = extractvalue { [0 x i32]*, i64 } %15, 1
; invoke core::slice::<impl [T]>::as_mut_ptr
  %18 = invoke i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h34d6a621f5558919E"([0 x i32]* nonnull align 4 %16, i64 %17)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %19 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
; invoke core::ptr::<impl *mut T>::add
  %21 = invoke i32* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h15483c6fb3aa8038E"(i32* %18, i64 %20)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  store i8 0, i8* %_18, align 1
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h8ce97eab2193685dE(i32* %21, i32 %value)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %22 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %23 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %22, align 8
  ret void

bb10:                                             ; preds = %bb11
  store i8 0, i8* %_18, align 1
  br label %bb1

bb11:                                             ; preds = %cleanup
  %26 = load i8, i8* %_18, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb10, label %bb1

cleanup:                                          ; preds = %start, %bb8, %bb7, %bb6, %bb5, %bb3
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %bb11
}

; alloc::vec::Vec<T>::reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$7reserve17had008904b3efcb65E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i64 %additional) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
; call alloc::raw_vec::RawVec<T,A>::reserve
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h243c4b77edd53a95E"({ i8*, i64 }* align 8 dereferenceable(16) %0, i64 %2, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T>::reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hdf2da2ed02186a58E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self, i64 %additional) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::vec::Vec<u32>"* %self to { i32*, i64 }*
  %1 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
; call alloc::raw_vec::RawVec<T,A>::reserve
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h789239ebec401af1E"({ i32*, i64 }* align 8 dereferenceable(16) %0, i64 %2, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T>::set_len
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$7set_len17hae9f683f451614ffE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i64 %new_len) unnamed_addr #0 {
start:
  br i1 false, label %bb1, label %bb5

bb1:                                              ; preds = %start
; call alloc::vec::Vec<T>::capacity
  %0 = call i64 @"_ZN5alloc3vec12Vec$LT$T$GT$8capacity17h35c36f553e7f7bf9E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = icmp ule i64 %new_len, %0
  %2 = xor i1 %1, true
  br i1 %2, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @29 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb4, %start
  %3 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  store i64 %new_len, i64* %3, align 8
  ret void
}

; alloc::vec::Vec<T>::capacity
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN5alloc3vec12Vec$LT$T$GT$8capacity17h35c36f553e7f7bf9E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_0.i = alloca i64, align 8
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call core::mem::size_of
  %1 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE(), !noalias !45
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb2.i, label %bb3.i

bb2.i:                                            ; preds = %start
  store i64 -1, i64* %_0.i, align 8, !noalias !45
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit"

bb3.i:                                            ; preds = %start
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8, !alias.scope !45
  store i64 %4, i64* %_0.i, align 8, !noalias !45
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit": ; preds = %bb2.i, %bb3.i
  %5 = load i64, i64* %_0.i, align 8, !noalias !45
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit"
  ret i64 %5
}

; alloc::alloc::alloc_zeroed
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h46321931f5655086E(i64, i64) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::Layout::size
  %4 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::align
  %5 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = call i8* @__rust_alloc_zeroed(i64 %4, i64 %5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %6
}

; alloc::alloc::exchange_malloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17h2a1ebcaf77585e13E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_0 = alloca i8*, align 8
  %0 = icmp eq i64 %size, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %1 = inttoptr i64 %align to i8*
  store i8* %1, i8** %_0, align 8
  br label %bb8

bb2:                                              ; preds = %start
; call core::alloc::Layout::from_size_align_unchecked
  %2 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %size, i64 %align)
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call alloc::alloc::alloc
  %5 = call i8* @_ZN5alloc5alloc5alloc17h21e3150ba9dfd4dcE(i64 %3, i64 %4)
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::ptr::<impl *mut T>::is_null
  %6 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81630a2ce924e9baE"(i8* %5)
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = xor i1 %6, true
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  store i8* %5, i8** %_0, align 8
  br label %bb8

bb7:                                              ; preds = %bb5
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17hb9c13f9443bbacf8E(i64 %3, i64 %4)
  unreachable

bb8:                                              ; preds = %bb6, %bb1
  %8 = load i8*, i8** %_0, align 8
  ret i8* %8
}

; alloc::alloc::alloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h21e3150ba9dfd4dcE(i64, i64) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::Layout::size
  %4 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::align
  %5 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = call i8* @__rust_alloc(i64 %4, i64 %5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %6
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %ptr, i64, i64) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::Layout::size
  %4 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::align
  %5 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %4, i64 %5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::alloc::realloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc7realloc17hfb690620bea70360E(i8* %ptr, i64, i64, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::Layout::size
  %4 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::align
  %5 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = call i8* @__rust_realloc(i8* %ptr, i64 %4, i64 %5, i64 %new_size)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %6
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h23ac896dc963a886E(i8* nonnull %ptr.0, i64* noalias readonly align 8 dereferenceable(24) %ptr.1) unnamed_addr #0 {
start:
  %tmp_ret1 = alloca i64, align 8
  %tmp_ret = alloca i64, align 8
; call core::ptr::Unique<T>::as_ptr
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hf5d4a504bf78f1feE"(i8* nonnull %ptr.0, i64* noalias readonly align 8 dereferenceable(24) %ptr.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast [3 x i64]* %2 to i64*
  %4 = getelementptr inbounds i64, i64* %3, i64 1
  %5 = load i64, i64* %4, align 8, !invariant.load !2
  %6 = bitcast [3 x i64]* %2 to i64*
  %7 = getelementptr inbounds i64, i64* %6, i64 2
  %8 = load i64, i64* %7, align 8, !invariant.load !2
  store i64 %5, i64* %tmp_ret, align 8
  %9 = load i64, i64* %tmp_ret, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = bitcast [3 x i64]* %2 to i64*
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* %11, align 8, !invariant.load !2
  %13 = bitcast [3 x i64]* %2 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  %15 = load i64, i64* %14, align 8, !invariant.load !2
  store i64 %15, i64* %tmp_ret1, align 8
  %16 = load i64, i64* %tmp_ret1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %17 = icmp ne i64 %9, 0
  br i1 %17, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; call core::alloc::Layout::from_size_align_unchecked
  %18 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %9, i64 %16)
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %21 = bitcast {}* %1 to i8*
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %21, i64 %19, i64 %20)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h2de6167c7ab3fdf7E(i8* nonnull %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %tmp_ret1 = alloca i64, align 8
  %tmp_ret = alloca i64, align 8
; call core::ptr::Unique<T>::as_ptr
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17h9575c479c876339aE"(i8* nonnull %ptr.0, i64 %ptr.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = mul i64 %2, 1
  store i64 %3, i64* %tmp_ret, align 8
  %4 = load i64, i64* %tmp_ret, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = mul i64 %2, 1
  store i64 1, i64* %tmp_ret1, align 8
  %6 = load i64, i64* %tmp_ret1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = icmp ne i64 %4, 0
  br i1 %7, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; call core::alloc::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %4, i64 %6)
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %11 = bitcast [0 x i8]* %1 to i8*
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %11, i64 %9, i64 %10)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h695c028a9a7e7601E(i8* nonnull %ptr.0, i64* noalias readonly align 8 dereferenceable(24) %ptr.1) unnamed_addr #0 {
start:
  %tmp_ret1 = alloca i64, align 8
  %tmp_ret = alloca i64, align 8
; call core::ptr::Unique<T>::as_ptr
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17h599909fd1fadc6feE"(i8* nonnull %ptr.0, i64* noalias readonly align 8 dereferenceable(24) %ptr.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast [3 x i64]* %2 to i64*
  %4 = getelementptr inbounds i64, i64* %3, i64 1
  %5 = load i64, i64* %4, align 8, !invariant.load !2
  %6 = bitcast [3 x i64]* %2 to i64*
  %7 = getelementptr inbounds i64, i64* %6, i64 2
  %8 = load i64, i64* %7, align 8, !invariant.load !2
  store i64 %5, i64* %tmp_ret, align 8
  %9 = load i64, i64* %tmp_ret, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = bitcast [3 x i64]* %2 to i64*
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* %11, align 8, !invariant.load !2
  %13 = bitcast [3 x i64]* %2 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  %15 = load i64, i64* %14, align 8, !invariant.load !2
  store i64 %15, i64* %tmp_ret1, align 8
  %16 = load i64, i64* %tmp_ret1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %17 = icmp ne i64 %9, 0
  br i1 %17, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; call core::alloc::Layout::from_size_align_unchecked
  %18 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %9, i64 %16)
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %21 = bitcast {}* %1 to i8*
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %21, i64 %19, i64 %20)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h85879eafdf2eff2cE(i64* nonnull %ptr) unnamed_addr #0 {
start:
  %tmp_ret1 = alloca i64, align 8
  %tmp_ret = alloca i64, align 8
; call core::ptr::Unique<T>::as_ptr
  %0 = call %"std::io::error::Custom"* @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17ha4a7cb001933ffbdE"(i64* nonnull %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64 24, i64* %tmp_ret, align 8
  %1 = load i64, i64* %tmp_ret, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  store i64 8, i64* %tmp_ret1, align 8
  %2 = load i64, i64* %tmp_ret1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = icmp ne i64 %1, 0
  br i1 %3, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; call core::alloc::Layout::from_size_align_unchecked
  %4 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %1, i64 %2)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %7 = bitcast %"std::io::error::Custom"* %0 to i8*
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %7, i64 %5, i64 %6)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17hcb13562f8d63ce8aE(i32* nonnull %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %tmp_ret1 = alloca i64, align 8
  %tmp_ret = alloca i64, align 8
; call core::ptr::Unique<T>::as_ptr
  %0 = call { [0 x i32]*, i64 } @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hc3c744971eb678aaE"(i32* nonnull %ptr.0, i64 %ptr.1)
  %1 = extractvalue { [0 x i32]*, i64 } %0, 0
  %2 = extractvalue { [0 x i32]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = mul i64 %2, 4
  store i64 %3, i64* %tmp_ret, align 8
  %4 = load i64, i64* %tmp_ret, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = mul i64 %2, 4
  store i64 4, i64* %tmp_ret1, align 8
  %6 = load i64, i64* %tmp_ret1, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = icmp ne i64 %4, 0
  br i1 %7, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
; call core::alloc::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %4, i64 %6)
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %11 = bitcast [0 x i32]* %1 to i8*
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hfcfaf9f2bdda39a7E(i8* %11, i64 %9, i64 %10)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  ret void
}

; alloc::boxed::Box<T>::into_unique
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @"_ZN5alloc5boxed12Box$LT$T$GT$11into_unique17h4e67f6aa9357f1a0E"({}* noalias nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24)) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %b = alloca { {}*, [3 x i64]* }, align 8
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  store {}* %0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  store [3 x i64]* %1, [3 x i64]** %3, align 8
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
  %4 = bitcast { {}*, [3 x i64]* }* %b to { i8*, i64* }*
; invoke core::ptr::Unique<T>::as_mut
  %5 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr15Unique$LT$T$GT$6as_mut17h384aeb6572b7aa42E"({ i8*, i64* }* align 8 dereferenceable(16) %4)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb5, %bb6
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  %12 = extractvalue { {}*, [3 x i64]* } %5, 0
  %13 = extractvalue { {}*, [3 x i64]* } %5, 1
  store i8 0, i8* %_9, align 1
  %14 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  %15 = load {}*, {}** %14, align 8, !nonnull !2
  %16 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  %17 = load [3 x i64]*, [3 x i64]** %16, align 8, !nonnull !2
; invoke core::mem::forget
  invoke void @_ZN4core3mem6forget17h04e71e6035cec7d8E({}* noalias nonnull align 1 %15, [3 x i64]* noalias readonly align 8 dereferenceable(24) %17)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
; invoke core::ptr::Unique<T>::new_unchecked
  %18 = invoke { i8*, i64* } @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17h1d5febaaa742953fE"({}* %12, [3 x i64]* noalias readonly align 8 dereferenceable(24) %13)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %19 = extractvalue { i8*, i64* } %18, 0
  %20 = extractvalue { i8*, i64* } %18, 1
  %21 = insertvalue { i8*, i64* } undef, i8* %19, 0
  %22 = insertvalue { i8*, i64* } %21, i64* %20, 1
  ret { i8*, i64* } %22

bb5:                                              ; preds = %bb6
  store i8 0, i8* %_9, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hc0ec3c425c733586E({ {}*, [3 x i64]* }* align 8 dereferenceable(16) %b) #12
  br label %bb1

bb6:                                              ; preds = %cleanup
  %23 = load i8, i8* %_9, align 1, !range !3
  %24 = trunc i8 %23 to i1
  br i1 %24, label %bb5, label %bb1

cleanup:                                          ; preds = %bb3, %bb2, %start
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %bb6
}

; alloc::boxed::Box<T>::into_raw_non_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64* } @"_ZN5alloc5boxed12Box$LT$T$GT$17into_raw_non_null17hc81cd75aaece0b7aE"({}* noalias nonnull align 1 %b.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %b.1) unnamed_addr #0 {
start:
; call alloc::boxed::Box<T>::into_unique
  %0 = call { i8*, i64* } @"_ZN5alloc5boxed12Box$LT$T$GT$11into_unique17h4e67f6aa9357f1a0E"({}* noalias nonnull align 1 %b.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %b.1)
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <T as core::convert::Into<U>>::into
  %3 = call { i8*, i64* } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb7bcff8c5b0ad34fE"(i8* nonnull %1, i64* noalias readonly align 8 dereferenceable(24) %2)
  %4 = extractvalue { i8*, i64* } %3, 0
  %5 = extractvalue { i8*, i64* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = insertvalue { i8*, i64* } undef, i8* %4, 0
  %7 = insertvalue { i8*, i64* } %6, i64* %5, 1
  ret { i8*, i64* } %7
}

; alloc::boxed::Box<T>::from_raw
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17hbcc6b558bd0060e0E"([0 x i8]* %raw.0, i64 %raw.1) unnamed_addr #0 {
start:
  %_0 = alloca { [0 x i8]*, i64 }, align 8
; call core::ptr::Unique<T>::new_unchecked
  %0 = call { i8*, i64 } @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17hd010d6ba620ea1c8E"([0 x i8]* %raw.0, i64 %raw.1)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast { [0 x i8]*, i64 }* %_0 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  store i8* %1, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_0, i32 0, i32 0
  %7 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !2
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; alloc::boxed::Box<T>::into_raw
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN5alloc5boxed12Box$LT$T$GT$8into_raw17hdccef4830e37ef3aE"({}* noalias nonnull align 1 %b.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %b.1) unnamed_addr #0 {
start:
; call alloc::boxed::Box<T>::into_raw_non_null
  %0 = call { i8*, i64* } @"_ZN5alloc5boxed12Box$LT$T$GT$17into_raw_non_null17hc81cd75aaece0b7aE"({}* noalias nonnull align 1 %b.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %b.1)
  %1 = extractvalue { i8*, i64* } %0, 0
  %2 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::NonNull<T>::as_ptr
  %3 = call { {}*, [3 x i64]* } @"_ZN4core3ptr16NonNull$LT$T$GT$6as_ptr17hd9b5cf9919129599E"(i8* nonnull %1, i64* noalias readonly align 8 dereferenceable(24) %2)
  %4 = extractvalue { {}*, [3 x i64]* } %3, 0
  %5 = extractvalue { {}*, [3 x i64]* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = insertvalue { {}*, [3 x i64]* } undef, {}* %4, 0
  %7 = insertvalue { {}*, [3 x i64]* } %6, [3 x i64]* %5, 1
  ret { {}*, [3 x i64]* } %7
}

; alloc::slice::<impl [T]>::into_vec
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h7068d080ea6664feE"(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24), [0 x i32]* noalias nonnull align 4 %self.0, i64 %self.1) unnamed_addr #0 {
start:
; call alloc::slice::hack::into_vec
  call void @_ZN5alloc5slice4hack8into_vec17h563bc68d8e630afaE(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24) %0, [0 x i32]* noalias nonnull align 4 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::hack::into_vec
; Function Attrs: nonlazybind uwtable
define internal void @_ZN5alloc5slice4hack8into_vec17h563bc68d8e630afaE(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24), [0 x i32]* noalias nonnull align 4, i64) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %xs = alloca %"alloc::vec::Vec<u32>", align 8
  %b = alloca { [0 x i32]*, i64 }, align 8
  %3 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 0
  store [0 x i32]* %1, [0 x i32]** %3, align 8
  %4 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 0
  %6 = load [0 x i32]*, [0 x i32]** %5, align 8, !nonnull !2
  %7 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
; invoke core::slice::<impl [T]>::as_mut_ptr
  %9 = invoke i32* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h34d6a621f5558919E"([0 x i32]* nonnull align 4 %6, i64 %8)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb8, %bb9
  %10 = bitcast { i8*, i32 }* %personalityslot to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb2:                                              ; preds = %start
  %16 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 0
  %17 = load [0 x i32]*, [0 x i32]** %16, align 8, !nonnull !2
  %18 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
; invoke core::slice::<impl [T]>::len
  %20 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hc70d987a2163e8adE"([0 x i32]* noalias nonnull readonly align 4 %17, i64 %19)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %21 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 0
  %22 = load [0 x i32]*, [0 x i32]** %21, align 8, !nonnull !2
  %23 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
; invoke core::slice::<impl [T]>::len
  %25 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hc70d987a2163e8adE"([0 x i32]* noalias nonnull readonly align 4 %22, i64 %24)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke alloc::vec::Vec<T>::from_raw_parts
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17hae0d17cf04b10904E"(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24) %xs, i32* %9, i64 %20, i64 %25)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_11, align 1
  %26 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 0
  %27 = load [0 x i32]*, [0 x i32]** %26, align 8, !nonnull !2
  %28 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %b, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
; invoke core::mem::forget
  invoke void @_ZN4core3mem6forget17hf21e0e437d6ecaa9E([0 x i32]* noalias nonnull align 4 %27, i64 %29)
          to label %bb7 unwind label %cleanup1

bb6:                                              ; preds = %cleanup1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h29e642ed75c3b294E(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %xs) #12
  br label %bb9

bb7:                                              ; preds = %bb5
  %30 = bitcast %"alloc::vec::Vec<u32>"* %0 to i8*
  %31 = bitcast %"alloc::vec::Vec<u32>"* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  ret void

bb8:                                              ; preds = %bb9
  store i8 0, i8* %_11, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h90c9d4121ea23c62E({ [0 x i32]*, i64 }* align 8 dereferenceable(16) %b) #12
  br label %bb1

bb9:                                              ; preds = %bb6, %cleanup
  %32 = load i8, i8* %_11, align 1, !range !3
  %33 = trunc i8 %32 to i1
  br i1 %33, label %bb8, label %bb1

cleanup:                                          ; preds = %bb4, %bb3, %bb2, %start
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  %36 = extractvalue { i8*, i32 } %34, 1
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %bb9

cleanup1:                                         ; preds = %bb5
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  %41 = extractvalue { i8*, i32 } %39, 1
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %bb6
}

; alloc::string::String::as_mut_vec
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(24) %"alloc::vec::Vec<u8>"* @_ZN5alloc6string6String10as_mut_vec17h8c49959ebd481fe9E(%"alloc::string::String"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
  ret %"alloc::vec::Vec<u8>"* %0
}

; alloc::string::String::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN5alloc6string6String3len17h30b3c12cd9db7626E(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
; call alloc::vec::Vec<T>::len
  %1 = call i64 @"_ZN5alloc3vec12Vec$LT$T$GT$3len17h751dc25b11efb097E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; alloc::string::String::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc6string6String3new17hfe4040df8e9f3f15E(%"alloc::string::String"* noalias nocapture sret dereferenceable(24)) unnamed_addr #0 {
start:
  %_1 = alloca %"alloc::vec::Vec<u8>", align 8
; call alloc::vec::Vec<T>::new
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h033a17d73486c27aE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %1 to i8*
  %3 = bitcast %"alloc::vec::Vec<u8>"* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; alloc::string::String::pop
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN5alloc6string6String3pop17ha2a099b8243399f5E(%"alloc::string::String"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i8* }, align 8
  %_3 = alloca i32, align 4
  %_0 = alloca i32, align 4
; call <alloc::string::String as core::ops::deref::Deref>::deref
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9639dbdba248665dE"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %self)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::str::<impl str>::chars
  %3 = call { i8*, i8* } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6afff5120f044b83E"([0 x i8]* noalias nonnull readonly align 1 %1, i64 %2)
  %4 = extractvalue { i8*, i8* } %3, 0
  %5 = extractvalue { i8*, i8* } %3, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::iter::traits::iterator::Iterator::rev
  %6 = call { i8*, i8* } @_ZN4core4iter6traits8iterator8Iterator3rev17h59db50c3f7c4a6a8E(i8* %4, i8* %5)
  store { i8*, i8* } %6, { i8*, i8* }* %_6, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
; call <core::iter::adapters::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %7 = call i32 @"_ZN93_$LT$core..iter..adapters..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h47207d4e0999a5b8E"({ i8*, i8* }* align 8 dereferenceable(16) %_6), !range !41
  br label %bb4

bb4:                                              ; preds = %bb3
; call <core::option::Option<T> as core::ops::try::Try>::into_result
  %8 = call i32 @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8c0e41d702177214E"(i32 %7), !range !41
  store i32 %8, i32* %_3, align 4
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = load i32, i32* %_3, align 4, !range !41
  %10 = icmp eq i32 %9, 1114112
  %11 = select i1 %10, i64 1, i64 0
  switch i64 %11, label %bb6 [
    i64 0, label %bb11
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb5
  unreachable

bb7:                                              ; preds = %bb5
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hecd8cccde7d1e353E"()
  br label %bb8

bb8:                                              ; preds = %bb7
; call <core::option::Option<T> as core::ops::try::Try>::from_error
  %12 = call i32 @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h8ea5b962eaf50442E"(), !range !41
  store i32 %12, i32* %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10

bb10:                                             ; preds = %bb14, %bb9
  %13 = load i32, i32* %_0, align 4, !range !41
  ret i32 %13

bb11:                                             ; preds = %bb5
  %14 = load i32, i32* %_3, align 4, !range !37
; call alloc::string::String::len
  %15 = call i64 @_ZN5alloc6string6String3len17h30b3c12cd9db7626E(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %self)
  br label %bb12

bb12:                                             ; preds = %bb11
; call core::char::methods::<impl char>::len_utf8
  %16 = call i64 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8len_utf817he839bcd2c321b9c5E"(i32 %14)
  br label %bb13

bb13:                                             ; preds = %bb12
  %17 = sub i64 %15, %16
  %18 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
; call alloc::vec::Vec<T>::set_len
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$7set_len17hae9f683f451614ffE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %18, i64 %17)
  br label %bb14

bb14:                                             ; preds = %bb13
  store i32 %14, i32* %_0, align 4
  br label %bb10
}

; alloc::raw_vec::alloc_guard
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN5alloc7raw_vec11alloc_guard17h6be34e1e7c737240E(i64 %alloc_size) unnamed_addr #0 {
start:
  %_9 = alloca {}, align 1
  %_8 = alloca i8, align 1
  %_2 = alloca i8, align 1
  %_0 = alloca i8, align 1
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h869455189d2d485bE()
  br label %bb4

bb1:                                              ; preds = %bb4
  store i8 0, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %1 = icmp ugt i64 %alloc_size, 9223372036854775807
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %3 = load i8, i8* %_2, align 1, !range !3
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb5, label %bb6

bb4:                                              ; preds = %start
  %5 = icmp ult i64 %0, 8
  br i1 %5, label %bb2, label %bb1

bb5:                                              ; preds = %bb3
  store i8 0, i8* %_8, align 1
  %6 = load i8, i8* %_8, align 1, !range !3
  %7 = trunc i8 %6 to i1
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %_0, align 1
  br label %bb7

bb6:                                              ; preds = %bb3
  %9 = bitcast i8* %_0 to %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"*
  %10 = bitcast %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"* %9 to {}*
  store i8 2, i8* %_0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %11 = load i8, i8* %_0, align 1, !range !19
  ret i8 %11
}

; alloc::raw_vec::RawVec<T>::with_capacity
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$13with_capacity17h44ad6547ad46041eE"(i64 %cap) unnamed_addr #0 {
start:
  %_3 = alloca %"alloc::alloc::Global", align 1
; call alloc::raw_vec::RawVec<T,A>::allocate_in
  %0 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17he3be4d6a7efaa256E"(i64 %cap, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; alloc::raw_vec::RawVec<T>::from_raw_parts
; Function Attrs: nonlazybind uwtable
define internal { i32*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$14from_raw_parts17hd768b8187b483720E"(i32* %ptr, i64 %cap) unnamed_addr #1 {
start:
  %_6 = alloca %"alloc::alloc::Global", align 1
  %_0 = alloca { i32*, i64 }, align 8
; call core::ptr::Unique<T>::new_unchecked
  %0 = call nonnull i32* @"_ZN4core3ptr15Unique$LT$T$GT$13new_unchecked17h2f9ecae88fdfd6ecE"(i32* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i32*, i64 }* %_0 to i32**
  store i32* %0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_0, i32 0, i32 1
  store i64 %cap, i64* %2, align 8
  %3 = bitcast { i32*, i64 }* %_0 to %"alloc::alloc::Global"*
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_0, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8, !nonnull !2
  %6 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %_0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i32*, i64 } undef, i32* %5, 0
  %9 = insertvalue { i32*, i64 } %8, i64 %7, 1
  ret { i32*, i64 } %9
}

; alloc::raw_vec::RawVec<T>::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$3new17h282470b819ad11caE"() unnamed_addr #1 {
start:
  %_1 = alloca %"alloc::alloc::Global", align 1
; call alloc::raw_vec::RawVec<T,A>::new_in
  %0 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hcf9dcea6ad6c6375E"()
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; alloc::raw_vec::RawVec<T>::into_box
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN5alloc7raw_vec15RawVec$LT$T$GT$8into_box17h80aa1a5071a97abcE"(i8* nonnull, i64) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %output = alloca { [0 x i8]*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
; invoke alloc::raw_vec::RawVec<T,A>::ptr
  %4 = invoke i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hdf47c94b8fc32b18E"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb7, %bb8
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
; invoke core::slice::from_raw_parts_mut
  %13 = invoke { [0 x i8]*, i64 } @_ZN4core5slice18from_raw_parts_mut17hf687a010146ec8f0E(i8* %4, i64 %12)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %14 = extractvalue { [0 x i8]*, i64 } %13, 0
  %15 = extractvalue { [0 x i8]*, i64 } %13, 1
; invoke alloc::boxed::Box<T>::from_raw
  %16 = invoke { [0 x i8]*, i64 } @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17hbcc6b558bd0060e0E"([0 x i8]* %14, i64 %15)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store { [0 x i8]*, i64 } %16, { [0 x i8]*, i64 }* %output, align 8
  store i8 0, i8* %_11, align 1
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !nonnull !2
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
; invoke core::mem::forget
  invoke void @_ZN4core3mem6forget17h7ece8451481b7667E(i8* nonnull %18, i64 %20)
          to label %bb6 unwind label %cleanup1

bb5:                                              ; preds = %cleanup1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h316d4f2f914a5cfbE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %output) #12
  br label %bb8

bb6:                                              ; preds = %bb4
  %21 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %output, i32 0, i32 0
  %22 = load [0 x i8]*, [0 x i8]** %21, align 8, !nonnull !2
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %output, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %22, 0
  %26 = insertvalue { [0 x i8]*, i64 } %25, i64 %24, 1
  ret { [0 x i8]*, i64 } %26

bb7:                                              ; preds = %bb8
  store i8 0, i8* %_11, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hcd98eb5be8d15d30E({ i8*, i64 }* align 8 dereferenceable(16) %self) #12
  br label %bb1

bb8:                                              ; preds = %bb5, %cleanup
  %27 = load i8, i8* %_11, align 1, !range !3
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb7, label %bb1

cleanup:                                          ; preds = %bb3, %bb2, %start
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  %31 = extractvalue { i8*, i32 } %29, 1
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %bb8

cleanup1:                                         ; preds = %bb4
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  %36 = extractvalue { i8*, i32 } %34, 1
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %bb5
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17he3be4d6a7efaa256E"(i64 %cap, i1 zeroext %zeroed) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %result = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %_13 = alloca %"alloc::raw_vec::{{impl}}::allocate_in::{{closure}}<u8, alloc::alloc::Global>.1", align 1
  %_9 = alloca %"alloc::raw_vec::{{impl}}::allocate_in::{{closure}}<u8, alloc::alloc::Global>", align 1
  %_0 = alloca { i8*, i64 }, align 8
  %a = alloca %"alloc::alloc::Global", align 1
; invoke core::mem::size_of
  %0 = invoke i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
; invoke core::num::<impl usize>::checked_mul
  %7 = invoke { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h68611ef6e3a3d663E"(i64 %cap, i64 %0)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb1

bb4:                                              ; preds = %bb2
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
; invoke core::option::Option<T>::unwrap_or_else
  %10 = invoke i64 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hd21b8965df6d4fbdE"(i64 %8, i64 %9)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke alloc::raw_vec::alloc_guard
  %11 = invoke i8 @_ZN5alloc7raw_vec11alloc_guard17h6be34e1e7c737240E(i64 %10)
          to label %bb6 unwind label %cleanup, !range !19

bb6:                                              ; preds = %bb5
; invoke core::result::Result<T,E>::unwrap_or_else
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$14unwrap_or_else17hf2a86af745fd5c02E"(i8 %11)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb7
; invoke core::ptr::NonNull<T>::dangling
  %13 = invoke nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$8dangling17h5ec0213bf56fa858E"()
          to label %bb24 unwind label %cleanup

bb9:                                              ; preds = %bb7
; invoke core::mem::align_of
  %14 = invoke i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
; invoke core::alloc::Layout::from_size_align
  %15 = invoke { i64, i64 } @_ZN4core5alloc6Layout15from_size_align17h6d6073e83facac76E(i64 %10, i64 %14)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
; invoke core::result::Result<T,E>::unwrap
  %18 = invoke { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hee98cc9c489af50eE"(i64 %16, i64 %17)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  br i1 %zeroed, label %bb13, label %bb15

bb13:                                             ; preds = %bb12
; invoke <alloc::alloc::Global as core::alloc::Alloc>::alloc_zeroed
  %21 = invoke i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$12alloc_zeroed17he78a9bd2e4227482E"(%"alloc::alloc::Global"* nonnull align 1 %a, i64 %19, i64 %20)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  store i8* %21, i8** %result, align 8
  br label %bb17

bb15:                                             ; preds = %bb12
; invoke <alloc::alloc::Global as core::alloc::Alloc>::alloc
  %22 = invoke i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$5alloc17h176a4edc344ab054E"(%"alloc::alloc::Global"* nonnull align 1 %a, i64 %19, i64 %20)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i8* %22, i8** %result, align 8
  br label %bb17

bb17:                                             ; preds = %bb16, %bb14
  %23 = bitcast i8** %result to {}**
  %24 = load {}*, {}** %23, align 8
  %25 = icmp eq {}* %24, null
  %26 = select i1 %25, i64 1, i64 0
  switch i64 %26, label %bb18 [
    i64 0, label %bb19
    i64 1, label %bb21
  ]

bb18:                                             ; preds = %bb17
  unreachable

bb19:                                             ; preds = %bb17
  %27 = load i8*, i8** %result, align 8, !nonnull !2
; invoke core::ptr::NonNull<T>::cast
  %28 = invoke nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %27)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i8* %28, i8** %ptr, align 8
  br label %bb22

bb21:                                             ; preds = %bb17
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17hb9c13f9443bbacf8E(i64 %19, i64 %20)
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb20, %bb24
  %29 = load i8*, i8** %ptr, align 8, !nonnull !2
; invoke <T as core::convert::Into<U>>::into
  %30 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h714c3089422a1d9bE"(i8* nonnull %29)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %31 = bitcast { i8*, i64 }* %_0 to i8**
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  store i64 %cap, i64* %32, align 8
  %33 = bitcast { i8*, i64 }* %_0 to %"alloc::alloc::Global"*
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8, !nonnull !2
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = insertvalue { i8*, i64 } undef, i8* %35, 0
  %39 = insertvalue { i8*, i64 } %38, i64 %37, 1
  ret { i8*, i64 } %39

bb24:                                             ; preds = %bb8
  store i8* %13, i8** %ptr, align 8
  br label %bb22

cleanup:                                          ; preds = %bb22, %bb19, %bb21, %bb15, %bb13, %bb11, %bb10, %bb9, %bb8, %bb6, %bb5, %bb4, %bb2, %start
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  %42 = extractvalue { i8*, i32 } %40, 1
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %bb3

unreachable:                                      ; preds = %bb21
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::allocate_in::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h86d7d4dd69e3dac7E"() unnamed_addr #1 {
start:
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h9b2f61b54553add9E()
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::allocate_in::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17ha9837d8928e6b26dE"(i1 zeroext %arg1) unnamed_addr #1 {
start:
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h9b2f61b54553add9E()
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::shrink_to_fit
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h0610bc5425df081fE"({ i8*, i64 }* align 8 dereferenceable(16) %self, i64 %amount) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_55 = alloca i8, align 1
  %_39 = alloca i8*, align 8
  store i8 0, i8* %_55, align 1
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb2

bb1:                                              ; preds = %bb28, %bb29
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = icmp eq i64 %0, 0
  br i1 %7, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %amount, i64* %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb27, %bb3
  ret void

bb5:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp uge i64 %10, %amount
  %12 = xor i1 %11, true
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @32 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb7:                                              ; preds = %bb5
  %13 = icmp eq i64 %amount, 0
  br i1 %13, label %bb8, label %bb13

bb8:                                              ; preds = %bb7
  %14 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  store i8 1, i8* %_55, align 1
; call core::ptr::read
  call void @_ZN4core3ptr4read17hb0a75885f1a04642E(%"alloc::alloc::Global"* %14)
  br label %bb9

bb9:                                              ; preds = %bb8
; invoke alloc::raw_vec::RawVec<T,A>::dealloc_buffer
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h673b8fbc62bd0b65E"({ i8*, i64 }* align 8 dereferenceable(16) %self)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i8 0, i8* %_55, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %15 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hcf9dcea6ad6c6375E"()
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %16 = extractvalue { i8*, i64 } %15, 0
  %17 = extractvalue { i8*, i64 } %15, 1
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h87b7781840248bfdE({ i8*, i64 }* %self, i8* nonnull %16, i64 %17)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i8 0, i8* %_55, align 1
  br label %bb27

bb13:                                             ; preds = %bb7
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, %amount
  br i1 %20, label %bb14, label %bb26

bb14:                                             ; preds = %bb13
  %21 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %0, %22
  %24 = mul i64 %0, %amount
; call core::mem::align_of
  %25 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb15

bb15:                                             ; preds = %bb14
; call core::alloc::Layout::from_size_align_unchecked
  %26 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %23, i64 %25)
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  br label %bb16

bb16:                                             ; preds = %bb15
  %29 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  %30 = bitcast { i8*, i64 }* %self to i8**
  %31 = load i8*, i8** %30, align 8, !nonnull !2
; call <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
  %32 = call nonnull i8* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17h0826ac918d326c57E"(i8* nonnull %31)
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::ptr::NonNull<T>::cast
  %33 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %32)
  br label %bb18

bb18:                                             ; preds = %bb17
; call <alloc::alloc::Global as core::alloc::Alloc>::realloc
  %34 = call i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7realloc17h0791e9ff9f0dca53E"(%"alloc::alloc::Global"* nonnull align 1 %29, i8* nonnull %33, i64 %27, i64 %28, i64 %24)
  store i8* %34, i8** %_39, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  %35 = bitcast i8** %_39 to {}**
  %36 = load {}*, {}** %35, align 8
  %37 = icmp eq {}* %36, null
  %38 = select i1 %37, i64 1, i64 0
  switch i64 %38, label %bb20 [
    i64 0, label %bb21
    i64 1, label %bb24
  ]

bb20:                                             ; preds = %bb19
  unreachable

bb21:                                             ; preds = %bb19
  %39 = load i8*, i8** %_39, align 8, !nonnull !2
; call core::ptr::NonNull<T>::cast
  %40 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %39)
  br label %bb22

bb22:                                             ; preds = %bb21
; call <T as core::convert::Into<U>>::into
  %41 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h714c3089422a1d9bE"(i8* nonnull %40)
  br label %bb23

bb23:                                             ; preds = %bb22
  %42 = bitcast { i8*, i64 }* %self to i8**
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %amount, i64* %43, align 8
  br label %bb26

bb24:                                             ; preds = %bb19
; call core::alloc::Layout::from_size_align_unchecked
  %44 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %24, i64 %25)
  %45 = extractvalue { i64, i64 } %44, 0
  %46 = extractvalue { i64, i64 } %44, 1
  br label %bb25

bb25:                                             ; preds = %bb24
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17hb9c13f9443bbacf8E(i64 %45, i64 %46)
  unreachable

bb26:                                             ; preds = %bb23, %bb13
  br label %bb27

bb27:                                             ; preds = %bb26, %bb12
  br label %bb4

bb28:                                             ; preds = %bb29
  store i8 0, i8* %_55, align 1
  br label %bb1

bb29:                                             ; preds = %cleanup
  %47 = load i8, i8* %_55, align 1, !range !3
  %48 = trunc i8 %47 to i1
  br i1 %48, label %bb28, label %bb1

cleanup:                                          ; preds = %bb11, %bb10, %bb9
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  %51 = extractvalue { i8*, i32 } %49, 1
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %bb29
}

; alloc::raw_vec::RawVec<T,A>::current_layout
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17h0541c1845696f4eaE"({ i32*, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_0 = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 0, i64* %3, align 8
  br label %bb6

bb2:                                              ; preds = %start
; call core::mem::align_of
  %4 = call i64 @_ZN4core3mem8align_of17h68b0f665a0d271d2E()
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::mem::size_of
  %5 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = mul i64 %5, %7
; call core::alloc::Layout::from_size_align_unchecked
  %9 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %8, i64 %4)
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19
}

; alloc::raw_vec::RawVec<T,A>::current_layout
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17hf79d0fb8a33b6f2eE"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_0 = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 0, i64* %3, align 8
  br label %bb6

bb2:                                              ; preds = %start
; call core::mem::align_of
  %4 = call i64 @_ZN4core3mem8align_of17h30a748a3d7e04e54E()
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::mem::size_of
  %5 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb4

bb4:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = mul i64 %5, %7
; call core::alloc::Layout::from_size_align_unchecked
  %9 = call { i64, i64 } @_ZN4core5alloc6Layout25from_size_align_unchecked17ha140260ce2606e94E(i64 %8, i64 %4)
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19
}

; alloc::raw_vec::RawVec<T,A>::dealloc_buffer
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h25c780f7d151f094E"({ i32*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_5 = alloca { i64, i64 }, align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp ne i64 %0, 0
  br i1 %1, label %bb2, label %bb9

bb2:                                              ; preds = %bb1
; call alloc::raw_vec::RawVec<T,A>::current_layout
  %2 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17h0541c1845696f4eaE"({ i32*, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  store { i64, i64 } %2, { i64, i64 }* %_5, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  %6 = select i1 %5, i64 0, i64 1
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %11 = load i64, i64* %10, align 8, !range !18
  %12 = bitcast { i32*, i64 }* %self to %"alloc::alloc::Global"*
  %13 = bitcast { i32*, i64 }* %self to i32**
  %14 = load i32*, i32** %13, align 8, !nonnull !2
; call <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
  %15 = call nonnull i32* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17hbd7255b0bfb05237E"(i32* nonnull %14)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::ptr::NonNull<T>::cast
  %16 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h4035dd144b5d99feE"(i32* nonnull %15)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <alloc::alloc::Global as core::alloc::Alloc>::dealloc
  call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7dealloc17hbe9cadedd5566839E"(%"alloc::alloc::Global"* nonnull align 1 %12, i8* nonnull %16, i64 %9, i64 %11)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  br label %bb9

bb9:                                              ; preds = %bb8, %bb1
  ret void
}

; alloc::raw_vec::RawVec<T,A>::dealloc_buffer
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h673b8fbc62bd0b65E"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_5 = alloca { i64, i64 }, align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp ne i64 %0, 0
  br i1 %1, label %bb2, label %bb9

bb2:                                              ; preds = %bb1
; call alloc::raw_vec::RawVec<T,A>::current_layout
  %2 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17hf79d0fb8a33b6f2eE"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  store { i64, i64 } %2, { i64, i64 }* %_5, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  %6 = select i1 %5, i64 0, i64 1
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1
  %11 = load i64, i64* %10, align 8, !range !18
  %12 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  %13 = bitcast { i8*, i64 }* %self to i8**
  %14 = load i8*, i8** %13, align 8, !nonnull !2
; call <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
  %15 = call nonnull i8* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17h0826ac918d326c57E"(i8* nonnull %14)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::ptr::NonNull<T>::cast
  %16 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %15)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <alloc::alloc::Global as core::alloc::Alloc>::dealloc
  call void @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7dealloc17hbe9cadedd5566839E"(%"alloc::alloc::Global"* nonnull align 1 %12, i8* nonnull %16, i64 %9, i64 %11)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  br label %bb9

bb9:                                              ; preds = %bb8, %bb1
  ret void
}

; alloc::raw_vec::RawVec<T,A>::reserve_internal
; Function Attrs: nonlazybind uwtable
define internal i8 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal17h2c27d80ba1b0a742E"({ i8*, i64 }* align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap, i1 zeroext %fallibility, i1 zeroext) unnamed_addr #1 {
start:
  %_0.i = alloca i64, align 8
  %_97 = alloca {}, align 1
  %_89 = alloca i8*, align 8
  %_80 = alloca { i64*, i8 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_58 = alloca { i64, i64 }, align 8
  %res = alloca i8*, align 8
  %_48 = alloca i8, align 1
  %_41 = alloca %"alloc::raw_vec::{{impl}}::reserve_internal::{{closure}}<u8, alloc::alloc::Global>", align 1
  %_38 = alloca %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>", align 8
  %_37 = alloca %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  %_27 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_26 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_20 = alloca i8, align 1
  %_16 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_15 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %new_cap = alloca i64, align 8
  %_12 = alloca {}, align 1
  %_0 = alloca i8, align 1
  %strategy = alloca i8, align 1
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %strategy, align 1
; call core::mem::size_of
  %2 = call i64 @_ZN4core3mem7size_of17h592060904b8a69ffE(), !noalias !48
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb2.i, label %bb3.i

bb2.i:                                            ; preds = %start
  store i64 -1, i64* %_0.i, align 8, !noalias !48
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit"

bb3.i:                                            ; preds = %start
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %5 = load i64, i64* %4, align 8, !alias.scope !48
  store i64 %5, i64* %_0.i, align 8, !noalias !48
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit": ; preds = %bb2.i, %bb3.i
  %6 = load i64, i64* %_0.i, align 8, !noalias !48
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E.exit"
; call core::num::<impl usize>::wrapping_sub
  %7 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %6, i64 %used_cap)
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = icmp uge i64 %7, %needed_extra_cap
  br i1 %8, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %9 = bitcast i8* %_0 to %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"*
  %10 = bitcast %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"* %9 to {}*
  store i8 2, i8* %_0, align 1
  br label %bb4

bb4:                                              ; preds = %bb63, %bb14, %bb3
  %11 = load i8, i8* %_0, align 1, !range !19
  ret i8 %11

bb5:                                              ; preds = %bb2
  %12 = load i8, i8* %strategy, align 1, !range !3
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i64
  switch i64 %14, label %bb6 [
    i64 0, label %bb7
    i64 1, label %bb16
  ]

bb6:                                              ; preds = %bb57, %bb39, %bb34, %bb26, %bb10, %bb18, %bb5
  unreachable

bb7:                                              ; preds = %bb5
; call core::num::<impl usize>::checked_add
  %15 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hfd3b276676d6545cE"(i64 %used_cap, i64 %needed_extra_cap)
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  store i8 0, i8* %_20, align 1
  %18 = load i8, i8* %_20, align 1, !range !3
  %19 = trunc i8 %18 to i1
; call core::option::Option<T>::ok_or
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1452fbaa2e91e9adE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_16, i64 %16, i64 %17, i1 zeroext %19)
  br label %bb9

bb9:                                              ; preds = %bb8
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_15, %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
  %20 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_15 to i8*
  %21 = load i8, i8* %20, align 8, !range !3
  %22 = trunc i8 %21 to i1
  %23 = zext i1 %22 to i64
  switch i64 %23, label %bb6 [
    i64 0, label %bb15
    i64 1, label %bb11
  ]

bb11:                                             ; preds = %bb10
  %24 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_15 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %25 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 1, !range !3
  %27 = trunc i8 %26 to i1
; call <T as core::convert::From<T>>::from
  %28 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %27)
  br label %bb12

bb12:                                             ; preds = %bb11
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %29 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %28), !range !19
  store i8 %29, i8* %_0, align 1
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb14

bb14:                                             ; preds = %bb30, %bb13, %bb21
  br label %bb4

bb15:                                             ; preds = %bb10
  %30 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_15 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %31 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %new_cap, align 8
  br label %bb23

bb16:                                             ; preds = %bb5
; call alloc::raw_vec::RawVec<T,A>::amortized_new_size
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$18amortized_new_size17h3a1ac627a6ed36ecE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_27, { i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap)
  br label %bb17

bb17:                                             ; preds = %bb16
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_26, %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %_27)
  br label %bb18

bb18:                                             ; preds = %bb17
  %33 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_26 to i8*
  %34 = load i8, i8* %33, align 8, !range !3
  %35 = trunc i8 %34 to i1
  %36 = zext i1 %35 to i64
  switch i64 %36, label %bb6 [
    i64 0, label %bb22
    i64 1, label %bb19
  ]

bb19:                                             ; preds = %bb18
  %37 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_26 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %38 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 1, !range !3
  %40 = trunc i8 %39 to i1
; call <T as core::convert::From<T>>::from
  %41 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %40)
  br label %bb20

bb20:                                             ; preds = %bb19
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %42 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %41), !range !19
  store i8 %42, i8* %_0, align 1
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb14

bb22:                                             ; preds = %bb18
  %43 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_26 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %44 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %new_cap, align 8
  br label %bb23

bb23:                                             ; preds = %bb15, %bb22
  %46 = load i64, i64* %new_cap, align 8
; call core::alloc::Layout::array
  %47 = call { i64, i64 } @_ZN4core5alloc6Layout5array17h963d77217f740491E(i64 %46)
  %48 = extractvalue { i64, i64 } %47, 0
  %49 = extractvalue { i64, i64 } %47, 1
  br label %bb24

bb24:                                             ; preds = %bb23
; call core::result::Result<T,E>::map_err
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd935bea7abb73214E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_38, i64 %48, i64 %49)
  br label %bb25

bb25:                                             ; preds = %bb24
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17ha05d1754258fbd85E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_37, %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(24) %_38)
  br label %bb26

bb26:                                             ; preds = %bb25
  %50 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %_37 to i8*
  %51 = load i8, i8* %50, align 8, !range !3
  %52 = trunc i8 %51 to i1
  %53 = zext i1 %52 to i64
  switch i64 %53, label %bb6 [
    i64 0, label %bb31
    i64 1, label %bb27
  ]

bb27:                                             ; preds = %bb26
  %54 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %_37 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"*
  %55 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 1, !range !3
  %57 = trunc i8 %56 to i1
; call <T as core::convert::From<T>>::from
  %58 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %57)
  br label %bb28

bb28:                                             ; preds = %bb27
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %59 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %58), !range !19
  store i8 %59, i8* %_0, align 1
  br label %bb29

bb29:                                             ; preds = %bb28
  br label %bb30

bb30:                                             ; preds = %bb60, %bb37, %bb29
  br label %bb14

bb31:                                             ; preds = %bb26
  %60 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %_37 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"*
  %61 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"* %60, i32 0, i32 1
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 8, !range !18
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %65, i64* %67, align 8
; call core::alloc::Layout::size
  %68 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %new_layout)
  br label %bb32

bb32:                                             ; preds = %bb31
; call alloc::raw_vec::alloc_guard
  %69 = call i8 @_ZN5alloc7raw_vec11alloc_guard17h6be34e1e7c737240E(i64 %68), !range !19
  br label %bb33

bb33:                                             ; preds = %bb32
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  %70 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h5193e72f666f90a4E"(i8 %69), !range !19
  store i8 %70, i8* %_48, align 1
  br label %bb34

bb34:                                             ; preds = %bb33
  %71 = load i8, i8* %_48, align 1, !range !19
  %72 = icmp eq i8 %71, 2
  %73 = select i1 %72, i64 0, i64 1
  switch i64 %73, label %bb6 [
    i64 0, label %bb38
    i64 1, label %bb35
  ]

bb35:                                             ; preds = %bb34
  %74 = load i8, i8* %_48, align 1, !range !3
  %75 = trunc i8 %74 to i1
; call <T as core::convert::From<T>>::from
  %76 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %75)
  br label %bb36

bb36:                                             ; preds = %bb35
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %77 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %76), !range !19
  store i8 %77, i8* %_0, align 1
  br label %bb37

bb37:                                             ; preds = %bb36
  br label %bb30

bb38:                                             ; preds = %bb34
; call alloc::raw_vec::RawVec<T,A>::current_layout
  %78 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17hf79d0fb8a33b6f2eE"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  store { i64, i64 } %78, { i64, i64 }* %_58, align 8
  br label %bb39

bb39:                                             ; preds = %bb38
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_58, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  %82 = select i1 %81, i64 0, i64 1
  switch i64 %82, label %bb6 [
    i64 0, label %bb51
    i64 1, label %bb40
  ]

bb40:                                             ; preds = %bb39
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_58, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_58, i32 0, i32 1
  %86 = load i64, i64* %85, align 8, !range !18
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br i1 false, label %bb41, label %bb46

bb41:                                             ; preds = %bb40
; call core::alloc::Layout::align
  %89 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %new_layout)
  br label %bb42

bb42:                                             ; preds = %bb41
; call core::alloc::Layout::align
  %90 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb43

bb43:                                             ; preds = %bb42
  %91 = icmp eq i64 %89, %90
  %92 = xor i1 %91, true
  br i1 %92, label %bb44, label %bb45

bb44:                                             ; preds = %bb43
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @34 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb45:                                             ; preds = %bb43
  br label %bb46

bb46:                                             ; preds = %bb45, %bb40
  %93 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  %94 = bitcast { i8*, i64 }* %self to i8**
  %95 = load i8*, i8** %94, align 8, !nonnull !2
; call <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
  %96 = call nonnull i8* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17h0826ac918d326c57E"(i8* nonnull %95)
  br label %bb47

bb47:                                             ; preds = %bb46
; call core::ptr::NonNull<T>::cast
  %97 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %96)
  br label %bb48

bb48:                                             ; preds = %bb47
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %101 = load i64, i64* %100, align 8, !range !18
; call core::alloc::Layout::size
  %102 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %new_layout)
  br label %bb49

bb49:                                             ; preds = %bb48
; call <alloc::alloc::Global as core::alloc::Alloc>::realloc
  %103 = call i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7realloc17h0791e9ff9f0dca53E"(%"alloc::alloc::Global"* nonnull align 1 %93, i8* nonnull %97, i64 %99, i64 %101, i64 %102)
  store i8* %103, i8** %res, align 8
  br label %bb50

bb50:                                             ; preds = %bb49
  br label %bb53

bb51:                                             ; preds = %bb39
  %104 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %108 = load i64, i64* %107, align 8, !range !18
; call <alloc::alloc::Global as core::alloc::Alloc>::alloc
  %109 = call i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$5alloc17h176a4edc344ab054E"(%"alloc::alloc::Global"* nonnull align 1 %104, i64 %106, i64 %108)
  store i8* %109, i8** %res, align 8
  br label %bb52

bb52:                                             ; preds = %bb51
  br label %bb53

bb53:                                             ; preds = %bb52, %bb50
  %110 = bitcast { i64*, i8 }* %_80 to i8***
  store i8** %res, i8*** %110, align 8
  %111 = getelementptr inbounds { i64*, i8 }, { i64*, i8 }* %_80, i32 0, i32 1
  %112 = zext i1 %fallibility to i8
  store i8 %112, i8* %111, align 8
  %113 = bitcast { i64*, i8 }* %_80 to i8***
  %114 = load i8**, i8*** %113, align 8, !nonnull !2
  %115 = bitcast i8** %114 to {}**
  %116 = load {}*, {}** %115, align 8
  %117 = icmp eq {}* %116, null
  %118 = select i1 %117, i64 1, i64 0
  %119 = icmp eq i64 %118, 1
  br i1 %119, label %bb55, label %bb56

bb54:                                             ; preds = %bb55
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %123 = load i64, i64* %122, align 8, !range !18
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17hb9c13f9443bbacf8E(i64 %121, i64 %123)
  unreachable

bb55:                                             ; preds = %bb53
  %124 = getelementptr inbounds { i64*, i8 }, { i64*, i8 }* %_80, i32 0, i32 1
  %125 = load i8, i8* %124, align 8, !range !3
  %126 = trunc i8 %125 to i1
  %127 = zext i1 %126 to i64
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %bb54, label %bb56

bb56:                                             ; preds = %bb55, %bb53
  %129 = load i8*, i8** %res, align 8
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  %130 = call i8* @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hdf51c3f466061adeE"(i8* %129)
  store i8* %130, i8** %_89, align 8
  br label %bb57

bb57:                                             ; preds = %bb56
  %131 = bitcast i8** %_89 to {}**
  %132 = load {}*, {}** %131, align 8
  %133 = icmp eq {}* %132, null
  %134 = select i1 %133, i64 1, i64 0
  switch i64 %134, label %bb6 [
    i64 0, label %bb61
    i64 1, label %bb58
  ]

bb58:                                             ; preds = %bb57
; call <alloc::collections::CollectionAllocErr as core::convert::From<core::alloc::AllocErr>>::from
  %135 = call zeroext i1 @"_ZN107_$LT$alloc..collections..CollectionAllocErr$u20$as$u20$core..convert..From$LT$core..alloc..AllocErr$GT$$GT$4from17h3f18c0e854ca29a2E"()
  br label %bb59

bb59:                                             ; preds = %bb58
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %136 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %135), !range !19
  store i8 %136, i8* %_0, align 1
  br label %bb60

bb60:                                             ; preds = %bb59
  br label %bb30

bb61:                                             ; preds = %bb57
  %137 = load i8*, i8** %_89, align 8, !nonnull !2
; call core::ptr::NonNull<T>::cast
  %138 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h917ddd2da8eca91cE"(i8* nonnull %137)
  br label %bb62

bb62:                                             ; preds = %bb61
; call <T as core::convert::Into<U>>::into
  %139 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h714c3089422a1d9bE"(i8* nonnull %138)
  br label %bb63

bb63:                                             ; preds = %bb62
  %140 = bitcast { i8*, i64 }* %self to i8**
  store i8* %139, i8** %140, align 8
  %141 = load i64, i64* %new_cap, align 8
  %142 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = bitcast i8* %_0 to %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"*
  %144 = bitcast %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"* %143 to {}*
  store i8 2, i8* %_0, align 1
  br label %bb4
}

; alloc::raw_vec::RawVec<T,A>::reserve_internal
; Function Attrs: nonlazybind uwtable
define internal i8 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal17h51896a4ed151de8bE"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap, i1 zeroext %fallibility, i1 zeroext) unnamed_addr #1 {
start:
  %_0.i = alloca i64, align 8
  %_97 = alloca {}, align 1
  %_89 = alloca i8*, align 8
  %_80 = alloca { i64*, i8 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %_58 = alloca { i64, i64 }, align 8
  %res = alloca i8*, align 8
  %_48 = alloca i8, align 1
  %_41 = alloca %"alloc::raw_vec::{{impl}}::reserve_internal::{{closure}}<u32, alloc::alloc::Global>", align 1
  %_38 = alloca %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>", align 8
  %_37 = alloca %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  %_27 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_26 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_20 = alloca i8, align 1
  %_16 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_15 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %new_cap = alloca i64, align 8
  %_12 = alloca {}, align 1
  %_0 = alloca i8, align 1
  %strategy = alloca i8, align 1
  %1 = zext i1 %0 to i8
  store i8 %1, i8* %strategy, align 1
; call core::mem::size_of
  %2 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E(), !noalias !51
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb2.i, label %bb3.i

bb2.i:                                            ; preds = %start
  store i64 -1, i64* %_0.i, align 8, !noalias !51
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit"

bb3.i:                                            ; preds = %start
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %5 = load i64, i64* %4, align 8, !alias.scope !51
  store i64 %5, i64* %_0.i, align 8, !noalias !51
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit": ; preds = %bb2.i, %bb3.i
  %6 = load i64, i64* %_0.i, align 8, !noalias !51
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E.exit"
; call core::num::<impl usize>::wrapping_sub
  %7 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h5bf317e30ed70c00E"(i64 %6, i64 %used_cap)
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = icmp uge i64 %7, %needed_extra_cap
  br i1 %8, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %9 = bitcast i8* %_0 to %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"*
  %10 = bitcast %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"* %9 to {}*
  store i8 2, i8* %_0, align 1
  br label %bb4

bb4:                                              ; preds = %bb63, %bb14, %bb3
  %11 = load i8, i8* %_0, align 1, !range !19
  ret i8 %11

bb5:                                              ; preds = %bb2
  %12 = load i8, i8* %strategy, align 1, !range !3
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i64
  switch i64 %14, label %bb6 [
    i64 0, label %bb7
    i64 1, label %bb16
  ]

bb6:                                              ; preds = %bb57, %bb39, %bb34, %bb26, %bb10, %bb18, %bb5
  unreachable

bb7:                                              ; preds = %bb5
; call core::num::<impl usize>::checked_add
  %15 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hfd3b276676d6545cE"(i64 %used_cap, i64 %needed_extra_cap)
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  store i8 0, i8* %_20, align 1
  %18 = load i8, i8* %_20, align 1, !range !3
  %19 = trunc i8 %18 to i1
; call core::option::Option<T>::ok_or
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1452fbaa2e91e9adE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_16, i64 %16, i64 %17, i1 zeroext %19)
  br label %bb9

bb9:                                              ; preds = %bb8
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_15, %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
  %20 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_15 to i8*
  %21 = load i8, i8* %20, align 8, !range !3
  %22 = trunc i8 %21 to i1
  %23 = zext i1 %22 to i64
  switch i64 %23, label %bb6 [
    i64 0, label %bb15
    i64 1, label %bb11
  ]

bb11:                                             ; preds = %bb10
  %24 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_15 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %25 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 1, !range !3
  %27 = trunc i8 %26 to i1
; call <T as core::convert::From<T>>::from
  %28 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %27)
  br label %bb12

bb12:                                             ; preds = %bb11
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %29 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %28), !range !19
  store i8 %29, i8* %_0, align 1
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb14

bb14:                                             ; preds = %bb30, %bb13, %bb21
  br label %bb4

bb15:                                             ; preds = %bb10
  %30 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_15 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %31 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %new_cap, align 8
  br label %bb23

bb16:                                             ; preds = %bb5
; call alloc::raw_vec::RawVec<T,A>::amortized_new_size
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$18amortized_new_size17hd8b5408f2c327da5E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_27, { i32*, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap)
  br label %bb17

bb17:                                             ; preds = %bb16
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_26, %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %_27)
  br label %bb18

bb18:                                             ; preds = %bb17
  %33 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_26 to i8*
  %34 = load i8, i8* %33, align 8, !range !3
  %35 = trunc i8 %34 to i1
  %36 = zext i1 %35 to i64
  switch i64 %36, label %bb6 [
    i64 0, label %bb22
    i64 1, label %bb19
  ]

bb19:                                             ; preds = %bb18
  %37 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_26 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %38 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 1, !range !3
  %40 = trunc i8 %39 to i1
; call <T as core::convert::From<T>>::from
  %41 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %40)
  br label %bb20

bb20:                                             ; preds = %bb19
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %42 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %41), !range !19
  store i8 %42, i8* %_0, align 1
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb14

bb22:                                             ; preds = %bb18
  %43 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_26 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %44 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %new_cap, align 8
  br label %bb23

bb23:                                             ; preds = %bb15, %bb22
  %46 = load i64, i64* %new_cap, align 8
; call core::alloc::Layout::array
  %47 = call { i64, i64 } @_ZN4core5alloc6Layout5array17h44c61d784d4488afE(i64 %46)
  %48 = extractvalue { i64, i64 } %47, 0
  %49 = extractvalue { i64, i64 } %47, 1
  br label %bb24

bb24:                                             ; preds = %bb23
; call core::result::Result<T,E>::map_err
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h72e828aea12785c0E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_38, i64 %48, i64 %49)
  br label %bb25

bb25:                                             ; preds = %bb24
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17ha05d1754258fbd85E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_37, %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(24) %_38)
  br label %bb26

bb26:                                             ; preds = %bb25
  %50 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %_37 to i8*
  %51 = load i8, i8* %50, align 8, !range !3
  %52 = trunc i8 %51 to i1
  %53 = zext i1 %52 to i64
  switch i64 %53, label %bb6 [
    i64 0, label %bb31
    i64 1, label %bb27
  ]

bb27:                                             ; preds = %bb26
  %54 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %_37 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"*
  %55 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Err"* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 1, !range !3
  %57 = trunc i8 %56 to i1
; call <T as core::convert::From<T>>::from
  %58 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %57)
  br label %bb28

bb28:                                             ; preds = %bb27
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %59 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %58), !range !19
  store i8 %59, i8* %_0, align 1
  br label %bb29

bb29:                                             ; preds = %bb28
  br label %bb30

bb30:                                             ; preds = %bb60, %bb37, %bb29
  br label %bb14

bb31:                                             ; preds = %bb26
  %60 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %_37 to %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"*
  %61 = getelementptr inbounds %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>::Ok"* %60, i32 0, i32 1
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 8, !range !18
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %65, i64* %67, align 8
; call core::alloc::Layout::size
  %68 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %new_layout)
  br label %bb32

bb32:                                             ; preds = %bb31
; call alloc::raw_vec::alloc_guard
  %69 = call i8 @_ZN5alloc7raw_vec11alloc_guard17h6be34e1e7c737240E(i64 %68), !range !19
  br label %bb33

bb33:                                             ; preds = %bb32
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  %70 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h5193e72f666f90a4E"(i8 %69), !range !19
  store i8 %70, i8* %_48, align 1
  br label %bb34

bb34:                                             ; preds = %bb33
  %71 = load i8, i8* %_48, align 1, !range !19
  %72 = icmp eq i8 %71, 2
  %73 = select i1 %72, i64 0, i64 1
  switch i64 %73, label %bb6 [
    i64 0, label %bb38
    i64 1, label %bb35
  ]

bb35:                                             ; preds = %bb34
  %74 = load i8, i8* %_48, align 1, !range !3
  %75 = trunc i8 %74 to i1
; call <T as core::convert::From<T>>::from
  %76 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %75)
  br label %bb36

bb36:                                             ; preds = %bb35
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %77 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %76), !range !19
  store i8 %77, i8* %_0, align 1
  br label %bb37

bb37:                                             ; preds = %bb36
  br label %bb30

bb38:                                             ; preds = %bb34
; call alloc::raw_vec::RawVec<T,A>::current_layout
  %78 = call { i64, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17h0541c1845696f4eaE"({ i32*, i64 }* noalias readonly align 8 dereferenceable(16) %self)
  store { i64, i64 } %78, { i64, i64 }* %_58, align 8
  br label %bb39

bb39:                                             ; preds = %bb38
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_58, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  %82 = select i1 %81, i64 0, i64 1
  switch i64 %82, label %bb6 [
    i64 0, label %bb51
    i64 1, label %bb40
  ]

bb40:                                             ; preds = %bb39
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_58, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_58, i32 0, i32 1
  %86 = load i64, i64* %85, align 8, !range !18
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br i1 false, label %bb41, label %bb46

bb41:                                             ; preds = %bb40
; call core::alloc::Layout::align
  %89 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %new_layout)
  br label %bb42

bb42:                                             ; preds = %bb41
; call core::alloc::Layout::align
  %90 = call i64 @_ZN4core5alloc6Layout5align17hc304748f8ce0c5feE({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb43

bb43:                                             ; preds = %bb42
  %91 = icmp eq i64 %89, %90
  %92 = xor i1 %91, true
  br i1 %92, label %bb44, label %bb45

bb44:                                             ; preds = %bb43
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @34 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb45:                                             ; preds = %bb43
  br label %bb46

bb46:                                             ; preds = %bb45, %bb40
  %93 = bitcast { i32*, i64 }* %self to %"alloc::alloc::Global"*
  %94 = bitcast { i32*, i64 }* %self to i32**
  %95 = load i32*, i32** %94, align 8, !nonnull !2
; call <core::ptr::NonNull<T> as core::convert::From<core::ptr::Unique<T>>>::from
  %96 = call nonnull i32* @"_ZN101_$LT$core..ptr..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..Unique$LT$T$GT$$GT$$GT$4from17hbd7255b0bfb05237E"(i32* nonnull %95)
  br label %bb47

bb47:                                             ; preds = %bb46
; call core::ptr::NonNull<T>::cast
  %97 = call nonnull i8* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17h4035dd144b5d99feE"(i32* nonnull %96)
  br label %bb48

bb48:                                             ; preds = %bb47
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %101 = load i64, i64* %100, align 8, !range !18
; call core::alloc::Layout::size
  %102 = call i64 @_ZN4core5alloc6Layout4size17hadcd95866d38ea37E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %new_layout)
  br label %bb49

bb49:                                             ; preds = %bb48
; call <alloc::alloc::Global as core::alloc::Alloc>::realloc
  %103 = call i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$7realloc17h0791e9ff9f0dca53E"(%"alloc::alloc::Global"* nonnull align 1 %93, i8* nonnull %97, i64 %99, i64 %101, i64 %102)
  store i8* %103, i8** %res, align 8
  br label %bb50

bb50:                                             ; preds = %bb49
  br label %bb53

bb51:                                             ; preds = %bb39
  %104 = bitcast { i32*, i64 }* %self to %"alloc::alloc::Global"*
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %108 = load i64, i64* %107, align 8, !range !18
; call <alloc::alloc::Global as core::alloc::Alloc>::alloc
  %109 = call i8* @"_ZN59_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Alloc$GT$5alloc17h176a4edc344ab054E"(%"alloc::alloc::Global"* nonnull align 1 %104, i64 %106, i64 %108)
  store i8* %109, i8** %res, align 8
  br label %bb52

bb52:                                             ; preds = %bb51
  br label %bb53

bb53:                                             ; preds = %bb52, %bb50
  %110 = bitcast { i64*, i8 }* %_80 to i8***
  store i8** %res, i8*** %110, align 8
  %111 = getelementptr inbounds { i64*, i8 }, { i64*, i8 }* %_80, i32 0, i32 1
  %112 = zext i1 %fallibility to i8
  store i8 %112, i8* %111, align 8
  %113 = bitcast { i64*, i8 }* %_80 to i8***
  %114 = load i8**, i8*** %113, align 8, !nonnull !2
  %115 = bitcast i8** %114 to {}**
  %116 = load {}*, {}** %115, align 8
  %117 = icmp eq {}* %116, null
  %118 = select i1 %117, i64 1, i64 0
  %119 = icmp eq i64 %118, 1
  br i1 %119, label %bb55, label %bb56

bb54:                                             ; preds = %bb55
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %123 = load i64, i64* %122, align 8, !range !18
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17hb9c13f9443bbacf8E(i64 %121, i64 %123)
  unreachable

bb55:                                             ; preds = %bb53
  %124 = getelementptr inbounds { i64*, i8 }, { i64*, i8 }* %_80, i32 0, i32 1
  %125 = load i8, i8* %124, align 8, !range !3
  %126 = trunc i8 %125 to i1
  %127 = zext i1 %126 to i64
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %bb54, label %bb56

bb56:                                             ; preds = %bb55, %bb53
  %129 = load i8*, i8** %res, align 8
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  %130 = call i8* @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hdf51c3f466061adeE"(i8* %129)
  store i8* %130, i8** %_89, align 8
  br label %bb57

bb57:                                             ; preds = %bb56
  %131 = bitcast i8** %_89 to {}**
  %132 = load {}*, {}** %131, align 8
  %133 = icmp eq {}* %132, null
  %134 = select i1 %133, i64 1, i64 0
  switch i64 %134, label %bb6 [
    i64 0, label %bb61
    i64 1, label %bb58
  ]

bb58:                                             ; preds = %bb57
; call <alloc::collections::CollectionAllocErr as core::convert::From<core::alloc::AllocErr>>::from
  %135 = call zeroext i1 @"_ZN107_$LT$alloc..collections..CollectionAllocErr$u20$as$u20$core..convert..From$LT$core..alloc..AllocErr$GT$$GT$4from17h3f18c0e854ca29a2E"()
  br label %bb59

bb59:                                             ; preds = %bb58
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  %136 = call i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %135), !range !19
  store i8 %136, i8* %_0, align 1
  br label %bb60

bb60:                                             ; preds = %bb59
  br label %bb30

bb61:                                             ; preds = %bb57
  %137 = load i8*, i8** %_89, align 8, !nonnull !2
; call core::ptr::NonNull<T>::cast
  %138 = call nonnull i32* @"_ZN4core3ptr16NonNull$LT$T$GT$4cast17hd4dc68bb516297e0E"(i8* nonnull %137)
  br label %bb62

bb62:                                             ; preds = %bb61
; call <T as core::convert::Into<U>>::into
  %139 = call nonnull i32* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdb8cc0c76ec8ae3fE"(i32* nonnull %138)
  br label %bb63

bb63:                                             ; preds = %bb62
  %140 = bitcast { i32*, i64 }* %self to i32**
  store i32* %139, i32** %140, align 8
  %141 = load i64, i64* %new_cap, align 8
  %142 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = bitcast i8* %_0 to %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"*
  %144 = bitcast %"core::result::Result<(), alloc::collections::CollectionAllocErr>::Ok"* %143 to {}*
  store i8 2, i8* %_0, align 1
  br label %bb4
}

; alloc::raw_vec::RawVec<T,A>::reserve_internal::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal28_$u7b$$u7b$closure$u7d$$u7d$17h10c92d1380ee476bE"() unnamed_addr #1 {
start:
  %_0 = alloca i8, align 1
  store i8 0, i8* %_0, align 1
  %0 = load i8, i8* %_0, align 1, !range !3
  %1 = trunc i8 %0 to i1
  ret i1 %1
}

; alloc::raw_vec::RawVec<T,A>::reserve_internal::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal28_$u7b$$u7b$closure$u7d$$u7d$17h13f3bdbf3c7e1885E"() unnamed_addr #1 {
start:
  %_0 = alloca i8, align 1
  store i8 0, i8* %_0, align 1
  %0 = load i8, i8* %_0, align 1, !range !3
  %1 = trunc i8 %0 to i1
  ret i1 %1
}

; alloc::raw_vec::RawVec<T,A>::amortized_new_size
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$18amortized_new_size17h3a1ac627a6ed36ecE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16), { i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #1 {
start:
  %_10 = alloca i8, align 1
  %_6 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_5 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
; call core::num::<impl usize>::checked_add
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hfd3b276676d6545cE"(i64 %used_cap, i64 %needed_extra_cap)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_10, align 1
  %4 = load i8, i8* %_10, align 1, !range !3
  %5 = trunc i8 %4 to i1
; call core::option::Option<T>::ok_or
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1452fbaa2e91e9adE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_6, i64 %2, i64 %3, i1 zeroext %5)
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_5, %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_5 to i8*
  %7 = load i8, i8* %6, align 8, !range !3
  %8 = trunc i8 %7 to i1
  %9 = zext i1 %8 to i64
  switch i64 %9, label %bb4 [
    i64 0, label %bb9
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb3
  unreachable

bb5:                                              ; preds = %bb3
  %10 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_5 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %11 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1, !range !3
  %13 = trunc i8 %12 to i1
; call <T as core::convert::From<T>>::from
  %14 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %13)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h16c7040d91172b6cE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %0, i1 zeroext %14)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb10, %bb7
  ret void

bb9:                                              ; preds = %bb3
  %15 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_5 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %16 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %19, 2
; call core::cmp::max
  %21 = call i64 @_ZN4core3cmp3max17h3da27b910449c668E(i64 %20, i64 %17)
  br label %bb10

bb10:                                             ; preds = %bb9
  %22 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %23 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 0, i8* %24, align 8
  br label %bb8
}

; alloc::raw_vec::RawVec<T,A>::amortized_new_size
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$18amortized_new_size17hd8b5408f2c327da5E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16), { i32*, i64 }* noalias readonly align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #1 {
start:
  %_10 = alloca i8, align 1
  %_6 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
  %_5 = alloca %"core::result::Result<usize, alloc::collections::CollectionAllocErr>", align 8
; call core::num::<impl usize>::checked_add
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hfd3b276676d6545cE"(i64 %used_cap, i64 %needed_extra_cap)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_10, align 1
  %4 = load i8, i8* %_10, align 1, !range !3
  %5 = trunc i8 %4 to i1
; call core::option::Option<T>::ok_or
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1452fbaa2e91e9adE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_6, i64 %2, i64 %3, i1 zeroext %5)
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %_5, %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_5 to i8*
  %7 = load i8, i8* %6, align 8, !range !3
  %8 = trunc i8 %7 to i1
  %9 = zext i1 %8 to i64
  switch i64 %9, label %bb4 [
    i64 0, label %bb9
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb3
  unreachable

bb5:                                              ; preds = %bb3
  %10 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_5 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %11 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1, !range !3
  %13 = trunc i8 %12 to i1
; call <T as core::convert::From<T>>::from
  %14 = call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h28fb99013509ab09E"(i1 zeroext %13)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <core::result::Result<T,E> as core::ops::try::Try>::from_error
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h16c7040d91172b6cE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16) %0, i1 zeroext %14)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb10, %bb7
  ret void

bb9:                                              ; preds = %bb3
  %15 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %_5 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %16 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %19, 2
; call core::cmp::max
  %21 = call i64 @_ZN4core3cmp3max17h3da27b910449c668E(i64 %20, i64 %17)
  br label %bb10

bb10:                                             ; preds = %bb9
  %22 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"*
  %23 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Ok"* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 0, i8* %24, align 8
  br label %bb8
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: nonlazybind uwtable
define internal i32* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h89704b698ed19962E"({ i32*, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i32*, i64 }* %self to i32**
  %1 = load i32*, i32** %0, align 8, !nonnull !2
; call core::ptr::Unique<T>::as_ptr
  %2 = call i32* @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17h1b98ca4267d7e44dE"(i32* nonnull %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %2
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: nonlazybind uwtable
define internal i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hdf47c94b8fc32b18E"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %1 = load i8*, i8** %0, align 8, !nonnull !2
; call core::ptr::Unique<T>::as_ptr
  %2 = call i8* @"_ZN4core3ptr15Unique$LT$T$GT$6as_ptr17hc830104fced25063E"(i8* nonnull %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %2
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hcf9dcea6ad6c6375E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_4 = alloca [2 x i64], align 8
  %_0 = alloca { i8*, i64 }, align 8
; invoke core::ptr::Unique<T>::empty
  %0 = invoke nonnull i8* @"_ZN4core3ptr15Unique$LT$T$GT$5empty17hd321f0f9ff9ca28fE"()
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = bitcast [2 x i64]* %_4 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %_4, i32 0, i32 1
  store i64 -1, i64* %8, align 8
; invoke core::mem::size_of
  %9 = invoke i64 @_ZN4core3mem7size_of17h592060904b8a69ffE()
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb1

bb4:                                              ; preds = %bb2
  %10 = icmp eq i64 %9, 0
  %11 = icmp ule i1 %10, true
  call void @llvm.assume(i1 %11)
  %12 = zext i1 %10 to i64
  %13 = icmp ult i64 %12, 2
  %14 = call i1 @llvm.expect.i1(i1 %13, i1 true)
  br i1 %14, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %_4, i64 0, i64 %12
  %16 = load i64, i64* %15, align 8
  %17 = bitcast { i8*, i64 }* %_0 to i8**
  store i8* %0, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = bitcast { i8*, i64 }* %_0 to %"alloc::alloc::Global"*
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !nonnull !2
  %22 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = insertvalue { i8*, i64 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i64 } %24, i64 %23, 1
  ret { i8*, i64 } %25

cleanup:                                          ; preds = %panic, %bb2, %start
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %bb3

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17he8b20ee4e0845b02E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.d to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %12, i64 2)
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h243c4b77edd53a95E"({ i8*, i64 }* align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #1 {
start:
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_4 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
  %0 = load i8, i8* %_8, align 1, !range !3
  %1 = trunc i8 %0 to i1
  %2 = load i8, i8* %_9, align 1, !range !3
  %3 = trunc i8 %2 to i1
; call alloc::raw_vec::RawVec<T,A>::reserve_internal
  %4 = call i8 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal17h2c27d80ba1b0a742E"({ i8*, i64 }* align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap, i1 zeroext %1, i1 zeroext %3), !range !19
  store i8 %4, i8* %_4, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = load i8, i8* %_4, align 1, !range !19
  %6 = icmp eq i8 %5, 2
  %7 = select i1 %6, i64 0, i64 1
  switch i64 %7, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb2:                                              ; preds = %bb4
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h9b2f61b54553add9E()
  unreachable

bb3:                                              ; preds = %bb4
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @36 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb4:                                              ; preds = %bb1
  %8 = load i8, i8* %_4, align 1, !range !3
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i64
  switch i64 %10, label %bb5 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb5:                                              ; preds = %bb4, %bb1
  unreachable

bb6:                                              ; preds = %bb1
  ret void
}

; alloc::raw_vec::RawVec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h789239ebec401af1E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #1 {
start:
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_4 = alloca i8, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
  %0 = load i8, i8* %_8, align 1, !range !3
  %1 = trunc i8 %0 to i1
  %2 = load i8, i8* %_9, align 1, !range !3
  %3 = trunc i8 %2 to i1
; call alloc::raw_vec::RawVec<T,A>::reserve_internal
  %4 = call i8 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_internal17h51896a4ed151de8bE"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap, i1 zeroext %1, i1 zeroext %3), !range !19
  store i8 %4, i8* %_4, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = load i8, i8* %_4, align 1, !range !19
  %6 = icmp eq i8 %5, 2
  %7 = select i1 %6, i64 0, i64 1
  switch i64 %7, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb2:                                              ; preds = %bb4
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h9b2f61b54553add9E()
  unreachable

bb3:                                              ; preds = %bb4
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @36 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb4:                                              ; preds = %bb1
  %8 = load i8, i8* %_4, align 1, !range !3
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i64
  switch i64 %10, label %bb5 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb5:                                              ; preds = %bb4, %bb1
  unreachable

bb6:                                              ; preds = %bb1
  ret void
}

; <alloc::string::String as core::fmt::Display>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h0103793562f79338E"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #0 {
start:
; call <alloc::string::String as core::ops::deref::Deref>::deref
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9639dbdba248665dE"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %self)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <str as core::fmt::Display>::fmt
  %3 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h354afe01c03b7397E"([0 x i8]* noalias nonnull readonly align 1 %1, i64 %2, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %3
}

; <alloc::vec::Vec<T> as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN61_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e5d14a37a174f54E"(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
  %0 = call { [0 x i32]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h01d74cda020c1133E"(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %self)
  %1 = extractvalue { [0 x i32]*, i64 } %0, 0
  %2 = extractvalue { [0 x i32]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <[T] as core::fmt::Debug>::fmt
  %3 = call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c65a5472cd80fa5E"([0 x i32]* noalias nonnull readonly align 4 %1, i64 %2, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %3
}

; <I as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: nonlazybind uwtable
define internal { i32*, i32* } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2a98db4360d31616E"(i32* %self.0, i32* %self.1) unnamed_addr #1 {
start:
  %0 = insertvalue { i32*, i32* } undef, i32* %self.0, 0
  %1 = insertvalue { i32*, i32* } %0, i32* %self.1, 1
  ret { i32*, i32* } %1
}

; <I as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h370414a8998321e4E"(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture sret dereferenceable(48), %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture dereferenceable(48) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %0 to i8*
  %2 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  ret void
}

; <&usize as core::ops::arith::Add<usize>>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN64_$LT$$RF$usize$u20$as$u20$core..ops..arith..Add$LT$usize$GT$$GT$3add17hae16d86e316054a7E"(i64* noalias readonly align 8 dereferenceable(8) %self, i64 %other) unnamed_addr #0 {
start:
  %0 = load i64, i64* %self, align 8
; call <usize as core::ops::arith::Add>::add
  %1 = call i64 @"_ZN47_$LT$usize$u20$as$u20$core..ops..arith..Add$GT$3add17hf1ab003e3538c6c8E"(i64 %0, i64 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; <alloc::string::String as core::ops::deref::Deref>::deref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9639dbdba248665dE"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
; call <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
  %1 = call { [0 x i8]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5cea452a9b7f2de4E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::str::from_utf8_unchecked
  %4 = call { [0 x i8]*, i64 } @_ZN4core3str19from_utf8_unchecked17h1b7fce7b9e729797E([0 x i8]* noalias nonnull readonly align 1 %2, i64 %3)
  %5 = extractvalue { [0 x i8]*, i64 } %4, 0
  %6 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15f3a4d951cb3e81E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_8 = alloca %"core::ops::range::RangeFull", align 1
; call <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
  %0 = call { [0 x i32]*, i64 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9fe0b787c8a12a87E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self)
  %1 = extractvalue { [0 x i32]*, i64 } %0, 0
  %2 = extractvalue { [0 x i32]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f93ed98166dccd6E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_8 = alloca %"core::ops::range::RangeFull", align 1
; call <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
  %0 = call { [0 x i8]*, i64 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6627f92a3c58a85dE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <std::io::error::ErrorKind as core::cmp::PartialEq>::eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h82255b684a237d85E"(i8* noalias readonly align 1 dereferenceable(1) %self, i8* noalias readonly align 1 dereferenceable(1) %other) unnamed_addr #0 {
start:
  %tmp_ret1 = alloca i64, align 8
  %tmp_ret = alloca i64, align 8
  %_15 = alloca { i8*, i8* }, align 8
  %_0 = alloca i8, align 1
  %0 = load i8, i8* %self, align 1, !range !5
  %1 = zext i8 %0 to i64
  store i64 %1, i64* %tmp_ret, align 8
  %2 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = load i8, i8* %other, align 1, !range !5
  %4 = zext i8 %3 to i64
  store i64 %4, i64* %tmp_ret1, align 8
  %5 = load i64, i64* %tmp_ret1, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = icmp eq i64 %2, %5
  br i1 %6, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %7 = bitcast { i8*, i8* }* %_15 to i8**
  store i8* %self, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_15, i32 0, i32 1
  store i8* %other, i8** %8, align 8
  store i8 1, i8* %_0, align 1
  br label %bb5

bb4:                                              ; preds = %bb2
  store i8 0, i8* %_0, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %9 = load i8, i8* %_0, align 1, !range !3
  %10 = trunc i8 %9 to i1
  ret i1 %10
}

; <[A] as core::slice::SlicePartialEq<A>>::equal
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN68_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..SlicePartialEq$LT$A$GT$$GT$5equal17hb8549e6aeb3d0844E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1) unnamed_addr #1 {
start:
  %_0 = alloca i8, align 1
; call core::slice::<impl [T]>::len
  %0 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::len
  %1 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = icmp ne i64 %0, %1
  br i1 %2, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, i8* %_0, align 1
  br label %bb4

bb4:                                              ; preds = %bb13, %bb8, %bb3
  %3 = load i8, i8* %_0, align 1, !range !3
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb2
; call core::slice::<impl [T]>::as_ptr
  %5 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb6

bb6:                                              ; preds = %bb5
; call core::slice::<impl [T]>::as_ptr
  %6 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1)
  br label %bb7

bb7:                                              ; preds = %bb6
  %7 = icmp eq i8* %5, %6
  br i1 %7, label %bb8, label %bb9

bb8:                                              ; preds = %bb7
  store i8 1, i8* %_0, align 1
  br label %bb4

bb9:                                              ; preds = %bb7
; call core::mem::size_of_val
  %8 = call i64 @_ZN4core3mem11size_of_val17hdaba4eecb1b554dbE([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb10

bb10:                                             ; preds = %bb9
; call core::slice::<impl [T]>::as_ptr
  %9 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %self.0, i64 %self.1)
  br label %bb11

bb11:                                             ; preds = %bb10
; call core::slice::<impl [T]>::as_ptr
  %10 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %other.0, i64 %other.1)
  br label %bb12

bb12:                                             ; preds = %bb11
  %11 = call i32 @memcmp(i8* %9, i8* %10, i64 %8)
  br label %bb13

bb13:                                             ; preds = %bb12
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %_0, align 1
  br label %bb4
}

; <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
; Function Attrs: nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h01d74cda020c1133E"(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::vec::Vec<u32>"* %self to { i32*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %1 = call i32* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h89704b698ed19962E"({ i32*, i64 }* noalias readonly align 8 dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *mut T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h15f10a3a87700003E"(i32* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
; call core::slice::from_raw_parts
  %6 = call { [0 x i32]*, i64 } @_ZN4core5slice14from_raw_parts17h2c738df3b45220caE(i32* %1, i64 %5)
  %7 = extractvalue { [0 x i32]*, i64 } %6, 0
  %8 = extractvalue { [0 x i32]*, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %7, 0
  %10 = insertvalue { [0 x i32]*, i64 } %9, i64 %8, 1
  ret { [0 x i32]*, i64 } %10
}

; <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5cea452a9b7f2de4E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %1 = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hdf47c94b8fc32b18E"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *mut T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81630a2ce924e9baE"(i8* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
; call core::slice::from_raw_parts
  %6 = call { [0 x i8]*, i64 } @_ZN4core5slice14from_raw_parts17h61ce1423689c514fE(i8* %1, i64 %5)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hb87122421f702329E"(i8) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h2e1c07787c41991fE(i8* noalias readonly align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; <usize as core::slice::SliceIndex<[T]>>::get_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable(1) i8* @"_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hdf96a73af000307dE"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
; call core::slice::<impl [T]>::as_ptr
  %0 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *const T>::add
  %1 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h6382c2a38ab424a9E"(i8* %0, i64 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; <usize as core::slice::SliceIndex<[T]>>::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable_or_null(1) i8* @"_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$3get17h14239c3f1498be6fE"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_0 = alloca i8*, align 8
; call core::slice::<impl [T]>::len
  %0 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp ult i64 %self, %0
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
; call <usize as core::slice::SliceIndex<[T]>>::get_unchecked
  %2 = call align 1 dereferenceable(1) i8* @"_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hdf96a73af000307dE"(i64 %self, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %2, i8** %_0, align 8
  br label %bb5

bb4:                                              ; preds = %bb1
  %3 = bitcast i8** %_0 to {}**
  store {}* null, {}** %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %4 = load i8*, i8** %_0, align 8
  ret i8* %4
}

; <core::option::Option<T> as core::ops::try::Try>::from_error
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h2f89be98de9d2671E"() unnamed_addr #0 {
start:
  %_0 = alloca { i32, i32 }, align 4
  %0 = bitcast { i32, i32 }* %_0 to i32*
  store i32 0, i32* %0, align 4
  %1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 0
  %2 = load i32, i32* %1, align 4, !range !30
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = insertvalue { i32, i32 } undef, i32 %2, 0
  %6 = insertvalue { i32, i32 } %5, i32 %4, 1
  ret { i32, i32 } %6
}

; <core::option::Option<T> as core::ops::try::Try>::from_error
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h8ea5b962eaf50442E"() unnamed_addr #0 {
start:
  %_0 = alloca i32, align 4
  store i32 1114112, i32* %_0, align 4
  %0 = load i32, i32* %_0, align 4, !range !41
  ret i32 %0
}

; <core::option::Option<T> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable_or_null(1) i8* @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h2d27ce842fd27b74E"(i8* noalias readonly align 1 dereferenceable_or_null(1) %self) unnamed_addr #0 {
start:
  %_3 = alloca %"core::option::NoneError", align 1
; call core::option::Option<T>::ok_or
  %0 = call align 1 dereferenceable_or_null(1) i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17hb517c7bb4505053eE"(i8* noalias readonly align 1 dereferenceable_or_null(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <core::option::Option<T> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8c0e41d702177214E"(i32 %self) unnamed_addr #0 {
start:
  %_3 = alloca %"core::option::NoneError", align 1
; call core::option::Option<T>::ok_or
  %0 = call i32 @"_ZN4core6option15Option$LT$T$GT$5ok_or17hff02ee80563c3582E"(i32 %self), !range !41
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
; Function Attrs: nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h5035ead652a95950E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::vec::Vec<u32>"* %self to { i32*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %1 = call i32* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h89704b698ed19962E"({ i32*, i64 }* noalias readonly align 8 dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *mut T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h15f10a3a87700003E"(i32* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds %"alloc::vec::Vec<u32>", %"alloc::vec::Vec<u32>"* %self, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
; call core::slice::from_raw_parts_mut
  %6 = call { [0 x i32]*, i64 } @_ZN4core5slice18from_raw_parts_mut17h6ee543b9c50f6bb9E(i32* %1, i64 %5)
  %7 = extractvalue { [0 x i32]*, i64 } %6, 0
  %8 = extractvalue { [0 x i32]*, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %7, 0
  %10 = insertvalue { [0 x i32]*, i64 } %9, i64 %8, 1
  ret { [0 x i32]*, i64 } %10
}

; <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h97ea3c9aa1c6148dE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %1 = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hdf47c94b8fc32b18E"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *mut T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h81630a2ce924e9baE"(i8* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
; call core::slice::from_raw_parts_mut
  %6 = call { [0 x i8]*, i64 } @_ZN4core5slice18from_raw_parts_mut17hf687a010146ec8f0E(i8* %1, i64 %5)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; <core::result::Result<T,E> as core::ops::try::Try>::from_error
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h16c7040d91172b6cE"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16), i1 zeroext %v) unnamed_addr #0 {
start:
  %1 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"*
  %2 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err", %"core::result::Result<usize, alloc::collections::CollectionAllocErr>::Err"* %1, i32 0, i32 1
  %3 = zext i1 %v to i8
  store i8 %3, i8* %2, align 1
  %4 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to i8*
  store i8 1, i8* %4, align 8
  ret void
}

; <core::result::Result<T,E> as core::ops::try::Try>::from_error
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h2815a74807d8c204E"(%"core::result::Result<&[u8], std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"std::io::error::Error"* noalias nocapture dereferenceable(16) %v) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::Error", align 8
  %1 = bitcast %"std::io::error::Error"* %_2 to i8*
  %2 = bitcast %"std::io::error::Error"* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %0 to %"core::result::Result<&[u8], std::io::error::Error>::Err"*
  %4 = getelementptr inbounds %"core::result::Result<&[u8], std::io::error::Error>::Err", %"core::result::Result<&[u8], std::io::error::Error>::Err"* %3, i32 0, i32 1
  %5 = bitcast %"std::io::error::Error"* %4 to i8*
  %6 = bitcast %"std::io::error::Error"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %0 to i64*
  store i64 1, i64* %7, align 8
  ret void
}

; <core::result::Result<T,E> as core::ops::try::Try>::from_error
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h41f0bda670223f38E"(%"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* noalias nocapture sret dereferenceable(24)) unnamed_addr #0 {
start:
  %1 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %0 to %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Err"*
  %2 = bitcast %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>::Err"* %1 to %"core::alloc::LayoutErr"*
  %3 = getelementptr inbounds %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>", %"core::result::Result<(core::alloc::Layout, usize), core::alloc::LayoutErr>"* %0, i32 0, i32 1
  store i64 0, i64* %3, align 8
  ret void
}

; <core::result::Result<T,E> as core::ops::try::Try>::from_error
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17he82ce4963f36ee9aE"(i1 zeroext %v) unnamed_addr #0 {
start:
  %_0 = alloca i8, align 1
  %0 = zext i1 %v to i8
  store i8 %0, i8* %_0, align 1
  %1 = load i8, i8* %_0, align 1, !range !19
  ret i8 %1
}

; <core::result::Result<T,E> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h3438d50e97557ca7E"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"core::result::Result<usize, std::io::error::Error>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %0 to i8*
  %2 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <core::result::Result<T,E> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h5193e72f666f90a4E"(i8 %self) unnamed_addr #0 {
start:
  ret i8 %self
}

; <core::result::Result<T,E> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8e54b5d36964f30bE"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; <core::result::Result<T,E> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h8ea66057cd23c443E"(%"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(16), %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(16) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %0 to i8*
  %2 = bitcast %"core::result::Result<usize, alloc::collections::CollectionAllocErr>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  ret void
}

; <core::result::Result<T,E> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17ha05d1754258fbd85E"(%"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %0 to i8*
  %2 = bitcast %"core::result::Result<core::alloc::Layout, alloc::collections::CollectionAllocErr>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <core::result::Result<T,E> as core::ops::try::Try>::into_result
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hdf51c3f466061adeE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; <std::io::buffered::BufReader<R> as std::io::BufRead>::consume
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN74_$LT$std..io..buffered..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17h905a27729d6c3c2fE"(%"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %self, i64 %amt) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %2 = add i64 %1, %amt
  %3 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 5
  %4 = load i64, i64* %3, align 8
; call core::cmp::min
  %5 = call i64 @_ZN4core3cmp3min17h5fe1caffa6b3da49E(i64 %2, i64 %4)
  br label %bb1

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 3
  store i64 %5, i64* %6, align 8
  ret void
}

; <std::io::buffered::BufReader<R> as std::io::BufRead>::fill_buf
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN74_$LT$std..io..buffered..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hd75ac46b593c6f92E"(%"core::result::Result<&[u8], std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_27 = alloca { i64, i64 }, align 8
  %_21 = alloca %"std::io::error::Error", align 8
  %_20 = alloca %"std::io::error::Error", align 8
  %err = alloca %"std::io::error::Error", align 8
  %_14 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_13 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %1 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 5
  %4 = load i64, i64* %3, align 8
  %5 = icmp uge i64 %2, %4
  br i1 %5, label %bb2, label %bb17

bb1:                                              ; preds = %bb19, %bb8
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11

bb2:                                              ; preds = %start
  br i1 false, label %bb3, label %bb6

bb3:                                              ; preds = %bb2
  %12 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %13, %15
  %17 = xor i1 %16, true
  br i1 %17, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
; call std::panicking::begin_panic
  call void @_ZN3std9panicking11begin_panic17h8bc591753635f535E([0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [38 x i8] }>* @39 to [0 x i8]*), i64 38, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @38 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %bb2
  %18 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 7
  %19 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %self to { [0 x i8]*, i64 }*
  %20 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 0
  %21 = load [0 x i8]*, [0 x i8]** %20, align 8, !nonnull !2
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
; call <std::fs::File as std::io::Read>::read
  call void @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h284b040ab50ae70dE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %_14, i32* align 4 dereferenceable(4) %18, [0 x i8]* nonnull align 1 %21, i64 %23)
  br label %bb7

bb7:                                              ; preds = %bb6
; call <core::result::Result<T,E> as core::ops::try::Try>::into_result
  call void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h3438d50e97557ca7E"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %_13, %"core::result::Result<usize, std::io::error::Error>"* noalias nocapture dereferenceable(24) %_14)
  br label %bb9

bb8:                                              ; preds = %cleanup
  %24 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_13 to i64*
  %25 = load i64, i64* %24, align 8, !range !4
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %bb1, label %bb19

bb9:                                              ; preds = %bb7
  %27 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_13 to i64*
  %28 = load i64, i64* %27, align 8, !range !4
  switch i64 %28, label %bb10 [
    i64 0, label %bb15
    i64 1, label %bb11
  ]

bb10:                                             ; preds = %bb9
  unreachable

bb11:                                             ; preds = %bb9
  %29 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_13 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %30 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %29, i32 0, i32 1
  %31 = bitcast %"std::io::error::Error"* %err to i8*
  %32 = bitcast %"std::io::error::Error"* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = bitcast %"std::io::error::Error"* %_21 to i8*
  %34 = bitcast %"std::io::error::Error"* %err to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
; invoke <T as core::convert::From<T>>::from
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb9c908b3fabbfae7E"(%"std::io::error::Error"* noalias nocapture sret dereferenceable(16) %_20, %"std::io::error::Error"* noalias nocapture dereferenceable(16) %_21)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
; invoke <core::result::Result<T,E> as core::ops::try::Try>::from_error
  invoke void @"_ZN73_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h2815a74807d8c204E"(%"core::result::Result<&[u8], std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %0, %"std::io::error::Error"* noalias nocapture dereferenceable(16) %_20)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %35 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_13 to i64*
  %36 = load i64, i64* %35, align 8, !range !4
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %bb20, label %bb21

bb14:                                             ; preds = %bb18, %bb20
  ret void

bb15:                                             ; preds = %bb9
  %38 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_13 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %39 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 5
  store i64 %40, i64* %41, align 8
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %_13)
  br label %bb16

bb16:                                             ; preds = %bb15
  %42 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 3
  store i64 0, i64* %42, align 8
  br label %bb17

bb17:                                             ; preds = %bb16, %start
  %43 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %self to { [0 x i8]*, i64 }*
  %44 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 0
  %45 = load [0 x i8]*, [0 x i8]** %44, align 8, !nonnull !2
  %46 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %"std::io::buffered::BufReader<std::fs::File>", %"std::io::buffered::BufReader<std::fs::File>"* %self, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = bitcast { i64, i64 }* %_27 to i64*
  store i64 %49, i64* %52, align 8
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_27, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_27, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_27, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
; call core::slice::<impl core::ops::index::Index<I> for [T]>::index
  %58 = call { [0 x i8]*, i64 } @"_ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h883d682ea82dff43E"([0 x i8]* noalias nonnull readonly align 1 %45, i64 %47, i64 %55, i64 %57)
  %59 = extractvalue { [0 x i8]*, i64 } %58, 0
  %60 = extractvalue { [0 x i8]*, i64 } %58, 1
  br label %bb18

bb18:                                             ; preds = %bb17
  %61 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %0 to %"core::result::Result<&[u8], std::io::error::Error>::Ok"*
  %62 = getelementptr inbounds %"core::result::Result<&[u8], std::io::error::Error>::Ok", %"core::result::Result<&[u8], std::io::error::Error>::Ok"* %61, i32 0, i32 1
  %63 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %62, i32 0, i32 0
  store [0 x i8]* %59, [0 x i8]** %63, align 8
  %64 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %62, i32 0, i32 1
  store i64 %60, i64* %64, align 8
  %65 = bitcast %"core::result::Result<&[u8], std::io::error::Error>"* %0 to i64*
  store i64 0, i64* %65, align 8
  br label %bb14

bb19:                                             ; preds = %bb8
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %_13) #12
  br label %bb1

bb20:                                             ; preds = %bb21, %bb13
  br label %bb14

bb21:                                             ; preds = %bb13
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %_13)
  br label %bb20

cleanup:                                          ; preds = %bb12, %bb11
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = extractvalue { i8*, i32 } %66, 1
  %69 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %bb8
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0801a65309fabe0fE"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T,A>::dealloc_buffer
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h673b8fbc62bd0b65E"({ i8*, i64 }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656dda41e2e5e3bE"({ i32*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T,A>::dealloc_buffer
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h25c780f7d151f094E"({ i32*, i64 }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T> as core::ops::index::Index<I>>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN77_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcd1d0c137bdc9c74E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self, i64 %index) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
; invoke <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
  %0 = invoke { [0 x i8]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5cea452a9b7f2de4E"(%"alloc::vec::Vec<u8>"* noalias readonly align 8 dereferenceable(24) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb4, %bb5
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = extractvalue { [0 x i8]*, i64 } %0, 0
  %8 = extractvalue { [0 x i8]*, i64 } %0, 1
  store i8 0, i8* %_9, align 1
; invoke core::slice::<impl core::ops::index::Index<I> for [T]>::index
  %9 = invoke { [0 x i8]*, i64 } @"_ZN4core5slice74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17ha8bcd627867e2570E"([0 x i8]* noalias nonnull readonly align 1 %7, i64 %8, i64 %index)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %10 = extractvalue { [0 x i8]*, i64 } %9, 0
  %11 = extractvalue { [0 x i8]*, i64 } %9, 1
  %12 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %10, 0
  %13 = insertvalue { [0 x i8]*, i64 } %12, i64 %11, 1
  ret { [0 x i8]*, i64 } %13

bb4:                                              ; preds = %bb5
  store i8 0, i8* %_9, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %14 = load i8, i8* %_9, align 1, !range !3
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb4, label %bb1

cleanup:                                          ; preds = %bb2, %start
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb5
}

; <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h6627f92a3c58a85dE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 0, i8* %_10, align 1
  store i8 1, i8* %_10, align 1
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %0 = invoke { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h97ea3c9aa1c6148dE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb4, %bb5
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = extractvalue { [0 x i8]*, i64 } %0, 0
  %8 = extractvalue { [0 x i8]*, i64 } %0, 1
  store i8 0, i8* %_10, align 1
; invoke core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
  %9 = invoke { [0 x i8]*, i64 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h9b32eae241cf3fcdE"([0 x i8]* nonnull align 1 %7, i64 %8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %10 = extractvalue { [0 x i8]*, i64 } %9, 0
  %11 = extractvalue { [0 x i8]*, i64 } %9, 1
  %12 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %10, 0
  %13 = insertvalue { [0 x i8]*, i64 } %12, i64 %11, 1
  ret { [0 x i8]*, i64 } %13

bb4:                                              ; preds = %bb5
  store i8 0, i8* %_10, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %14 = load i8, i8* %_10, align 1, !range !3
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb4, label %bb1

cleanup:                                          ; preds = %bb2, %start
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb5
}

; <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9fe0b787c8a12a87E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 0, i8* %_10, align 1
  store i8 1, i8* %_10, align 1
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %0 = invoke { [0 x i32]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h5035ead652a95950E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb4, %bb5
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = extractvalue { [0 x i32]*, i64 } %0, 0
  %8 = extractvalue { [0 x i32]*, i64 } %0, 1
  store i8 0, i8* %_10, align 1
; invoke core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
  %9 = invoke { [0 x i32]*, i64 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h411a32176e8856cfE"([0 x i32]* nonnull align 4 %7, i64 %8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %10 = extractvalue { [0 x i32]*, i64 } %9, 0
  %11 = extractvalue { [0 x i32]*, i64 } %9, 1
  %12 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %10, 0
  %13 = insertvalue { [0 x i32]*, i64 } %12, i64 %11, 1
  ret { [0 x i32]*, i64 } %13

bb4:                                              ; preds = %bb5
  store i8 0, i8* %_10, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %14 = load i8, i8* %_10, align 1, !range !3
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb4, label %bb1

cleanup:                                          ; preds = %bb2, %start
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb5
}

; <std::io::Lines<B> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3841ff2c09b374edE"(%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* noalias nocapture sret dereferenceable(32), %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* align 8 dereferenceable(40) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_27 = alloca i8, align 1
  %_26 = alloca i8, align 1
  %_25 = alloca %"std::io::error::Error", align 8
  %_24 = alloca %"core::result::Result<alloc::string::String, std::io::error::Error>", align 8
  %e = alloca %"std::io::error::Error", align 8
  %_22 = alloca %"alloc::string::String", align 8
  %_21 = alloca %"core::result::Result<alloc::string::String, std::io::error::Error>", align 8
  %_3 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %buf = alloca %"alloc::string::String", align 8
  store i8 0, i8* %_26, align 1
  store i8 0, i8* %_27, align 1
  store i8 1, i8* %_27, align 1
; call alloc::string::String::new
  call void @_ZN5alloc6string6String3new17hfe4040df8e9f3f15E(%"alloc::string::String"* noalias nocapture sret dereferenceable(24) %buf)
  br label %bb2

bb1:                                              ; preds = %bb25, %bb24, %bb26, %bb4
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = bitcast %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* %self to %"std::io::buffered::BufReader<std::fs::File>"*
; invoke std::io::BufRead::read_line
  invoke void @_ZN3std2io7BufRead9read_line17ha5d30085a5bbb0e8E(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %_3, %"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %7, %"alloc::string::String"* align 8 dereferenceable(24) %buf)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i8 1, i8* %_26, align 1
  %8 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to i64*
  %9 = load i64, i64* %8, align 8, !range !4
  switch i64 %9, label %bb8 [
    i64 0, label %bb7
    i64 1, label %bb21
  ]

bb4:                                              ; preds = %cleanup
  store i8 0, i8* %_27, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %buf) #12
  br label %bb1

bb5:                                              ; preds = %bb7
  %10 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %0 to i64*
  store i64 2, i64* %10, align 8
  br label %bb22

bb6:                                              ; preds = %bb7
  %11 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %12 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %14 = invoke { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9639dbdba248665dE"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %buf)
          to label %bb9 unwind label %cleanup1

bb7:                                              ; preds = %bb3
  %15 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %16 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %bb5, label %bb6

bb8:                                              ; preds = %bb3
  unreachable

bb9:                                              ; preds = %bb6
  %19 = extractvalue { [0 x i8]*, i64 } %14, 0
  %20 = extractvalue { [0 x i8]*, i64 } %14, 1
; invoke core::str::<impl str>::ends_with
  %21 = invoke zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$9ends_with17h8faf29b788ce3083E"([0 x i8]* noalias nonnull readonly align 1 %19, i64 %20, [0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [1 x i8] }>* @40 to [0 x i8]*), i64 1)
          to label %bb12 unwind label %cleanup1

bb10:                                             ; preds = %cleanup2, %bb11
  %22 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to i64*
  %23 = load i64, i64* %22, align 8, !range !4
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %bb24, label %bb26

bb11:                                             ; preds = %cleanup1
  store i8 0, i8* %_27, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %buf) #12
  br label %bb10

bb12:                                             ; preds = %bb9
  br i1 %21, label %bb13, label %bb20

bb13:                                             ; preds = %bb12
; invoke alloc::string::String::pop
  %25 = invoke i32 @_ZN5alloc6string6String3pop17ha2a099b8243399f5E(%"alloc::string::String"* align 8 dereferenceable(24) %buf)
          to label %bb14 unwind label %cleanup1, !range !41

bb14:                                             ; preds = %bb13
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %26 = invoke { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9639dbdba248665dE"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %buf)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  %27 = extractvalue { [0 x i8]*, i64 } %26, 0
  %28 = extractvalue { [0 x i8]*, i64 } %26, 1
; invoke core::str::<impl str>::ends_with
  %29 = invoke zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$9ends_with17h8faf29b788ce3083E"([0 x i8]* noalias nonnull readonly align 1 %27, i64 %28, [0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [1 x i8] }>* @41 to [0 x i8]*), i64 1)
          to label %bb16 unwind label %cleanup1

bb16:                                             ; preds = %bb15
  br i1 %29, label %bb17, label %bb19

bb17:                                             ; preds = %bb16
; invoke alloc::string::String::pop
  %30 = invoke i32 @_ZN5alloc6string6String3pop17ha2a099b8243399f5E(%"alloc::string::String"* align 8 dereferenceable(24) %buf)
          to label %bb18 unwind label %cleanup1, !range !41

bb18:                                             ; preds = %bb17
  br label %bb19

bb19:                                             ; preds = %bb18, %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb12
  store i8 0, i8* %_27, align 1
  %31 = bitcast %"alloc::string::String"* %_22 to i8*
  %32 = bitcast %"alloc::string::String"* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_21 to %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"*
  %34 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok", %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"* %33, i32 0, i32 1
  %35 = bitcast %"alloc::string::String"* %34 to i8*
  %36 = bitcast %"alloc::string::String"* %_22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_21 to i64*
  store i64 0, i64* %37, align 8
  %38 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %0 to %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"*
  %39 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"* %38 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
  %40 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %39 to i8*
  %41 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 32, i1 false)
  br label %bb22

bb21:                                             ; preds = %bb3
  store i8 0, i8* %_26, align 1
  %42 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %43 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %42, i32 0, i32 1
  %44 = bitcast %"std::io::error::Error"* %e to i8*
  %45 = bitcast %"std::io::error::Error"* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = bitcast %"std::io::error::Error"* %_25 to i8*
  %47 = bitcast %"std::io::error::Error"* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_24 to %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"*
  %49 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Err", %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"* %48, i32 0, i32 1
  %50 = bitcast %"std::io::error::Error"* %49 to i8*
  %51 = bitcast %"std::io::error::Error"* %_25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_24 to i64*
  store i64 1, i64* %52, align 8
  %53 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* %0 to %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"*
  %54 = bitcast %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>::Some"* %53 to %"core::result::Result<alloc::string::String, std::io::error::Error>"*
  %55 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %54 to i8*
  %56 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 32, i1 false)
  br label %bb22

bb22:                                             ; preds = %bb5, %bb20, %bb21
  %57 = load i8, i8* %_27, align 1, !range !3
  %58 = trunc i8 %57 to i1
  br i1 %58, label %bb27, label %bb23

bb23:                                             ; preds = %bb27, %bb22
  store i8 0, i8* %_27, align 1
  %59 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to i64*
  %60 = load i64, i64* %59, align 8, !range !4
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %bb29, label %bb31

bb24:                                             ; preds = %bb10
  %62 = load i8, i8* %_26, align 1, !range !3
  %63 = trunc i8 %62 to i1
  br i1 %63, label %bb25, label %bb1

bb25:                                             ; preds = %bb24
  store i8 0, i8* %_26, align 1
  %64 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %65 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %64, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %65) #12
  br label %bb1

bb26:                                             ; preds = %bb10
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %_3) #12
  br label %bb1

bb27:                                             ; preds = %bb22
  store i8 0, i8* %_27, align 1
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %buf)
          to label %bb23 unwind label %cleanup2

bb28:                                             ; preds = %bb30, %bb29, %bb31
  store i8 0, i8* %_26, align 1
  ret void

bb29:                                             ; preds = %bb23
  %66 = load i8, i8* %_26, align 1, !range !3
  %67 = trunc i8 %66 to i1
  br i1 %67, label %bb30, label %bb28

bb30:                                             ; preds = %bb29
  store i8 0, i8* %_26, align 1
  %68 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_3 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %69 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %68, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %69)
  br label %bb28

bb31:                                             ; preds = %bb23
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hf0f022be7980d53aE(%"core::result::Result<usize, std::io::error::Error>"* align 8 dereferenceable(24) %_3)
  br label %bb28

cleanup:                                          ; preds = %bb2
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  %72 = extractvalue { i8*, i32 } %70, 1
  %73 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %bb4

cleanup1:                                         ; preds = %bb17, %bb15, %bb14, %bb13, %bb9, %bb6
  %75 = landingpad { i8*, i32 }
          cleanup
  %76 = extractvalue { i8*, i32 } %75, 0
  %77 = extractvalue { i8*, i32 } %75, 1
  %78 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %bb11

cleanup2:                                         ; preds = %bb27
  %80 = landingpad { i8*, i32 }
          cleanup
  %81 = extractvalue { i8*, i32 } %80, 0
  %82 = extractvalue { i8*, i32 } %80, 1
  %83 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %bb10
}

; <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::fold
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4fe8b1d5e7e098b3E"(i32*, i32*, i32 %init) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_14 = alloca i8, align 1
  %_11 = alloca { i32, i32* }, align 8
  %_5 = alloca i32*, align 8
  %accum = alloca i32, align 4
  %f = alloca %"main::{{closure}}.0", align 1
  %self = alloca { i32*, i32* }, align 8
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 0
  store i32* %0, i32** %2, align 8
  %3 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  store i32* %1, i32** %3, align 8
  store i8 0, i8* %_14, align 1
  store i8 1, i8* %_14, align 1
  store i32 %init, i32* %accum, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
; invoke <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next
  %4 = invoke align 4 dereferenceable_or_null(4) i32* @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfc8333dd231bc597E"({ i32*, i32* }* align 8 dereferenceable(16) %self)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb3
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb3:                                              ; preds = %bb9, %bb10
  br label %bb2

bb4:                                              ; preds = %bb1
  store i32* %4, i32** %_5, align 8
  %11 = bitcast i32** %_5 to {}**
  %12 = load {}*, {}** %11, align 8
  %13 = icmp eq {}* %12, null
  %14 = select i1 %13, i64 0, i64 1
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %16 = load i32*, i32** %_5, align 8, !nonnull !2
  store i8 0, i8* %_14, align 1
  %17 = load i32, i32* %accum, align 4
  %18 = bitcast { i32, i32* }* %_11 to i32*
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %_11, i32 0, i32 1
  store i32* %16, i32** %19, align 8
  %20 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %_11, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %_11, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8, !nonnull !2
; invoke main::main::{{closure}}
  %24 = invoke i32 @"_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17h86dc7881fee4ffe5E"(%"main::{{closure}}.0"* nonnull align 1 %f, i32 %21, i32* noalias readonly align 4 dereferenceable(4) %23)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i8 1, i8* %_14, align 1
  store i32 %24, i32* %accum, align 4
  br label %bb1

bb7:                                              ; preds = %bb4
  store i8 0, i8* %_14, align 1
  %25 = load i32, i32* %accum, align 4
  store i8 0, i8* %_14, align 1
  br label %bb8

bb8:                                              ; preds = %bb7
  ret i32 %25

bb9:                                              ; preds = %bb10
  store i8 0, i8* %_14, align 1
  br label %bb3

bb10:                                             ; preds = %cleanup
  %26 = load i8, i8* %_14, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb9, label %bb3

cleanup:                                          ; preds = %bb5, %bb1
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %bb10
}

; <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::fold
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdcf1961d05339c06E"(i32*, i32*, i32 %init) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_14 = alloca i8, align 1
  %_11 = alloca { i32, i32* }, align 8
  %_5 = alloca i32*, align 8
  %accum = alloca i32, align 4
  %f = alloca %"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>", align 1
  %self = alloca { i32*, i32* }, align 8
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 0
  store i32* %0, i32** %2, align 8
  %3 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  store i32* %1, i32** %3, align 8
  store i8 0, i8* %_14, align 1
  store i8 1, i8* %_14, align 1
  store i32 %init, i32* %accum, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
; invoke <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next
  %4 = invoke align 4 dereferenceable_or_null(4) i32* @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfc8333dd231bc597E"({ i32*, i32* }* align 8 dereferenceable(16) %self)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb3
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb3:                                              ; preds = %bb9, %bb10
  br label %bb2

bb4:                                              ; preds = %bb1
  store i32* %4, i32** %_5, align 8
  %11 = bitcast i32** %_5 to {}**
  %12 = load {}*, {}** %11, align 8
  %13 = icmp eq {}* %12, null
  %14 = select i1 %13, i64 0, i64 1
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %16 = load i32*, i32** %_5, align 8, !nonnull !2
  store i8 0, i8* %_14, align 1
  %17 = load i32, i32* %accum, align 4
  %18 = bitcast { i32, i32* }* %_11 to i32*
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %_11, i32 0, i32 1
  store i32* %16, i32** %19, align 8
  %20 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %_11, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %_11, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8, !nonnull !2
; invoke <core::iter::adapters::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::{{closure}}
  %24 = invoke i32 @"_ZN97_$LT$core..iter..adapters..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h076e54917ca63824E"(%"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>"* nonnull align 1 %f, i32 %21, i32* noalias readonly align 4 dereferenceable(4) %23)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i8 1, i8* %_14, align 1
  store i32 %24, i32* %accum, align 4
  br label %bb1

bb7:                                              ; preds = %bb4
  store i8 0, i8* %_14, align 1
  %25 = load i32, i32* %accum, align 4
  store i8 0, i8* %_14, align 1
  br label %bb8

bb8:                                              ; preds = %bb7
  ret i32 %25

bb9:                                              ; preds = %bb10
  store i8 0, i8* %_14, align 1
  br label %bb3

bb10:                                             ; preds = %cleanup
  %26 = load i8, i8* %_14, align 1, !range !3
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb9, label %bb3

cleanup:                                          ; preds = %bb5, %bb1
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %bb10
}

; <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 4 dereferenceable_or_null(4) i32* @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfc8333dd231bc597E"({ i32*, i32* }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_0.i = alloca i32*, align 8
  %_0 = alloca i32*, align 8
  %0 = bitcast { i32*, i32* }* %self to i32**
  %1 = load i32*, i32** %0, align 8
; call core::ptr::<impl *const T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb6275bae240a8e80E"(i32* %1)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::mem::size_of
  %4 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
; call core::ptr::<impl *const T>::is_null
  %8 = call zeroext i1 @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb6275bae240a8e80E"(i32* %7)
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = xor i1 %8, true
  call void @llvm.assume(i1 %9)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb7

bb7:                                              ; preds = %bb6, %bb3
  %10 = bitcast { i32*, i32* }* %self to i32**
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %11, %13
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb7
  %15 = bitcast i32** %_0 to {}**
  store {}* null, {}** %15, align 8
  br label %bb11

bb9:                                              ; preds = %bb7
; call core::mem::size_of
  %16 = call i64 @_ZN4core3mem7size_of17h47b2d41015953472E()
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %bb2.i, label %bb4.i

bb2.i:                                            ; preds = %bb9
  %18 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to i8*
; call core::ptr::<impl *const T>::wrapping_offset
  %21 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17h3e4cb31731a67fbbE"(i8* %20, i64 -1)
  %22 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %self, i32 0, i32 1
  %23 = bitcast i8* %21 to i32*
  store i32* %23, i32** %22, align 8
  %24 = bitcast { i32*, i32* }* %self to i32**
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %_0.i, align 8
  br label %"_ZN4core5slice13Iter$LT$T$GT$14post_inc_start17h3551f3a14d8e9705E.exit"

bb4.i:                                            ; preds = %bb9
  %26 = bitcast { i32*, i32* }* %self to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast { i32*, i32* }* %self to i32**
  %29 = load i32*, i32** %28, align 8
; call core::ptr::<impl *const T>::offset
  %30 = call i32* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17hf28d1907ef53bf7dE"(i32* %29, i64 1)
  %31 = bitcast { i32*, i32* }* %self to i32**
  store i32* %30, i32** %31, align 8
  store i32* %27, i32** %_0.i, align 8
  br label %"_ZN4core5slice13Iter$LT$T$GT$14post_inc_start17h3551f3a14d8e9705E.exit"

"_ZN4core5slice13Iter$LT$T$GT$14post_inc_start17h3551f3a14d8e9705E.exit": ; preds = %bb2.i, %bb4.i
  %32 = load i32*, i32** %_0.i, align 8
  br label %bb10

bb10:                                             ; preds = %"_ZN4core5slice13Iter$LT$T$GT$14post_inc_start17h3551f3a14d8e9705E.exit"
  store i32* %32, i32** %_0, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %33 = load i32*, i32** %_0, align 8
  ret i32* %33
}

; <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h79fa7e22ad71cbdcE"([0 x i8]* nonnull align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %1
}

; <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdfe45f572f261208E"([0 x i32]* nonnull align 4 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %slice.0, 0
  %1 = insertvalue { [0 x i32]*, i64 } %0, i64 %slice.1, 1
  ret { [0 x i32]*, i64 } %1
}

; <core::str::Chars as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN90_$LT$core..str..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd1526bdc54e05f8aE"({ i8*, i8* }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_5 = alloca %"core::str::{{impl}}::next_back::{{closure}}", align 1
; call core::str::next_code_point_reverse
  %0 = call { i32, i32 } @_ZN4core3str23next_code_point_reverse17hf876e98a33e7881bE({ i8*, i8* }* align 8 dereferenceable(16) %self)
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::option::Option<T>::map
  %3 = call i32 @"_ZN4core6option15Option$LT$T$GT$3map17h9dda55991ac16bf9E"(i32 %1, i32 %2), !range !41
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %3
}

; <core::str::Chars as core::iter::traits::double_ended::DoubleEndedIterator>::next_back::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN90_$LT$core..str..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back28_$u7b$$u7b$closure$u7d$$u7d$17hbdbd706a8dcfa6a5E"(i32 %ch) unnamed_addr #1 {
start:
; call core::char::convert::from_u32_unchecked
  %0 = call i32 @_ZN4core4char7convert18from_u32_unchecked17h4e568bceeb828bcdE(i32 %ch), !range !37
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <std::panicking::begin_panic::PanicPayload<A> as core::panic::BoxMeUp>::get
; Function Attrs: nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h475ffefc38270354E"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_5 = alloca { {}*, [3 x i64]* }, align 8
  %0 = bitcast { i8*, i64 }* %self to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %3 = select i1 %2, i64 0, i64 1
  switch i64 %3, label %bb1 [
    i64 0, label %bb3
    i64 1, label %bb2
  ]

bb1:                                              ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %4 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %5 = bitcast { [0 x i8]*, i64 }* %4 to {}*
  %6 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_5, i32 0, i32 0
  store {}* %5, {}** %6, align 8
  %7 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_5, i32 0, i32 1
  store [3 x i64]* bitcast ({ void ({ [0 x i8]*, i64 }*)*, i64, i64, i64 ({ [0 x i8]*, i64 }*)* }* @vtable.e to [3 x i64]*), [3 x i64]** %7, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_5, i32 0, i32 0
  store {}* bitcast (<{ [0 x i8] }>* @20 to {}*), {}** %8, align 8
  %9 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_5, i32 0, i32 1
  store [3 x i64]* bitcast ({ void ({}*)*, i64, i64, i64 ({}*)* }* @vtable.f to [3 x i64]*), [3 x i64]** %9, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %10 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_5, i32 0, i32 0
  %11 = load {}*, {}** %10, align 8, !nonnull !2
  %12 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_5, i32 0, i32 1
  %13 = load [3 x i64]*, [3 x i64]** %12, align 8, !nonnull !2
  %14 = insertvalue { {}*, [3 x i64]* } undef, {}* %11, 0
  %15 = insertvalue { {}*, [3 x i64]* } %14, [3 x i64]* %13, 1
  ret { {}*, [3 x i64]* } %15
}

; <std::panicking::begin_panic::PanicPayload<A> as core::panic::BoxMeUp>::box_me_up
; Function Attrs: nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$9box_me_up17hc3ffd14048f32af6E"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  %_16 = alloca i8, align 1
  %_13 = alloca { {}*, [3 x i64]* }, align 8
  %_12 = alloca {}, align 1
  %_4 = alloca { i8*, i64 }, align 8
  %data = alloca { {}*, [3 x i64]* }, align 8
  store i8 0, i8* %_16, align 1
  store i8 0, i8* %_17, align 1
  store i8 1, i8* %_16, align 1
; call core::option::Option<T>::take
  %0 = call { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hfd36c9f81d5a42daE"({ i8*, i64 }* align 8 dereferenceable(16) %self)
  store { i8*, i64 } %0, { i8*, i64 }* %_4, align 8
  br label %bb2

bb1:                                              ; preds = %bb19, %bb9, %bb12, %bb11, %bb13
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = bitcast { i8*, i64 }* %_4 to {}**
  %8 = load {}*, {}** %7, align 8
  %9 = icmp eq {}* %8, null
  %10 = select i1 %9, i64 0, i64 1
  switch i64 %10, label %bb3 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  unreachable

bb4:                                              ; preds = %bb2
  store i8 0, i8* %_16, align 1
  %11 = bitcast { i8*, i64 }* %_4 to { [0 x i8]*, i64 }*
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 0
  %13 = load [0 x i8]*, [0 x i8]** %12, align 8, !nonnull !2
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
; invoke alloc::alloc::exchange_malloc
  %16 = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h2a1ebcaf77585e13E(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hdc01d5a017329e76E.exit" unwind label %cleanup

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hdc01d5a017329e76E.exit": ; preds = %bb4
  %17 = bitcast i8* %16 to { [0 x i8]*, i64 }*
  %18 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %17, i32 0, i32 0
  store [0 x i8]* %13, [0 x i8]** %18, align 8, !noalias !54
  %19 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %17, i32 0, i32 1
  store i64 %15, i64* %19, align 8
  br label %bb5

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hdc01d5a017329e76E.exit"
  %20 = bitcast { [0 x i8]*, i64 }* %17 to {}*
  store i8 1, i8* %_17, align 1
  %21 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  store {}* %20, {}** %21, align 8
  %22 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  store [3 x i64]* bitcast ({ void ({ [0 x i8]*, i64 }*)*, i64, i64, i64 ({ [0 x i8]*, i64 }*)* }* @vtable.e to [3 x i64]*), [3 x i64]** %22, align 8
  br label %bb8

bb6:                                              ; preds = %bb2
; invoke alloc::alloc::exchange_malloc
  %23 = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h2a1ebcaf77585e13E(i64 0, i64 1)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h664b0ddd95ccf21bE.exit" unwind label %cleanup

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h664b0ddd95ccf21bE.exit": ; preds = %bb6
  %24 = bitcast i8* %23 to {}*
  br label %bb7

bb7:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h664b0ddd95ccf21bE.exit"
  store i8 1, i8* %_17, align 1
  %25 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  store {}* %24, {}** %25, align 8
  %26 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  store [3 x i64]* bitcast ({ void ({}*)*, i64, i64, i64 ({}*)* }* @vtable.f to [3 x i64]*), [3 x i64]** %26, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb5
  %27 = bitcast { i8*, i64 }* %_4 to {}**
  %28 = load {}*, {}** %27, align 8
  %29 = icmp eq {}* %28, null
  %30 = select i1 %29, i64 0, i64 1
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %bb16, label %bb18

bb9:                                              ; preds = %cleanup1
  %32 = load i8, i8* %_17, align 1, !range !3
  %33 = trunc i8 %32 to i1
  br i1 %33, label %bb19, label %bb1

bb10:                                             ; preds = %bb15
  store { {}*, [3 x i64]* } %51, { {}*, [3 x i64]* }* %_13, align 8
  %34 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_13, i32 0, i32 0
  %35 = load {}*, {}** %34, align 8
  %36 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_13, i32 0, i32 1
  %37 = load [3 x i64]*, [3 x i64]** %36, align 8, !nonnull !2
  store i8 0, i8* %_17, align 1
  %38 = insertvalue { {}*, [3 x i64]* } undef, {}* %35, 0
  %39 = insertvalue { {}*, [3 x i64]* } %38, [3 x i64]* %37, 1
  ret { {}*, [3 x i64]* } %39

bb11:                                             ; preds = %bb14
  %40 = load i8, i8* %_16, align 1, !range !3
  %41 = trunc i8 %40 to i1
  br i1 %41, label %bb12, label %bb1

bb12:                                             ; preds = %bb11
  store i8 0, i8* %_16, align 1
  br label %bb1

bb13:                                             ; preds = %bb14
  br label %bb1

bb14:                                             ; preds = %cleanup
  %42 = bitcast { i8*, i64 }* %_4 to {}**
  %43 = load {}*, {}** %42, align 8
  %44 = icmp eq {}* %43, null
  %45 = select i1 %44, i64 0, i64 1
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %bb11, label %bb13

bb15:                                             ; preds = %bb17, %bb16, %bb18
  store i8 0, i8* %_16, align 1
  store i8 0, i8* %_17, align 1
  %47 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  %48 = load {}*, {}** %47, align 8, !nonnull !2
  %49 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  %50 = load [3 x i64]*, [3 x i64]** %49, align 8, !nonnull !2
; invoke alloc::boxed::Box<T>::into_raw
  %51 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed12Box$LT$T$GT$8into_raw17hdccef4830e37ef3aE"({}* noalias nonnull align 1 %48, [3 x i64]* noalias readonly align 8 dereferenceable(24) %50)
          to label %bb10 unwind label %cleanup1

bb16:                                             ; preds = %bb8
  %52 = load i8, i8* %_16, align 1, !range !3
  %53 = trunc i8 %52 to i1
  br i1 %53, label %bb17, label %bb15

bb17:                                             ; preds = %bb16
  store i8 0, i8* %_16, align 1
  br label %bb15

bb18:                                             ; preds = %bb8
  br label %bb15

bb19:                                             ; preds = %bb9
  store i8 0, i8* %_17, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hc0ec3c425c733586E({ {}*, [3 x i64]* }* align 8 dereferenceable(16) %data) #12
  br label %bb1

cleanup:                                          ; preds = %bb6, %bb4
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %bb14

cleanup1:                                         ; preds = %bb15
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  %61 = extractvalue { i8*, i32 } %59, 1
  %62 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %bb9
}

; <core::iter::adapters::Rev<I> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN93_$LT$core..iter..adapters..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h47207d4e0999a5b8E"({ i8*, i8* }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
; call <core::str::Chars as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %0 = call i32 @"_ZN90_$LT$core..str..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd1526bdc54e05f8aE"({ i8*, i8* }* align 8 dereferenceable(16) %self), !range !41
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <core::iter::adapters::Map<I,F> as core::iter::traits::iterator::Iterator>::fold
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN97_$LT$core..iter..adapters..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he931d0f1c4f6b39bE"(i32* %self.0, i32* %self.1, i32 %init) unnamed_addr #1 {
start:
  %_7 = alloca %"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>", align 1
  %0 = bitcast %"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>"* %_7 to {}*
  %1 = bitcast %"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>"* %_7 to %"main::{{closure}}"*
; call <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::fold
  %2 = call i32 @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdcf1961d05339c06E"(i32* %self.0, i32* %self.1, i32 %init)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; <core::iter::adapters::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN97_$LT$core..iter..adapters..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h076e54917ca63824E"(%"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>"* nonnull align 1 %arg0, i32 %acc, i32* noalias readonly align 4 dereferenceable(4) %elt) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_9 = alloca i32*, align 8
  %_5 = alloca { i32, i32 }, align 4
  store i8 0, i8* %_11, align 1
  %0 = bitcast %"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>"* %arg0 to {}*
  store i8 1, i8* %_11, align 1
  %1 = bitcast %"core::iter::adapters::{{impl}}::fold::{{closure}}<u32, core::slice::Iter<u32>, main::{{closure}}, u32, fn(u32, u32) -> u32>"* %arg0 to %"main::{{closure}}"*
  store i32* %elt, i32** %_9, align 8
  %2 = load i32*, i32** %_9, align 8, !nonnull !2
; invoke main::main::{{closure}}
  %3 = invoke i32 @"_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hf400e6756b312ba9E"(%"main::{{closure}}"* nonnull align 1 %1, i32* noalias readonly align 4 dereferenceable(4) %2)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb4, %bb5
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %10 = bitcast { i32, i32 }* %_5 to i32*
  store i32 %acc, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_5, i32 0, i32 1
  store i32 %3, i32* %11, align 4
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
; invoke core::ops::function::FnMut::call_mut
  %16 = invoke i32 @_ZN4core3ops8function5FnMut8call_mut17hc1baed387f1f99c3E({}* nonnull align 1 %0, i32 %13, i32 %15)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i8 0, i8* %_11, align 1
  ret i32 %16

bb4:                                              ; preds = %bb5
  store i8 0, i8* %_11, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %17 = load i8, i8* %_11, align 1, !range !3
  %18 = trunc i8 %17 to i1
  br i1 %18, label %bb4, label %bb1

cleanup:                                          ; preds = %bb2, %start
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb5
}

; <core::iter::adapters::Enumerate<I> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN99_$LT$core..iter..adapters..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1ee75ed3b870d95eE"(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* noalias nocapture sret dereferenceable(40), %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* align 8 dereferenceable(48)) unnamed_addr #0 {
start:
  %_4 = alloca i64*, align 8
  %_2 = alloca %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>", align 8
  %self = alloca %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"*, align 8
  store %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %1, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"** %self, align 8
  %2 = load %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"*, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"** %self, align 8, !nonnull !2
  %3 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %2 to %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"*
; call <std::io::Lines<B> as core::iter::traits::iterator::Iterator>::next
  call void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3841ff2c09b374edE"(%"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* noalias nocapture sret dereferenceable(32) %_2, %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* align 8 dereferenceable(40) %3)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i64** %_4 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"***
  store %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"** %self, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"*** %4, align 8
  %5 = load i64*, i64** %_4, align 8, !nonnull !2
; call core::option::Option<T>::map
  call void @"_ZN4core6option15Option$LT$T$GT$3map17h8c166908f6865ad1E"(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* noalias nocapture sret dereferenceable(40) %0, %"core::option::Option<core::result::Result<alloc::string::String, std::io::error::Error>>"* noalias nocapture dereferenceable(32) %_2, i64* align 8 dereferenceable(8) %5)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <core::iter::adapters::Enumerate<I> as core::iter::traits::iterator::Iterator>::next::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN99_$LT$core..iter..adapters..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17he4f1f30cd46069edE"({ [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* noalias nocapture sret dereferenceable(40), i64* align 8 dereferenceable(8) %arg0, %"core::result::Result<alloc::string::String, std::io::error::Error>"* noalias nocapture dereferenceable(32) %a) unnamed_addr #1 {
start:
  %_5 = alloca %"core::result::Result<alloc::string::String, std::io::error::Error>", align 8
  %ret = alloca { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, align 8
  %1 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %2 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %3 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %4 = load %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"*, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"** %3, align 8, !nonnull !2
  %5 = getelementptr inbounds %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_5 to i8*
  %8 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false)
  %9 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %ret to i64*
  store i64 %6, i64* %9, align 8
  %10 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %ret, i32 0, i32 3
  %11 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %10 to i8*
  %12 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %14 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %15 = load %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"*, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"** %14, align 8, !nonnull !2
  %16 = getelementptr inbounds %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %15, i32 0, i32 3
  %17 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %18 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %19 = bitcast i64* %arg0 to %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"**
  %20 = load %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"*, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"** %19, align 8, !nonnull !2
  %21 = getelementptr inbounds %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %16, align 8
  %24 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %0 to i8*
  %25 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 40, i1 false)
  ret void
}

; <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17ha39981c8d5ecdcaaE"(i64 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
; call core::slice::<impl [T]>::as_ptr
  %0 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h6489b6b33f8f7d00E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *const T>::add
  %1 = call i8* @"_ZN4core3ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h6382c2a38ab424a9E"(i8* %0, i64 %self.0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = sub i64 %self.1, %self.0
; call core::slice::from_raw_parts
  %3 = call { [0 x i8]*, i64 } @_ZN4core5slice14from_raw_parts17h61ce1423689c514fE(i8* %1, i64 %2)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h66728948fc4911e3E"(i64 %self.0, i64 %self.1, [0 x i8]* nonnull align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
; call core::slice::<impl [T]>::as_mut_ptr
  %0 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hf9735092727bee5cE"([0 x i8]* nonnull align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *mut T>::add
  %1 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h513a4abb42d32901E"(i8* %0, i64 %self.0)
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = sub i64 %self.1, %self.0
; call core::slice::from_raw_parts_mut
  %3 = call { [0 x i8]*, i64 } @_ZN4core5slice18from_raw_parts_mut17hf687a010146ec8f0E(i8* %1, i64 %2)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::index
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hb5c6615cd8cb2325E"(i64 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = icmp ugt i64 %self.0, %self.1
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
; call core::slice::slice_index_order_fail
  call void @_ZN4core5slice22slice_index_order_fail17h5de4352b6c3298ebE(i64 %self.0, i64 %self.1)
  unreachable

bb2:                                              ; preds = %start
; call core::slice::<impl [T]>::len
  %1 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = icmp ugt i64 %self.1, %1
  br i1 %2, label %bb4, label %bb6

bb4:                                              ; preds = %bb3
; call core::slice::<impl [T]>::len
  %3 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17h4ded11694fc2c466E"([0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::slice::slice_index_len_fail
  call void @_ZN4core5slice20slice_index_len_fail17h79714f5adb99d7b4E(i64 %self.1, i64 %3)
  unreachable

bb6:                                              ; preds = %bb3
; call <core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked
  %4 = call { [0 x i8]*, i64 } @"_ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17ha39981c8d5ecdcaaE"(i64 %self.0, i64 %self.1, [0 x i8]* noalias nonnull readonly align 1 %slice.0, i64 %slice.1)
  %5 = extractvalue { [0 x i8]*, i64 } %4, 0
  %6 = extractvalue { [0 x i8]*, i64 } %4, 1
  br label %bb7

bb7:                                              ; preds = %bb6
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; main::read_module_masses
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main18read_module_masses17h1cf8edb5db72d81bE(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24), [0 x i8]* noalias nonnull readonly align 1 %input_path.0, i64 %input_path.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %abi_cast = alloca i64, align 8
  %personalityslot = alloca { i8*, i32 }, align 8
  %_127 = alloca i8, align 1
  %_126 = alloca i8, align 1
  %_125 = alloca i8, align 1
  %_124 = alloca i8, align 1
  %_123 = alloca i8, align 1
  %_122 = alloca i8, align 1
  %_102 = alloca { [0 x i8]*, i64 }, align 8
  %_98 = alloca { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }, align 8
  %_97 = alloca [3 x { i8*, i8* }], align 8
  %_90 = alloca %"core::fmt::Arguments", align 8
  %why5 = alloca i8, align 1
  %_82 = alloca %"core::result::Result<u32, core::num::ParseIntError>", align 4
  %line4 = alloca %"alloc::string::String", align 8
  %_72 = alloca { [0 x i8]*, i64 }, align 8
  %_70 = alloca i64*, align 8
  %_69 = alloca [1 x { i8*, i8* }], align 8
  %_62 = alloca %"core::fmt::Arguments", align 8
  %why3 = alloca %"std::io::error::Error", align 8
  %line2 = alloca %"alloc::string::String", align 8
  %line = alloca %"core::result::Result<alloc::string::String, std::io::error::Error>", align 8
  %i = alloca i64, align 8
  %_54 = alloca { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, align 8
  %val = alloca { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, align 8
  %_49 = alloca %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>", align 8
  %__next = alloca { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, align 8
  %iter = alloca %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", align 8
  %_46 = alloca %"std::io::buffered::BufReader<std::fs::File>", align 8
  %_45 = alloca %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>", align 8
  %_44 = alloca %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", align 8
  %_43 = alloca %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>", align 8
  %out = alloca %"alloc::vec::Vec<u32>", align 8
  %file1 = alloca %"std::io::buffered::BufReader<std::fs::File>", align 8
  %_24 = alloca { [0 x i8]*, i64 }, align 8
  %_21 = alloca { i8*, i64 }, align 8
  %_19 = alloca { i64*, i64* }, align 8
  %_18 = alloca [2 x { i8*, i8* }], align 8
  %_11 = alloca %"core::fmt::Arguments", align 8
  %why = alloca %"std::io::error::Error", align 8
  %_5 = alloca %"core::result::Result<std::fs::File, std::io::error::Error>", align 8
  %file = alloca i32, align 4
  %path = alloca { %"std::path::Path"*, i64 }, align 8
  store i8 0, i8* %_126, align 1
  store i8 0, i8* %_122, align 1
  store i8 0, i8* %_123, align 1
  store i8 0, i8* %_124, align 1
  store i8 0, i8* %_125, align 1
  store i8 0, i8* %_127, align 1
; call std::path::Path::new
  %1 = call { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17h829c9cf0adca3619E([0 x i8]* noalias nonnull readonly align 1 %input_path.0, i64 %input_path.1)
  store { %"std::path::Path"*, i64 } %1, { %"std::path::Path"*, i64 }* %path, align 8
  br label %bb2

bb1:                                              ; preds = %bb50, %bb14, %bb47, %bb7
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1
  resume { i8*, i32 } %7

bb2:                                              ; preds = %start
; call std::fs::File::open
  call void @_ZN3std2fs4File4open17h6d437a006f2c1e5aE(%"core::result::Result<std::fs::File, std::io::error::Error>"* noalias nocapture sret dereferenceable(24) %_5, { %"std::path::Path"*, i64 }* noalias readonly align 8 dereferenceable(16) %path)
  br label %bb3

bb3:                                              ; preds = %bb2
  %8 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to i32*
  %9 = load i32, i32* %8, align 8, !range !30
  %10 = zext i32 %9 to i64
  switch i64 %10, label %bb4 [
    i64 0, label %bb13
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb36, %bb55, %bb23, %bb3
  unreachable

bb5:                                              ; preds = %bb3
  %11 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to %"core::result::Result<std::fs::File, std::io::error::Error>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Err", %"core::result::Result<std::fs::File, std::io::error::Error>::Err"* %11, i32 0, i32 1
  %13 = bitcast %"std::io::error::Error"* %why to i8*
  %14 = bitcast %"std::io::error::Error"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 0
  %16 = load %"std::path::Path"*, %"std::path::Path"** %15, align 8, !nonnull !2
  %17 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
; invoke std::path::Path::display
  %19 = invoke { i8*, i64 } @_ZN3std4path4Path7display17h71ae64b15c0d4f3fE(%"std::path::Path"* noalias nonnull readonly align 1 %16, i64 %18)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store { i8*, i64 } %19, { i8*, i64 }* %_21, align 8
; invoke <std::io::error::Error as std::error::Error>::description
  %20 = invoke { [0 x i8]*, i64 } @"_ZN59_$LT$std..io..error..Error$u20$as$u20$std..error..Error$GT$11description17hbcbdc96ab85f1665E"(%"std::io::error::Error"* noalias readonly align 8 dereferenceable(16) %why)
          to label %bb9 unwind label %cleanup

bb7:                                              ; preds = %bb8
  %21 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to i32*
  %22 = load i32, i32* %21, align 8, !range !30
  %23 = zext i32 %22 to i64
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %bb47, label %bb1

bb8:                                              ; preds = %cleanup
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %why) #12
  br label %bb7

bb9:                                              ; preds = %bb6
  store { [0 x i8]*, i64 } %20, { [0 x i8]*, i64 }* %_24, align 8
  %25 = bitcast { i64*, i64* }* %_19 to { i8*, i64 }**
  store { i8*, i64 }* %_21, { i8*, i64 }** %25, align 8
  %26 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_19, i32 0, i32 1
  %27 = bitcast i64** %26 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %_24, { [0 x i8]*, i64 }** %27, align 8
  %28 = bitcast { i64*, i64* }* %_19 to { i8*, i64 }**
  %29 = load { i8*, i64 }*, { i8*, i64 }** %28, align 8, !nonnull !2
  %30 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_19, i32 0, i32 1
  %31 = bitcast i64** %30 to { [0 x i8]*, i64 }**
  %32 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %31, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %33 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h932ee9f760cc8792E({ i8*, i64 }* noalias readonly align 8 dereferenceable(16) %29, i1 ({ i8*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hfb352f05fd54497eE")
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %34 = extractvalue { i8*, i8* } %33, 0
  %35 = extractvalue { i8*, i8* } %33, 1
; invoke core::fmt::ArgumentV1::new
  %36 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9af8e774b0b45ac0E({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %32, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab02f78835b2d3dfE")
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %37 = extractvalue { i8*, i8* } %36, 0
  %38 = extractvalue { i8*, i8* } %36, 1
  %39 = bitcast [2 x { i8*, i8* }]* %_18 to { i8*, i8* }*
  %40 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 0
  store i8* %34, i8** %40, align 8
  %41 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 1
  store i8* %35, i8** %41, align 8
  %42 = getelementptr inbounds [2 x { i8*, i8* }], [2 x { i8*, i8* }]* %_18, i32 0, i32 1
  %43 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %42, i32 0, i32 0
  store i8* %37, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %42, i32 0, i32 1
  store i8* %38, i8** %44, align 8
  %45 = bitcast [2 x { i8*, i8* }]* %_18 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_11, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @43 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %45, i64 2)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
; invoke std::panicking::begin_panic_fmt
  invoke void @_ZN3std9panicking15begin_panic_fmt17h1dac648c5ae2917bE(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48) %_11, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @45 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb3
  %46 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"*
  %47 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Ok", %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i8 1, i8* %_122, align 1
  store i32 %48, i32* %file, align 4
  %49 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to i32*
  %50 = load i32, i32* %49, align 8, !range !30
  %51 = zext i32 %50 to i64
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %bb48, label %bb49

bb14:                                             ; preds = %bb51, %bb16, %cleanup6
  %53 = load i8, i8* %_122, align 1, !range !3
  %54 = trunc i8 %53 to i1
  br i1 %54, label %bb50, label %bb1

bb15:                                             ; preds = %bb48
  store i8 1, i8* %_123, align 1
; call alloc::alloc::exchange_malloc
  %55 = call i8* @_ZN5alloc5alloc15exchange_malloc17h2a1ebcaf77585e13E(i64 0, i64 4)
  %56 = bitcast i8* %55 to [0 x i32]*
; invoke alloc::slice::<impl [T]>::into_vec
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h7068d080ea6664feE"(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24) %out, [0 x i32]* noalias nonnull align 4 %56, i64 0)
          to label %bb17 unwind label %cleanup7

bb16:                                             ; preds = %bb19, %cleanup7
  %57 = load i8, i8* %_123, align 1, !range !3
  %58 = trunc i8 %57 to i1
  br i1 %58, label %bb51, label %bb14

bb17:                                             ; preds = %bb15
  store i8 0, i8* %_123, align 1
  %59 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %_46 to i8*
  %60 = bitcast %"std::io::buffered::BufReader<std::fs::File>"* %file1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 40, i1 false)
; invoke std::io::BufRead::lines
  invoke void @_ZN3std2io7BufRead5lines17hc8ae994ffde8a588E(%"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* noalias nocapture sret dereferenceable(40) %_45, %"std::io::buffered::BufReader<std::fs::File>"* noalias nocapture dereferenceable(40) %_46)
          to label %bb18 unwind label %cleanup8

bb18:                                             ; preds = %bb17
; invoke core::iter::traits::iterator::Iterator::enumerate
  invoke void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h57223d6371a83b6bE(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture sret dereferenceable(48) %_44, %"std::io::Lines<std::io::buffered::BufReader<std::fs::File>>"* noalias nocapture dereferenceable(40) %_45)
          to label %bb20 unwind label %cleanup8

bb19:                                             ; preds = %bb52, %cleanup8
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h29e642ed75c3b294E(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %out) #12
  br label %bb16

bb20:                                             ; preds = %bb18
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h370414a8998321e4E"(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture sret dereferenceable(48) %_43, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* noalias nocapture dereferenceable(48) %_44)
          to label %bb21 unwind label %cleanup8

bb21:                                             ; preds = %bb20
  %61 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %iter to i8*
  %62 = bitcast %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* %_43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 48, i1 false)
  br label %bb22

bb22:                                             ; preds = %bb61, %bb21
; invoke <core::iter::adapters::Enumerate<I> as core::iter::traits::iterator::Iterator>::next
  invoke void @"_ZN99_$LT$core..iter..adapters..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1ee75ed3b870d95eE"(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* noalias nocapture sret dereferenceable(40) %_49, %"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* align 8 dereferenceable(48) %iter)
          to label %bb23 unwind label %cleanup9

bb23:                                             ; preds = %bb22
  %63 = getelementptr inbounds %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>", %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %_49, i32 0, i32 1
  %64 = load i64, i64* %63, align 8, !range !20
  %65 = icmp eq i64 %64, 2
  %66 = select i1 %65, i64 0, i64 1
  switch i64 %66, label %bb4 [
    i64 0, label %bb25
    i64 1, label %bb24
  ]

bb24:                                             ; preds = %bb23
  %67 = bitcast %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %_49 to %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some"*
  %68 = bitcast %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>::Some"* %67 to { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }*
  %69 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %val to i8*
  %70 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 40, i1 false)
  %71 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %_54 to i8*
  %72 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 40, i1 false)
  store i8 1, i8* %_124, align 1
  store i8 1, i8* %_125, align 1
  %73 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %__next to i8*
  %74 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %_54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 40, i1 false)
  %75 = getelementptr inbounds %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>", %"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* %_49, i32 0, i32 1
  %76 = load i64, i64* %75, align 8, !range !20
  %77 = icmp eq i64 %76, 2
  %78 = select i1 %77, i64 0, i64 1
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %bb55, label %bb56

bb25:                                             ; preds = %bb23
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17hab86ae9b491f7b0dE(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* align 8 dereferenceable(40) %_49)
          to label %bb26 unwind label %cleanup9

bb26:                                             ; preds = %bb25
  store i8 0, i8* %_124, align 1
  store i8 0, i8* %_125, align 1
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17h9b79a35ec268aed7E(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* align 8 dereferenceable(48) %iter)
          to label %bb46 unwind label %cleanup8

bb27:                                             ; preds = %bb55
  store i8 0, i8* %_127, align 1
  %80 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"*
  %81 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Err", %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"* %80, i32 0, i32 1
  %82 = bitcast %"std::io::error::Error"* %why3 to i8*
  %83 = bitcast %"std::io::error::Error"* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
; invoke <std::io::error::Error as std::error::Error>::description
  %84 = invoke { [0 x i8]*, i64 } @"_ZN59_$LT$std..io..error..Error$u20$as$u20$std..error..Error$GT$11description17hbcbdc96ab85f1665E"(%"std::io::error::Error"* noalias readonly align 8 dereferenceable(16) %why3)
          to label %bb28 unwind label %cleanup10

bb28:                                             ; preds = %bb27
  store { [0 x i8]*, i64 } %84, { [0 x i8]*, i64 }* %_72, align 8
  %85 = bitcast i64** %_70 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %_72, { [0 x i8]*, i64 }** %85, align 8
  %86 = bitcast i64** %_70 to { [0 x i8]*, i64 }**
  %87 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %86, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %88 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9af8e774b0b45ac0E({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %87, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab02f78835b2d3dfE")
          to label %bb31 unwind label %cleanup10

bb29:                                             ; preds = %cleanup12, %bb35, %bb30
  %89 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to i64*
  %90 = load i64, i64* %89, align 8, !range !4
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %bb57, label %bb59

bb30:                                             ; preds = %cleanup10
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %why3) #12
  br label %bb29

bb31:                                             ; preds = %bb28
  %92 = extractvalue { i8*, i8* } %88, 0
  %93 = extractvalue { i8*, i8* } %88, 1
  %94 = bitcast [1 x { i8*, i8* }]* %_69 to { i8*, i8* }*
  %95 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %94, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = bitcast [1 x { i8*, i8* }]* %_69 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_62, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8] }>* @47 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %97, i64 1)
          to label %bb32 unwind label %cleanup10

bb32:                                             ; preds = %bb31
; invoke std::panicking::begin_panic_fmt
  invoke void @_ZN3std9panicking15begin_panic_fmt17h1dac648c5ae2917bE(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48) %_62, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @48 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
          to label %unreachable unwind label %cleanup10

bb33:                                             ; preds = %bb55
  store i8 0, i8* %_126, align 1
  %98 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"*
  %99 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok", %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"* %98, i32 0, i32 1
  %100 = bitcast %"alloc::string::String"* %line4 to i8*
  %101 = bitcast %"alloc::string::String"* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = bitcast %"alloc::string::String"* %line2 to i8*
  %103 = bitcast %"alloc::string::String"* %line4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %104 = invoke { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9639dbdba248665dE"(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %line2)
          to label %bb34 unwind label %cleanup11

bb34:                                             ; preds = %bb33
  %105 = extractvalue { [0 x i8]*, i64 } %104, 0
  %106 = extractvalue { [0 x i8]*, i64 } %104, 1
; invoke core::str::<impl str>::parse
  %107 = invoke i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h98902f9deee6090eE"([0 x i8]* noalias nonnull readonly align 1 %105, i64 %106)
          to label %bb36 unwind label %cleanup11

bb35:                                             ; preds = %cleanup11
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %line2) #12
  br label %bb29

bb36:                                             ; preds = %bb34
  store i64 %107, i64* %abi_cast, align 8
  %108 = bitcast %"core::result::Result<u32, core::num::ParseIntError>"* %_82 to i8*
  %109 = bitcast i64* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 8 %109, i64 8, i1 false)
  %110 = bitcast %"core::result::Result<u32, core::num::ParseIntError>"* %_82 to i8*
  %111 = load i8, i8* %110, align 4, !range !3
  %112 = trunc i8 %111 to i1
  %113 = zext i1 %112 to i64
  switch i64 %113, label %bb4 [
    i64 0, label %bb43
    i64 1, label %bb37
  ]

bb37:                                             ; preds = %bb36
  %114 = bitcast %"core::result::Result<u32, core::num::ParseIntError>"* %_82 to %"core::result::Result<u32, core::num::ParseIntError>::Err"*
  %115 = getelementptr inbounds %"core::result::Result<u32, core::num::ParseIntError>::Err", %"core::result::Result<u32, core::num::ParseIntError>::Err"* %114, i32 0, i32 1
  %116 = load i8, i8* %115, align 1, !range !57
  store i8 %116, i8* %why5, align 1
; invoke <core::num::ParseIntError as std::error::Error>::description
  %117 = invoke { [0 x i8]*, i64 } @"_ZN62_$LT$core..num..ParseIntError$u20$as$u20$std..error..Error$GT$11description17hee7ba61bea6f8d5aE"(i8* noalias readonly align 1 dereferenceable(1) %why5)
          to label %bb38 unwind label %cleanup11

bb38:                                             ; preds = %bb37
  store { [0 x i8]*, i64 } %117, { [0 x i8]*, i64 }* %_102, align 8
  %118 = bitcast { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }* %_98 to %"alloc::string::String"**
  store %"alloc::string::String"* %line2, %"alloc::string::String"** %118, align 8
  %119 = getelementptr inbounds { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }, { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }* %_98, i32 0, i32 3
  store i64* %i, i64** %119, align 8
  %120 = getelementptr inbounds { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }, { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }* %_98, i32 0, i32 5
  store { [0 x i8]*, i64 }* %_102, { [0 x i8]*, i64 }** %120, align 8
  %121 = bitcast { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }* %_98 to %"alloc::string::String"**
  %122 = load %"alloc::string::String"*, %"alloc::string::String"** %121, align 8, !nonnull !2
  %123 = getelementptr inbounds { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }, { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }* %_98, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8, !nonnull !2
  %125 = getelementptr inbounds { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }, { [0 x i64], %"alloc::string::String"*, [0 x i64], i64*, [0 x i64], { [0 x i8]*, i64 }*, [0 x i64] }* %_98, i32 0, i32 5
  %126 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %125, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %127 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hef692d738a8d9b2bE(%"alloc::string::String"* noalias readonly align 8 dereferenceable(24) %122, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* nonnull @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h0103793562f79338E")
          to label %bb39 unwind label %cleanup11

bb39:                                             ; preds = %bb38
  %128 = extractvalue { i8*, i8* } %127, 0
  %129 = extractvalue { i8*, i8* } %127, 1
; invoke core::fmt::ArgumentV1::new
  %130 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hb22ab475cf5c6e21E(i64* noalias readonly align 8 dereferenceable(8) %124, i1 (i64*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hd894ce7814f1f2b4E")
          to label %bb40 unwind label %cleanup11

bb40:                                             ; preds = %bb39
  %131 = extractvalue { i8*, i8* } %130, 0
  %132 = extractvalue { i8*, i8* } %130, 1
; invoke core::fmt::ArgumentV1::new
  %133 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h9af8e774b0b45ac0E({ [0 x i8]*, i64 }* noalias readonly align 8 dereferenceable(16) %126, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab02f78835b2d3dfE")
          to label %bb41 unwind label %cleanup11

bb41:                                             ; preds = %bb40
  %134 = extractvalue { i8*, i8* } %133, 0
  %135 = extractvalue { i8*, i8* } %133, 1
  %136 = bitcast [3 x { i8*, i8* }]* %_97 to { i8*, i8* }*
  %137 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %136, i32 0, i32 0
  store i8* %128, i8** %137, align 8
  %138 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %136, i32 0, i32 1
  store i8* %129, i8** %138, align 8
  %139 = getelementptr inbounds [3 x { i8*, i8* }], [3 x { i8*, i8* }]* %_97, i32 0, i32 1
  %140 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %139, i32 0, i32 0
  store i8* %131, i8** %140, align 8
  %141 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %139, i32 0, i32 1
  store i8* %132, i8** %141, align 8
  %142 = getelementptr inbounds [3 x { i8*, i8* }], [3 x { i8*, i8* }]* %_97, i32 0, i32 2
  %143 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %142, i32 0, i32 0
  store i8* %134, i8** %143, align 8
  %144 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %142, i32 0, i32 1
  store i8* %135, i8** %144, align 8
  %145 = bitcast [3 x { i8*, i8* }]* %_97 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_90, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @51 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %145, i64 3)
          to label %bb42 unwind label %cleanup11

bb42:                                             ; preds = %bb41
; invoke std::panicking::begin_panic_fmt
  invoke void @_ZN3std9panicking15begin_panic_fmt17h1dac648c5ae2917bE(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48) %_90, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @52 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
          to label %unreachable unwind label %cleanup11

bb43:                                             ; preds = %bb36
  %146 = bitcast %"core::result::Result<u32, core::num::ParseIntError>"* %_82 to %"core::result::Result<u32, core::num::ParseIntError>::Ok"*
  %147 = getelementptr inbounds %"core::result::Result<u32, core::num::ParseIntError>::Ok", %"core::result::Result<u32, core::num::ParseIntError>::Ok"* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
; invoke alloc::vec::Vec<T>::push
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$4push17hb389de8a6018e5c4E"(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %out, i32 %148)
          to label %bb44 unwind label %cleanup11

bb44:                                             ; preds = %bb43
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %line2)
          to label %bb45 unwind label %cleanup12

bb45:                                             ; preds = %bb44
  %149 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to i64*
  %150 = load i64, i64* %149, align 8, !range !4
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %bb61, label %bb62

bb46:                                             ; preds = %bb26
  %152 = bitcast %"alloc::vec::Vec<u32>"* %0 to i8*
  %153 = bitcast %"alloc::vec::Vec<u32>"* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 24, i1 false)
  store i8 0, i8* %_123, align 1
  store i8 0, i8* %_122, align 1
  ret void

bb47:                                             ; preds = %bb7
  %154 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"*
  %155 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Ok", %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"* %154, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h4190a6ebbeffadfaE(i32* align 4 dereferenceable(4) %155) #12
  br label %bb1

bb48:                                             ; preds = %bb49, %bb13
  store i8 0, i8* %_122, align 1
  %156 = load i32, i32* %file, align 4
; invoke std::io::buffered::BufReader<R>::new
  invoke void @"_ZN3std2io8buffered18BufReader$LT$R$GT$3new17h8a9bb8c9442d243cE"(%"std::io::buffered::BufReader<std::fs::File>"* noalias nocapture sret dereferenceable(40) %file1, i32 %156)
          to label %bb15 unwind label %cleanup6

bb49:                                             ; preds = %bb13
  %157 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %_5 to %"core::result::Result<std::fs::File, std::io::error::Error>::Err"*
  %158 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Err", %"core::result::Result<std::fs::File, std::io::error::Error>::Err"* %157, i32 0, i32 1
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %158)
          to label %bb48 unwind label %cleanup6

bb50:                                             ; preds = %bb14
  store i8 0, i8* %_122, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h4190a6ebbeffadfaE(i32* align 4 dereferenceable(4) %file) #12
  br label %bb1

bb51:                                             ; preds = %bb16
  store i8 0, i8* %_123, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h14a377da3589cddcE(%"std::io::buffered::BufReader<std::fs::File>"* align 8 dereferenceable(40) %file1) #12
  br label %bb14

bb52:                                             ; preds = %bb53, %bb54
  store i8 0, i8* %_124, align 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h9b79a35ec268aed7E(%"core::iter::adapters::Enumerate<std::io::Lines<std::io::buffered::BufReader<std::fs::File>>>"* align 8 dereferenceable(48) %iter) #12
  br label %bb19

bb53:                                             ; preds = %bb54
  store i8 0, i8* %_125, align 1
  %159 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %__next, i32 0, i32 3
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h274a8a217f6b2a6eE(%"core::result::Result<alloc::string::String, std::io::error::Error>"* align 8 dereferenceable(32) %159) #12
  br label %bb52

bb54:                                             ; preds = %bb58, %bb57, %bb60, %bb59, %cleanup9
  %160 = load i8, i8* %_125, align 1, !range !3
  %161 = trunc i8 %160 to i1
  br i1 %161, label %bb53, label %bb52

bb55:                                             ; preds = %bb56, %bb24
  %162 = bitcast { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %__next to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %i, align 8
  store i8 0, i8* %_125, align 1
  store i8 1, i8* %_126, align 1
  store i8 1, i8* %_127, align 1
  %164 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::result::Result<alloc::string::String, std::io::error::Error>", [0 x i64] }* %__next, i32 0, i32 3
  %165 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to i8*
  %166 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 32, i1 false)
  %167 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to i64*
  %168 = load i64, i64* %167, align 8, !range !4
  switch i64 %168, label %bb4 [
    i64 0, label %bb33
    i64 1, label %bb27
  ]

bb56:                                             ; preds = %bb24
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17hab86ae9b491f7b0dE(%"core::option::Option<(usize, core::result::Result<alloc::string::String, std::io::error::Error>)>"* align 8 dereferenceable(40) %_49)
          to label %bb55 unwind label %cleanup9

bb57:                                             ; preds = %bb29
  %169 = load i8, i8* %_126, align 1, !range !3
  %170 = trunc i8 %169 to i1
  br i1 %170, label %bb58, label %bb54

bb58:                                             ; preds = %bb57
  store i8 0, i8* %_126, align 1
  %171 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"*
  %172 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok", %"core::result::Result<alloc::string::String, std::io::error::Error>::Ok"* %171, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h6481592ae1421fa0E(%"alloc::string::String"* align 8 dereferenceable(24) %172) #12
  br label %bb54

bb59:                                             ; preds = %bb29
  %173 = load i8, i8* %_127, align 1, !range !3
  %174 = trunc i8 %173 to i1
  br i1 %174, label %bb60, label %bb54

bb60:                                             ; preds = %bb59
  store i8 0, i8* %_127, align 1
  %175 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"*
  %176 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Err", %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"* %175, i32 0, i32 1
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %176) #12
  br label %bb54

bb61:                                             ; preds = %bb62, %bb45
  store i8 0, i8* %_126, align 1
  store i8 0, i8* %_127, align 1
  store i8 0, i8* %_124, align 1
  store i8 0, i8* %_124, align 1
  store i8 0, i8* %_125, align 1
  br label %bb22

bb62:                                             ; preds = %bb45
  store i8 0, i8* %_127, align 1
  %177 = bitcast %"core::result::Result<alloc::string::String, std::io::error::Error>"* %line to %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"*
  %178 = getelementptr inbounds %"core::result::Result<alloc::string::String, std::io::error::Error>::Err", %"core::result::Result<alloc::string::String, std::io::error::Error>::Err"* %177, i32 0, i32 1
; invoke core::ptr::real_drop_in_place
  invoke void @_ZN4core3ptr18real_drop_in_place17hea225b29bbc525feE(%"std::io::error::Error"* align 8 dereferenceable(16) %178)
          to label %bb61 unwind label %cleanup9

cleanup:                                          ; preds = %bb12, %bb11, %bb10, %bb9, %bb6, %bb5
  %179 = landingpad { i8*, i32 }
          cleanup
  %180 = extractvalue { i8*, i32 } %179, 0
  %181 = extractvalue { i8*, i32 } %179, 1
  %182 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  br label %bb8

unreachable:                                      ; preds = %bb42, %bb32, %bb12
  unreachable

cleanup6:                                         ; preds = %bb48, %bb49
  %184 = landingpad { i8*, i32 }
          cleanup
  %185 = extractvalue { i8*, i32 } %184, 0
  %186 = extractvalue { i8*, i32 } %184, 1
  %187 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  br label %bb14

cleanup7:                                         ; preds = %bb15
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  br label %bb16

cleanup8:                                         ; preds = %bb26, %bb20, %bb18, %bb17
  %194 = landingpad { i8*, i32 }
          cleanup
  %195 = extractvalue { i8*, i32 } %194, 0
  %196 = extractvalue { i8*, i32 } %194, 1
  %197 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  br label %bb19

cleanup9:                                         ; preds = %bb25, %bb62, %bb56, %bb22
  %199 = landingpad { i8*, i32 }
          cleanup
  %200 = extractvalue { i8*, i32 } %199, 0
  %201 = extractvalue { i8*, i32 } %199, 1
  %202 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  br label %bb54

cleanup10:                                        ; preds = %bb32, %bb31, %bb28, %bb27
  %204 = landingpad { i8*, i32 }
          cleanup
  %205 = extractvalue { i8*, i32 } %204, 0
  %206 = extractvalue { i8*, i32 } %204, 1
  %207 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  %208 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  br label %bb30

cleanup11:                                        ; preds = %bb43, %bb42, %bb41, %bb40, %bb39, %bb38, %bb37, %bb34, %bb33
  %209 = landingpad { i8*, i32 }
          cleanup
  %210 = extractvalue { i8*, i32 } %209, 0
  %211 = extractvalue { i8*, i32 } %209, 1
  %212 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  %213 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  br label %bb35

cleanup12:                                        ; preds = %bb44
  %214 = landingpad { i8*, i32 }
          cleanup
  %215 = extractvalue { i8*, i32 } %214, 0
  %216 = extractvalue { i8*, i32 } %214, 1
  %217 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  %218 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  br label %bb29
}

; main::calc_fuel_required
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN4main18calc_fuel_required17h8fad734204915b0bE(i32 %module_mass) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = udiv i32 %module_mass, 3
  %1 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %0, i32 2)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 false)
  br i1 %4, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %2

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.i to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17h6b07ac6c6f06cdd6E() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_56 = alloca i64*, align 8
  %_55 = alloca [1 x { i8*, i8* }], align 8
  %_48 = alloca %"core::fmt::Arguments", align 8
  %_42 = alloca %"main::{{closure}}.0", align 1
  %_37 = alloca i32, align 4
  %_35 = alloca i32*, align 8
  %_34 = alloca [1 x { i8*, i8* }], align 8
  %_27 = alloca %"core::fmt::Arguments", align 8
  %_21 = alloca %"main::{{closure}}", align 1
  %_15 = alloca i32, align 4
  %_13 = alloca i32*, align 8
  %_12 = alloca [1 x { i8*, i8* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  %module_masses = alloca %"alloc::vec::Vec<u32>", align 8
; call main::read_module_masses
  call void @_ZN4main18read_module_masses17h1cf8edb5db72d81bE(%"alloc::vec::Vec<u32>"* noalias nocapture sret dereferenceable(24) %module_masses, [0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [13 x i8] }>* @53 to [0 x i8]*), i64 13)
  br label %bb2

bb1:                                              ; preds = %bb4
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb2:                                              ; preds = %start
; invoke <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
  %6 = invoke { [0 x i32]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h01d74cda020c1133E"(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %module_masses)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %7 = extractvalue { [0 x i32]*, i64 } %6, 0
  %8 = extractvalue { [0 x i32]*, i64 } %6, 1
; invoke core::slice::<impl [T]>::iter
  %9 = invoke { i32*, i32* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf342370c7971263bE"([0 x i32]* noalias nonnull readonly align 4 %7, i64 %8)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %cleanup
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h29e642ed75c3b294E(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %module_masses) #12
  br label %bb1

bb5:                                              ; preds = %bb3
  %10 = extractvalue { i32*, i32* } %9, 0
  %11 = extractvalue { i32*, i32* } %9, 1
; invoke core::iter::traits::iterator::Iterator::map
  %12 = invoke { i32*, i32* } @_ZN4core4iter6traits8iterator8Iterator3map17hee2149633d021fb7E(i32* %10, i32* %11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %13 = extractvalue { i32*, i32* } %12, 0
  %14 = extractvalue { i32*, i32* } %12, 1
; invoke core::iter::traits::iterator::Iterator::sum
  %15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3sum17hf9daba299e97471bE(i32* %13, i32* %14)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  store i32 %15, i32* %_15, align 4
  store i32* %_15, i32** %_13, align 8
  %16 = load i32*, i32** %_13, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %17 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h874f9884860177e6E(i32* noalias readonly align 4 dereferenceable(4) %16, i1 (i32*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hba92653e7357acb3E")
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %18 = extractvalue { i8*, i8* } %17, 0
  %19 = extractvalue { i8*, i8* } %17, 1
  %20 = bitcast [1 x { i8*, i8* }]* %_12 to { i8*, i8* }*
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %20, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = bitcast [1 x { i8*, i8* }]* %_12 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_5, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @55 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %23, i64 1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h9ffa18f634745d36E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_5)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T> as core::ops::deref::Deref>::deref
  %24 = invoke { [0 x i32]*, i64 } @"_ZN68_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h01d74cda020c1133E"(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %module_masses)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %25 = extractvalue { [0 x i32]*, i64 } %24, 0
  %26 = extractvalue { [0 x i32]*, i64 } %24, 1
; invoke core::slice::<impl [T]>::iter
  %27 = invoke { i32*, i32* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf342370c7971263bE"([0 x i32]* noalias nonnull readonly align 4 %25, i64 %26)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %28 = extractvalue { i32*, i32* } %27, 0
  %29 = extractvalue { i32*, i32* } %27, 1
; invoke <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::fold
  %30 = invoke i32 @"_ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4fe8b1d5e7e098b3E"(i32* %28, i32* %29, i32 0)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 %30, i32* %_37, align 4
  store i32* %_37, i32** %_35, align 8
  %31 = load i32*, i32** %_35, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %32 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h874f9884860177e6E(i32* noalias readonly align 4 dereferenceable(4) %31, i1 (i32*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hba92653e7357acb3E")
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %33 = extractvalue { i8*, i8* } %32, 0
  %34 = extractvalue { i8*, i8* } %32, 1
  %35 = bitcast [1 x { i8*, i8* }]* %_34 to { i8*, i8* }*
  %36 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %35, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = bitcast [1 x { i8*, i8* }]* %_34 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_27, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @55 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %38, i64 1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h9ffa18f634745d36E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_27)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %39 = bitcast i64** %_56 to %"alloc::vec::Vec<u32>"**
  store %"alloc::vec::Vec<u32>"* %module_masses, %"alloc::vec::Vec<u32>"** %39, align 8
  %40 = bitcast i64** %_56 to %"alloc::vec::Vec<u32>"**
  %41 = load %"alloc::vec::Vec<u32>"*, %"alloc::vec::Vec<u32>"** %40, align 8, !nonnull !2
; invoke core::fmt::ArgumentV1::new
  %42 = invoke { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17hc350544b00c9b7e5E(%"alloc::vec::Vec<u32>"* noalias readonly align 8 dereferenceable(24) %41, i1 (%"alloc::vec::Vec<u32>"*, %"core::fmt::Formatter"*)* nonnull @"_ZN61_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e5d14a37a174f54E")
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %43 = extractvalue { i8*, i8* } %42, 0
  %44 = extractvalue { i8*, i8* } %42, 1
  %45 = bitcast [1 x { i8*, i8* }]* %_55 to { i8*, i8* }*
  %46 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %45, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = bitcast [1 x { i8*, i8* }]* %_55 to [0 x { i8*, i8* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h38246756a055f81bE(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(48) %_48, [0 x { [0 x i8]*, i64 }]* noalias nonnull readonly align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @57 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i8* }]* noalias nonnull readonly align 8 %48, i64 1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h9ffa18f634745d36E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_48)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
; call core::ptr::real_drop_in_place
  call void @_ZN4core3ptr18real_drop_in_place17h29e642ed75c3b294E(%"alloc::vec::Vec<u32>"* align 8 dereferenceable(24) %module_masses)
  br label %bb20

bb20:                                             ; preds = %bb19
  ret void

cleanup:                                          ; preds = %bb18, %bb17, %bb16, %bb15, %bb14, %bb13, %bb12, %bb11, %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb3, %bb2
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  %51 = extractvalue { i8*, i32 } %49, 1
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %bb4
}

; main::main::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hf400e6756b312ba9E"(%"main::{{closure}}"* nonnull align 1 %arg0, i32* noalias readonly align 4 dereferenceable(4) %module_mass) unnamed_addr #1 {
start:
  %0 = load i32, i32* %module_mass, align 4
; call main::calc_fuel_required
  %1 = call i32 @_ZN4main18calc_fuel_required17h8fad734204915b0bE(i32 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; main::main::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17h86dc7881fee4ffe5E"(%"main::{{closure}}.0"* nonnull align 1 %arg0, i32 %acc, i32* noalias readonly align 4 dereferenceable(4) %module_mass) unnamed_addr #1 {
start:
  %0 = load i32, i32* %module_mass, align 4
; call main::calc_fuel_required
  %1 = call i32 @_ZN4main18calc_fuel_required17h8fad734204915b0bE(i32 %0)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %acc, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  %5 = call i1 @llvm.expect.i1(i1 %4, i1 false)
  br i1 %5, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %3

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.j to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; core::slice::slice_index_overflow_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice25slice_index_overflow_fail17h47e2c0d97a57b1aeE() unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #4

; std::fs::OpenOptions::_open
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs11OpenOptions5_open17h65996290dbdd0304E(%"core::result::Result<std::fs::File, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), %"std::fs::OpenOptions"* noalias readonly align 4 dereferenceable(16), %"std::path::Path"* noalias nonnull readonly align 1, i64) unnamed_addr #1

; std::fs::OpenOptions::new
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs11OpenOptions3new17hbba6b28e76992d75E(%"std::fs::OpenOptions"* noalias nocapture sret dereferenceable(16)) unnamed_addr #1

; std::fs::OpenOptions::read
; Function Attrs: nonlazybind uwtable
declare align 4 dereferenceable(16) %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions4read17h401e9f795c3884e9E(%"std::fs::OpenOptions"* align 4 dereferenceable(16), i1 zeroext) unnamed_addr #1

; std::io::error::Error::kind
; Function Attrs: nonlazybind uwtable
declare i8 @_ZN3std2io5error5Error4kind17hd7469582a743f280E(%"std::io::error::Error"* noalias readonly align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; core::str::from_utf8
; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str9from_utf817h9b0af2ab335bed95E(%"core::result::Result<&str, core::str::Utf8Error>"* noalias nocapture sret dereferenceable(24), [0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #1

; std::io::error::Error::_new
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5error5Error4_new17h561ec74ed0654576E(%"std::io::error::Error"* noalias nocapture sret dereferenceable(16), i8, {}* noalias nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24)) unnamed_addr #1

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h9cd44eb8664c0278E({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for str>::as_ref
; Function Attrs: nonlazybind uwtable
declare { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h7704cc2d80101a12E"([0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #1

; std::sys::unix::memchr::memchr
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys4unix6memchr6memchr17h00117751dbc1a40aE(i8, [0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #6

; std::panicking::rust_panic_with_hook
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std9panicking20rust_panic_with_hook17hb12bd3736bcb7a4fE({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64* noalias readonly align 8 dereferenceable_or_null(48), { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24)) unnamed_addr #7

; <str as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h354afe01c03b7397E"([0 x i8]* noalias nonnull readonly align 1, i64, %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) #9

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h322450b91db0e87eE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

; core::fmt::Formatter::debug_list
; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17hde557362e6b33b2eE(%"core::fmt::builders::DebugList"* noalias nocapture sret dereferenceable(16), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::builders::DebugList::finish
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h796fd2901b76fbc1E(%"core::fmt::builders::DebugList"* align 8 dereferenceable(16)) unnamed_addr #1

; core::fmt::Formatter::debug_lower_hex
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h9d614193026a11b5E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17hca6f6aba863375f0E"(i32* noalias readonly align 4 dereferenceable(4), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::Formatter::debug_upper_hex
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hb3a17c3af21433f0E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h6ae37a85cb64b340E"(i32* noalias readonly align 4 dereferenceable(4), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h63c921613965607cE"(i32* noalias readonly align 4 dereferenceable(4), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h2752b1e42eb2a06bE"(i64* noalias readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h1f86146cb8056ecbE"(i64* noalias readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hd894ce7814f1f2b4E"(i64* noalias readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::fmt::builders::DebugList::entry
; Function Attrs: nonlazybind uwtable
declare align 8 dereferenceable(16) %"core::fmt::builders::DebugList"* @_ZN4core3fmt8builders9DebugList5entry17ha53c3d0af4f15703E(%"core::fmt::builders::DebugList"* align 8 dereferenceable(16), {}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; <std::sys::unix::fd::FileDesc as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$std..sys..unix..fd..FileDesc$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdfe1be64d95c52f8E"(i32* align 4 dereferenceable(4)) unnamed_addr #1

; <std::io::Guard as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca46b82eb547a0f5E"({ i64*, i64 }* align 8 dereferenceable(16)) unnamed_addr #1

; core::num::<impl core::str::FromStr for u32>::from_str
; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN4core3num52_$LT$impl$u20$core..str..FromStr$u20$for$u20$u32$GT$8from_str17h60a47ebb9a2f2f32E"([0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #1

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17hc451bcd344c84b82E([0 x i8]* noalias nonnull readonly align 1, i64, i64, i64) unnamed_addr #2

; <core::fmt::Arguments as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h4f1f6e031efe982fE"(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h3d735cbb4b6fcb5bE(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48), { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24)) unnamed_addr #2

; <core::alloc::LayoutErr as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN59_$LT$core..alloc..LayoutErr$u20$as$u20$core..fmt..Debug$GT$3fmt17h72612c632f535bfdE"(%"core::alloc::LayoutErr"* noalias nonnull readonly align 1, %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; std::error::<impl core::convert::From<&str> for alloc::boxed::Box<dyn +std::error::Error+core::marker::Sync+core::marker::Send>>::from
; Function Attrs: nonlazybind uwtable
declare { {}*, [3 x i64]* } @"_ZN3std5error166_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$$u2b$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$4from17he95dbf56c88e7dc7E"([0 x i8]* noalias nonnull readonly align 1, i64) unnamed_addr #1

; <std::path::Path as core::convert::AsRef<std::path::Path>>::as_ref
; Function Attrs: nonlazybind uwtable
declare { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17ha521b5c71ef91357E"(%"std::path::Path"* noalias nonnull readonly align 1, i64) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #4

; alloc::alloc::handle_alloc_error
; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17hb9c13f9443bbacf8E(i64, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #4

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h9b2f61b54553add9E() unnamed_addr #7

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17he8b20ee4e0845b02E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24), i64, i64) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @memcmp(i8*, i8*, i64) unnamed_addr #4

; <std::fs::File as std::io::Read>::read
; Function Attrs: nonlazybind uwtable
declare void @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h284b040ab50ae70dE"(%"core::result::Result<usize, std::io::error::Error>"* noalias nocapture sret dereferenceable(24), i32* align 4 dereferenceable(4), [0 x i8]* nonnull align 1, i64) unnamed_addr #1

; core::slice::slice_index_order_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice22slice_index_order_fail17h5de4352b6c3298ebE(i64, i64) unnamed_addr #2

; core::slice::slice_index_len_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice20slice_index_len_fail17h79714f5adb99d7b4E(i64, i64) unnamed_addr #2

; std::path::Path::display
; Function Attrs: nonlazybind uwtable
declare { i8*, i64 } @_ZN3std4path4Path7display17h71ae64b15c0d4f3fE(%"std::path::Path"* noalias nonnull readonly align 1, i64) unnamed_addr #1

; <std::io::error::Error as std::error::Error>::description
; Function Attrs: nonlazybind uwtable
declare { [0 x i8]*, i64 } @"_ZN59_$LT$std..io..error..Error$u20$as$u20$std..error..Error$GT$11description17hbcbdc96ab85f1665E"(%"std::io::error::Error"* noalias readonly align 8 dereferenceable(16)) unnamed_addr #1

; <std::path::Display as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hfb352f05fd54497eE"({ i8*, i64 }* noalias readonly align 8 dereferenceable(16), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #1

; std::panicking::begin_panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std9panicking15begin_panic_fmt17h1dac648c5ae2917bE(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48), { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24)) unnamed_addr #2

; <core::num::ParseIntError as std::error::Error>::description
; Function Attrs: nonlazybind uwtable
declare { [0 x i8]*, i64 } @"_ZN62_$LT$core..num..ParseIntError$u20$as$u20$std..error..Error$GT$11description17hee7ba61bea6f8d5aE"(i8* noalias readonly align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #8

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h9ffa18f634745d36E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32, i8**) unnamed_addr #11 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17hf023860a8fd403c2E(void ()* @_ZN4main4main17h6b07ac6c6f06cdd6E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { nonlazybind "target-cpu"="x86-64" }
attributes #12 = { noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIE Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{i64 0, i64 2}
!5 = !{i8 0, i8 18}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17h0b2605aae0844b27E: %value.0"}
!8 = distinct !{!8, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17h0b2605aae0844b27E"}
!9 = distinct !{!9, !8, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17h0b2605aae0844b27E: %value.1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17hc06b40f219084a03E: argument 0"}
!12 = distinct !{!12, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17hc06b40f219084a03E"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17hc06b40f219084a03E: %value"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17hd6c9db8ffe9f035aE: %value.0"}
!17 = distinct !{!17, !"_ZN4core3mem21ManuallyDrop$LT$T$GT$3new17hd6c9db8ffe9f035aE"}
!18 = !{i64 1, i64 0}
!19 = !{i8 0, i8 3}
!20 = !{i64 0, i64 3}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E: %self.0"}
!23 = distinct !{!23, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E: %self.0"}
!26 = distinct !{!26, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E: %self.0"}
!29 = distinct !{!29, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E"}
!30 = !{i32 0, i32 2}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E: %self.0"}
!33 = distinct !{!33, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E: %self.0"}
!36 = distinct !{!36, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17h674bd0e735c7c0e1E"}
!37 = !{i32 0, i32 1114112}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN4core5slice13Iter$LT$T$GT$10make_slice17hd9f412f269cce8ecE: %self"}
!40 = distinct !{!40, !"_ZN4core5slice13Iter$LT$T$GT$10make_slice17hd9f412f269cce8ecE"}
!41 = !{i32 0, i32 1114113}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E: %self"}
!44 = distinct !{!44, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E: %self"}
!47 = distinct !{!47, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E: %self"}
!50 = distinct !{!50, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17ha5ce006a0aa16542E"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E: %self"}
!53 = distinct !{!53, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3cap17h585caa4305ba8ad9E"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hdc01d5a017329e76E: %x.0"}
!56 = distinct !{!56, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hdc01d5a017329e76E"}
!57 = !{i8 0, i8 5}
