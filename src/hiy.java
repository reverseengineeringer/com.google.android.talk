import android.content.Context;
import android.content.ServiceConnection;
import android.os.AsyncTask;

public final class hiy
{
  private static boolean g = false;
  final Context a;
  hcd b;
  hcr c;
  final ServiceConnection d = new hiz(this);
  private final hde e;
  private final hcb f;
  
  public hiy(Context paramContext)
  {
    a = paramContext;
    e = new hde();
    if (!e.a(paramContext)) {
      hlk.a(6, "vclib", "Hangouts not supported by this device");
    }
    if (!g)
    {
      ilh.b(a).a(hcb.class, new hcb());
      g = true;
    }
    f = ((hcb)ilh.b(paramContext).a(hcb.class));
  }
  
  public hks a(hkt paramhkt)
  {
    hbs.a("Expected null", b);
    b = new hcd(a, paramhkt);
    b.a(new hja(this));
    return b;
  }
  
  void a()
  {
    if (c != null) {}
    try
    {
      c.a();
      a.unbindService(d);
      c = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      hlk.a("vclib", "Error disconnecting CallService", localIllegalArgumentException);
    }
  }
  
  public void a(String paramString, hjb paramhjb)
  {
    new hjc(this, f.a(paramString), paramhjb).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }
  
  public hks b()
  {
    return b;
  }
  
  public void finalize()
  {
    if (b != null)
    {
      b.a(30);
      b = null;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     hiy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */