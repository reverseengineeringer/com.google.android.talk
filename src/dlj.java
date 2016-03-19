import android.content.Context;
import android.text.TextUtils;

public abstract class dlj
  implements dli, ios, iov, ioz
{
  private final dll a;
  final int b;
  final hpz c;
  private final int d;
  private boolean e = true;
  private boolean f;
  private String g;
  private hqg h = new dlk(this);
  
  public dlj(Context paramContext, iog paramiog, int paramInt1, int paramInt2)
  {
    c = ((hpz)ilh.a(paramContext, hpz.class));
    a = ((dll)ilh.a(paramContext, dll.class));
    aen.a(c.c(paramInt1));
    b = paramInt1;
    d = paramInt2;
    paramiog.a(this);
  }
  
  private void d()
  {
    if ((c.c(b)) && (!f) && (!e) && (g != null))
    {
      a.a(b, g, this, d);
      f = true;
      a(true);
      c.a(h);
    }
  }
  
  public void X_()
  {
    e = false;
    d();
  }
  
  public void a()
  {
    e = true;
    f();
  }
  
  public void a(String paramString)
  {
    if (TextUtils.equals(g, paramString)) {
      return;
    }
    f();
    g = paramString;
    c();
    d();
  }
  
  public void a(boolean paramBoolean) {}
  
  public abstract void c();
  
  public String e()
  {
    return g;
  }
  
  void f()
  {
    if (f)
    {
      a.a(this);
      f = false;
      a(false);
      c.b(h);
    }
  }
}

/* Location:
 * Qualified Name:     dlj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */