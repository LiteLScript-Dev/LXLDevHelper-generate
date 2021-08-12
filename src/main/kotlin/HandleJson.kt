import com.google.gson.Gson
import java.util.*

class HandleJson {

    fun getLuaCode(luaClass: AllClass): String {
        val lua = ComeToLua(luaClass.className)
        lua.setDescription(luaClass.description)

        luaClass.allFunc.forEach { it ->
            val param = LuaFunctionParams()
            it.params.forEach { its ->
                param.addParam(its.paramName, its.paramType, its.description, its.optional)
            }
            if (luaClass.className == "Global") {
                lua.addFunction(
                    it.funcName,
                    it.description,
                    param.getParams(),
                    param.getParamList(),
                    it.returnType,
                    it.returnDescription
                )
            } else {
                if (it.isStatic) {
                    lua.addStaticFunction(
                        it.funcName,
                        it.description,
                        param.getParams(),
                        param.getParamList(),
                        it.returnType,
                        it.returnDescription
                    )
                } else {
                    lua.addDynamicFunction(
                        it.funcName,
                        it.description,
                        param.getParams(),
                        param.getParamList(),
                        it.returnType,
                        it.returnDescription
                    )
                }
            }
        }
        luaClass.allProperty.forEach { it ->
            lua.addStaticValue(it.propertyName, it.propertyType, it.propertyType)
        }
        return if (luaClass.className == "Global") {
            lua.getData(true)
        } else {
            lua.getData(false)
        }
    }


    fun getJSCode(jsClass: AllClass): String {
        val js = ComeToJavaScript(jsClass.className)
        js.setDescription(jsClass.description)

        jsClass.allFunc.forEach { it ->
            val param = JSFunctionParams()
            it.params.forEach { _it ->
                param.addParam(_it.paramName, _it.paramType, _it.description)
            }
            if (jsClass.className == "Global") {
                js.addStaticFunction(
                    it.funcName,
                    it.description,
                    param.getParams(),
                    param.getParamList(),
                    it.returnType,
                    it.returnDescription
                )
            } else {
                if (it.isStatic) {
                    js.addStaticFunction(
                        it.funcName,
                        it.description,
                        param.getParams(),
                        param.getParamList(),
                        it.returnType,
                        it.returnDescription
                    )
                } else {
                    js.addDynamicFunction(
                        it.funcName,
                        it.description,
                        param.getParams(),
                        param.getParamList(),
                        it.returnType,
                        it.returnDescription
                    )

                }
            }
        }


        jsClass.allProperty.forEach { it ->
            js.addStaticValue(it.propertyName, it.propertyType, it.description)
        }

        return if (jsClass.className == "Global") {
            js.getData(true)
        } else {
            js.getData(false)
        }
    }

    fun HandleLuaType(data: String): String {
        val map = mutableMapOf<String, String>()
        map["String"] = "string"
        map["Boolean"] = "boolean"
        map["\"Array\""] = "\"{}\""
        map["Null"] = "nil"
        map["Integer"] = "number"
        map["Any"] = "any"
        var datas = data
        map.forEach { (t, u) ->
            datas = datas.replace(t, u)
        }
        return datas

    }

    fun HandleJsType(data: String): String {
        val map = mutableMapOf<String, String>()
        map["String"] = "string"
        map["Boolean"] = "boolean"
        map["\"Array\""] = "\"{}\""
        map["Null"] = "null"
        map["Integer"] = "number"
        map["Any"] = "any"
        var datas = data
        map.forEach { (t, u) ->
            datas = datas.replace(t, u)
        }
        return datas
    }
}