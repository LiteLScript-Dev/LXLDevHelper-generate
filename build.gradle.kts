import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.5.10"
    application
}

group = "me.36015"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
    maven("http://central.maven.org/maven2/com/alibaba/fastjson/")
}

dependencies {
    testImplementation(kotlin("test"))
    implementation("com.google.code.gson:gson:2.8.7")
    implementation("org.slf4j:slf4j-simple:1.7.29")

}

tasks.test {
    useJUnit()
}

tasks.withType<KotlinCompile>() {
    kotlinOptions.jvmTarget = "1.8"
}

application {
    mainClass.set("MainKt")
}