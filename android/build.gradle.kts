// Top-level build file where you can add configuration options common to all sub-projects/modules.
allprojects {
    repositories {
        google()
        mavenCentral() // jcenter() es obsoleto.
        // jcenter() // Lo comento por ahora.
    }
}

rootProject.buildDir = file("../build")
subprojects {
    project.buildDir = File("${rootProject.buildDir}/${project.name}")
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
} 