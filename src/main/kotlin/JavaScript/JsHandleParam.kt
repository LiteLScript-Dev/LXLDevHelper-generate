package JavaScript


import ReturnParams

class JsHandleParam {
    fun get(param: String, type: String, paramDesc: String, Optional: Boolean): ReturnParams {
        val res = when {

            type.contains("Function@") -> JsHandleType.handleFunction(param, type, paramDesc)
            type.contains("ParamArray@") -> JsHandleType.handleParamArray(param, type, paramDesc)
            type.contains("Array@") -> JsHandleType.handleArray(param, type, paramDesc)

            else -> ReturnParams(
                if (Optional) {
                    JsTemplate.getFunctionParam("$param?", type, paramDesc)
                } else {
                    JsTemplate.getFunctionParam(param, type, paramDesc)
                }, param
            )
        }
        return res
    }
}