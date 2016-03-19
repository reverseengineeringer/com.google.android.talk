public final class gbf
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
  
  gbf(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = 0;
    c = (paramInt2 + 0);
    e = 0;
  }
  
  private byte[] f(int paramInt)
  {
    if (paramInt < 0) {
      throw gbm.b();
    }
    if (e + paramInt > g)
    {
      g(g - e);
      throw gbm.a();
    }
    if (paramInt <= c - e)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(a, e, arrayOfByte, 0, paramInt);
      e += paramInt;
      return arrayOfByte;
    }
    throw gbm.a();
  }
  
  private void g(int paramInt)
  {
    if (paramInt < 0) {
      throw gbm.b();
    }
    if (e + paramInt > g)
    {
      g(g - e);
      throw gbm.a();
    }
    if (paramInt <= c - e)
    {
      e += paramInt;
      return;
    }
    throw gbm.a();
  }
  
  private long n()
  {
    int k = 0;
    long l = 0L;
    while (k < 64)
    {
      int m = r();
      l |= (m & 0x7F) << k;
      if ((m & 0x80) == 0) {
        return l;
      }
      k += 7;
    }
    throw gbm.c();
  }
  
  private int o()
  {
    return r() & 0xFF | (r() & 0xFF) << 8 | (r() & 0xFF) << 16 | (r() & 0xFF) << 24;
  }
  
  private long p()
  {
    int k = r();
    int m = r();
    int n = r();
    int i1 = r();
    int i2 = r();
    int i3 = r();
    int i4 = r();
    int i5 = r();
    long l = k;
    return (m & 0xFF) << 8 | l & 0xFF | (n & 0xFF) << 16 | (i1 & 0xFF) << 24 | (i2 & 0xFF) << 32 | (i3 & 0xFF) << 40 | (i4 & 0xFF) << 48 | (i5 & 0xFF) << 56;
  }
  
  private void q()
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
  
  private byte r()
  {
    if (e == c) {
      throw gbm.a();
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
    f = k();
    if (f == 0) {
      throw new gbm("Protocol message contained an invalid tag (zero).");
    }
    return f;
  }
  
  public void a(int paramInt)
  {
    if (f != paramInt) {
      throw new gbm("Protocol message end-group tag did not match expected tag.");
    }
  }
  
  public void a(gbn paramgbn)
  {
    int k = k();
    if (h >= i) {
      throw new gbm("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
    k = c(k);
    h += 1;
    paramgbn.a(this);
    a(0);
    h -= 1;
    d(k);
  }
  
  public byte[] a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return gbp.h;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int k = b;
    System.arraycopy(a, k + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public double b()
  {
    return Double.longBitsToDouble(p());
  }
  
  public boolean b(int paramInt)
  {
    switch (paramInt & 0x7)
    {
    default: 
      throw new gbm("Protocol message tag had invalid wire type.");
    case 0: 
      e();
      return true;
    case 1: 
      p();
      return true;
    case 2: 
      g(k());
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
    o();
    return true;
  }
  
  public float c()
  {
    return Float.intBitsToFloat(o());
  }
  
  public int c(int paramInt)
  {
    if (paramInt < 0) {
      throw gbm.b();
    }
    paramInt = e + paramInt;
    int k = g;
    if (paramInt > k) {
      throw gbm.a();
    }
    g = paramInt;
    q();
    return k;
  }
  
  public long d()
  {
    return n();
  }
  
  public void d(int paramInt)
  {
    g = paramInt;
    q();
  }
  
  public int e()
  {
    return k();
  }
  
  public void e(int paramInt)
  {
    if (paramInt > e - b) {
      throw new IllegalArgumentException("Position " + paramInt + " is beyond current " + (e - b));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad position " + paramInt);
    }
    e = (b + paramInt);
  }
  
  public boolean f()
  {
    return k() != 0;
  }
  
  public String g()
  {
    int k = k();
    if ((k <= c - e) && (k > 0))
    {
      String str = new String(a, e, k, "UTF-8");
      e = (k + e);
      return str;
    }
    return new String(f(k), "UTF-8");
  }
  
  public byte[] h()
  {
    int k = k();
    if ((k <= c - e) && (k > 0))
    {
      byte[] arrayOfByte = new byte[k];
      System.arraycopy(a, e, arrayOfByte, 0, k);
      e = (k + e);
      return arrayOfByte;
    }
    return f(k);
  }
  
  public int i()
  {
    int k = k();
    return -(k & 0x1) ^ k >>> 1;
  }
  
  public long j()
  {
    long l = n();
    return -(l & 1L) ^ l >>> 1;
  }
  
  public int k()
  {
    int k = r();
    if (k >= 0) {}
    int n;
    do
    {
      return k;
      k &= 0x7F;
      m = r();
      if (m >= 0) {
        return k | m << 7;
      }
      k |= (m & 0x7F) << 7;
      m = r();
      if (m >= 0) {
        return k | m << 14;
      }
      k |= (m & 0x7F) << 14;
      n = r();
      if (n >= 0) {
        return k | n << 21;
      }
      m = r();
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
      if (r() >= 0) {
        break;
      }
      m += 1;
    }
    label133:
    throw gbm.c();
  }
  
  public int l()
  {
    if (g == Integer.MAX_VALUE) {
      return -1;
    }
    int k = e;
    return g - k;
  }
  
  public int m()
  {
    return e - b;
  }
}

/* Location:
 * Qualified Name:     gbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */