import Slf4j.Companion.log
import com.google.gson.Gson
import java.io.File

@Slf4j
class Generateble {

    fun run(jsonStr: String) {
        val gson = Gson()
        val libraryUrl = "./Library"
        val jsUrl = "$libraryUrl/JS/"
        val luaUrl = "$libraryUrl/Lua/"
        val dirListLua = gson.fromJson(jsonStr, JsonData::class.java)
        File(jsUrl).mkdirs()
        File(luaUrl).mkdirs()

        log.info("Making Dir $jsUrl")
        log.info("Making Dir $luaUrl")

        dirListLua.dirCollection.forEach { it ->

            val luaDirUrl = luaUrl + it.dirName
            val jsDirUrl = jsUrl + it.dirName

            File(luaDirUrl).mkdirs()
            File(jsDirUrl).mkdirs()

            log.info("Making Dir $luaDirUrl")
            log.info("Making Dir $jsDirUrl")

            it.allClass.forEach { _it ->
                val luaCode = HandleClass().getLuaCode(_it)
                File("$luaDirUrl/${_it.className}.lua").writeText(luaCode,Charsets.UTF_8)
                log.info("Writing Lua File to $luaDirUrl/${_it.className}.lua")

                val jsCode = HandleClass().getJSCode(_it)
                File("$jsDirUrl/${_it.className}.js").writeText(jsCode,Charsets.UTF_8)
                log.info("Writing JS File to $jsDirUrl/${_it.className}.js")

                val temp = "\n/// <reference path=\"./${it.dirName}/${_it.className}.js\" />"
                File("${jsUrl}Api.js").appendText(temp,Charsets.UTF_8)
                log.info("Writing JS Api File to ${jsUrl}Api.js")
            }

        }

        log.info("Generate Successful")
        log.info("By moxicat")
        log.info("More info plz come to https://github.com/LiteLDev-LXL/LXLDevHelper-generate")
    }
}