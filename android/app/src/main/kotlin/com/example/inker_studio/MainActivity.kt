package com.example.inker_studio

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.renderer.FlutterRenderer
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        // Desactivar Impeller en tiempo de ejecución si es necesario
        System.setProperty("flutter.impeller.enabled", "false")
        super.onCreate(savedInstanceState)
    }
    
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        // Canal para manejar problemas de renderizado si es necesario
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.example.inker_studio/graphics").setMethodCallHandler { call, result ->
            if (call.method == "disableHighPrecisionTextures") {
                // Implementación futura si es necesario
                result.success(true)
            } else {
                result.notImplemented()
            }
        }
    }
}
