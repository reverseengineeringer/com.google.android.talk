import android.content.Context;
import android.os.SystemClock;

public final class cso
  implements haw
{
  private static final boolean a = false;
  private fgr b;
  private long c;
  private int d;
  private final Context e;
  
  static
  {
    imx localimx = ezi.c;
  }
  
  public cso(Context paramContext, String paramString, int paramInt)
  {
    this(new fgr(paramContext.getApplicationContext(), "HANGOUT_LOG_REQUEST", paramString), paramInt, paramContext);
  }
  
  private cso(fgr paramfgr, int paramInt, Context paramContext)
  {
    b = paramfgr;
    d = paramInt;
    c = SystemClock.elapsedRealtime();
    e = paramContext;
  }
  
  public hax a(int paramInt)
  {
    return new csp(this, paramInt);
  }
  
  public void a()
  {
    c = SystemClock.elapsedRealtime();
  }
  
  public void a(kls paramkls)
  {
    b.a(kls.a(paramkls)).a();
    if (a) {
      paramkls.toString();
    }
  }
  
  int b()
  {
    return d;
  }
  
  Context c()
  {
    return e;
  }
  
  long d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     cso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */