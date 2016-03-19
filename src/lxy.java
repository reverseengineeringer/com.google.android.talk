public final class lxy
{
  private final byte[] a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g = Integer.MAX_VALUE;
  private int h;
  private int i = 64;
  private int j = 67108864;
  
  private lxy(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = (paramInt1 + paramInt2);
    e = paramInt1;
  }
  
  public static lxy a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static lxy a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new lxy(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void f(int paramInt)
  {
    if (paramInt < 0) {
      throw lyg.b();
    }
    if (e + paramInt > g)
    {
      f(g - e);
      throw lyg.a();
    }
    if (paramInt <= c - e)
    {
      e += paramInt;
      return;
    }
    throw lyg.a();
  }
  
  private long s()
  {
    int k = 0;
    long l = 0L;
    while (k < 64)
    {
      int m = w();
      l |= (m & 0x7F) << k;
      if ((m & 0x80) == 0) {
        return l;
      }
      k += 7;
    }
    throw lyg.c();
  }
  
  private int t()
  {
    return w() & 0xFF | (w() & 0xFF) << 8 | (w() & 0xFF) << 16 | (w() & 0xFF) << 24;
  }
  
  private long u()
  {
    int k = w();
    int m = w();
    int n = w();
    int i1 = w();
    int i2 = w();
    int i3 = w();
    int i4 = w();
    int i5 = w();
    long l = k;
    return (m & 0xFF) << 8 | l & 0xFF | (n & 0xFF) << 16 | (i1 & 0xFF) << 24 | (i2 & 0xFF) << 32 | (i3 & 0xFF) << 40 | (i4 & 0xFF) << 48 | (i5 & 0xFF) << 56;
  }
  
  private void v()
  {
    c += d;
    int k = c;
    if (k > g)
    {
      d = (k - g);
      c -= d;
      return;
    }
    d = 0;
  }
  
  private byte w()
  {
    if (e == c) {
      throw lyg.a();
    }
    byte[] arrayOfByte = a;
    int k = e;
    e = (k + 1);
    return arrayOfByte[k];
  }
  
  public int a()
  {
    if (e == c) {}
    for (int k = 1; k != 0; k = 0)
    {
      f = 0;
      return 0;
    }
    f = p();
    if (f == 0) {
      throw new lyg("Protocol message contained an invalid tag (zero).");
    }
    return f;
  }
  
  public void a(int paramInt)
  {
    if (f != paramInt) {
      throw new lyg("Protocol message end-group tag did not match expected tag.");
    }
  }
  
  public void a(lyi paramlyi)
  {
    int k = p();
    if (h >= i) {
      throw lyg.d();
    }
    k = c(k);
    h += 1;
    paramlyi.a(this);
    a(0);
    h -= 1;
    d(k);
  }
  
  public void a(lyi paramlyi, int paramInt)
  {
    if (h >= i) {
      throw lyg.d();
    }
    h += 1;
    paramlyi.a(this);
    a(paramInt << 3 | 0x4);
    h -= 1;
  }
  
  public byte[] a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return lyo.h;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int k = b;
    System.arraycopy(a, k + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public double b()
  {
    return Double.longBitsToDouble(u());
  }
  
  public boolean b(int paramInt)
  {
    switch (paramInt & 0x7)
    {
    default: 
      throw new lyg("Protocol message tag had invalid wire type.");
    case 0: 
      f();
      return true;
    case 1: 
      u();
      return true;
    case 2: 
      f(p());
      return true;
    case 3: 
      int k;
      do
      {
        k = a();
      } while ((k != 0) && (b(k)));
      a(paramInt >>> 3 << 3 | 0x4);
      return true;
    case 4: 
      return false;
    }
    t();
    return true;
  }
  
  public float c()
  {
    return Float.intBitsToFloat(t());
  }
  
  public int c(int paramInt)
  {
    if (paramInt < 0) {
      throw lyg.b();
    }
    paramInt = e + paramInt;
    int k = g;
    if (paramInt > k) {
      throw lyg.a();
    }
    g = paramInt;
    v();
    return k;
  }
  
  public long d()
  {
    return s();
  }
  
  public void d(int paramInt)
  {
    g = paramInt;
    v();
  }
  
  public long e()
  {
    return s();
  }
  
  public void e(int paramInt)
  {
    if (paramInt > e - b)
    {
      int k = e;
      int m = b;
      throw new IllegalArgumentException(50 + "Position " + paramInt + " is beyond current " + (k - m));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException(24 + "Bad position " + paramInt);
    }
    e = (b + paramInt);
  }
  
  public int f()
  {
    return p();
  }
  
  public long g()
  {
    return u();
  }
  
  public int h()
  {
    return t();
  }
  
  public boolean i()
  {
    return p() != 0;
  }
  
  public String j()
  {
    int k = p();
    if (k < 0) {
      throw lyg.b();
    }
    if (k > c - e) {
      throw lyg.a();
    }
    String str = new String(a, e, k, "UTF-8");
    e = (k + e);
    return str;
  }
  
  public byte[] k()
  {
    int k = p();
    if (k < 0) {
      throw lyg.b();
    }
    if (k == 0) {
      return lyo.h;
    }
    if (k > c - e) {
      throw lyg.a();
    }
    byte[] arrayOfByte = new byte[k];
    System.arraycopy(a, e, arrayOfByte, 0, k);
    e = (k + e);
    return arrayOfByte;
  }
  
  public int l()
  {
    return p();
  }
  
  public int m()
  {
    return t();
  }
  
  public int n()
  {
    int k = p();
    return -(k & 0x1) ^ k >>> 1;
  }
  
  public long o()
  {
    long l = s();
    return -(l & 1L) ^ l >>> 1;
  }
  
  public int p()
  {
    int k = w();
    if (k >= 0) {}
    int n;
    do
    {
      return k;
      k &= 0x7F;
      m = w();
      if (m >= 0) {
        return k | m << 7;
      }
      k |= (m & 0x7F) << 7;
      m = w();
      if (m >= 0) {
        return k | m << 14;
      }
      k |= (m & 0x7F) << 14;
      n = w();
      if (n >= 0) {
        return k | n << 21;
      }
      m = w();
      n = k | (n & 0x7F) << 21 | m << 28;
      k = n;
    } while (m >= 0);
    int m = 0;
    for (;;)
    {
      if (m >= 5) {
        break label133;
      }
      k = n;
      if (w() >= 0) {
        break;
      }
      m += 1;
    }
    label133:
    throw lyg.c();
  }
  
  public int q()
  {
    if (g == Integer.MAX_VALUE) {
      return -1;
    }
    int k = e;
    return g - k;
  }
  
  public int r()
  {
    return e - b;
  }
}

/* Location:
 * Qualified Name:     lxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */