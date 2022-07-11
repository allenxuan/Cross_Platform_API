# About
This is a demonstration of cross-platform sdk project whose core logic consists of C++ code and platform interfaces is generated using SWIG (https://swig.org/).

# Project Structure
```
ProjectRoot
 ├── cmake(common Cmake scripts)
 ├── include(SDK C++ headers)
 │   |── common_layer
 │   |── external_layer
 │   └── internal_layer
 ├── project(SDK multi-platform projects)
 │   |── android
 │   |── ios
 │   |── linux (missing implementaion, use C++ api is enough)
 |   |── mac (missing implementation, like ios project, use OC api is enough)
 │   └── python
 ├── src(SDK C++ Source Files)
 │   |── common_layer
 │   |── external_layer
 |   └── internal_layer
 ├── test(unit test)
 └── third_party
```