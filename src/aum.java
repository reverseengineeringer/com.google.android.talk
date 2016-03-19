import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;

public final class aum<R>
  implements auh, aul, auv, avy
{
  public static final ic<aum<?>> a = avs.a(new aun());
  public aui b;
  public ahm c;
  public Object d;
  public Class<R> e;
  public aug<?> f;
  public int g;
  public int h;
  public ahs i;
  public auw<R> j;
  public auj<R> k;
  public alh l;
  public avc<? super R> m;
  public int n;
  private final String o = String.valueOf(hashCode());
  private final awa p = new awb();
  private alr<R> q;
  private alb r;
  private long s;
  private Drawable t;
  private Drawable u;
  private Drawable v;
  private int w;
  private int x;
  
  private Drawable a(int paramInt)
  {
    Resources localResources = c.getResources();
    Resources.Theme localTheme = f.u;
    if (Build.VERSION.SDK_INT >= 21) {
      return localResources.getDrawable(paramInt, localTheme);
    }
    return localResources.getDrawable(paramInt);
  }
  
  private void a(alm paramalm, int paramInt)
  {
    p.a();
    int i1 = c.d();
    Object localObject;
    if (i1 <= paramInt)
    {
      localObject = String.valueOf(d);
      paramInt = w;
      int i2 = x;
      new StringBuilder(String.valueOf(localObject).length() + 52).append("Load failed for ").append((String)localObject).append(" with size [").append(paramInt).append("x").append(i2).append("]");
      if (i1 <= 4) {
        paramalm.a("Glide");
      }
    }
    r = null;
    n = auo.e;
    if (k != null)
    {
      localObject = k;
      m();
      ((auj)localObject).a(paramalm);
    }
    if (l()) {
      if (d != null) {
        break label185;
      }
    }
    for (paramalm = k();; paramalm = t)
    {
      localObject = paramalm;
      if (paramalm == null) {
        localObject = j();
      }
      j.c((Drawable)localObject);
      return;
      label185:
      if (t == null)
      {
        t = f.e;
        if ((t == null) && (f.f > 0)) {
          t = a(f.f);
        }
      }
    }
  }
  
  private void a(alr paramalr)
  {
    
    if ((paramalr instanceof alk))
    {
      ((alk)paramalr).g();
      q = null;
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
  
  private void a(String paramString)
  {
    String str = o;
    new StringBuilder(String.valueOf(paramString).length() + 7 + String.valueOf(str).length()).append(paramString).append(" this: ").append(str);
  }
  
  private Drawable j()
  {
    if (u == null)
    {
      u = f.g;
      if ((u == null) && (f.h > 0)) {
        u = a(f.h);
      }
    }
    return u;
  }
  
  private Drawable k()
  {
    if (v == null)
    {
      v = f.o;
      if ((v == null) && (f.p > 0)) {
        v = a(f.p);
      }
    }
    return v;
  }
  
  private boolean l()
  {
    return (b == null) || (b.b(this));
  }
  
  private boolean m()
  {
    return (b == null) || (!b.d());
  }
  
  public void a()
  {
    p.a();
    s = avm.a();
    if (d == null)
    {
      if (avq.a(g, h))
      {
        w = g;
        x = h;
      }
      if (k() == null) {}
      for (int i1 = 5;; i1 = 3)
      {
        a(new alm("Received null model"), i1);
        return;
      }
    }
    n = auo.c;
    if (avq.a(g, h)) {
      a(g, h);
    }
    for (;;)
    {
      if (((n == auo.b) || (n == auo.c)) && (l())) {
        j.b(j());
      }
      if (!Log.isLoggable("Request", 2)) {
        break;
      }
      double d1 = avm.a(s);
      a(47 + "finished run method in " + d1);
      return;
      j.a(this);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    p.a();
    if (Log.isLoggable("Request", 2))
    {
      d1 = avm.a(s);
      a(43 + "Got onSizeReady in " + d1);
    }
    if (n != auo.c) {}
    do
    {
      return;
      n = auo.b;
      float f1 = f.b;
      w = Math.round(paramInt1 * f1);
      x = Math.round(f1 * paramInt2);
      if (Log.isLoggable("Request", 2))
      {
        d1 = avm.a(s);
        a(59 + "finished setup for calling load in " + d1);
      }
      r = l.a(c, d, f.l, w, x, f.s, e, i, f.c, f.r, f.m, f.q, f.i, this);
    } while (!Log.isLoggable("Request", 2));
    double d1 = avm.a(s);
    a(48 + "finished onSizeReady in " + d1);
  }
  
  public void a(alm paramalm)
  {
    a(paramalm, 5);
  }
  
  public void a(alr<?> paramalr, air paramair)
  {
    p.a();
    r = null;
    if (paramalr == null)
    {
      paramalr = String.valueOf("Expected to receive a Resource<R> with an object of ");
      paramair = String.valueOf(e);
      a(new alm(String.valueOf(paramalr).length() + 30 + String.valueOf(paramair).length() + paramalr + paramair + " inside, but instead got null."));
    }
    label292:
    do
    {
      return;
      Object localObject = paramalr.c();
      String str1;
      if ((localObject == null) || (!e.isAssignableFrom(localObject.getClass())))
      {
        a(paramalr);
        str1 = String.valueOf(e);
        String str2;
        String str3;
        if (localObject != null)
        {
          paramair = localObject.getClass();
          paramair = String.valueOf(paramair);
          str2 = String.valueOf(localObject);
          str3 = String.valueOf(paramalr);
          if (localObject == null) {
            break label292;
          }
        }
        for (paramalr = "";; paramalr = " To indicate failure return a null Resource object, rather than a Resource object containing null data.")
        {
          a(new alm(String.valueOf(str1).length() + 71 + String.valueOf(paramair).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(paramalr).length() + "Expected to receive an object of " + str1 + " but instead got " + paramair + "{" + str2 + "} inside Resource{" + str3 + "}." + paramalr));
          return;
          paramair = "";
          break;
        }
      }
      if ((b == null) || (b.a(this))) {}
      for (int i1 = 1; i1 == 0; i1 = 0)
      {
        a(paramalr);
        n = auo.d;
        return;
      }
      m();
      n = auo.d;
      q = paramalr;
      if (c.d() <= 3)
      {
        paramalr = String.valueOf(localObject.getClass().getSimpleName());
        paramair = String.valueOf(paramair);
        str1 = String.valueOf(d);
        i1 = w;
        int i2 = x;
        double d1 = avm.a(s);
        new StringBuilder(String.valueOf(paramalr).length() + 95 + String.valueOf(paramair).length() + String.valueOf(str1).length()).append("Finished loading ").append(paramalr).append(" from ").append(paramair).append(" for ").append(str1).append(" with size [").append(i1).append("x").append(i2).append("] in ").append(d1).append(" ms");
      }
      if ((k == null) || (!k.a()))
      {
        paramalr = ava.a;
        j.a(localObject);
      }
    } while (b == null);
    b.c(this);
  }
  
  public void b()
  {
    c();
    n = auo.h;
  }
  
  public void c()
  {
    
    if (n == auo.g) {
      return;
    }
    p.a();
    n = auo.f;
    if (r != null)
    {
      r.a();
      r = null;
    }
    if (q != null) {
      a(q);
    }
    if (l()) {
      j.d(j());
    }
    n = auo.g;
  }
  
  public boolean e()
  {
    return (n == auo.b) || (n == auo.c);
  }
  
  public boolean f()
  {
    return n == auo.d;
  }
  
  public boolean g()
  {
    return f();
  }
  
  public boolean h()
  {
    return (n == auo.f) || (n == auo.g);
  }
  
  public void i()
  {
    c = null;
    d = null;
    e = null;
    f = null;
    g = -1;
    h = -1;
    j = null;
    k = null;
    b = null;
    m = null;
    r = null;
    t = null;
    u = null;
    v = null;
    w = -1;
    x = -1;
    a.a(this);
  }
  
  public awa i_()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     aum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */