public final class iqx
  extends iqy
{
  static final byte[] a = { 13, 10 };
  private static final byte[] e = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] f = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  private static final byte[] g = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 };
  private final byte[] h;
  private final byte[] i;
  private final byte[] j;
  private final int k;
  private final int l;
  
  public iqx()
  {
    this((byte)0);
  }
  
  private iqx(byte paramByte)
  {
    this(0, a);
  }
  
  private iqx(int paramInt, byte[] paramArrayOfByte)
  {
    this(0, paramArrayOfByte, false);
  }
  
  private iqx(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean) {}
  
  public static String a(byte[] paramArrayOfByte)
  {
    return aal.b(a(paramArrayOfByte, false, false));
  }
  
  private static byte[] a(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    iqx localiqx = new iqx(0, a, paramBoolean2);
    long l1 = localiqx.e(paramArrayOfByte);
    if (l1 > 2147483647L) {
      throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + l1 + ") than the specified maximum size of 2147483647");
    }
    return localiqx.c(paramArrayOfByte);
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    return aal.b(a(paramArrayOfByte, false, true));
  }
  
  void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, iqz paramiqz)
  {
    if (f) {}
    for (;;)
    {
      return;
      if (paramInt2 < 0)
      {
        f = true;
        if ((h != 0) || (d != 0))
        {
          paramArrayOfByte = a(l, paramiqz);
          paramInt1 = d;
          switch (h)
          {
          default: 
            throw new IllegalStateException("Impossible modulus " + h);
          case 1: 
            paramInt2 = d;
            d = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = h[(a >> 2 & 0x3F)];
            paramInt2 = d;
            d = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = h[(a << 4 & 0x3F)];
            if (h == e)
            {
              paramInt2 = d;
              d = (paramInt2 + 1);
              paramArrayOfByte[paramInt2] = c;
              paramInt2 = d;
              d = (paramInt2 + 1);
              paramArrayOfByte[paramInt2] = c;
            }
            break;
          }
          for (;;)
          {
            paramInt2 = g;
            g = (d - paramInt1 + paramInt2);
            if ((d <= 0) || (g <= 0)) {
              break;
            }
            System.arraycopy(j, 0, paramArrayOfByte, d, j.length);
            d += j.length;
            return;
            paramInt2 = d;
            d = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = h[(a >> 10 & 0x3F)];
            paramInt2 = d;
            d = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = h[(a >> 4 & 0x3F)];
            paramInt2 = d;
            d = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = h[(a << 2 & 0x3F)];
            if (h == e)
            {
              paramInt2 = d;
              d = (paramInt2 + 1);
              paramArrayOfByte[paramInt2] = c;
            }
          }
        }
      }
      else
      {
        int m = 0;
        while (m < paramInt2)
        {
          byte[] arrayOfByte = a(l, paramiqz);
          h = ((h + 1) % 3);
          int i1 = paramArrayOfByte[paramInt1];
          int n = i1;
          if (i1 < 0) {
            n = i1 + 256;
          }
          a = (n + (a << 8));
          if (h == 0)
          {
            n = d;
            d = (n + 1);
            arrayOfByte[n] = h[(a >> 18 & 0x3F)];
            n = d;
            d = (n + 1);
            arrayOfByte[n] = h[(a >> 12 & 0x3F)];
            n = d;
            d = (n + 1);
            arrayOfByte[n] = h[(a >> 6 & 0x3F)];
            n = d;
            d = (n + 1);
            arrayOfByte[n] = h[(a & 0x3F)];
            g += 4;
            if ((d > 0) && (d <= g))
            {
              System.arraycopy(j, 0, arrayOfByte, d, j.length);
              d += j.length;
              g = 0;
            }
          }
          m += 1;
          paramInt1 += 1;
        }
      }
    }
  }
  
  protected boolean a(byte paramByte)
  {
    return (paramByte >= 0) && (paramByte < i.length) && (i[paramByte] != -1);
  }
}

/* Location:
 * Qualified Name:     iqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */