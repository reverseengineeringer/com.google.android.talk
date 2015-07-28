package com.google.android.talk;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gtalkservice.IGTalkService;

public class SignoutActivity
  extends Activity
{
  private String[] ACCOUNT_SELECTION = { "_id" };
  private long mAccountId;
  private IGTalkService mGTalkService;
  private Handler mHandler = new Handler();
  
  static void log(String paramString)
  {
    Log.d("talk", "[Signout] " + paramString);
  }
  
  /* Error */
  private void signOut()
  {
    // Byte code:
    //   0: invokestatic 72	com/google/android/talk/TalkApp:debugLoggable	()Z
    //   3: ifeq +8 -> 11
    //   6: ldc 73
    //   8: invokestatic 75	com/google/android/talk/SignoutActivity:log	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 34	com/google/android/talk/SignoutActivity:mGTalkService	Lcom/google/android/gtalkservice/IGTalkService;
    //   15: aload_0
    //   16: getfield 77	com/google/android/talk/SignoutActivity:mAccountId	J
    //   19: invokeinterface 83 3 0
    //   24: astore_1
    //   25: aload_1
    //   26: ifnull +26 -> 52
    //   29: aload_1
    //   30: invokeinterface 89 1 0
    //   35: invokevirtual 94	com/google/android/gtalkservice/Presence:isAvailable	()Z
    //   38: ifne +19 -> 57
    //   41: invokestatic 72	com/google/android/talk/TalkApp:debugLoggable	()Z
    //   44: ifeq +8 -> 52
    //   47: ldc 96
    //   49: invokestatic 75	com/google/android/talk/SignoutActivity:log	(Ljava/lang/String;)V
    //   52: aload_0
    //   53: invokevirtual 99	com/google/android/talk/SignoutActivity:finish	()V
    //   56: return
    //   57: aload_1
    //   58: invokeinterface 102 1 0
    //   63: goto -11 -> 52
    //   66: astore_1
    //   67: ldc 45
    //   69: ldc 104
    //   71: aload_1
    //   72: invokestatic 108	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   75: pop
    //   76: aload_0
    //   77: invokevirtual 99	com/google/android/talk/SignoutActivity:finish	()V
    //   80: return
    //   81: astore_1
    //   82: aload_0
    //   83: invokevirtual 99	com/google/android/talk/SignoutActivity:finish	()V
    //   86: aload_1
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	SignoutActivity
    //   24	34	1	localIImSession	com.google.android.gtalkservice.IImSession
    //   66	6	1	localRemoteException	android.os.RemoteException
    //   81	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	11	66	android/os/RemoteException
    //   11	25	66	android/os/RemoteException
    //   29	52	66	android/os/RemoteException
    //   57	63	66	android/os/RemoteException
    //   0	11	81	finally
    //   11	25	81	finally
    //   29	52	81	finally
    //   57	63	81	finally
    //   67	76	81	finally
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Uri localUri = getIntent().getData();
    if (localUri == null)
    {
      Log.e("talk", "Need account data to sign in");
      finish();
    }
    for (;;)
    {
      return;
      paramBundle = getContentResolver().query(localUri, ACCOUNT_SELECTION, null, null, null);
      if (paramBundle != null) {}
      try
      {
        if (!paramBundle.moveToFirst())
        {
          Log.w("talk", "[SignoutActivity] No data for " + localUri);
          finish();
          return;
        }
        mAccountId = paramBundle.getLong(paramBundle.getColumnIndex("_id"));
        if (paramBundle != null) {
          paramBundle.close();
        }
        TalkApp.getApplication(this).addServiceAvailableCallback(mHandler, new ServiceAvailableRunnable()
        {
          public void run(IGTalkService paramAnonymousIGTalkService)
          {
            SignoutActivity.access$002(SignoutActivity.this, paramAnonymousIGTalkService);
            if (mGTalkService != null)
            {
              SignoutActivity.this.signOut();
              return;
            }
            if (TalkApp.debugLoggable()) {
              SignoutActivity.log("service disconnected, finish");
            }
            finish();
          }
        });
        return;
      }
      finally
      {
        if (paramBundle != null) {
          paramBundle.close();
        }
      }
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SignoutActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */