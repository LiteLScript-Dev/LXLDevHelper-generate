package JavaScript

import AllClass
import Utils.ConversionType

class JsGenerate constructor(className: String) {
    private val classname: String = className
    private var description: String = ""
    private var staticValues = mutableListOf<String>()
    private var staticFunctions = mutableListOf<String>()

    fun setDescription(description: String) {
        this.description = description
    }

    fun addStaticValue(name: String, type: String, description: String) {
        val tem = JsTemplate.getStaticValue(name, type, description)
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
        val tem = JsTemplate.getSFunction(function, description, params, paramList, type, returnDesc)
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
        val tem = JsTemplate.getDFunction(function, description, params, paramList, type, returnDesc)
        staticFunctions.add(tem)
    }

    fun getContent(OnlyFunction: Boolean): String {
        var field = "\n"
        this.staticValues.forEach { it ->
            field += it + "\n"
        }
        var func = "\n"
        this.staticFunctions.forEach { it ->
            func = func + "\n\n" + it
        }
        return if (OnlyFunction) {
            field + "\n" + ConversionType().Js(func.replace("static","function"))
        } else {
            JsTemplate.getClass(this.classname, field, this.description, ConversionType().Js(func))
        }
    }

    fun makeClass( functions: String, classInfo: AllClass): String {
        return JsTemplate.getClass(classInfo.className, "", classInfo.description, ConversionType().Js(functions))
    }

}