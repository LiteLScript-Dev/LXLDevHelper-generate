package Lua

import NoneFunction
import com.google.gson.Gson

class LuaFunctionParams {
    private var staticParams = mutableListOf<String>()
    private var staticParamList = mutableListOf<String>()
    fun addParam(param: String, type: String, paramDesc: String, Optional: Boolean) {
        val tem = LuaHandleParam().get(param, type, paramDesc, Optional,false)
        this.staticParams.add(tem.params)
        this.staticParamList.add(tem.list)

    }

    fun getParams(): String {
        var field = "\n"
        this.staticParams.forEach { it ->
            field += it
        }
        return field
    }

    fun getParamList(): String {
        var field = ""
        this.staticParamList.forEach { it ->
            if (field == "") {
                field = it
            } else {
                field = "$field,$it"
            }
        }
        return field
    }
}