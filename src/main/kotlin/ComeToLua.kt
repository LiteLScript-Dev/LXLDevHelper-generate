import com.google.gson.Gson

class ComeToLua constructor(className: String) {
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
            type,
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
            type,
            returnDesc.replace("\n", "\n---")
        )
        staticFunctions.add(tem)
    }

    fun addFunction(
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
            type,
            returnDesc.replace("\n", "\n---")
        )
        staticFunctions.add(tem)
    }

    fun getData(OnlyFunction: Boolean): String {
        var field = "\n"
        this.staticValues.forEach { it ->
            field += it
        }
        val base = LuaTemplate.getClassBase(this.classname, field, this.description)
        var func = "\n"
        this.staticFunctions.forEach { it ->
            func = func + "\n\n" + it
        }
        return if (OnlyFunction) {
            func
        } else {
            base + func
        }
    }
}

class LuaFunctionParams {
    private var staticParams = mutableListOf<String>()
    private var staticParamList = mutableListOf<String>()
    fun addParam(param: String, type: String, paramDesc: String, Optional: Boolean) {
        if (type.contains("Function@")) {
            val msg = type.substring("Function@".length)
            val json = Gson().fromJson(msg, NoneFunction::class.java)
            var field = ""
            json.func.params.forEach { it ->
                val tem = "${it.paramName}:${it.paramType}"
                field = if (field == "") {
                    tem
                } else {
                    "$field,$tem"
                }
            }
            val tem = LuaTemplate.getNoneFunctionParam(param, field, json.func.returnType, paramDesc);
            this.staticParams.add(tem)
            this.staticParamList.add(param)
        } else {
           val typeC = if(type.contains("\"")){
               "\"$type\""
           }else{
               type
           }
            val tem: String = if (Optional) {
                LuaTemplate.getFunctionParam("$param?", typeC, paramDesc)
            } else {
                LuaTemplate.getFunctionParam(param, typeC, paramDesc)
            }
            this.staticParams.add(tem)
            this.staticParamList.add(param)
        }

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