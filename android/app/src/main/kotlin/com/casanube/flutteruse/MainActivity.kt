// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
package com.casanube.flutteruse

import android.content.*
import android.os.BatteryManager
import android.os.Build
import io.flutter.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        EventChannel(flutterEngine.dartExecutor, CHARGING_CHANNEL).setStreamHandler(
                object : EventChannel.StreamHandler {
                    private var chargingStateChangeReceiver: BroadcastReceiver? = null
                    override fun onListen(arguments: Any?, events: EventSink?) {
                        chargingStateChangeReceiver = createChargingStateChangeReceiver(events)
                        registerReceiver(
                                chargingStateChangeReceiver, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
                    }

                    override fun onCancel(arguments: Any?) {
                        unregisterReceiver(chargingStateChangeReceiver)
                        chargingStateChangeReceiver = null
                    }
                }
        )
        MethodChannel(flutterEngine.dartExecutor, BATTERY_CHANNEL).setMethodCallHandler { call, result ->
            Log.d("MainActivity", "call $call")
            if (call.method == "getBatteryLevel") {
                val batteryLevel = batteryLevel
                if (batteryLevel != -1) {
                    result.success(batteryLevel)
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun createChargingStateChangeReceiver(events: EventSink?): BroadcastReceiver {
        return object : BroadcastReceiver() {
            override fun onReceive(context: Context, intent: Intent) {
                val status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1)
                Log.d("createChargingStateChangeReceiver ", "events")
                if (status == BatteryManager.BATTERY_STATUS_UNKNOWN) {
                    events?.error("UNAVAILABLE", "Charging status unavailable", null)
                } else {
                    val isCharging = status == BatteryManager.BATTERY_STATUS_CHARGING ||
                            status == BatteryManager.BATTERY_STATUS_FULL
                    events?.success(if (isCharging) "charging" else "discharging")
                }
            }
        }
    }

    private val batteryLevel: Int
        private get() = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
            batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            val intent = ContextWrapper(applicationContext).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100 /
                    intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1)
        }

    companion object {
        private const val BATTERY_CHANNEL = "samples.flutter.io/battery"
        private const val CHARGING_CHANNEL = "samples.flutter.io/charging"
    }
}