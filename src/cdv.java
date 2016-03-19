import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.media.ToneGenerator;
import android.provider.Settings.System;

public final class cdv
{
  private boolean a;
  private final Context b;
  private final ceb c = new ceb();
  private ToneGenerator d;
  
  public cdv(Context paramContext)
  {
    b = paramContext;
    try
    {
      c.a(b, b.getResources().getBoolean(aal.cO));
    }
    catch (Resources.NotFoundException paramContext)
    {
      try
      {
        for (;;)
        {
          d = new ToneGenerator(8, 80);
          b();
          return;
          paramContext = paramContext;
          ezi.d("Babel_dialer", "Vibrate control bool missing.", paramContext);
        }
      }
      catch (RuntimeException paramContext)
      {
        for (;;)
        {
          ezi.c("Babel_dialer", "ToneGenerator was not able to be initialized. This might be due to Android running out of AudioTracks. Is another app potentially using up too many audio tracks?", paramContext);
        }
      }
    }
  }
  
  private boolean e()
  {
    return d != null;
  }
  
  public void a()
  {
    if (e())
    {
      d.release();
      d = null;
    }
  }
  
  public void a(int paramInt)
  {
    if ((e()) && (a)) {
      d.startTone(paramInt, -1);
    }
  }
  
  public void b()
  {
    boolean bool = true;
    if (Settings.System.getInt(b.getContentResolver(), "dtmf_tone", 1) == 1) {}
    for (;;)
    {
      a = bool;
      c.a();
      return;
      bool = false;
    }
  }
  
  public void c()
  {
    if (e()) {
      d.stopTone();
    }
  }
  
  public void d()
  {
    c.b();
  }
}

/* Location:
 * Qualified Name:     cdv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */