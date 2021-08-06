data class JsonData(
    val AllFunc: List<AllFunc>,
    val ClassName: String
)
data class Param(
    val Description: String,
    val ParamName: String,
    val ParamType: String
)
data class AllFunc(
    val Description: String,
    val FuncName: String,
    val Params: List<Param>
)