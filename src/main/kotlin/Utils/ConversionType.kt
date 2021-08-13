package Utils

class ConversionType {
    fun Lua(data: String): String {
        val map = mutableMapOf<String, String>()
        map["String"] = "string"
        map["Boolean"] = "boolean"
        map["Array"] = "{}"
        map["Null"] = "nil"
        map["Integer"] = "number"
        map["Any"] = "any"
        map["Void"] = "function"
        var datas = data
        map.forEach { (t, u) ->
            datas = datas.replace(t, u)
        }
        return datas
    }
    fun Js(data: String): String {
        val map = mutableMapOf<String, String>()
        map["String"] = "string"
        map["Boolean"] = "boolean"
        map["\"Array\""] = "\"{}\""
        map["Null"] = "null"
        map["Integer"] = "number"
        map["Any"] = "any"
        map["Void"] = "function"
        var datas = data
        map.forEach { (t, u) ->
            datas = datas.replace(t, u)
        }
        return datas
    }
}