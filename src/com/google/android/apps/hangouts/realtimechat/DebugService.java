package com.google.android.apps.hangouts.realtimechat;

import aal;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import biw;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;
import dvd;
import dwt;
import eak;
import eit;
import ezi;
import hli;
import hlm;
import ilh;
import imx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class DebugService
  extends Service
{
  private static final boolean a = false;
  private static volatile boolean b;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public static void a(Context paramContext)
  {
    int i = 1;
    boolean bool1 = aal.a(paramContext, "babel_log_dump", false);
    if (a)
    {
      boolean bool2 = b;
      new StringBuilder(65).append("refreshGservices currently enabled: ").append(bool2).append(" captureDebugLogs: ").append(bool1);
    }
    if ((bool1) && (!b)) {
      b = true;
    }
    for (;;)
    {
      if (i != 0)
      {
        Intent localIntent = new Intent(paramContext, DebugService.class);
        localIntent.putExtra("enabled", b);
        paramContext.startService(localIntent);
      }
      return;
      if ((!bool1) && (b)) {
        b = false;
      } else {
        i = 0;
      }
    }
  }
  
  protected void dump(FileDescriptor arg1, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i8 = 1;
    int n = 1;
    int i6 = 1;
    int i2 = 1;
    int i5 = 1;
    int m = 1;
    int k = 1;
    int i4 = 1;
    int j = 1;
    int i1 = 1;
    int i = 1;
    int i3 = 1;
    if (paramArrayOfString != null)
    {
      int i9 = paramArrayOfString.length;
      int i7 = 0;
      i = i3;
      j = i1;
      k = i4;
      i5 = m;
      i6 = i2;
      i8 = n;
      if (i7 < i9)
      {
        ??? = paramArrayOfString[i7];
        if ("-all".equals(???))
        {
          k = 1;
          j = 1;
          i = 1;
          i6 = m;
          i5 = i1;
        }
        for (;;)
        {
          i7 += 1;
          i1 = i5;
          i4 = i;
          m = i6;
          i2 = j;
          n = k;
          break;
          if ("-log".equals(???))
          {
            k = 1;
            i5 = i1;
            i = i4;
            i6 = m;
            j = i2;
          }
          else if ("-nolog".equals(???))
          {
            k = 0;
            i5 = i1;
            i = i4;
            i6 = m;
            j = i2;
          }
          else if ("-watermarks".equals(???))
          {
            j = 1;
            i5 = i1;
            i = i4;
            i6 = m;
            k = n;
          }
          else if ("-nowatermarks".equals(???))
          {
            j = 0;
            i5 = i1;
            i = i4;
            i6 = m;
            k = n;
          }
          else if ("-accounts".equals(???))
          {
            i6 = 1;
            i5 = i1;
            i = i4;
            j = i2;
            k = n;
          }
          else if ("-noaccounts".equals(???))
          {
            i6 = 0;
            i5 = i1;
            i = i4;
            j = i2;
            k = n;
          }
          else if ("-nav".equals(???))
          {
            i = 1;
            i5 = i1;
            i6 = m;
            j = i2;
            k = n;
          }
          else if ("-nonav".equals(???))
          {
            i = 0;
            i5 = i1;
            i6 = m;
            j = i2;
            k = n;
          }
          else if ("-rtcs".equals(???))
          {
            i5 = 1;
            i = i4;
            i6 = m;
            j = i2;
            k = n;
          }
          else if ("-nortcs".equals(???))
          {
            i5 = 0;
            i = i4;
            i6 = m;
            j = i2;
            k = n;
          }
          else if ("-medialoader".equals(???))
          {
            i3 = 1;
            i5 = i1;
            i = i4;
            i6 = m;
            j = i2;
            k = n;
          }
          else
          {
            i5 = i1;
            i = i4;
            i6 = m;
            j = i2;
            k = n;
            if ("-nomedialoader".equals(???))
            {
              i3 = 0;
              i5 = i1;
              i = i4;
              i6 = m;
              j = i2;
              k = n;
            }
          }
        }
      }
    }
    if (i5 != 0)
    {
      dvd.a(paramPrintWriter);
      ??? = dwt.a();
      if (??? != null) {
        break label719;
      }
      paramPrintWriter.println("GCM Registration not inited");
    }
    for (;;)
    {
      if (i6 != 0)
      {
        paramPrintWriter.println("");
        paramPrintWriter.println("----WatermarkTracker-----");
        ((biw)ilh.a(this, biw.class)).a();
      }
      if (i8 != 0)
      {
        paramPrintWriter.println("");
        paramPrintWriter.println("------------------------");
        paramPrintWriter.println("### Log History ###");
        ??? = ezi.z;
        if (??? != null) {
          ???.a(paramPrintWriter);
        }
      }
      if (k != 0)
      {
        paramPrintWriter.println("");
        paramPrintWriter.println("------------------------");
        paramPrintWriter.println("### Log Navigations ###");
        BabelHomeActivity.a(paramPrintWriter);
      }
      if (j != 0)
      {
        paramPrintWriter.println("");
        paramPrintWriter.println("------------------------");
        paramPrintWriter.println("### RTCS intents ###");
      }
      synchronized (RealTimeChatService.j)
      {
        if (RealTimeChatService.h == null)
        {
          if (i != 0)
          {
            paramPrintWriter.println("");
            paramPrintWriter.println("------------------------");
            paramPrintWriter.println("### MediaLoader Requests ###");
            eit.a(paramPrintWriter);
          }
          return;
          label719:
          ???.a(paramPrintWriter);
          continue;
        }
        paramPrintWriter.println("enqueueTime          s-q   e-s   e-q opcode");
        paramArrayOfString = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.getDefault());
        j = 0;
        while (j < RealTimeChatService.h.a())
        {
          eak localeak = (eak)RealTimeChatService.h.a(j);
          paramPrintWriter.println(String.format(Locale.getDefault(), "%s %5d %5d %5d %s", new Object[] { paramArrayOfString.format(Long.valueOf(b)), Long.valueOf((d - c) / 1000000L), Long.valueOf((e - d) / 1000000L), Long.valueOf((e - c) / 1000000L), RealTimeChatService.g(a) }));
          j += 1;
        }
      }
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (a)
    {
      String str = String.valueOf(paramIntent);
      new StringBuilder(String.valueOf(str).length() + 15).append("onStartCommand ").append(str);
    }
    if (paramIntent != null)
    {
      boolean bool = paramIntent.getBooleanExtra("enabled", false);
      if (a) {
        new StringBuilder(29).append("onStartCommand enabled: ").append(bool);
      }
      if (!bool) {
        stopSelf();
      }
    }
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.DebugService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */