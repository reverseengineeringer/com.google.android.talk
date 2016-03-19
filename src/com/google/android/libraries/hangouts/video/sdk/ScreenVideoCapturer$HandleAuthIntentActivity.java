package com.google.android.libraries.hangouts.video.sdk;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import fi;

public class ScreenVideoCapturer$HandleAuthIntentActivity
  extends Activity
{
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Intent localIntent = new Intent("com.google.android.libraries.hangouts.video.sdk.ScreenCapturer");
    localIntent.putExtra("share_result_code", paramInt2);
    localIntent.putExtra("share_result_data", paramIntent);
    fi.a(getApplicationContext()).a(localIntent);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    setFinishOnTouchOutside(false);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    super.onCreate(paramBundle);
    startActivityForResult((Intent)getIntent().getParcelableExtra("share_permission_intent"), 1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.sdk.ScreenVideoCapturer.HandleAuthIntentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */