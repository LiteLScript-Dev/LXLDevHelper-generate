import com.google.gson.Gson
import java.util.*

class HandleJson {

    fun getLuaCode(luaClass: AllClass): String {
        val lua = ComeToLua(luaClass.className)
        lua.setDescription(luaClass.description)

        luaClass.allFunc.forEach { it ->
            val param = LuaFunctionParams()
            it.params.forEach { its ->
                param.addParam(its.paramName, its.paramType, its.description)
            }
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
        luaClass.allProperty.forEach { it ->
            lua.addStaticValue(it.propertyName, it.propertyType, it.propertyType)
        }
        return lua.getData()
    }


    fun getJSCode(jsClass: AllClass): String {
        val js = ComeToJavaScript(jsClass.className)
        js.setDescription(jsClass.description)

        jsClass.allFunc.forEach { it ->
            val param = JSFunctionParams()
            it.params.forEach { _it ->
                param.addParam(_it.paramName, _it.paramType, _it.description)
            }
            js.addStaticFunction(
                it.funcName,
                it.description,
                param.getParams(),
                param.getParamList(),
                it.returnType,
                it.returnDescription
            )
        }


        jsClass.allProperty.forEach { it ->
            js.addStaticValue(it.propertyName,it.propertyType,it.description)
        }

        return js.getData()
    }
}