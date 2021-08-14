package Lua

import Utils.ConversionType


class LuaGenerate constructor(className: String) {
    private val classname: String = className
    private var description: String = ""
    private var staticValues = mutableListOf<String>()
    private var staticFunctions = mutableListOf<String>()

    fun setDescription(description: String) {
        this.description = description
    }
    fun addStaticValue(name: String, type: String, description: String) {
        val tem = LuaTemplate.getStaticValue(name, type, description)
        this.staticValues.add(tem)
    }
    fun addStaticFunction(
        function: String,
        description: String,
        params: String,
        paramList: String,
        type: String,
        returnDesc: String
    ) {
        val desc = description.replace("\n", "\n---")
        val tem = LuaTemplate.getFunction(
            "$classname.$function",
            desc,
            params,
            paramList,
            LuaHandleParam().get("", type, "", Optional = false, isReturn = true).params,
            returnDesc.replace("\n", "\n---")
        )
        staticFunctions.add(tem)
    }
    fun addDynamicFunction(
        function: String,
        description: String,
        params: String,
        paramList: String,
        type: String,
        returnDesc: String
    ) {
        val desc = description.replace("\n", "\n---")
        val tem = LuaTemplate.getFunction(
            "$classname:$function",
            desc,
            params,
            paramList,
            LuaHandleParam().get("", type, "", Optional = false, isReturn = true).params,
            returnDesc.replace("\n", "\n---")
        )
        staticFunctions.add(tem)
    }
    fun addGlobalFunction(
        function: String,
        description: String,
        params: String,
        paramList: String,
        type: String,
        returnDesc: String
    ) {
        val desc = description.replace("\n", "\n---")
        val tem = LuaTemplate.getFunction(
            function,
            desc,
            params,
            paramList,
            LuaHandleParam().get("", type, "", Optional = false, isReturn = true).params,
            returnDesc.replace("\n", "\n---")
        )
        staticFunctions.add(tem)
    }

    fun getContent(OnlyFunction: Boolean): String {
        var field = "\n"
        this.staticValues.forEach { it ->
            field += it
        }
        val base = LuaTemplate.getClassBase(this.classname, field, this.description)
        var func = ""
        this.staticFunctions.forEach { it ->
            func += "\n\n"+ConversionType().Lua(it)
        }
        return if (OnlyFunction) {
            func
        } else {
            base + func
        }
    }
}