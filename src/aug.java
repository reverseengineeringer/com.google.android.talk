import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.HashMap;
import java.util.Map;

public class aug<CHILD extends aug<CHILD>>
  implements Cloneable
{
  int a;
  float b = 1.0F;
  akr c = akr.e;
  public ahs d = ahs.c;
  Drawable e;
  int f;
  Drawable g;
  int h;
  boolean i = true;
  public int j = -1;
  public int k = -1;
  aiw l = avd.b;
  boolean m;
  public boolean n = true;
  Drawable o;
  int p;
  public aja q = new aja();
  Map<Class<?>, ajd<?>> r = new HashMap();
  Class<?> s = Object.class;
  public boolean t;
  Resources.Theme u;
  public boolean v;
  
  private CHILD a(Context paramContext, are paramare, ajd<Bitmap> paramajd)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    localaug.a(paramare);
    return localaug.b(paramContext, paramajd);
  }
  
  private <T> CHILD a(Class<T> paramClass, ajd<T> paramajd)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    aal.a(paramClass, "Argument must not be null");
    aal.a(paramajd, "Argument must not be null");
    r.put(paramClass, paramajd);
    a |= 0x800;
    n = true;
    a |= 0x10000;
    return localaug.d();
  }
  
  private CHILD b(Context paramContext, are paramare, ajd<Bitmap> paramajd)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    localaug.a(paramare);
    return localaug.a(paramContext, paramajd);
  }
  
  private static boolean b(int paramInt1, int paramInt2)
  {
    return (paramInt1 & paramInt2) != 0;
  }
  
  public final CHILD a()
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    i = false;
    a |= 0x100;
    return localaug.d();
  }
  
  public final CHILD a(float paramFloat)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    if ((paramFloat < 0.0F) || (paramFloat > 1.0F)) {
      throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }
    b = paramFloat;
    a |= 0x2;
    return localaug.d();
  }
  
  public final CHILD a(int paramInt1, int paramInt2)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    k = paramInt1;
    j = paramInt2;
    a |= 0x200;
    return localaug.d();
  }
  
  public final CHILD a(ahs paramahs)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    d = ((ahs)aal.a(paramahs, "Argument must not be null"));
    a |= 0x8;
    return localaug.d();
  }
  
  public CHILD a(ais paramais)
  {
    return a(arm.a, aal.a(paramais, "Argument must not be null"));
  }
  
  public final CHILD a(aiw paramaiw)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    l = ((aiw)aal.a(paramaiw, "Argument must not be null"));
    a |= 0x400;
    return localaug.d();
  }
  
  public final <T> CHILD a(aix<T> paramaix, T paramT)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    aal.a(paramaix, "Argument must not be null");
    aal.a(paramT, "Argument must not be null");
    q.a(paramaix, paramT);
    return localaug.d();
  }
  
  public final CHILD a(akr paramakr)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    c = ((akr)aal.a(paramakr, "Argument must not be null"));
    a |= 0x4;
    return localaug.d();
  }
  
  public CHILD a(Context paramContext)
  {
    return a(paramContext, are.b, new arb(paramContext));
  }
  
  public CHILD a(Context paramContext, ajd<Bitmap> paramajd)
  {
    if (v) {
      return b().a(paramContext, paramajd);
    }
    b(paramContext, paramajd);
    m = true;
    a |= 0x20000;
    return d();
  }
  
  public CHILD a(are paramare)
  {
    return a(arm.b, aal.a(paramare, "Argument must not be null"));
  }
  
  public final CHILD a(aug<?> paramaug)
  {
    for (aug localaug = this; v; localaug = localaug.b()) {}
    if (b(a, 2)) {
      b = b;
    }
    if (b(a, 4)) {
      c = c;
    }
    if (b(a, 8)) {
      d = d;
    }
    if (b(a, 16)) {
      e = e;
    }
    if (b(a, 32)) {
      f = f;
    }
    if (b(a, 64)) {
      g = g;
    }
    if (b(a, 128)) {
      h = h;
    }
    if (b(a, 256)) {
      i = i;
    }
    if (b(a, 512))
    {
      k = k;
      j = j;
    }
    if (b(a, 1024)) {
      l = l;
    }
    if (b(a, 4096)) {
      s = s;
    }
    if (b(a, 8192)) {
      o = o;
    }
    if (b(a, 16384)) {
      p = p;
    }
    if (b(a, 32768)) {
      u = u;
    }
    if (b(a, 65536)) {
      n = n;
    }
    if (b(a, 131072)) {
      m = m;
    }
    if (b(a, 2048)) {
      r.putAll(r);
    }
    if (!n)
    {
      r.clear();
      a &= 0xF7FF;
      m = false;
      a &= 0xFFFDFFFF;
    }
    a |= a;
    q.a(q);
    return localaug.d();
  }
  
  public boolean a(int paramInt)
  {
    return b(a, paramInt);
  }
  
  public final CHILD b()
  {
    try
    {
      aug localaug = (aug)super.clone();
      q = new aja();
      q.a(q);
      r = new HashMap();
      r.putAll(r);
      t = false;
      v = false;
      return localaug;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public CHILD b(Context paramContext)
  {
    return a(paramContext, are.a, new arp(paramContext));
  }
  
  public CHILD b(Context paramContext, ajd<Bitmap> paramajd)
  {
    if (v) {
      return b().b(paramContext, paramajd);
    }
    a(Bitmap.class, paramajd);
    a(BitmapDrawable.class, new aqw(paramContext, paramajd));
    a(asn.class, new asq(paramContext, paramajd));
    return d();
  }
  
  public final CHILD c()
  {
    if ((t) && (!v)) {
      throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }
    v = true;
    t = true;
    return this;
  }
  
  public CHILD c(Context paramContext)
  {
    return b(paramContext, are.a, new arp(paramContext));
  }
  
  public CHILD d()
  {
    if (t) {
      throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
    }
    return this;
  }
  
  public CHILD d(Context paramContext)
  {
    return a(paramContext, are.e, new arc(paramContext));
  }
  
  public CHILD e(Context paramContext)
  {
    return b(paramContext, are.e, new arc(paramContext));
  }
}

/* Location:
 * Qualified Name:     aug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */