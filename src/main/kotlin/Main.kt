import com.google.gson.Gson
import java.io.File

suspend fun main() {
    println(""" __      ___   ___  __       _______   ___________    ____       __    __   _______  __      .______    _______ .______      
|  |     \  \ /  / |  |     |       \ |   ____\   \  /   /      |  |  |  | |   ____||  |     |   _  \  |   ____||   _  \     
|  |      \  V  /  |  |     |  .--.  ||  |__   \   \/   / ______|  |__|  | |  |__   |  |     |  |_)  | |  |__   |  |_)  |    
|  |       >   <   |  |     |  |  |  ||   __|   \      / |______|   __   | |   __|  |  |     |   ___/  |   __|  |      /     
|  `----. /  .  \  |  `----.|  '--'  ||  |____   \    /         |  |  |  | |  |____ |  `----.|  |      |  |____ |  |\  \----.
|_______|/__/ \__\ |_______||_______/ |_______|   \__/          |__|  |__| |_______||_______|| _|      |_______|| _| `._____|
                                                                                                                             """)
    println("""  _______  _______ .__   __.  _______ .______          ___   .___________. _______ 
 /  _____||   ____||  \ |  | |   ____||   _  \        /   \  |           ||   ____|
|  |  __  |  |__   |   \|  | |  |__   |  |_)  |      /  ^  \ `---|  |----`|  |__   
|  | |_ | |   __|  |  . `  | |   __|  |      /      /  /_\  \    |  |     |   __|  
|  |__| | |  |____ |  |\   | |  |____ |  |\  \----./  _____  \   |  |     |  |____ 
 \______| |_______||__| \__| |_______|| _| `._____/__/     \__\  |__|     |_______|
                                  
                                                                                   """)
    ExportGenerate().run()
}


