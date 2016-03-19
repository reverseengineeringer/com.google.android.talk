package com.google.android.apps.hangouts.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import egz;
import ezi;
import hbs;
import imx;
import java.io.IOException;

public class AudioPlayerService
  extends Service
{
  public static final boolean a = false;
  public egz b = null;
  
  static
  {
    imx localimx = ezi.a;
  }
  
  public static Intent a(String paramString1, String paramString2)
  {
    paramString1 = new Intent(paramString1);
    paramString1.putExtra("play_id", paramString2);
    return paramString1;
  }
  
  private static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 19 + "UNKNOWN:" + paramInt;
    case 1: 
      return "PREPARE";
    case 2: 
      return "PLAY";
    case 3: 
      return "PAUSE";
    case 4: 
      return "SEEK";
    case 5: 
      return "STOP";
    case 6: 
      return "REGISTER";
    }
    return "UNREGISTER";
  }
  
  private void a()
  {
    b.g();
    b = null;
  }
  
  protected void a(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("op", 0);
    String str1 = paramIntent.getStringExtra("play_id");
    if (TextUtils.isEmpty(str1))
    {
      ezi.d("Babel", "No EXTRA_PLAY_ID in intent sent to AudioPlayerService.", new Object[0]);
      return;
    }
    if ((i != 1) && ((b == null) || (!str1.equals(b.a()))))
    {
      paramIntent = String.valueOf(a(i));
      ezi.d("Babel", String.valueOf(paramIntent).length() + 51 + String.valueOf(str1).length() + "Ignoring " + paramIntent + " message because playId \"" + str1 + "\" is not current.", new Object[0]);
      sendBroadcast(a("play_stopped", str1));
      return;
    }
    if (a)
    {
      String str2 = String.valueOf(a(i));
      if (str2.length() == 0) {
        break label243;
      }
      "AudioPlayerService received op: ".concat(str2);
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        ezi.d("Babel", 40 + "Unrecognized EXTRA_OP value: " + i, new Object[0]);
        return;
        label243:
        new String("AudioPlayerService received op: ");
      }
    }
    if (b != null) {
      a();
    }
    paramIntent = paramIntent.getStringExtra("audio_stream_url");
    hbs.b("Expected condition to be false", TextUtils.isEmpty(paramIntent));
    try
    {
      b = new egz(this, this, paramIntent, str1);
      return;
    }
    catch (IOException paramIntent)
    {
      sendBroadcast(a("play_stopped", str1));
      b = null;
      return;
    }
    b.b();
    return;
    b.c();
    return;
    b.a(paramIntent.getIntExtra("position_in_milliseconds", 0));
    return;
    a();
    return;
    b.d();
    return;
    b.e();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onDestroy()
  {
    if (b != null) {
      a();
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent == null) {}
    do
    {
      return 2;
      a(paramIntent);
    } while (b != null);
    stopSelf();
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.AudioPlayerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */