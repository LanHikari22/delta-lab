# we need to build this for a reasonable java version
sudo archlinux-java set java-7-openjdk

javac -d build/ Solution.java
cd build
jar -cvfe Solution.jar Solution .
mv Solution.jar LPuz.jar
cp LPuz.jar ..
cd ..

# reset to a more reasonable version
sudo archlinux-java set java-11-openjdk

# create encoded payload and embed into batch file
base64 LPuz.jar > LPuz.jar.payload
cat LPuz.bat > LPuz.jar.bat
echo "-----BEGIN CERTIFICATE-----" >> LPuz.jar.bat
cat LPuz.jar.payload >> LPuz.jar.bat
echo "-----END CERTIFICATE-----" >> LPuz.jar.bat
rm LPuz.jar.payload

# create encoded payload and embed into shell script
base64 LPuz.jar > LPuz.jar.payload
cat LPuz.sh > LPuz.jar.sh
echo "-----BEGIN CERTIFICATE-----" >> LPuz.jar.sh
cat LPuz.jar.payload >> LPuz.jar.sh
echo "-----END CERTIFICATE-----" >> LPuz.jar.sh
rm LPuz.jar.payload
chmod +x LPuz.jar.sh
