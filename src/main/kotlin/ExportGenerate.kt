import Slf4j.Companion.log
import com.google.gson.Gson
import java.io.File

@Slf4j
class ExportGenerate {

    fun run(jsonStr: String) {
        val gson = Gson()
        val libraryUrl = "./Library"
        val jsUrl = "$libraryUrl/JS/"
        val luaUrl = "$libraryUrl/Lua/"
        val dirListLua = gson.fromJson(HandleJson().HandleLuaType(jsonStr), JsonData::class.java)
        File(jsUrl).mkdirs()
        File(luaUrl).mkdirs()

        log.info("Making Dir $jsUrl")
        log.info("Making Dir $luaUrl")

        dirListLua.dirCollection.forEach { it ->
            val luaDirUrl = luaUrl + it.dirName

            File(luaDirUrl).mkdirs()

            log.info("Making Dir $luaDirUrl")

            it.allClass.forEach { _it ->
                val luaCode = HandleJson().getLuaCode(_it)
                File("$luaDirUrl/${_it.className}.lua").writeText(luaCode)
                log.info("Writing Lua File to $luaDirUrl/${_it.className}.lua")


            }

        }
        val dirListJS = gson.fromJson(HandleJson().HandleJsType(jsonStr), JsonData::class.java)
        dirListJS.dirCollection.forEach { it ->
            val jsDirUrl = jsUrl + it.dirName

            File(jsDirUrl).mkdirs()

            log.info("Making Dir $jsDirUrl")

            it.allClass.forEach { _it ->

                val jsCode = HandleJson()
                File("$jsDirUrl/${_it.className}.js").writeText(jsCode.getJSCode(_it))
                log.info("Writing JS File to $jsDirUrl/${_it.className}.js")

                val temp = "\n/// <reference path=\"./${it.dirName}/${_it.className}.js\" />"
                File("${jsUrl}Api.js").appendText(temp)
                log.info("Writing JS Api File to ${jsUrl}Api.js")

            }

        }
        log.info("Generate Successful")
        log.info("By moxicat")
        log.info("More info plz come to https://github.com/LiteLDev-LXL/LXLDevHelper-generate")
    }
}