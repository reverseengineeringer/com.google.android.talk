import java.io.Serializable;

public final class hos
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private boolean a;
  private int b = 0;
  private boolean c;
  private long d = 0L;
  private boolean e;
  private String f = "";
  private boolean g;
  private boolean h = false;
  private boolean i;
  private int j = 1;
  private boolean k;
  private String l = "";
  private boolean m;
  private hot n = hot.a;
  private boolean o;
  private String p = "";
  
  public int a()
  {
    return b;
  }
  
  public hos a(int paramInt)
  {
    a = true;
    b = paramInt;
    return this;
  }
  
  public hos a(long paramLong)
  {
    c = true;
    d = paramLong;
    return this;
  }
  
  public hos a(hos paramhos)
  {
    if (a) {
      a(paramhos.a());
    }
    if (c) {
      a(paramhos.b());
    }
    if (paramhos.c()) {
      a(paramhos.d());
    }
    if (g) {
      a(paramhos.f());
    }
    if (i) {
      b(paramhos.g());
    }
    if (paramhos.h()) {
      b(paramhos.i());
    }
    if (m) {
      a(paramhos.k());
    }
    if (o) {
      c(p);
    }
    return this;
  }
  
  public hos a(hot paramhot)
  {
    if (paramhot == null) {
      throw new NullPointerException();
    }
    m = true;
    n = paramhot;
    return this;
  }
  
  public hos a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    e = true;
    f = paramString;
    return this;
  }
  
  public hos a(boolean paramBoolean)
  {
    g = true;
    h = paramBoolean;
    return this;
  }
  
  public long b()
  {
    return d;
  }
  
  public hos b(int paramInt)
  {
    i = true;
    j = paramInt;
    return this;
  }
  
  public hos b(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    k = true;
    l = paramString;
    return this;
  }
  
  public boolean b(hos paramhos)
  {
    if (paramhos == null) {}
    do
    {
      return false;
      if (this == paramhos) {
        return true;
      }
    } while ((b != b) || (d != d) || (!f.equals(f)) || (h != h) || (j != j) || (!l.equals(l)) || (n != n) || (!p.equals(p)) || (o != o));
    return true;
  }
  
  public hos c(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    o = true;
    p = paramString;
    return this;
  }
  
  public boolean c()
  {
    return e;
  }
  
  public String d()
  {
    return f;
  }
  
  public hos e()
  {
    e = false;
    f = "";
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof hos)) && (b((hos)paramObject));
  }
  
  public boolean f()
  {
    return h;
  }
  
  public int g()
  {
    return j;
  }
  
  public boolean h()
  {
    return k;
  }
  
  public int hashCode()
  {
    int i2 = 1231;
    int i3 = a();
    int i4 = Long.valueOf(b()).hashCode();
    int i5 = d().hashCode();
    int i1;
    int i6;
    int i7;
    int i8;
    int i9;
    if (f())
    {
      i1 = 1231;
      i6 = g();
      i7 = i().hashCode();
      i8 = k().hashCode();
      i9 = p.hashCode();
      if (!o) {
        break label140;
      }
    }
    for (;;)
    {
      return (((((i1 + (((i3 + 2173) * 53 + i4) * 53 + i5) * 53) * 53 + i6) * 53 + i7) * 53 + i8) * 53 + i9) * 53 + i2;
      i1 = 1237;
      break;
      label140:
      i2 = 1237;
    }
  }
  
  public String i()
  {
    return l;
  }
  
  public hos j()
  {
    k = false;
    l = "";
    return this;
  }
  
  public hot k()
  {
    return n;
  }
  
  public hos l()
  {
    m = false;
    n = hot.a;
    return this;
  }
  
  public hos m()
  {
    o = false;
    p = "";
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Country Code: ").append(b);
    localStringBuilder.append(" National Number: ").append(d);
    if ((g) && (f())) {
      localStringBuilder.append(" Leading Zero(s): true");
    }
    if (i) {
      localStringBuilder.append(" Number of leading zeros: ").append(j);
    }
    if (c()) {
      localStringBuilder.append(" Extension: ").append(f);
    }
    if (m) {
      localStringBuilder.append(" Country Code Source: ").append(n);
    }
    if (o) {
      localStringBuilder.append(" Preferred Domestic Carrier Code: ").append(p);
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     hos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */