import Data.ClassData
import JavaScript.JsFunctionParams
import JavaScript.JsGenerate
import Lua.LuaGenerate
import Lua.LuaFunctionParams

class HandleClass {

    fun getLuaCode(luaClass: AllClass): String {
        val lua = LuaGenerate(luaClass.className)
        lua.setDescription(luaClass.description)

        luaClass.allFunc.forEach { it ->
            val param = LuaFunctionParams()
            it.params.forEach { its ->
                param.addParam(its.paramName, its.paramType, its.description, its.optional)
            }
            if (luaClass.className == "Global") {
                lua.addGlobalFunction(
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
            lua.getContent(true)
        } else {
            lua.getContent(false)
        }
    }


    fun getJSCode(jsClass: AllClass): String {
        val js = JsGenerate(jsClass.className)
        js.setDescription(jsClass.description)

        jsClass.allFunc.forEach { it ->
            val param = JsFunctionParams()
            it.params.forEach { _it ->
                param.addParam(_it.paramName, _it.paramType, _it.description, _it.optional)
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

        return when (jsClass.className) {
            "Global" -> js.getContent(true,jsClass.className)
            "mc" -> {
                ClassData.classInfo = jsClass
                ClassData.classCache = ClassData.classCache + js.getContent(true,jsClass.className)
                return "no"
            }
            else -> {
                js.getContent(false,jsClass.className)
            }
        }


    }
}