package com.google.android.apps.hangouts.realtimechat;

import android.app.IntentService;
import android.content.Intent;
import dyw;
import ilh;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import krz;
import kte;
import ktf;
import kyp;

public class RealTimeChatIncomingIntentService
  extends IntentService
{
  private static final String a = RealTimeChatIncomingIntentService.class.getSimpleName();
  private kte<Integer, dyw> b;
  
  public RealTimeChatIncomingIntentService()
  {
    super(a);
  }
  
  public void onCreate()
  {
    super.onCreate();
    ktf localktf = new ktf();
    Iterator localIterator1 = ilh.c(getApplicationContext(), dyw.class).iterator();
    while (localIterator1.hasNext())
    {
      dyw localdyw = (dyw)localIterator1.next();
      Iterator localIterator2 = localdyw.a().iterator();
      while (localIterator2.hasNext()) {
        localktf.a((Integer)localIterator2.next(), localdyw);
      }
    }
    b = localktf.a();
  }
  
  public void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent.hasExtra("op_code"))
    {
      kyp localkyp = b.d(Integer.valueOf(paramIntent.getIntExtra("op_code", -1))).a();
      while (localkyp.hasNext()) {
        ((dyw)localkyp.next()).a(getApplicationContext(), paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.RealTimeChatIncomingIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */