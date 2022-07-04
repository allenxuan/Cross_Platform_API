#!/bin/bash

swig_i="python_api.i"
swig_root_dir="gen"
swig_cpp_out_dir="gen/cpp"
swig_cpp_out_file_name="cross_platform_api_python.cpp"
swig_python_out_dir="gen/python"

swig_include_dir="-I../../../../include"
swig_include_dir="${swig_include_dir} -I./"

echo $swig_include_dir

rm -rf ${swig_root_dir}
mkdir -p ${swig_cpp_out_dir}
mkdir -p ${swig_python_out_dir}

swig -c++ -python \
  -py3 \
  -DPY3 \
  -doxygen \
  ${swig_include_dir} \
  -outdir ${swig_python_out_dir} \
  -o "${swig_cpp_out_dir}/${swig_cpp_out_file_name}" \
  ${swig_i}
