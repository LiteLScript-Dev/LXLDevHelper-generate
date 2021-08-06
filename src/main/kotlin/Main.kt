fun main(args: Array<String>) {
    val json = """ {
      "ClassName": "类名称",
      "AllFunc": [
        {
          "FuncName": "Function1",
          "Description": "方法描述",
          "Params": [
            {
              "ParamName": "参数名",
              "ParamType": "string",
              "Description": "参数描述"
            },
            {
              "ParamName": "bbb",
              "ParamType": "boolean",
              "Description": "一个参数"
            },
            {
              "ParamName": "aaa",
              "ParamType": "string",
              "Description": "参数描述"
            }
          ]
        },
        {
          "FuncName": "方法名称",
          "Description": "方法描述",
          "Params": []
        }
      ]
    }
"""
val handleJson = HandleJson()
    print(handleJson.getLuaCode(json))



}