import com.google.gson.Gson
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL

public class Runner{
     public fun main() {
        println(
            """ __      ___   ___  __       _______   ___________    ____       __    __   _______  __      .______    _______ .______      
|  |     \  \ /  / |  |     |       \ |   ____\   \  /   /      |  |  |  | |   ____||  |     |   _  \  |   ____||   _  \     
|  |      \  V  /  |  |     |  .--.  ||  |__   \   \/   / ______|  |__|  | |  |__   |  |     |  |_)  | |  |__   |  |_)  |    
|  |       >   <   |  |     |  |  |  ||   __|   \      / |______|   __   | |   __|  |  |     |   ___/  |   __|  |      /     
|  `----. /  .  \  |  `----.|  '--'  ||  |____   \    /         |  |  |  | |  |____ |  `----.|  |      |  |____ |  |\  \----.
|_______|/__/ \__\ |_______||_______/ |_______|   \__/          |__|  |__| |_______||_______|| _|      |_______|| _| `._____|
                                                                                                                             """
        )
        println(
            """  _______  _______ .__   __.  _______ .______          ___   .___________. _______ 
 /  _____||   ____||  \ |  | |   ____||   _  \        /   \  |           ||   ____|
|  |  __  |  |__   |   \|  | |  |__   |  |_)  |      /  ^  \ `---|  |----`|  |__   
|  | |_ | |   __|  |  . `  | |   __|  |      /      /  /_\  \    |  |     |   __|  
|  |__| | |  |____ |  |\   | |  |____ |  |\  \----./  _____  \   |  |     |  |____ 
 \______| |_______||__| \__| |_______|| _| `._____/__/     \__\  |__|     |_______|
                                  
                                                                                   """
        )

        val repoUri = "https://github.91chifun.workers.dev/https://github.com//LiteLDev-LXL/LXLDevHelper-DocSrc/releases/download/v0.build0/raw.json"
        println("Requesting repo address $repoUri")
        Thread {
            var connection: HttpURLConnection? = null
            var reader: BufferedReader? = null

            try {
                val url = URL(repoUri)
                connection = url.openConnection() as HttpURLConnection
                connection.requestMethod = "GET"
                connection.connectTimeout = 8000
                connection.readTimeout = 20000

                val inStream = connection.inputStream
                reader = BufferedReader(InputStreamReader(inStream))
                val response = StringBuilder()
                val allText = reader.use(BufferedReader::readText)
                response.append(allText)
                println("Successfully obtained repo data")
                val data = response.toString()
                ExportGenerate().run(HandleJson().HandleType(data))

            } catch (ex: Exception) {
                ex.printStackTrace()
            } finally {

                reader?.let {
                    try {
                        it.close()
                    } catch (exInner: Exception) {
                        println("Network abnormality occurred")
                        exInner.printStackTrace()
                    }
                }

                connection?.disconnect()

            }
        }.start()
    }

}