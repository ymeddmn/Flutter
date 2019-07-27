package com.example.horse.flutterview

import android.content.BroadcastReceiver
import android.os.Bundle
import android.os.Handler
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugins.FlutterNativePlugin
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity : FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
//        registerCustomPlugin(this)
        initEventChannel()
    }


    private fun registerCustomPlugin(registrar: PluginRegistry) {
        FlutterNativePlugin.registerWith(registrar.registrarFor(FlutterNativePlugin.CHANNEL))
    }

    private fun initEventChannel() {
        EventChannel(flutterView, "androidtoflutter").setStreamHandler(object : EventChannel.StreamHandler {
            override fun onCancel(p0: Any?) {

            }

            override fun onListen(arguments: Any?, events: EventSink?) {
                events?.success("给flutter发消息")
            }
        })
    }
}
