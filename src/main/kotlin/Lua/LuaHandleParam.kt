package Lua

import ReturnParams

class LuaHandleParam {
    fun get(param: String, type: String, paramDesc: String, Optional: Boolean, isReturn: Boolean): ReturnParams {
        val res = when {


            type.contains("Function@") -> LuaHandleType.handleFunction(isReturn, param, type, paramDesc, Optional)
            type.contains("ParamArray@") -> LuaHandleType.handleParamArray(param, type, paramDesc, Optional)
            type.contains("Object@") -> LuaHandleType.handleKV(isReturn, param, type, paramDesc, Optional)
            type.contains("Array@") -> LuaHandleType.handleArray(isReturn, param, type, paramDesc, Optional)
            type.contains("\"") -> LuaHandleType.handleQuotes(param, type, paramDesc, Optional)


            else -> ReturnParams(
                if (isReturn) {
                    type
                } else {
                    if (Optional) {
                        LuaTemplate.getFunctionParam("$param?", type, paramDesc)
                    } else {
                        LuaTemplate.getFunctionParam(param, type, paramDesc)
                    }
                }, param
            )
        }
        return res
    }


}


