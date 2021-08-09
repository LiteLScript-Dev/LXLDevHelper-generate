class ComeToJavaScript constructor(className: String) {
    private val classname: String = className
    private var description: String = ""
    private var staticValues = mutableListOf<String>()
    private var staticFunctions = mutableListOf<String>()

    fun setDescription(description: String) {
        this.description = description
    }

    fun addStaticValue(name: String, type: String, description: String) {
        val tem = JSTemplate.getStaticValue(name, type, description)
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
        val tem = JSTemplate.getSFunction(function, description, params, paramList, type, returnDesc)
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
        val tem = JSTemplate.getDFunction(function, description, params, paramList, type, returnDesc)
        staticFunctions.add(tem)
    }

    fun getData(): String {
        var field = "\n"
        this.staticValues.forEach { it ->
            field += it + "\n"
        }
        var func = "\n"
        this.staticFunctions.forEach { it ->
            func = func + "\n\n" + it
        }
        val base = JSTemplate.getClass(this.classname, field, this.description, func)
        return base
    }

}

class JSFunctionParams {
    private var staticParams = mutableListOf<String>()
    private var staticParamList = mutableListOf<String>()
    fun addParam(param: String, type: String, paramDesc: String) {
        val tem = JSTemplate.getFunctionParam(param, type, paramDesc)
        this.staticParams.add(tem)
        this.staticParamList.add(param)
    }

    fun getParams(): String {
        var field = "\n"
        this.staticParams.forEach { it ->
            field += it
        }
        return field
    }

    fun getParamList(): String {
        var field = ""
        this.staticParamList.forEach { it ->
            if (field == "") {
                field = it
            } else {
                field = "$field,$it"
            }
        }
        return field
    }
}