package com.google.android.libraries.componentview.api.external;

import android.os.Build.VERSION;
import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

public class Readyable$ReadyInfo
{
  public final long a;
  
  public Readyable$ReadyInfo()
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = SystemClock.elapsedRealtimeNanos();
      return;
    }
    a = TimeUnit.MILLISECONDS.toNanos(SystemClock.elapsedRealtime());
  }
  
  public Readyable$ReadyInfo(long paramLong)
  {
    a = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */