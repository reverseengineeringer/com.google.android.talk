import android.app.PendingIntent;
import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.location.copresence.internal.CopresenceApiOptions;

public final class gej
  extends gdw
{
  private final geh f = new geh(paramContext, e);
  private final gds g;
  
  public gej(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, String paramString)
  {
    this(paramContext, paramLooper, paramfif, paramfih, paramString, new fid(paramContext).a());
  }
  
  private gej(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, String paramString, fkq paramfkq)
  {
    this(paramContext, paramLooper, paramfif, paramfih, paramString, paramfkq, CopresenceApiOptions.a);
  }
  
  private gej(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, String paramString, fkq paramfkq, CopresenceApiOptions paramCopresenceApiOptions)
  {
    super(paramContext, paramLooper, paramfif, paramfih, paramString, paramfkq);
    g = new gds(paramContext, paramfkq.a(), paramfkq.g(), e, paramCopresenceApiOptions);
  }
  
  public void a(long paramLong, PendingIntent paramPendingIntent)
  {
    k();
    aal.d(paramPendingIntent);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      aal.b(bool, "detectionIntervalMillis must be >= 0");
      ((geb)m()).a(paramLong, true, paramPendingIntent);
      return;
    }
  }
  
  public void a(PendingIntent paramPendingIntent)
  {
    k();
    aal.d(paramPendingIntent);
    ((geb)m()).a(paramPendingIntent);
  }
  
  public void c()
  {
    synchronized (f)
    {
      boolean bool = d();
      if (bool) {}
      try
      {
        f.a();
        f.b();
        super.c();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", localException);
        }
      }
    }
  }
  
  public boolean n()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     gej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */