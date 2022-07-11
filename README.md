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
 ├── project(SDK multi-platform projects and corresponding application demos)
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

## SDK Layers
**internal_layer**:  
Include core SDK logic, platform layers (Android/iOS/Linux/Mac/Python) cannot access it directly.  

**external_layer**:  
Include interfaces meant to be exposed to platform layers (Android/iOS/Linux/Mac/Python). Use SWIG (https://swig.org/) to generate Java APIs, OC APIs, Python APIs, etc., on top of the C++ header files.  

**common_layer**:  
Include both core SDK logic and interfaces meant to be exposed to platform layers.

# How to run application demos ?
## Android Demo
## iOS Demo
## Python Demo

