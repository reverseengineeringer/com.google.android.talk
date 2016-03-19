package com.google.android.apps.hangouts.phone;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.ArrayAdapter;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dfn;
import eao;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public class DebugActivity$RecordingService
  extends Service
{
  public static final SimpleDateFormat d = new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
  public final Handler a = new Handler();
  public ArrayAdapter<Intent> b;
  public final ArrayList<Intent> c = new ArrayList();
  public String e;
  private final IBinder f = new dfn(this);
  
  public void a(ArrayAdapter<Intent> paramArrayAdapter, String paramString)
  {
    b = paramArrayAdapter;
    e = paramString;
    b.clear();
    paramArrayAdapter = c.iterator();
    while (paramArrayAdapter.hasNext())
    {
      paramString = (Intent)paramArrayAdapter.next();
      if ((e == null) || (TextUtils.equals(paramString.getStringExtra("conversation_id"), e))) {
        b.add(paramString);
      }
    }
    b.notifyDataSetChanged();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return f;
  }
  
  public void onCreate()
  {
    RealTimeChatService.a(new eao(this));
  }
  
  public void onDestroy() {}
  
  public void onStart(Intent paramIntent, int paramInt) {}
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.DebugActivity.RecordingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */