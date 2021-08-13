package Lua

import NoneFunction
import ReturnParams
import com.google.gson.Gson

object LuaHandleType {

    fun handleFunction(param: String, type: String, paramDesc: String, Optional: Boolean): ReturnParams {
        val msg = type.substring("Function@".length)
        val json = Gson().fromJson(msg, NoneFunction::class.java)
        var field = ""
        json.func.params.forEach { it ->
            val tem = "${it.paramName}:${it.paramType}"
            field = if (field == "") {
                tem
            } else {
                "$field,$tem"
            }
        }
        return ReturnParams(
            if (Optional) {
                LuaTemplate.getFunctionParam("$param?", "fun($field):${json.func.returnType}", paramDesc)
            } else {
                LuaTemplate.getFunctionParam(param, "fun($field):${json.func.returnType}", paramDesc)
            }, param
        )
    }

    fun handleParamArray(param: String, type: String, paramDesc: String, optional: Boolean): ReturnParams {
        val msg = type.substring("ParamArray@".length)
        return ReturnParams(
            "---@vararg $msg\n", "..."
        )
    }

    fun handleArray(param: String, type: String, paramDesc: String, optional: Boolean): ReturnParams {
        val msg = type.substring("Array@".length)
        return ReturnParams(
            LuaTemplate.getFunctionParam(param, "$msg[]", paramDesc), param
        )
    }

    fun handleQuotes(param: String, type: String, paramDesc: String, optional: Boolean): ReturnParams {
        return ReturnParams(
            LuaTemplate.getFunctionParam(param, type.replace("\"", "\"\""), paramDesc), param
        )
    }
}