import android.graphics.RectF;

public final class hlc
{
  private int a;
  private int b;
  private int c;
  private int d;
  private RectF e = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
  private RectF f = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
  private int g;
  private boolean h;
  
  public hlc a()
  {
    hlc localhlc = new hlc();
    localhlc.a(a, b, c, d);
    localhlc.a(e);
    localhlc.b(f);
    localhlc.a(g);
    localhlc.a(h);
    return localhlc;
  }
  
  public hlc a(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public hlc a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, paramInt1, paramInt2);
  }
  
  public hlc a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
    return this;
  }
  
  public hlc a(RectF paramRectF)
  {
    RectF localRectF = paramRectF;
    if (paramRectF == null) {
      localRectF = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
    }
    e = localRectF;
    return this;
  }
  
  public hlc a(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  public int b()
  {
    return a;
  }
  
  public hlc b(RectF paramRectF)
  {
    RectF localRectF = paramRectF;
    if (paramRectF == null) {
      localRectF = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
    }
    f = localRectF;
    return this;
  }
  
  public int c()
  {
    return b;
  }
  
  public int d()
  {
    return c;
  }
  
  public int e()
  {
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof hlc)) {
        return false;
      }
      paramObject = (hlc)paramObject;
    } while ((a == a) && (b == b) && (c == c) && (d == d) && (e.equals(e)) && (f.equals(f)) && (g == g) && (h == h));
    return false;
  }
  
  public RectF f()
  {
    return e;
  }
  
  public RectF g()
  {
    return f;
  }
  
  public int h()
  {
    return g;
  }
  
  public boolean i()
  {
    return h;
  }
  
  public String toString()
  {
    int i = a;
    int j = b;
    int k = c;
    int m = d;
    String str1 = String.valueOf(e);
    String str2 = String.valueOf(f);
    int n = g;
    boolean bool = h;
    return String.valueOf(str1).length() + 146 + String.valueOf(str2).length() + "VideoFormatInfo(size=" + i + "x" + j + ",buffer=" + k + "x" + m + ",regionOfInterest=" + str1 + ",croppedRect=" + str2 + ",rotation=" + n + ",screenshare=" + bool + ")";
  }
}

/* Location:
 * Qualified Name:     hlc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */