import Slf4j.Companion.log
import com.google.gson.Gson
import java.io.File

@Slf4j
class ExportGenerate {

    fun run(jsonStr:String) {
        val gson = Gson()
        val libraryUrl = "./Library"
        val jsUrl = "$libraryUrl/JS/"
        val luaUrl = "$libraryUrl/Lua/"
        val dirList = gson.fromJson(jsonStr, JsonData::class.java)
        File(jsUrl).mkdirs()
        File(luaUrl).mkdirs()

        log.info("Making Dir $jsUrl")
        log.info("Making Dir $luaUrl")

        dirList.dirCollection.forEach { it ->
            val jsDirUrl = jsUrl + it.dirName
            val luaDirUrl = luaUrl + it.dirName

            File(jsDirUrl).mkdirs()
            File(luaDirUrl).mkdirs()

            log.info("Making Dir $jsDirUrl")
            log.info("Making Dir $luaDirUrl")

            it.allClass.forEach { _it ->
                val luaCode = HandleJson().getLuaCode(_it)
                File("$luaDirUrl/${_it.className}.lua").writeText(luaCode)
                log.info("Writing Lua File to $luaDirUrl/${_it.className}.lua")


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