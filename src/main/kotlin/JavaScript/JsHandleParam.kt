package JavaScript


import ReturnParams

class JsHandleParam {
    fun get(param: String, type: String, paramDesc: String, Optional: Boolean, isReturn: Boolean): ReturnParams {
        val res = when {

            type.contains("Function@") -> JsHandleType.handleFunction(isReturn,param, type, paramDesc)
            type.contains("ParamArray@") -> JsHandleType.handleParamArray(param, type, paramDesc)
            type.contains("Object@") -> JsHandleType.handleKV(isReturn,param, type, paramDesc)
            type.contains("Array@") -> JsHandleType.handleArray(isReturn,param, type, paramDesc)

            else -> ReturnParams(
                if (isReturn) {
                    type
                } else {
                    if (Optional) {
                        JsTemplate.getFunctionParam("$param?", type, paramDesc)
                    } else {
                        JsTemplate.getFunctionParam(param, type, paramDesc)
                    }
                }, param
            )
        }
        return res
    }
}