import java.util.Properties
import com.android.build.api.dsl.ApplicationExtension
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
import java.io.FileInputStream

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("com.google.gms.google-services")
    id("dev.flutter.flutter-gradle-plugin")
}

val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localPropertiesFile.inputStream().use { reader ->
        localProperties.load(reader)
    }
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

val flutterRoot = localProperties.getProperty("flutter.sdk") ?: System.getenv("FLUTTER_ROOT")
checkNotNull(flutterRoot) { "Flutter SDK not found. Define location with flutter.sdk in the local.properties file or set the FLUTTER_ROOT environment variable." }

val flutterVersionCode = localProperties.getProperty("flutter.versionCode")?.toInt() ?: 1
val flutterVersionName = localProperties.getProperty("flutter.versionName") ?: "1.0"

configure<ApplicationExtension> {
    namespace = "com.example.inker_studio"
    compileSdk = 35
    ndkVersion = "26.3.11579264"

    defaultConfig {
        applicationId = "com.example.inker_studio"
        minSdk = 23
        targetSdk = 34
        versionCode = flutterVersionCode
        versionName = flutterVersionName
        multiDexEnabled = true
        testInstrumentationRunner = "pl.leancode.patrol.PatrolJUnitRunner"
        testInstrumentationRunnerArguments["clearPackageData"] = "true"
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String
        }
    }

    testOptions {
        execution = "ANDROIDX_TEST_ORCHESTRATOR"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
            ndk {
                abiFilters.add("armeabi-v7a")
                abiFilters.add("arm64-v8a")
                abiFilters.add("x86_64")
            }
        }
        debug {
            isMinifyEnabled = false
            isShrinkResources = false
            ndk {
                abiFilters.add("armeabi-v7a")
                abiFilters.add("arm64-v8a")
                abiFilters.add("x86_64")
            }
        }
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/kotlin")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    
    // Configuración para resolver problemas de OpenGL/Impeller
    packagingOptions {
        jniLibs {
            useLegacyPackaging = true
        }
    }
}

tasks.withType<KotlinCompile> {
    kotlinOptions {
        jvmTarget = "17"
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("com.android.support:multidex:1.0.3") // Considera migrar a androidx.multidex:multidex
    implementation(platform("com.google.firebase:firebase-bom:28.4.0")) // Considera actualizar a la última versión de Firebase BOM.
    androidTestUtil("androidx.test:orchestrator:1.5.1") // Versión actualizada
} 