import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.os.Vibrator;
import android.provider.Settings.System;

public final class ceb
{
  private long[] a;
  private Vibrator b;
  private boolean c;
  private ContentResolver d;
  private boolean e;
  
  public void a()
  {
    if (!c) {
      return;
    }
    for (;;)
    {
      try
      {
        if (Settings.System.getInt(d, "haptic_feedback_enabled", 0) != 0)
        {
          bool = true;
          e = bool;
          return;
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        ezi.d("Babel_dialer", "Could not retrieve system setting.", localNotFoundException);
        e = false;
        return;
      }
      boolean bool = false;
    }
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    c = paramBoolean;
    if (paramBoolean)
    {
      b = ((Vibrator)paramContext.getSystemService("vibrator"));
      a = new long[] { 0L, 10L, 20L, 30L };
      d = paramContext.getContentResolver();
    }
  }
  
  public void b()
  {
    if ((!c) || (!e)) {
      return;
    }
    if ((a != null) && (a.length == 1))
    {
      b.vibrate(a[0]);
      return;
    }
    b.vibrate(a, -1);
  }
}

/* Location:
 * Qualified Name:     ceb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */