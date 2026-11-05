package tv.zappit

import android.app.Activity
import android.content.Intent
import android.os.Bundle

// Receives ACTION_SEND and forwards it to MainActivity in Zappit's own task.
// MainActivity is singleTop (RevenueCat: singleTask cancels a purchase when the user
// returns through the launcher icon), so a share sent to it directly would open a second
// instance inside the sharing app's task. receive_sharing_intent reads the forwarded intent
// (onNewIntent when running, the launch intent on a cold start).
class ShareReceiverActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val forward = Intent(intent).apply {
            setClass(this@ShareReceiverActivity, MainActivity::class.java)
            // Replace, not add: the chooser's flags (NEW_DOCUMENT, MULTIPLE_TASK…) would open a new task.
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        startActivity(forward)
        finish()
        overridePendingTransition(0, 0)
    }
}
