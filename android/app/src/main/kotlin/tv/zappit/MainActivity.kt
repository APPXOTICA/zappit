package tv.zappit

import android.annotation.SuppressLint
import android.provider.Settings
import com.google.android.play.core.integrity.IntegrityManagerFactory
import com.google.android.play.core.integrity.IntegrityTokenRequest
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

// FlutterFragmentActivity: required by RevenueCat Paywalls / Customer Center (purchases_ui_flutter).
class MainActivity : FlutterFragmentActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        registerDeviceChannel(flutterEngine)
    }

    /**
     * Phone facts for pairing and the Pro preview (lib/features/pairing/phone_identity.dart).
     * `getMarker`: ANDROID_ID, the same after an app reinstall (per signing key
     * and user, Android 8+). `integrityToken`: a classic Play Integrity token for
     * the given nonce; the server decodes it and reads/writes device recall.
     */
    @SuppressLint("HardwareIds")
    private fun registerDeviceChannel(engine: FlutterEngine) {
        MethodChannel(engine.dartExecutor.binaryMessenger, "tv.zappit/device").setMethodCallHandler { call, result ->
            when (call.method) {
                "getMarker" -> result.success(Settings.Secure.getString(contentResolver, Settings.Secure.ANDROID_ID))
                "integrityToken" -> {
                    val nonce = call.argument<String>("nonce")
                    if (nonce == null) {
                        result.success(null)
                        return@setMethodCallHandler
                    }
                    val request = IntegrityTokenRequest.builder()
                        .setNonce(nonce)
                        .setCloudProjectNumber(CLOUD_PROJECT_NUMBER)
                        .build()
                    IntegrityManagerFactory.create(applicationContext)
                        .requestIntegrityToken(request)
                        .addOnSuccessListener { response -> result.success(response.token()) }
                        .addOnFailureListener { result.success(null) }
                }
                else -> result.notImplemented()
            }
        }
    }

    private companion object {
        /** Firebase project zappit-23ad8 (google-services.json `project_number`). */
        const val CLOUD_PROJECT_NUMBER = 343141943174L
    }
}
