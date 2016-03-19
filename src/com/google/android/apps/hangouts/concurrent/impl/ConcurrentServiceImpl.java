package com.google.android.apps.hangouts.concurrent.impl;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.os.SystemClock;
import bcp;
import bcu;
import bdc;
import bde;
import bdf;
import bdh;
import bdi;
import bdj;
import bdl;
import bdm;
import ezv;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import lbm;

public class ConcurrentServiceImpl
  extends Service
  implements bde
{
  public static final StrictMode.ThreadPolicy a = new StrictMode.ThreadPolicy.Builder().detectCustomSlowCalls().penaltyLog().build();
  public static final long b = TimeUnit.MINUTES.toMillis(2L);
  private static final int h = Runtime.getRuntime().availableProcessors();
  private static final ezv i = ezv.a("concurrent");
  private static final bcu[] j = bcu.values();
  public bdm c;
  public boolean d;
  public ExecutorService e = Executors.newSingleThreadExecutor();
  ExecutorService f = Executors.newScheduledThreadPool(h, new lbm().a().a("Hangouts Concurrent Service Thread %d").a(new bdf(this)).b());
  public final Runnable g = new bdh(this);
  private final Handler k = new Handler(Looper.getMainLooper());
  private final IBinder l = new bdl(this);
  private Context m;
  private AlarmManager n;
  private final Runnable o = new bdi(this);
  private final Runnable p = new bdj(this);
  
  /* Error */
  private void a(Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ldc -84
    //   5: invokevirtual 178	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   8: checkcast 180	bcp
    //   11: astore_1
    //   12: aload_1
    //   13: ifnull +11 -> 24
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 183	com/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl:a	(Lbcp;)V
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getstatic 98	com/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl:b	J
    //   28: invokevirtual 186	com/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl:b	(J)V
    //   31: goto -10 -> 21
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	ConcurrentServiceImpl
    //   0	39	1	paramIntent	Intent
    // Exception table:
    //   from	to	target	type
    //   2	12	34	finally
    //   16	21	34	finally
    //   24	31	34	finally
  }
  
  public void a()
  {
    try
    {
      c.c();
      stopSelf();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(long paramLong)
  {
    paramLong -= SystemClock.elapsedRealtime();
    if (paramLong > 0L)
    {
      if (n == null) {
        n = ((AlarmManager)m.getSystemService("alarm"));
      }
      new StringBuilder(59).append("******** Scheduling alarm for ").append(paramLong).append("ms delay.");
      Object localObject = new Intent(m, ConcurrentServiceImpl.class);
      ((Intent)localObject).putExtra("concurrent_service_command_key", bcu.c.ordinal());
      localObject = PendingIntent.getService(m, 0, (Intent)localObject, 0);
      n.set(3, SystemClock.elapsedRealtime() + paramLong, (PendingIntent)localObject);
    }
    b();
    b(Math.max(0L, paramLong) + b);
  }
  
  public void a(bcp parambcp)
  {
    for (;;)
    {
      try
      {
        String str1 = String.valueOf(parambcp.a());
        if (str1.length() != 0)
        {
          "Scheduling one task: ".concat(str1);
          ezv localezv = i;
          str1 = String.valueOf("SCHEDULE_");
          String str2 = String.valueOf(parambcp.a());
          if (str2.length() != 0)
          {
            str1 = str1.concat(str2);
            localezv.c(str1);
            c.b();
            c.a(parambcp, false);
          }
        }
        else
        {
          new String("Scheduling one task: ");
          continue;
        }
        str1 = new String(str1);
      }
      finally {}
    }
  }
  
  public void b()
  {
    try
    {
      f.submit(new bdc(m, c));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(long paramLong)
  {
    try
    {
      k.removeCallbacks(o);
      k.postDelayed(o, paramLong);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    try
    {
      d = true;
      a(paramIntent);
      paramIntent = l;
      return paramIntent;
    }
    finally
    {
      paramIntent = finally;
      throw paramIntent;
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
    m = getApplicationContext();
    c = bdm.a(m, this);
    e.submit(p);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent == null) {}
    try
    {
      b();
      return 2;
    }
    finally {}
    paramInt1 = paramIntent.getIntExtra("concurrent_service_command_key", -1);
    switch (bdk.a[j[paramInt1].ordinal()])
    {
    }
    for (;;)
    {
      throw new IllegalArgumentException(28 + "Unknown command: " + paramInt1);
      b();
      break;
      b();
      break;
    }
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    try
    {
      d = false;
      b(b);
      boolean bool = super.onUnbind(paramIntent);
      return bool;
    }
    finally
    {
      paramIntent = finally;
      throw paramIntent;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.concurrent.impl.ConcurrentServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */