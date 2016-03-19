package com.google.android.apps.hangouts.telephony;

import android.app.IntentService;
import android.content.Intent;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import ezi;

public class TeleActivityRecognitionService
  extends IntentService
{
  public TeleActivityRecognitionService()
  {
    super("TeleAcitivityRecognitionService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (ActivityRecognitionResult.a(paramIntent))
    {
      ezi.c("Babel_telephony", "ActivityRecognitionService.onHandleIntent, intent returned result, sending broadcast", new Object[0]);
      paramIntent = ActivityRecognitionResult.b(paramIntent).a();
      Intent localIntent = new Intent("com.google.android.apps.hangouts.user_activity_action");
      localIntent.putExtra("com.google.android.apps.hangouts.user_activity_type", paramIntent.a());
      localIntent.putExtra("com.google.android.apps.hangouts.user_activity_confidence", paramIntent.b());
      sendBroadcast(localIntent);
      return;
    }
    ezi.a("Babel_telephony", "ActivityRecognitionService.onHandleIntent, intent didn't return any activity recognition result.", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.TeleActivityRecognitionService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */