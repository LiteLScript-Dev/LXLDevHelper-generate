import com.google.gson.Gson

class HandleJson {
    /**
     * @param type lua/js
     *
     */
    fun getLuaCode(json: String): String {
        val gson = Gson()
        val jsonObject = gson.fromJson(json, JsonData::class.java)
        val lua = ComeToLua(jsonObject.ClassName)
        lua.setDescription("${jsonObject.ClassName}对象")
        jsonObject.AllFunc.forEach { it ->
            val params = LuaFunctionParams()
            it.Params.forEach { its ->
                params.addParam(its.ParamName, its.ParamType, its.Description)
            }
            lua.addStaticFunction(
                it.FuncName,
                it.Description,
                params.getParams(),
                params.getParamList(),
                "boolean",
                "wuw"
            )
        }
        return lua.getData()
    }
}