fun getJson(): String {
    return """{
  "DirCollection": [
    {
      "DirName": "Basic",
      "AllClass": [
        {
          "ClassName": "Block",
          "AllFunc": [
            {
              "Description": "获取方块对应的NBT对象",
              "FuncName": "getNbt",
              "ReturnName": "nbt",
              "ReturnDescription": "方块的NBT对象",
              "IsStatic": false,
              "Params": [],
              "ReturnType": "NbtCompound"
            },
            {
              "Description": "写入方块对应的NBT对象",
              "FuncName": "setNbt",
              "ReturnName": "result",
              "ReturnDescription": "是否成功写入",
              "IsStatic": false,
              "Params": [
                {
                  "Description": "NBT对象",
                  "ParamType": "NbtCompound",
                  "ParamName": "nbt",
                  "Optional": false
                }
              ],
              "ReturnType": "Boolean"
            },
            {
              "Description": "获取方块的BlockState\r\n方便函数，协助解析方块BlockState并转换为Object，方便读取与解析\r\n等价于脚本执行block.getNbt().getTag(\"states\").toObject()",
              "FuncName": "getBlockState",
              "ReturnName": "obj",
              "ReturnDescription": "方块的BlockState",
              "IsStatic": false,
              "Params": [],
              "ReturnType": "Object"
            }
          ],
          "AllProperty": [
            {
              "PropertyName": "name",
              "Description": "游戏内显示的方块名称",
              "PropertyType": "String",
              "IsReadonly": true,
              "IsStatic": false
            },
            {
              "PropertyName": "type",
              "Description": "方块标准类型名\t",
              "PropertyType": "String",
              "IsReadonly": true,
              "IsStatic": false
            },
            {
              "PropertyName": "id",
              "Description": "方块的游戏内id",
              "PropertyType": "Integer",
              "IsReadonly": true,
              "IsStatic": false
            },
            {
              "PropertyName": "pos",
              "Description": "方块所在坐标",
              "PropertyType": "IntPos",
              "IsReadonly": true,
              "IsStatic": false
            }
          ],
          "IsStatic": false,
          "IsInterface": false,
          "Description": "方块对象"
        },
        {
          "ClassName": "Entity",
          "AllFunc": [],
          "AllProperty": [],
          "IsStatic": false,
          "IsInterface": false,
          "Description": ""
        },
        {
          "ClassName": "FloatPos",
          "AllFunc": [],
          "AllProperty": [
            {
              "PropertyName": "x",
              "Description": "x 坐标",
              "PropertyType": "Float",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "y",
              "Description": "y 坐标",
              "PropertyType": "Float",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "z",
              "Description": "z 坐标",
              "PropertyType": "Float",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "dim",
              "Description": "维度文字名",
              "PropertyType": "String",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "dimid",
              "Description": "维度ID",
              "PropertyType": "Integer",
              "IsReadonly": false,
              "IsStatic": false
            }
          ],
          "IsStatic": false,
          "IsInterface": false,
          "Description": "🎯 坐标对象\r\n多用来表示实体坐标等用无法用整数表示的位置"
        },
        {
          "ClassName": "IntPos",
          "AllFunc": [],
          "AllProperty": [
            {
              "PropertyName": "x",
              "Description": "x 坐标",
              "PropertyType": "Integer",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "y",
              "Description": "y 坐标",
              "PropertyType": "Integer",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "z",
              "Description": "z 坐标",
              "PropertyType": "Integer",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "dim",
              "Description": "维度文字名",
              "PropertyType": "String",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "dimid",
              "Description": "维度ID",
              "PropertyType": "Integer",
              "IsReadonly": false,
              "IsStatic": false
            }
          ],
          "IsStatic": false,
          "IsInterface": false,
          "Description": "🎯 坐标对象\r\n多用来表示方块坐标等用整数表示的位置"
        },
        {
          "ClassName": "Item",
          "AllFunc": [],
          "AllProperty": [],
          "IsStatic": false,
          "IsInterface": false,
          "Description": ""
        },
        {
          "ClassName": "mc",
          "AllFunc": [
            {
              "Description": "生成一个浮点数坐标对象",
              "FuncName": "newFloatPos",
              "ReturnName": "pos",
              "ReturnDescription": "一个浮点数坐标对象",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "x 坐标",
                  "ParamType": "Float",
                  "ParamName": "x",
                  "Optional": false
                },
                {
                  "Description": "y 坐标",
                  "ParamType": "Float",
                  "ParamName": "y",
                  "Optional": false
                },
                {
                  "Description": "z 坐标",
                  "ParamType": "Float",
                  "ParamName": "z",
                  "Optional": false
                },
                {
                  "Description": "维度ID：0 代表主世界，1 代表下界，2 代表末地",
                  "ParamType": "Integer",
                  "ParamName": "dimid ",
                  "Optional": false
                }
              ],
              "ReturnType": "FloatPos"
            },
            {
              "Description": "获取BDS服务端版本号",
              "FuncName": "getBDSVersion",
              "ReturnName": "version",
              "ReturnDescription": "服务端版本号字符串，格式形如v1.17.10",
              "IsStatic": true,
              "Params": [],
              "ReturnType": "String"
            },
            {
              "Description": "执行一条后台命令",
              "FuncName": "runcmd",
              "ReturnName": "result",
              "ReturnDescription": "是否执行成功",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "待执行的命令",
                  "ParamType": "String",
                  "ParamName": "cmd",
                  "Optional": false
                }
              ],
              "ReturnType": "Boolean"
            },
            {
              "Description": "执行一条后台命令（强化版）",
              "FuncName": "runcmdEx",
              "ReturnName": "命令执行结果",
              "ReturnDescription": "命令执行结果Object",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "",
                  "ParamType": "String",
                  "ParamName": "cmd",
                  "Optional": false
                }
              ],
              "ReturnType": "ObjectRuncmdEx"
            },
            {
              "Description": "通过方块坐标手动生成方块对象\r\n通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题",
              "FuncName": "getBlock",
              "ReturnName": "targetblock",
              "ReturnDescription": "如返回值为 Null 则表示获取方块失败\r\n注意：不要长期保存一个方块对象\r\n当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "方块坐标对象（或者使用x, y, z, dimid来确定方块位置）",
                  "ParamType": "IntPos",
                  "ParamName": "pos",
                  "Optional": false
                }
              ],
              "ReturnType": "Block|Null"
            },
            {
              "Description": "通过方块坐标手动生成方块对象\r\n通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题",
              "FuncName": "getBlock",
              "ReturnName": "targetblock",
              "ReturnDescription": "如返回值为 Null 则表示获取方块失败\r\n注意：不要长期保存一个方块对象\r\n当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "方块x坐标",
                  "ParamType": "Integer",
                  "ParamName": "x",
                  "Optional": false
                },
                {
                  "Description": "方块y坐标",
                  "ParamType": "Integer",
                  "ParamName": "y",
                  "Optional": false
                },
                {
                  "Description": "方块z坐标",
                  "ParamType": "Integer",
                  "ParamName": "z",
                  "Optional": false
                },
                {
                  "Description": "方块维度",
                  "ParamType": "Integer",
                  "ParamName": "dimid",
                  "Optional": false
                }
              ],
              "ReturnType": "Block|Null"
            },
            {
              "Description": "设置指定位置的方块",
              "FuncName": "setBlock",
              "ReturnName": "result",
              "ReturnDescription": "是否成功设置",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "目标方块位置",
                  "ParamType": "IntPos",
                  "ParamName": "pos",
                  "Optional": false
                },
                {
                  "Description": "要设置成的方块对象或者方块名",
                  "ParamType": "Block|String",
                  "ParamName": "block",
                  "Optional": false
                }
              ],
              "ReturnType": "Boolean"
            },
            {
              "Description": "设置指定位置的方块\r\n通过此函数，将一个坐标对应的方块设置成另一个，类似于命令 /setblock\r\n如果使用方块名称，则方块名称须为标准类型名，且首字母大写，类似于 Stone\r\n否则，函数将执行失败",
              "FuncName": "setBlock",
              "ReturnName": "result",
              "ReturnDescription": "是否成功设置",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "方块x坐标",
                  "ParamType": "Integer",
                  "ParamName": "x",
                  "Optional": false
                },
                {
                  "Description": "方块y坐标",
                  "ParamType": "Integer",
                  "ParamName": "y",
                  "Optional": false
                },
                {
                  "Description": "方块z坐标",
                  "ParamType": "Integer",
                  "ParamName": "z",
                  "Optional": false
                },
                {
                  "Description": "方块维度",
                  "ParamType": "Integer",
                  "ParamName": "dimid",
                  "Optional": false
                },
                {
                  "Description": "要设置成的方块对象或者方块名",
                  "ParamType": "Block|String",
                  "ParamName": "block",
                  "Optional": false
                }
              ],
              "ReturnType": "Boolean"
            },
            {
              "Description": "在指定位置生成粒子效果",
              "FuncName": "spawnParticle",
              "ReturnName": "result",
              "ReturnDescription": "是否成功生成",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "目标方块位置",
                  "ParamType": "IntPos",
                  "ParamName": "pos",
                  "Optional": false
                },
                {
                  "Description": "要生成的粒子效果名称（可查阅wiki得知）",
                  "ParamType": "String",
                  "ParamName": "type",
                  "Optional": false
                }
              ],
              "ReturnType": "Boolean"
            },
            {
              "Description": "在指定位置生成粒子效果",
              "FuncName": "spawnParticle",
              "ReturnName": "result",
              "ReturnDescription": "是否成功生成",
              "IsStatic": true,
              "Params": [
                {
                  "Description": "方块x坐标",
                  "ParamType": "Integer",
                  "ParamName": "x",
                  "Optional": false
                },
                {
                  "Description": "方块y坐标",
                  "ParamType": "Integer",
                  "ParamName": "y",
                  "Optional": false
                },
                {
                  "Description": "方块z坐标",
                  "ParamType": "Integer",
                  "ParamName": "z",
                  "Optional": false
                },
                {
                  "Description": "要生成的粒子效果名称（可查阅wiki得知）",
                  "ParamType": "String",
                  "ParamName": "type",
                  "Optional": false
                }
              ],
              "ReturnType": "Boolean"
            }
          ],
          "AllProperty": [],
          "IsStatic": true,
          "IsInterface": false,
          "Description": "mc通用接口"
        },
        {
          "ClassName": "Player",
          "AllFunc": [],
          "AllProperty": [],
          "IsStatic": false,
          "IsInterface": false,
          "Description": ""
        }
      ]
    },
    {
      "DirName": "Object",
      "AllClass": [
        {
          "ClassName": "ObjectRuncmdEx",
          "AllFunc": [],
          "AllProperty": [
            {
              "PropertyName": "success",
              "Description": "是否执行成功",
              "PropertyType": "Boolean",
              "IsReadonly": false,
              "IsStatic": false
            },
            {
              "PropertyName": "output",
              "Description": "BDS执行命令后的输出结果",
              "PropertyType": "String",
              "IsReadonly": false,
              "IsStatic": false
            }
          ],
          "IsStatic": false,
          "IsInterface": true,
          "Description": "mc.runcmdEx的返回结果"
        }
      ]
    }
  ],
  "CurrentClassHasSet": true
}"""
}