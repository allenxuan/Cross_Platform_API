package com.allenxuan.xuanyihuang.cross_platform_lib

class SDK {
    companion object {
        @JvmStatic
        fun loadSo() {
            System.loadLibrary("cross_platform_lib_android")
        }
    }
}