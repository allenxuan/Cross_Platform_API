package com.allenxuan.xuanyihuang.cross_platform_api_android

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.widget.EditText
import android.widget.TextView
import com.allenxuan.xuanyihuang.cross_platform_api.android.*
import com.allenxuan.xuanyihuang.cross_platform_lib.SDK
import java.math.BigInteger

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

        //### primitives start ###
        apiCenter.setUint64(BigInteger("123456"))
        val a_unit64 = apiCenter.unit64.toLong()

        apiCenter.float = 123.4f
        val a_float = apiCenter.float

        apiCenter.bool = true
        val a_bool = apiCenter.bool
        //### primitives end ###

        //### string start ###
        apiCenter.string = "abc"
        val a_string = apiCenter.string
        //### string end ###

        //### containers start ###
        val strVec = StrVec()
        apiCenter.stringVector = strVec
        val a_str_vec = apiCenter.stringVector

        val dataVec = DataVec()
        apiCenter.setDataVector(dataVec)
        val a_data_vec = apiCenter.dataVectorRef

        val dataSharedPtrVec = DataSharePtrVec()
        apiCenter.setDataSharedPtrVector(dataSharedPtrVec)
        val a_data_shared_ptr_vec = apiCenter.dataSharedPtrVector

        val dataMap = DataMap()
        apiCenter.setDataMap(dataMap)
        val a_data_map = apiCenter.dataMapRef

        val dataSharedPtrMap = DataSharePtrMap()
        apiCenter.setDataSharedPtrMap(dataSharedPtrMap)
        val a_data_shared_ptr_map = apiCenter.dataSharedPtrMap

        val dataSharedPtrUnorderedMap = DataSharePtrUnorderedMap()
        apiCenter.setDataSharedPtrUnorderedMap(dataSharedPtrUnorderedMap)
        val a_data_shared_ptr_unordered_map = apiCenter.dataSharedPtrUnorderedMap

        val dataPair = DataPair()
        apiCenter.setDataPair(dataPair)
        val a_data_pair = apiCenter.dataPairRef

        val dataSharedPtrPair = DataSharedPtrPair()
        apiCenter.setDataSharedPtrPair(dataSharedPtrPair)
        val a_data_shared_ptr_pair = apiCenter.dataSharedPtrPair
        //### containers end ###

        //### polymorphism start
        val data = Data().also {
            it.a_data = "a_data"
        }
        val dataChild = DataChild().also {
            it.a_data = "a_data"
            it.a_child_data = true
        }
        val dataGrandChild = DataGrandChild().also {
            it.a_data = "a_data"
            it.a_child_data = true
            it.a_grand_child_data = 5.6f
        }
        a_data_shared_ptr_vec.add(data)
        a_data_shared_ptr_vec.add(dataChild)
        a_data_shared_ptr_vec.add(dataGrandChild)
        val dc: DataChild? = DataChild.DynamicCast(a_data_shared_ptr_vec[1])
        assert(dc != null)
        assert(dc?.a_data == "a_data")
        assert(dc?.a_child_data == true)
        val dgc : DataGrandChild? = DataGrandChild.DynamicCast(a_data_shared_ptr_vec[2])
        assert(dgc != null)
        assert(dgc?.a_data == "a_data")
        assert(dgc?.a_child_data == true)
        assert(dgc?.a_grand_child_data == 5.6f)
        //### polymorphism end

        //### enums start
        data.type = DataType.kType2
        dataChild.type = DataType.kType3
        //### enums end
    }

    override fun onDestroy() {
        super.onDestroy()
        apiCenter.unRegisterModelCallback(modelCallback)
    }
}