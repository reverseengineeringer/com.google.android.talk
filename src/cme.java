import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

final class cme
  implements ilu, ios, iov, ioz
{
  final ba a;
  cmu b;
  cln c;
  clt d;
  cls e;
  private final clm f;
  private final Handler g;
  private Runnable h;
  private boolean i;
  
  cme(ba paramba, iog paramiog)
  {
    a = paramba;
    g = new Handler(Looper.getMainLooper());
    f = new cmf(this);
    paramiog.a(this);
  }
  
  public void X_()
  {
    i = true;
    c.a(f);
    if (c.a() != null) {
      a(c.a());
    }
  }
  
  public void a()
  {
    i = false;
    c.b(f);
    c();
    if (e != null)
    {
      e.b();
      e = null;
    }
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((cmu)paramilh.a(cmu.class));
    c = ((cln)paramilh.a(cln.class));
  }
  
  void a(khk paramkhk)
  {
    if ((paramkhk != null) && (e == null) && (i))
    {
      h = new cmh(this, paramkhk);
      g.postDelayed(h, 1000L);
    }
  }
  
  void c()
  {
    if (h != null)
    {
      g.removeCallbacks(h);
      h = null;
    }
    if (d != null)
    {
      d.b();
      d = null;
    }
  }
}

/* Location:
 * Qualified Name:     cme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */