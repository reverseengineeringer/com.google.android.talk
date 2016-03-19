public abstract class iqy
{
  private final int a = 3;
  @Deprecated
  public final byte b = 61;
  public final byte c;
  public final int d;
  private final int e = 4;
  private final int f;
  
  protected iqy(int paramInt1, int paramInt2)
  {
    this(3, 4, paramInt1, paramInt2);
  }
  
  private iqy(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt3 > 0) && (paramInt4 > 0)) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      if (paramInt1 != 0) {
        paramInt2 = paramInt3 / 4 << 2;
      }
      d = paramInt2;
      f = paramInt4;
      c = 61;
      return;
    }
  }
  
  int a(iqz paramiqz)
  {
    if (c != null) {
      return d - e;
    }
    return 0;
  }
  
  int a(byte[] paramArrayOfByte, int paramInt, iqz paramiqz)
  {
    if (c != null)
    {
      paramInt = Math.min(a(paramiqz), paramInt);
      System.arraycopy(c, e, paramArrayOfByte, 0, paramInt);
      e += paramInt;
      if (e >= d) {
        c = null;
      }
      return paramInt;
    }
    if (f) {
      return -1;
    }
    return 0;
  }
  
  abstract void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, iqz paramiqz);
  
  protected abstract boolean a(byte paramByte);
  
  protected byte[] a(int paramInt, iqz paramiqz)
  {
    if ((c == null) || (c.length < d + paramInt))
    {
      if (c == null)
      {
        c = new byte[' '];
        d = 0;
        e = 0;
      }
      for (;;)
      {
        return c;
        byte[] arrayOfByte = new byte[c.length << 1];
        System.arraycopy(c, 0, arrayOfByte, 0, c.length);
        c = arrayOfByte;
      }
    }
    return c;
  }
  
  public byte[] c(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    iqz localiqz = new iqz();
    a(paramArrayOfByte, 0, paramArrayOfByte.length, localiqz);
    a(paramArrayOfByte, 0, -1, localiqz);
    paramArrayOfByte = new byte[d - e];
    a(paramArrayOfByte, paramArrayOfByte.length, localiqz);
    return paramArrayOfByte;
  }
  
  protected boolean d(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return false;
      int j = paramArrayOfByte.length;
      int i = 0;
      while (i < j)
      {
        byte b1 = paramArrayOfByte[i];
        if ((c == b1) || (a(b1))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public long e(byte[] paramArrayOfByte)
  {
    long l2 = (paramArrayOfByte.length + a - 1) / a * e;
    long l1 = l2;
    if (d > 0) {
      l1 = l2 + (d + l2 - 1L) / d * f;
    }
    return l1;
  }
}

/* Location:
 * Qualified Name:     iqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */