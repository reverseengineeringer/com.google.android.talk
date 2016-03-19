import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

final class cwv
{
  void a(Context paramContext, int paramInt1, int paramInt2)
  {
    int i = aal.a(paramContext, "babel_business_renotification_max_count", 3);
    Object localObject;
    long l;
    if ((paramInt2 > 0) || (paramInt2 <= i))
    {
      localObject = cwx.a(paramContext, paramInt1, false, false, true);
      if (a > 0)
      {
        if (cxt.b) {
          new StringBuilder(41).append("Renotify the business. Count: ").append(paramInt2);
        }
        cxt.a(paramContext, paramInt1, (cwx)localObject, false, false, false);
        paramInt2 += 1;
        switch (paramInt2)
        {
        default: 
          l = -1L;
        }
      }
    }
    for (;;)
    {
      if (l >= 0L)
      {
        localObject = (AlarmManager)paramContext.getSystemService("alarm");
        Intent localIntent = new cwu().a(paramContext, paramInt1, paramInt2);
        localIntent.setAction("com.google.android.apps.hangouts.UPDATE_NOTIFICATION");
        localIntent.setComponent(null);
        paramContext = PendingIntent.getBroadcast(paramContext, eyr.a(paramInt1, 1, 100, null), localIntent, 134217728);
        ((AlarmManager)localObject).set(2, l + SystemClock.elapsedRealtime(), paramContext);
      }
      return;
      l = aal.a(paramContext, "babel_business_1st_renotification_delay_ms", eea.p);
      continue;
      l = aal.a(paramContext, "babel_business_2nd_renotification_delay_ms", eea.q);
      continue;
      l = aal.a(paramContext, "babel_business_3rd_renotification_delay_ms", eea.r);
    }
  }
}

/* Location:
 * Qualified Name:     cwv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */