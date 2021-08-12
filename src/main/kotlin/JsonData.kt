
import com.google.gson.annotations.SerializedName
data class JsonData(
    @SerializedName("DirCollection")
    val dirCollection: List<DirCollection>
)

data class DirCollection(
    @SerializedName("AllClass")
    val allClass: List<AllClass>,
    @SerializedName("DirName")
    val dirName: String
)

data class AllClass(
    @SerializedName("AllFunc")
    val allFunc: List<AllFunc>,
    @SerializedName("AllProperty")
    val allProperty: List<AllProperty>,
    @SerializedName("ClassName")
    val className: String,
    @SerializedName("Description")
    val description: String,
    @SerializedName("IsInterface")
    val isInterface: Boolean,
    @SerializedName("IsStatic")
    val isStatic: Boolean
)

data class AllFunc(
    @SerializedName("Description")
    val description: String,
    @SerializedName("FuncName")
    val funcName: String,
    @SerializedName("IsStatic")
    val isStatic: Boolean,
    @SerializedName("Params")
    val params: List<Param>,
    @SerializedName("ReturnDescription")
    val returnDescription: String,
    @SerializedName("ReturnType")
    val returnType: String
)

data class AllProperty(
    @SerializedName("Description")
    val description: String,
    @SerializedName("IsReadonly")
    val isReadonly: Boolean,
    @SerializedName("IsStatic")
    val isStatic: Boolean,
    @SerializedName("PropertyName")
    val propertyName: String,
    @SerializedName("PropertyType")
    val propertyType: String
)

data class Param(
    @SerializedName("Description")
    val description: String,
    @SerializedName("Optional")
    val optional: Boolean,
    @SerializedName("ParamName")
    val paramName: String,
    @SerializedName("ParamType")
    val paramType: String
)
data class NoneFunction(
    @SerializedName("Func")
    val func: Func
)

data class Func(
    @SerializedName("Params")
    val params: List<Param>,
    @SerializedName("ReturnType")
    val returnType: String
)


