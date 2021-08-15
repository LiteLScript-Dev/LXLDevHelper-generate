package Lua

object LuaTemplate {
    fun getClassBase(className: String, field: String, description: String): String {
        return """---$description
            |---@class $className $field $className = {}""".trimMargin()
    }

    fun getStaticValue(name: String, type: String, description: String): String {
        return "---@field $name $type $description\n"
    }

    fun getFunctionParam(param: String, type: String, paramDesc: String): String {
        return "---@param $param $type $paramDesc\n"
    }

    fun getFunction(
        function: String,
        description: String,
        params: String,
        paramList: String,
        type: String,
        returnDesc: String
    ): String {
        return "---$description" +
                params +
                "---@return $type $returnDesc\n" +
                "function $function($paramList)\n" +
                "end"
    }
}