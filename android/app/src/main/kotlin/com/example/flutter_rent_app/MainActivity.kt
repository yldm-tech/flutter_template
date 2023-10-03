package tech.yldm.tiktik

import android.os.Looper
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.StringCodec

class MainActivity : FlutterActivity() {

    companion object {
        const val METHOD_GET_PLATFORM_VERSION = "getPlatformVersion"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // basic channel
        val basicChannel = BasicMessageChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "basic_channel",
            StringCodec.INSTANCE
        )
        basicChannel.setMessageHandler { message, reply ->
            Log.d("MainActivity", "Received message: $message")
            reply.reply("I am Android, I got your message: $message")
        }

        // event channel 配置完之后延迟2秒广播消息给flutter
        val eventChannel =
            EventChannel(flutterEngine.dartExecutor.binaryMessenger, "event_channel")
        eventChannel.setStreamHandler(
            object : EventChannel.StreamHandler {
                override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                    android.os.Handler(Looper.getMainLooper()).postDelayed({
                        events?.success("I am Android, I Broadcast message to you")
                    }, 2000)
                }

                override fun onCancel(arguments: Any?) {
                    Log.d("MainActivity", "onCancel")
                }
            })

        // method channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "method_channel")
            .setMethodCallHandler { call, result ->
                if (call.method == METHOD_GET_PLATFORM_VERSION) {
                    // 接收消息
                    val message = call.argument<String>("message")
                    val version = call.argument<String>("version")
                    val language = call.argument<String>("language")
                    val androidAPI = call.argument<Int>("androidAPI")
                    Log.d(
                        "Flutter",
                        "message: $message. version: $version. language: $language. androidAPI: $androidAPI"
                    )
                    // 发送消息
                    result.success("Android ${android.os.Build.VERSION.RELEASE}")
                } else {
                    result.notImplemented()
                }
            }
    }
}
