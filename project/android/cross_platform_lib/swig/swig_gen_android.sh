#!/bin/bash

swig_i="android_api.i"
swig_root_dir="gen"
swig_cpp_out_dir="gen/cpp"
swig_cpp_out_file_name="cross_platform_api_android.cpp"
swig_java_out_dir="gen/java/com/allenxuan/xuanyihuang/cross_platform_api/android"
android_package="com.allenxuan.xuanyihuang.cross_platform_api.android"

swig_include_dir="-I../../../../include"
swig_include_dir="${swig_include_dir} -I./"

echo $swig_include_dir

rm -rf ${swig_root_dir}
mkdir -p ${swig_cpp_out_dir}
mkdir -p ${swig_java_out_dir}

swig -c++ -java \
  -doxygen \
  ${swig_include_dir} \
  -package ${android_package} \
  -outdir ${swig_java_out_dir} \
  -o "${swig_cpp_out_dir}/${swig_cpp_out_file_name}" \
  ${swig_i}
