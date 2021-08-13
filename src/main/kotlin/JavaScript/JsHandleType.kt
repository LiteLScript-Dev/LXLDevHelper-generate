package JavaScript

import NoneFunction
import ReturnParams
import com.google.gson.Gson

object JsHandleType {

    fun handleFunction(param: String, type: String, paramDesc: String): ReturnParams {
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
            JsTemplate.getFunctionParam(param, "($field)${json.func.returnType}", paramDesc), param
        )
    }

    fun handleParamArray(param: String, type: String, paramDesc: String): ReturnParams {
        val msg = type.substring("ParamArray@".length)
        return ReturnParams(
            JsTemplate.getFunctionParam(param, "...$msg", paramDesc), "..."
        )
    }

    fun handleArray(param: String, type: String, paramDesc: String): ReturnParams {
        val msg = type.substring("Array@".length)
        return ReturnParams(
            JsTemplate.getFunctionParam(param, "$msg[]", paramDesc), param
        )
    }
}