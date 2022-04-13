#!/bin/bash

swig_i="ios_api.i"
swig_root_dir="gen"
swig_cpp_out_dir="gen"
swig_cpp_out_file_name="CrossPlatformApi_wrap.mm" #must be this name
swig_oc_out_dir="gen"

swig_include_dir="-I../../../../../../include"
swig_include_dir="${swig_include_dir} -I./"

rm -rf ${swig_root_dir}
mkdir -p ${swig_cpp_out_dir}
mkdir -p ${swig_oc_out_dir}

echo ${swig_include_dir}
echo ${swig_oc_out_dir}
echo "${swig_cpp_out_dir}/${swig_cpp_out_file_name}"
echo ${swig_i}

swig -c++ -objc \
  -doxygen \
  -oc-class-suffix \
  ${swig_include_dir} \
  -outdir ${swig_oc_out_dir} \
  -o "${swig_cpp_out_dir}/${swig_cpp_out_file_name}" \
  ${swig_i}
