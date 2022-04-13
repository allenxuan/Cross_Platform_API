package com.allenxuan.xuanyihuang.cross_platform_api_android

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.widget.EditText
import android.widget.TextView
import com.allenxuan.xuanyihuang.cross_platform_api.android.ApiCenter
import com.allenxuan.xuanyihuang.cross_platform_api.android.Model
import com.allenxuan.xuanyihuang.cross_platform_api.android.ModelCallback
import com.allenxuan.xuanyihuang.cross_platform_lib.SDK

class MainActivity : AppCompatActivity() {
    private var sumIntAndFloatValue: TextView? = null
    private var modelPtrStringValue: TextView? = null
    private var modelSharedPtrStringValue: TextView? = null
    private var inputStringText: EditText? = null
    private var onModelChangedPtrValue: TextView? = null
    private var onModelChangedSharedPtrValue: TextView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        initViews()
        useSdk()
    }

    private fun initViews() {
        sumIntAndFloatValue = findViewById(R.id.sumIntAndFloatValue)
        modelPtrStringValue = findViewById(R.id.modelPtrStringValue)
        modelSharedPtrStringValue = findViewById(R.id.modelSharedPtrStringValue)
        inputStringText = findViewById(R.id.inputStringText)
        inputStringText?.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {
            }

            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
            }

            override fun afterTextChanged(s: Editable?) {
                val string = s?.toString()
                apiCenter.string = if (s?.isNotEmpty() == true) string else "null"
            }
        })
        onModelChangedPtrValue = findViewById(R.id.onModelChangedPtrValue)
        onModelChangedSharedPtrValue = findViewById(R.id.onModelChangedSharedPtrValue)
    }

    private val apiCenter by lazy {
        ApiCenter()
    }

    private val modelCallback by lazy {
        object : ModelCallback() {
            override fun onModelChangedPtr(model_ptr: Model?) {
                onModelChangedPtrValue?.text = model_ptr?.toStringCustom() ?: "null"
            }

            override fun onModelChangedSharedPtr(model_shared_ptr: Model?) {
                onModelChangedSharedPtrValue?.text = model_shared_ptr?.toStringCustom() ?: "null"
            }
        }
    }

    private fun useSdk() {
        SDK.loadSo()
        apiCenter.registerModelCallback(modelCallback)
        sumIntAndFloatValue?.text = apiCenter.sumIntAndFloat().toString()
        modelPtrStringValue?.text = apiCenter.modelPtr.toStringCustom()
        modelSharedPtrStringValue?.text = apiCenter.modelSharedPtr.toStringCustom()
    }

    override fun onDestroy() {
        super.onDestroy()
        apiCenter.unRegisterModelCallback(modelCallback)
    }
}