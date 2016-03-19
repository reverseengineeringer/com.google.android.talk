package com.google.android.apps.hangouts.serverupdate;

import aal;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.Process;
import android.os.SystemClock;
import bfd;
import cyh;
import dvd;
import eeb;
import eec;
import efo;
import efr;
import egn;
import egs;
import egt;
import ezi;
import ilh;
import imx;
import java.util.Iterator;
import java.util.List;
import knq;

public class ReceiveServerUpdateService
  extends eeb
{
  private static final boolean a;
  private static final int b;
  private static final Object c;
  private static PowerManager.WakeLock d;
  private static boolean e;
  
  static
  {
    imx localimx = ezi.o;
    a = false;
    b = Process.myPid();
    c = new Object();
    aal.a(new egn());
  }
  
  public ReceiveServerUpdateService()
  {
    super("ReceiveServerUpdateService");
  }
  
  private static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      String str = String.valueOf(Integer.toString(paramInt));
      return String.valueOf(str).length() + 17 + "(unknown opcode " + str + ")";
    }
    return "OP_RECEIVE_SERVER_UPDATE";
  }
  
  public static void a()
  {
    e = aal.a(aal.oJ, "babel_log_dump", false);
  }
  
  public static void a(String paramString, int paramInt, long paramLong1, long paramLong2, knq<Intent> paramknq)
  {
    Intent localIntent = new Intent(aal.oJ, ReceiveServerUpdateService.class);
    localIntent.putExtra("op", 1);
    localIntent.putExtra("account_id", paramInt);
    egt.a(localIntent, paramLong1, paramLong2);
    egt.a(localIntent, paramString);
    localIntent.putExtra("rqtms", SystemClock.elapsedRealtime());
    if ((a) || (e)) {
      localIntent.putExtra("rqtns", System.nanoTime());
    }
    paramString = aal.oJ;
    for (;;)
    {
      synchronized (c)
      {
        if (d == null) {
          d = ((PowerManager)paramString.getSystemService("power")).newWakeLock(1, "hangouts_rsus");
        }
        if (a)
        {
          ??? = String.valueOf(a(localIntent.getIntExtra("op", 0)));
          if (((String)???).length() != 0) {
            "acquiring wakelock for opcode ".concat((String)???);
          }
        }
        else
        {
          d.acquire();
          localIntent.setClass(paramString, ReceiveServerUpdateService.class);
          localIntent.putExtra("pid", b);
          localIntent.putExtra("stack_trace", ezi.a(new Throwable()));
          if (((eec)ilh.a(paramString, eec.class)).a(paramString, localIntent, paramknq) == null)
          {
            paramString = String.valueOf(localIntent);
            ezi.e("Babel_RecSvrUpdateSvc", String.valueOf(paramString).length() + 62 + "ReceiveServerUpdateService failed to start service for intent " + paramString, new Object[0]);
            d.release();
          }
          return;
        }
      }
      new String("acquiring wakelock for opcode ");
    }
  }
  
  public void a(Intent paramIntent, knq<Intent> paramknq)
  {
    if (paramIntent == null)
    {
      ezi.d("Babel_RecSvrUpdateSvc", "ReceiveServerUpdateService onHandleIntent called with null intent", new Object[0]);
      return;
    }
    if (b == paramIntent.getIntExtra("pid", -1)) {}
    int i;
    for (boolean bool = true;; bool = false) {
      try
      {
        i = paramIntent.getIntExtra("account_id", -1);
        localObject1 = dvd.e(i);
        int j = paramIntent.getIntExtra("op", 0);
        if (a)
        {
          localObject2 = String.valueOf(paramIntent);
          str = String.valueOf(a(j));
          new StringBuilder(String.valueOf(localObject2).length() + 73 + String.valueOf(str).length()).append("ReceiveServerUpdateService onHandleIntent ").append((String)localObject2).append(" opCode: ").append(str).append(" respectWakeLock ").append(bool);
        }
        if (localObject1 != null) {}
        switch (j)
        {
        default: 
          return;
        }
      }
      finally
      {
        Object localObject1;
        Object localObject2;
        String str;
        Object localObject3;
        if (!bool) {
          break label418;
        }
        d.release();
      }
    }
    paramIntent = egt.a(paramIntent, i, true);
    if (paramIntent != null)
    {
      localObject1 = paramIntent.iterator();
      label201:
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (egs)((Iterator)localObject1).next();
        if ((localObject2 instanceof efr)) {
          ((efr)localObject2).a(1);
        }
        localObject3 = dvd.e(i);
        if (ezi.a("Babel_RecSvrUpdateSvc", 3))
        {
          paramIntent = null;
          if ((localObject2 instanceof efo)) {
            paramIntent = a;
          }
          str = String.valueOf(localObject2.getClass().getSimpleName());
          localObject3 = String.valueOf(((bfd)localObject3).b());
          if (paramIntent == null) {
            break label489;
          }
          paramIntent = String.valueOf(paramIntent);
          if (paramIntent.length() == 0) {
            break label420;
          }
          paramIntent = "update convId ".concat(paramIntent);
        }
      }
    }
    for (;;)
    {
      ezi.a("Babel_RecSvrUpdateSvc", String.valueOf(str).length() + 32 + String.valueOf(localObject3).length() + String.valueOf(paramIntent).length() + "processServerUpdate: " + str + ", account: " + (String)localObject3 + paramIntent, new Object[0]);
      ((egs)localObject2).a(i, paramknq);
      break label201;
      break;
      label418:
      label420:
      paramIntent = new String("update convId ");
      continue;
      ezi.e("Babel_RecSvrUpdateSvc", "could not parse ServerUpdate", new Object[0]);
      break;
      paramknq = paramIntent.getStringExtra("message_id");
      paramIntent = paramIntent.getStringExtra("conversation_id");
      ((cyh)ilh.a(getApplicationContext(), cyh.class)).a(i, paramknq, paramIntent);
      break;
      label489:
      paramIntent = "";
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.serverupdate.ReceiveServerUpdateService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */