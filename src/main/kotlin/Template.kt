object LuaTemplate {
    fun getClassBase(className: String, field: String, description: String): String {
        return """---@class $className $description $field $className = {}"""
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

object JSTemplate {
    fun getClass(className: String, field: String, description: String, function: String): String {
        return "/**\n" +
                " * $description\n" +
                " */ \n" +
                "class $className {\n" +
                "  $field  \n" +
                "  $function  \n" +
                "\n\n\n}\n"
    }

    fun getStaticValue(name: String, type: String, description: String): String {
        return "/**\n" +
                " * $description\n" +
                " * @type $type\n" +
                " */ \n" +
                " $name;"
    }
    fun getSFunction(function: String,
                    description: String,
                    params: String,
                    paramList: String,
                    type: String,
                    returnDesc: String):String{
        return "/**\n" +
                " * $description" +
                params +
                " * @returns {$type} $returnDesc\n" +
                " */\n" +
                " static $function($paramList)"
    }
    fun getDFunction(function: String,
                     description: String,
                     params: String,
                     paramList: String,
                     type: String,
                     returnDesc: String):String{
        return "/**\n" +
                " * $description" +
                params +
                " * @returns {$type} $returnDesc\n" +
                " */\n" +
                " $function($paramList)"
    }
    fun getFunctionParam(param: String, type: String, paramDesc: String): String {
        return " * @param {$type} $param $paramDesc\n"
    }
}
