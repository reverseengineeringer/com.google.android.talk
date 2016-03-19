import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class lvq
{
  private static final Logger a = Logger.getLogger(lvq.class.getName());
  private final byte[] b;
  private final int c;
  private int d;
  private int e = 0;
  private final OutputStream f = null;
  
  private lvq(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b = paramArrayOfByte;
    d = 0;
    c = (paramInt2 + 0);
  }
  
  public static int a()
  {
    return 4;
  }
  
  public static int a(int paramInt, lwo paramlwo)
  {
    return (m(1) << 1) + u(paramInt) + (m(3) + a(paramlwo));
  }
  
  public static int a(lwo paramlwo)
  {
    int i = paramlwo.b();
    return i + s(i);
  }
  
  public static lvq a(byte[] paramArrayOfByte)
  {
    return new lvq(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt)
  {
    if (c - d >= paramInt)
    {
      System.arraycopy(paramArrayOfByte, 0, b, d, paramInt);
      d += paramInt;
    }
    for (;;)
    {
      e += paramInt;
      return;
      int i = c - d;
      System.arraycopy(paramArrayOfByte, 0, b, d, i);
      paramInt -= i;
      d = c;
      e += i;
      i();
      if (paramInt <= c)
      {
        System.arraycopy(paramArrayOfByte, i, b, 0, paramInt);
        d = paramInt;
      }
      else
      {
        f.write(paramArrayOfByte, i, paramInt);
      }
    }
  }
  
  public static int b()
  {
    return 4;
  }
  
  public static int b(int paramInt, String paramString)
  {
    return m(paramInt) + b(paramString);
  }
  
  public static int b(int paramInt, lvk paramlvk)
  {
    return m(paramInt) + b(paramlvk);
  }
  
  public static int b(String paramString)
  {
    try
    {
      i = lxg.a(paramString);
      return i + s(i);
    }
    catch (lxj locallxj)
    {
      for (;;)
      {
        int i = paramString.getBytes(lwg.a).length;
      }
    }
  }
  
  public static int b(lvk paramlvk)
  {
    return s(paramlvk.b()) + paramlvk.b();
  }
  
  public static int b(lwp paramlwp)
  {
    int i = paramlwp.m();
    return i + s(i);
  }
  
  public static int c()
  {
    return 8;
  }
  
  public static int c(int paramInt, lwp paramlwp)
  {
    return m(paramInt) + b(paramlwp);
  }
  
  public static int c(byte[] paramArrayOfByte)
  {
    return s(paramArrayOfByte.length) + paramArrayOfByte.length;
  }
  
  public static int d()
  {
    return 8;
  }
  
  public static int d(int paramInt1, int paramInt2)
  {
    return m(paramInt1) + n(paramInt2);
  }
  
  public static int d(int paramInt, long paramLong)
  {
    return m(paramInt) + k(paramLong);
  }
  
  public static int d(int paramInt, lwp paramlwp)
  {
    return (m(1) << 1) + u(paramInt) + c(3, paramlwp);
  }
  
  @Deprecated
  public static int d(lwp paramlwp)
  {
    return paramlwp.m();
  }
  
  public static int e()
  {
    return 4;
  }
  
  public static int e(int paramInt, long paramLong)
  {
    return m(paramInt) + k(paramLong);
  }
  
  public static int f()
  {
    return 8;
  }
  
  @Deprecated
  public static int f(int paramInt, lwp paramlwp)
  {
    return (m(paramInt) << 1) + paramlwp.m();
  }
  
  public static int f(long paramLong)
  {
    return k(paramLong);
  }
  
  public static int g()
  {
    return 1;
  }
  
  public static int g(long paramLong)
  {
    return k(paramLong);
  }
  
  public static int h(int paramInt)
  {
    return m(paramInt) + 4;
  }
  
  public static int h(long paramLong)
  {
    return k(i(paramLong));
  }
  
  public static int i(int paramInt)
  {
    return m(paramInt) + 8;
  }
  
  private static long i(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }
  
  private void i()
  {
    if (f == null) {
      throw new lvr();
    }
    f.write(b, 0, d);
    d = 0;
  }
  
  public static int j(int paramInt)
  {
    return m(paramInt) + 8;
  }
  
  @Deprecated
  private void j(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        t((int)paramLong);
        return;
      }
      t((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public static int k(int paramInt)
  {
    return m(paramInt) + 1;
  }
  
  @Deprecated
  private static int k(long paramLong)
  {
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
    {
      j = 1;
      return j;
    }
    if (paramLong < 0L) {
      return 10;
    }
    int j = 2;
    if ((0xFFFFFFF800000000 & paramLong) != 0L)
    {
      j = 6;
      paramLong >>>= 28;
    }
    for (;;)
    {
      int i = j;
      long l = paramLong;
      if ((0xFFFFFFFFFFE00000 & paramLong) != 0L)
      {
        i = j + 2;
        l = paramLong >>> 14;
      }
      j = i;
      if ((l & 0xFFFFFFFFFFFFC000) == 0L) {
        break;
      }
      return i + 1;
    }
  }
  
  public static int l(int paramInt)
  {
    return m(34) + n(paramInt);
  }
  
  @Deprecated
  private void l(long paramLong)
  {
    t((int)paramLong & 0xFF);
    t((int)(paramLong >> 8) & 0xFF);
    t((int)(paramLong >> 16) & 0xFF);
    t((int)(paramLong >> 24) & 0xFF);
    t((int)(paramLong >> 32) & 0xFF);
    t((int)(paramLong >> 40) & 0xFF);
    t((int)(paramLong >> 48) & 0xFF);
    t((int)(paramLong >> 56) & 0xFF);
  }
  
  public static int m(int paramInt)
  {
    return s(paramInt << 3);
  }
  
  public static int n(int paramInt)
  {
    if (paramInt >= 0) {
      return s(paramInt);
    }
    return 10;
  }
  
  public static int o(int paramInt)
  {
    return s(paramInt);
  }
  
  public static int p(int paramInt)
  {
    return s(v(paramInt));
  }
  
  public static int q(int paramInt)
  {
    return n(paramInt);
  }
  
  @Deprecated
  public static int s(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  private void t(int paramInt)
  {
    int i = (byte)paramInt;
    if (d == c) {
      i();
    }
    byte[] arrayOfByte = b;
    paramInt = d;
    d = (paramInt + 1);
    arrayOfByte[paramInt] = i;
    e += 1;
  }
  
  private static int u(int paramInt)
  {
    return m(2) + s(paramInt);
  }
  
  private static int v(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  @Deprecated
  private void w(int paramInt)
  {
    t(paramInt & 0xFF);
    t(paramInt >> 8 & 0xFF);
    t(paramInt >> 16 & 0xFF);
    t(paramInt >>> 24);
  }
  
  public void a(double paramDouble)
  {
    l(Double.doubleToRawLongBits(paramDouble));
  }
  
  public void a(float paramFloat)
  {
    w(Float.floatToRawIntBits(paramFloat));
  }
  
  public void a(int paramInt)
  {
    a(34, 0);
    g(paramInt);
  }
  
  public void a(int paramInt, double paramDouble)
  {
    a(paramInt, 1);
    a(paramDouble);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    r(paramInt1 << 3 | paramInt2);
  }
  
  public void a(int paramInt, long paramLong)
  {
    a(paramInt, 0);
    a(paramLong);
  }
  
  public void a(int paramInt, String paramString)
  {
    a(paramInt, 2);
    a(paramString);
  }
  
  public void a(int paramInt, lvk paramlvk)
  {
    a(paramInt, 2);
    a(paramlvk);
  }
  
  public void a(int paramInt, lwp paramlwp)
  {
    a(paramInt, 2);
    a(paramlwp);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, 0);
    a(paramBoolean);
  }
  
  public void a(long paramLong)
  {
    j(paramLong);
  }
  
  public void a(String paramString)
  {
    for (;;)
    {
      try
      {
        j = paramString.length() * 3;
        i = s(j);
        if ((f != null) && (i + j > c - d))
        {
          byte[] arrayOfByte = new byte[j];
          i = lxg.a(paramString, arrayOfByte, 0, j);
          r(i);
          a(arrayOfByte, i);
          return;
        }
        int k = s(paramString.length());
        j = d;
        if (k == i) {}
        int m;
        i = lxg.a(paramString);
      }
      catch (lxj locallxj1)
      {
        try
        {
          d = (j + k);
          m = lxg.a(paramString, b, d, c - d);
          d = j;
          i = m - j - k;
          r(i);
          d = m;
          e = (i + e);
          return;
        }
        catch (lxj locallxj2)
        {
          int j;
          int i;
          d = j;
          throw locallxj2;
        }
        catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
        {
          throw new lvr(localArrayIndexOutOfBoundsException);
        }
        locallxj1 = locallxj1;
        a.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", locallxj1);
        paramString = paramString.getBytes(lwg.a);
        r(paramString.length);
        a(paramString, paramString.length);
        return;
      }
      r(i);
      d = lxg.a(paramString, b, d, c - d);
    }
  }
  
  public void a(lvk paramlvk)
  {
    r(paramlvk.b());
    int i = paramlvk.b();
    if (c - d >= i)
    {
      paramlvk.a(b, 0, d, i);
      d += i;
    }
    for (;;)
    {
      e = (i + e);
      return;
      int k = c - d;
      paramlvk.a(b, 0, d, k);
      int j = i - k;
      d = c;
      e += k;
      i();
      if (j <= c)
      {
        paramlvk.a(b, k, 0, j);
        d = j;
        i = j;
      }
      else
      {
        OutputStream localOutputStream = f;
        lvk.a(k, k + j, paramlvk.b());
        i = j;
        if (j > 0)
        {
          paramlvk.a(localOutputStream, k, j);
          i = j;
        }
      }
    }
  }
  
  public void a(lwp paramlwp)
  {
    r(paramlwp.m());
    paramlwp.a(this);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      t(i);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    if (paramInt >= 0)
    {
      r(paramInt);
      return;
    }
    j(paramInt);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a(paramInt1, 0);
    b(paramInt2);
  }
  
  public void b(int paramInt, long paramLong)
  {
    a(paramInt, 0);
    b(paramLong);
  }
  
  public void b(int paramInt, lwp paramlwp)
  {
    a(1, 3);
    a(2, 0);
    c(paramInt);
    a(3, paramlwp);
    a(1, 4);
  }
  
  public void b(long paramLong)
  {
    j(paramLong);
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    r(paramArrayOfByte.length);
    a(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public void c(int paramInt)
  {
    r(paramInt);
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    a(paramInt1, 5);
    e(paramInt2);
  }
  
  public void c(int paramInt, long paramLong)
  {
    a(paramInt, 1);
    d(paramLong);
  }
  
  public void c(long paramLong)
  {
    j(i(paramLong));
  }
  
  @Deprecated
  public void c(lwp paramlwp)
  {
    paramlwp.a(this);
  }
  
  public void d(int paramInt)
  {
    r(v(paramInt));
  }
  
  public void d(long paramLong)
  {
    l(paramLong);
  }
  
  public void e(int paramInt)
  {
    w(paramInt);
  }
  
  @Deprecated
  public void e(int paramInt, lwp paramlwp)
  {
    a(paramInt, 3);
    c(paramlwp);
    a(paramInt, 4);
  }
  
  public void e(long paramLong)
  {
    l(paramLong);
  }
  
  public void f(int paramInt)
  {
    w(paramInt);
  }
  
  public void g(int paramInt)
  {
    b(paramInt);
  }
  
  public void h()
  {
    if (f == null)
    {
      if (c - d != 0) {
        throw new IllegalStateException("Did not write as much data as expected.");
      }
    }
    else {
      throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    }
  }
  
  @Deprecated
  public void r(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        t(paramInt);
        return;
      }
      t(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
}

/* Location:
 * Qualified Name:     lvq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */