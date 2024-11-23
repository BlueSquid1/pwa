cd www ; bazel build //:tar_html; cd ..
cd www ; archive=(`bazel cquery :tar_html --output files 2> /dev/null`) ; cd ..
mkdir -p ./ios/archive
cp -f ./www/${archive} ./ios/archive/tar_html.tar.gz
cd ios ; bazel sync --only=www ; cd ..
cd ios ; bazel build //:iOSApp ; cd ..
cd ios ; bazel run //:iOSApp ; cd ..