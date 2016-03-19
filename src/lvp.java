import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class lvp
{
  private final byte[] a;
  private final boolean b;
  private int c;
  private int d;
  private int e;
  private final InputStream f;
  private int g;
  private boolean h = false;
  private int i;
  private int j = Integer.MAX_VALUE;
  private int k;
  private int l = 100;
  private int m = 67108864;
  private a n = null;
  
  private lvp(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a = paramArrayOfByte;
    c = (paramInt1 + paramInt2);
    e = paramInt1;
    i = (-paramInt1);
    f = null;
    b = paramBoolean;
  }
  
  static lvp a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    paramArrayOfByte = new lvp(paramArrayOfByte, paramInt1, paramInt2, paramBoolean);
    try
    {
      paramArrayOfByte.b(paramInt2);
      return paramArrayOfByte;
    }
    catch (lwk paramArrayOfByte)
    {
      throw new IllegalArgumentException(paramArrayOfByte);
    }
  }
  
  private void d(int paramInt)
  {
    if (!e(paramInt)) {
      throw lwk.b();
    }
  }
  
  private boolean e(int paramInt)
  {
    do
    {
      if (e + paramInt <= c) {
        throw new IllegalStateException(77 + "refillBuffer() called when " + paramInt + " bytes were already available in buffer");
      }
      if (i + e + paramInt > j) {}
      int i1;
      do
      {
        do
        {
          return false;
        } while (f == null);
        i1 = e;
        if (i1 > 0)
        {
          if (c > i1) {
            System.arraycopy(a, i1, a, 0, c - i1);
          }
          i += i1;
          c -= i1;
          e = 0;
        }
        i1 = f.read(a, c, a.length - c);
        if ((i1 == 0) || (i1 < -1) || (i1 > a.length)) {
          throw new IllegalStateException(102 + "InputStream#read(byte[]) returned invalid result: " + i1 + "\nThe InputStream implementation is buggy.");
        }
      } while (i1 <= 0);
      c = (i1 + c);
      if (i + paramInt - m > 0) {
        throw lwk.f();
      }
      y();
    } while (c < paramInt);
    return true;
  }
  
  private byte[] f(int paramInt)
  {
    if (paramInt <= 0)
    {
      if (paramInt == 0) {
        return lwg.c;
      }
      throw lwk.c();
    }
    int i1 = i + e + paramInt;
    if (i1 > m) {
      throw lwk.f();
    }
    if (i1 > j)
    {
      g(j - i - e);
      throw lwk.b();
    }
    if (f == null) {
      throw lwk.b();
    }
    int i4 = e;
    i1 = c - e;
    i += c;
    e = 0;
    c = 0;
    int i2 = paramInt - i1;
    if ((i2 < 4096) || (i2 <= f.available()))
    {
      arrayOfByte1 = new byte[paramInt];
      System.arraycopy(a, i4, arrayOfByte1, 0, i1);
      while (i1 < arrayOfByte1.length)
      {
        i2 = f.read(arrayOfByte1, i1, paramInt - i1);
        if (i2 == -1) {
          throw lwk.b();
        }
        i += i2;
        i1 += i2;
      }
      return arrayOfByte1;
    }
    Object localObject = new ArrayList();
    while (i2 > 0)
    {
      arrayOfByte1 = new byte[Math.min(i2, 4096)];
      int i3 = 0;
      while (i3 < arrayOfByte1.length)
      {
        int i5 = f.read(arrayOfByte1, i3, arrayOfByte1.length - i3);
        if (i5 == -1) {
          throw lwk.b();
        }
        i += i5;
        i3 += i5;
      }
      i3 = arrayOfByte1.length;
      ((List)localObject).add(arrayOfByte1);
      i2 -= i3;
    }
    byte[] arrayOfByte1 = new byte[paramInt];
    System.arraycopy(a, i4, arrayOfByte1, 0, i1);
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      byte[] arrayOfByte2 = (byte[])((Iterator)localObject).next();
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i1, arrayOfByte2.length);
      i1 = arrayOfByte2.length + i1;
    }
    return arrayOfByte1;
  }
  
  private void g(int paramInt)
  {
    if ((paramInt <= c - e) && (paramInt >= 0))
    {
      e += paramInt;
      return;
    }
    if (paramInt < 0) {
      throw lwk.c();
    }
    if (i + e + paramInt > j)
    {
      g(j - i - e);
      throw lwk.b();
    }
    int i1 = c - e;
    e = c;
    d(1);
    while (paramInt - i1 > c)
    {
      i1 += c;
      e = c;
      d(1);
    }
    e = (paramInt - i1);
  }
  
  private long u()
  {
    int i1 = e;
    byte[] arrayOfByte;
    int i2;
    int i3;
    long l1;
    if (c != i1)
    {
      arrayOfByte = a;
      i2 = i1 + 1;
      i3 = arrayOfByte[i1];
      if (i3 >= 0)
      {
        e = i2;
        return i3;
      }
      if (c - i2 >= 9)
      {
        i1 = i2 + 1;
        i3 ^= arrayOfByte[i2] << 7;
        if (i3 < 0) {
          l1 = i3 ^ 0xFFFFFF80;
        }
      }
    }
    for (;;)
    {
      e = i1;
      return l1;
      i2 = i1 + 1;
      i3 ^= arrayOfByte[i1] << 14;
      if (i3 >= 0)
      {
        l1 = i3 ^ 0x3F80;
        i1 = i2;
      }
      else
      {
        i1 = i2 + 1;
        i2 = i3 ^ arrayOfByte[i2] << 21;
        if (i2 < 0)
        {
          l1 = i2 ^ 0xFFE03F80;
        }
        else
        {
          l1 = i2;
          i2 = i1 + 1;
          l1 ^= arrayOfByte[i1] << 28;
          if (l1 >= 0L)
          {
            l1 ^= 0xFE03F80;
            i1 = i2;
          }
          else
          {
            i1 = i2 + 1;
            l1 ^= arrayOfByte[i2] << 35;
            if (l1 < 0L)
            {
              l1 ^= 0xFFFFFFF80FE03F80;
            }
            else
            {
              i2 = i1 + 1;
              l1 ^= arrayOfByte[i1] << 42;
              if (l1 >= 0L)
              {
                l1 ^= 0x3F80FE03F80;
                i1 = i2;
              }
              else
              {
                i1 = i2 + 1;
                l1 ^= arrayOfByte[i2] << 49;
                if (l1 < 0L)
                {
                  l1 ^= 0xFFFE03F80FE03F80;
                }
                else
                {
                  i2 = i1 + 1;
                  l1 = l1 ^ arrayOfByte[i1] << 56 ^ 0xFE03F80FE03F80;
                  if (l1 < 0L)
                  {
                    i1 = i2 + 1;
                    if (arrayOfByte[i2] < 0L) {
                      return v();
                    }
                  }
                  else
                  {
                    i1 = i2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  private long v()
  {
    long l1 = 0L;
    int i1 = 0;
    while (i1 < 64)
    {
      if (e == c) {
        d(1);
      }
      byte[] arrayOfByte = a;
      int i2 = e;
      e = (i2 + 1);
      i2 = arrayOfByte[i2];
      l1 |= (i2 & 0x7F) << i1;
      if ((i2 & 0x80) == 0) {
        return l1;
      }
      i1 += 7;
    }
    throw new lwk("CodedInputStream encountered a malformed varint.");
  }
  
  private int w()
  {
    int i2 = e;
    int i1 = i2;
    if (c - i2 < 4)
    {
      d(4);
      i1 = e;
    }
    byte[] arrayOfByte = a;
    e = (i1 + 4);
    i2 = arrayOfByte[i1];
    int i3 = arrayOfByte[(i1 + 1)];
    int i4 = arrayOfByte[(i1 + 2)];
    return (arrayOfByte[(i1 + 3)] & 0xFF) << 24 | i2 & 0xFF | (i3 & 0xFF) << 8 | (i4 & 0xFF) << 16;
  }
  
  private long x()
  {
    int i2 = e;
    int i1 = i2;
    if (c - i2 < 8)
    {
      d(8);
      i1 = e;
    }
    byte[] arrayOfByte = a;
    e = (i1 + 8);
    long l1 = arrayOfByte[i1];
    long l2 = arrayOfByte[(i1 + 1)];
    long l3 = arrayOfByte[(i1 + 2)];
    long l4 = arrayOfByte[(i1 + 3)];
    long l5 = arrayOfByte[(i1 + 4)];
    long l6 = arrayOfByte[(i1 + 5)];
    long l7 = arrayOfByte[(i1 + 6)];
    return (arrayOfByte[(i1 + 7)] & 0xFF) << 56 | l1 & 0xFF | (l2 & 0xFF) << 8 | (l3 & 0xFF) << 16 | (l4 & 0xFF) << 24 | (l5 & 0xFF) << 32 | (l6 & 0xFF) << 40 | (l7 & 0xFF) << 48;
  }
  
  private void y()
  {
    c += d;
    int i1 = i + c;
    if (i1 > j)
    {
      d = (i1 - j);
      c -= d;
      return;
    }
    d = 0;
  }
  
  public int a()
  {
    int i1 = 1;
    if ((e == c) && (!e(1))) {}
    while (i1 != 0)
    {
      g = 0;
      return 0;
      i1 = 0;
    }
    g = s();
    if (g >>> 3 == 0) {
      throw new lwk("Protocol message contained an invalid tag (zero).");
    }
    return g;
  }
  
  public <T extends lvy<T, ?>> T a(int paramInt, T paramT, lvt paramlvt)
  {
    if (k >= l) {
      throw lwk.e();
    }
    k += 1;
    paramT = lvy.a(paramT, this, paramlvt);
    a(paramInt << 3 | 0x4);
    k -= 1;
    return paramT;
  }
  
  public <T extends lvy<T, ?>> T a(T paramT, lvt paramlvt)
  {
    int i1 = s();
    if (k >= l) {
      throw lwk.e();
    }
    i1 = b(i1);
    k += 1;
    paramT = lvy.a(paramT, this, paramlvt);
    a(0);
    k -= 1;
    c(i1);
    return paramT;
  }
  
  public void a(int paramInt)
  {
    if (g != paramInt) {
      throw new lwk("Protocol message end-group tag did not match expected tag.");
    }
  }
  
  public void a(int paramInt, lwq paramlwq, lvt paramlvt)
  {
    if (k >= l) {
      throw lwk.e();
    }
    k += 1;
    paramlwq.b(this, paramlvt);
    a(paramInt << 3 | 0x4);
    k -= 1;
  }
  
  public void a(lwq paramlwq, lvt paramlvt)
  {
    int i1 = s();
    if (k >= l) {
      throw lwk.e();
    }
    i1 = b(i1);
    k += 1;
    paramlwq.b(this, paramlvt);
    a(0);
    k -= 1;
    c(i1);
  }
  
  public double b()
  {
    return Double.longBitsToDouble(x());
  }
  
  public int b(int paramInt)
  {
    if (paramInt < 0) {
      throw lwk.c();
    }
    paramInt = i + e + paramInt;
    int i1 = j;
    if (paramInt > i1) {
      throw lwk.b();
    }
    j = paramInt;
    y();
    return i1;
  }
  
  public float c()
  {
    return Float.intBitsToFloat(w());
  }
  
  public void c(int paramInt)
  {
    j = paramInt;
    y();
  }
  
  public long d()
  {
    return u();
  }
  
  public long e()
  {
    return u();
  }
  
  public int f()
  {
    return s();
  }
  
  public long g()
  {
    return x();
  }
  
  public int h()
  {
    return w();
  }
  
  public boolean i()
  {
    return u() != 0L;
  }
  
  public String j()
  {
    int i1 = s();
    if ((i1 <= c - e) && (i1 > 0))
    {
      String str = new String(a, e, i1, lwg.a);
      e = (i1 + e);
      return str;
    }
    if (i1 == 0) {
      return "";
    }
    return new String(f(i1), lwg.a);
  }
  
  public String k()
  {
    int i2 = 0;
    int i3 = s();
    int i1 = e;
    byte[] arrayOfByte;
    if ((i3 <= c - i1) && (i3 > 0))
    {
      arrayOfByte = a;
      e = (i1 + i3);
    }
    for (;;)
    {
      if (lxg.b.a(arrayOfByte, i1, i1 + i3) == 0) {
        i2 = 1;
      }
      if (i2 != 0) {
        break;
      }
      throw new lwk("Protocol message had invalid UTF-8.");
      if (i3 == 0) {
        return "";
      }
      arrayOfByte = f(i3);
      i1 = 0;
    }
    return new String(arrayOfByte, i1, i3, lwg.a);
  }
  
  public lvk l()
  {
    int i1 = s();
    if ((i1 <= c - e) && (i1 > 0))
    {
      if ((b) && (h)) {}
      for (lvk locallvk = lvk.b(a, e, i1);; locallvk = lvk.a(a, e, i1))
      {
        e = (i1 + e);
        return locallvk;
      }
    }
    if (i1 == 0) {
      return lvk.a;
    }
    return lvk.a(f(i1));
  }
  
  public int m()
  {
    return s();
  }
  
  public int n()
  {
    return s();
  }
  
  public int o()
  {
    return w();
  }
  
  public long p()
  {
    return x();
  }
  
  public int q()
  {
    int i1 = s();
    return -(i1 & 0x1) ^ i1 >>> 1;
  }
  
  public long r()
  {
    long l1 = u();
    return -(l1 & 1L) ^ l1 >>> 1;
  }
  
  public int s()
  {
    int i1 = e;
    byte[] arrayOfByte;
    int i2;
    int i3;
    if (c != i1)
    {
      arrayOfByte = a;
      i2 = i1 + 1;
      i3 = arrayOfByte[i1];
      if (i3 >= 0)
      {
        e = i2;
        return i3;
      }
      if (c - i2 >= 9)
      {
        i1 = i2 + 1;
        i3 ^= arrayOfByte[i2] << 7;
        if (i3 < 0) {
          i2 = i3 ^ 0xFFFFFF80;
        }
      }
    }
    for (;;)
    {
      e = i1;
      return i2;
      i2 = i1 + 1;
      i3 ^= arrayOfByte[i1] << 14;
      if (i3 >= 0)
      {
        i3 ^= 0x3F80;
        i1 = i2;
        i2 = i3;
      }
      else
      {
        i1 = i2 + 1;
        i3 ^= arrayOfByte[i2] << 21;
        if (i3 < 0)
        {
          i2 = i3 ^ 0xFFE03F80;
        }
        else
        {
          int i4 = i1 + 1;
          i2 = arrayOfByte[i1];
          i3 = i3 ^ i2 << 28 ^ 0xFE03F80;
          i1 = i4;
          if (i2 < 0)
          {
            int i5 = i4 + 1;
            i2 = i3;
            i1 = i5;
            if (arrayOfByte[i4] >= 0) {
              continue;
            }
            i4 = i5 + 1;
            i1 = i4;
            if (arrayOfByte[i5] < 0)
            {
              i5 = i4 + 1;
              i2 = i3;
              i1 = i5;
              if (arrayOfByte[i4] >= 0) {
                continue;
              }
              i4 = i5 + 1;
              i1 = i4;
              if (arrayOfByte[i5] < 0)
              {
                i1 = i4 + 1;
                i2 = i3;
                if (arrayOfByte[i4] >= 0) {
                  continue;
                }
                return (int)v();
              }
            }
          }
          i2 = i3;
        }
      }
    }
  }
  
  public int t()
  {
    if (j == Integer.MAX_VALUE) {
      return -1;
    }
    int i1 = i;
    int i2 = e;
    return j - (i1 + i2);
  }
}

/* Location:
 * Qualified Name:     lvp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */