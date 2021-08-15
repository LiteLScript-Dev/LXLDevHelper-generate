package Lua

import NoneFunction
import ReturnParams
import com.google.gson.Gson

object LuaHandleType {

    fun handleFunction(
        isReturn: Boolean,
        param: String,
        type: String,
        paramDesc: String,
        Optional: Boolean
    ): ReturnParams {
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
        return if (isReturn) {
            ReturnParams("fun($field):${json.func.returnType}", "")
        } else {
            ReturnParams(
                if (Optional) {
                    LuaTemplate.getFunctionParam("$param?", "fun($field):${json.func.returnType}", paramDesc)
                } else {
                    LuaTemplate.getFunctionParam(param, "fun($field):${json.func.returnType}", paramDesc)
                }, param
            )
        }
    }

    fun handleParamArray(param: String, type: String, paramDesc: String, optional: Boolean): ReturnParams {
        val msg = type.substring("ParamArray@".length)
        return ReturnParams(
            "---@vararg $msg\n", "..."
        )
    }

    fun handleArray(
        isReturn: Boolean,
        param: String,
        type: String,
        paramDesc: String,
        optional: Boolean
    ): ReturnParams {
        val msg = type.substring("Array@".length)
        return if (isReturn) {
            ReturnParams("$msg[]", "")
        } else {
            ReturnParams(
                LuaTemplate.getFunctionParam(param, "$msg[]", paramDesc), param
            )
        }
    }

    fun handleQuotes(param: String, type: String, paramDesc: String, optional: Boolean): ReturnParams {
        return ReturnParams(
            LuaTemplate.getFunctionParam(param, type.replace("\"", "\"\""), paramDesc), param
        )
    }

    fun handleKV(isReturn: Boolean, param: String, type: String, paramDesc: String, optional: Boolean): ReturnParams {
        val msg = type.substring("Object@".length)
        return if (isReturn) {
            ReturnParams("table$msg[]", "")
        } else {
            ReturnParams(
                LuaTemplate.getFunctionParam(param, "table$msg", paramDesc), param
            )
        }
    }
}