import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class aik
{
  private static final String a = aik.class.getSimpleName();
  private int[] b;
  private ByteBuffer c;
  private byte[] d;
  private byte[] e;
  private int f = 0;
  private int g = 0;
  private short[] h;
  private byte[] i;
  private byte[] j;
  private byte[] k;
  private int[] l;
  private int m;
  private ain n;
  private ail o;
  private Bitmap p;
  private boolean q;
  private int r;
  private int s;
  private int t;
  private int u;
  private boolean v;
  
  private aik(ail paramail)
  {
    o = paramail;
    n = new ain();
  }
  
  public aik(ail paramail, ain paramain, ByteBuffer paramByteBuffer, int paramInt)
  {
    this(paramail);
    a(paramain, paramByteBuffer, paramInt);
  }
  
  private Bitmap a(aim paramaim1, aim paramaim2)
  {
    int[] arrayOfInt = l;
    if ((paramaim2 != null) && (g > 0))
    {
      if (g != 2) {
        break label246;
      }
      i2 = 0;
      if (!f)
      {
        i1 = n.l;
        Arrays.fill(arrayOfInt, i1);
      }
    }
    else
    {
      label49:
      f = 0;
      g = 0;
      if (paramaim1 != null) {
        c.position(j);
      }
      if (paramaim1 != null) {
        break label288;
      }
    }
    int i18;
    int i19;
    int i15;
    label246:
    label288:
    for (int i14 = n.f * n.g;; i14 = c * d)
    {
      if ((k == null) || (k.length < i14)) {
        k = o.a(i14);
      }
      if (h == null) {
        h = new short['က'];
      }
      if (i == null) {
        i = new byte['က'];
      }
      if (j == null) {
        j = new byte['ခ'];
      }
      i18 = j();
      i19 = 1 << i18;
      i15 = -1;
      i2 = i18 + 1;
      i1 = 0;
      while (i1 < i19)
      {
        h[i1] = 0;
        i[i1] = ((byte)i1);
        i1 += 1;
      }
      i1 = i2;
      if (m != 0) {
        break;
      }
      v = true;
      i1 = i2;
      break;
      if ((g != 3) || (p == null)) {
        break label49;
      }
      p.getPixels(arrayOfInt, 0, u, 0, 0, u, t);
      break label49;
    }
    int i10 = 0;
    int i13 = 0;
    int i8 = 0;
    int i5 = 0;
    int i9 = 0;
    int i4 = i2;
    int i7 = (1 << i2) - 1;
    int i6 = i19 + 2;
    int i2 = 0;
    int i3 = 0;
    int i1 = 0;
    for (;;)
    {
      if (i13 < i14)
      {
        i11 = i2;
        i2 = i3;
        if (i3 != 0) {
          break label402;
        }
        i2 = k();
        if (i2 <= 0) {
          r = 3;
        }
      }
      else
      {
        while (i1 < i14)
        {
          k[i1] = 0;
          i1 += 1;
        }
      }
      int i11 = 0;
      label402:
      int i17 = d[i11];
      int i12 = i11 + 1;
      i11 = i2 - 1;
      i3 = i4;
      int i16 = i7;
      i4 = i5;
      i7 = i10 + ((i17 & 0xFF) << i9);
      i2 = i6;
      i10 = i9 + 8;
      i5 = i15;
      i6 = i1;
      i1 = i16;
      for (;;)
      {
        if (i10 < i3) {
          break label1830;
        }
        i9 = i7 & i1;
        i7 >>= i3;
        i10 -= i3;
        if (i9 == i19)
        {
          i3 = i18 + 1;
          i1 = (1 << i3) - 1;
          i2 = i19 + 2;
          i5 = -1;
        }
        else
        {
          if (i9 > i2)
          {
            r = 3;
            i16 = i4;
            i9 = i10;
            i4 = i3;
            i17 = i2;
            i2 = i12;
            i10 = i7;
            i7 = i1;
            i3 = i11;
            i1 = i6;
            i15 = i5;
            i5 = i16;
            i6 = i17;
            break;
          }
          if (i9 == i19 + 1) {
            break label1781;
          }
          if (i5 != -1) {
            break label636;
          }
          j[i8] = i[i9];
          i8 += 1;
          i4 = i9;
          i5 = i9;
        }
      }
      label636:
      if (i9 >= i2)
      {
        j[i8] = ((byte)i4);
        i8 += 1;
        i4 = i5;
      }
      for (;;)
      {
        if (i4 >= i19)
        {
          j[i8] = i[i4];
          i4 = h[i4];
          i8 += 1;
        }
        else
        {
          i17 = i[i4] & 0xFF;
          j[i8] = ((byte)i17);
          i16 = i3;
          i15 = i1;
          i4 = i2;
          if (i2 < 4096)
          {
            h[i2] = ((short)i5);
            i[i2] = ((byte)i17);
            i2 += 1;
            i16 = i3;
            i15 = i1;
            i4 = i2;
            if ((i2 & i1) == 0)
            {
              i16 = i3;
              i15 = i1;
              i4 = i2;
              if (i2 < 4096)
              {
                i16 = i3 + 1;
                i15 = i1 + i2;
                i4 = i2;
              }
            }
          }
          i1 = i13;
          i2 = i8 + 1;
          while (i2 > 0)
          {
            paramaim2 = k;
            byte[] arrayOfByte = j;
            i2 -= 1;
            paramaim2[i6] = arrayOfByte[i2];
            i1 += 1;
            i6 += 1;
            continue;
            int i20 = d / s;
            int i21 = b / s;
            int i22 = c / s;
            int i23 = a / s;
            i3 = 1;
            i2 = 8;
            i4 = 0;
            if (m == 0)
            {
              i11 = 1;
              i6 = 0;
              label943:
              if (i6 >= i20) {
                break label1635;
              }
              if (!e) {
                break label1727;
              }
              i1 = i4;
              i5 = i2;
              i7 = i3;
              if (i4 >= i20) {
                i7 = i3 + 1;
              }
              switch (i7)
              {
              default: 
                i5 = i2;
                i1 = i4;
                label1015:
                i4 = i1 + i5;
                i3 = i5;
              }
            }
            for (i2 = i7;; i2 = i5)
            {
              i1 += i21;
              if (i1 < t)
              {
                i1 = u * i1;
                i13 = i1 + i23;
                i12 = i13 + i22;
                if (u + i1 >= i12) {
                  break label1724;
                }
                i12 = u + i1;
              }
              label1531:
              label1596:
              label1635:
              label1724:
              for (;;)
              {
                i1 = s;
                i1 = c * (i1 * i6);
                int i24 = i1 + (i12 - i13) * s;
                if (i13 < i12)
                {
                  int i25 = c;
                  i10 = 0;
                  i9 = 0;
                  i8 = 0;
                  i7 = 0;
                  i5 = 0;
                  i14 = i1;
                  int i26;
                  for (;;)
                  {
                    if ((i14 < s + i1) && (i14 < k.length) && (i14 < i24))
                    {
                      i15 = k[i14];
                      i26 = b[(i15 & 0xFF)];
                      i19 = i5;
                      i18 = i7;
                      i17 = i8;
                      i16 = i9;
                      i15 = i10;
                      if (i26 != 0)
                      {
                        i15 = i10 + (i26 >>> 24);
                        i16 = i9 + (i26 >> 16 & 0xFF);
                        i17 = i8 + (i26 >> 8 & 0xFF);
                        i18 = i7 + (i26 & 0xFF);
                        i19 = i5 + 1;
                      }
                      i14 += 1;
                      i5 = i19;
                      i7 = i18;
                      i8 = i17;
                      i9 = i16;
                      i10 = i15;
                      continue;
                      i11 = 0;
                      break;
                      i1 = 4;
                      i5 = i2;
                      break label1015;
                      i1 = 2;
                      i5 = 4;
                      break label1015;
                      i1 = 1;
                      i5 = 2;
                      break label1015;
                    }
                  }
                  i15 = i1 + i25;
                  i14 = i10;
                  i10 = i9;
                  i9 = i8;
                  i8 = i7;
                  i7 = i5;
                  i5 = i15;
                  while ((i5 < i1 + i25 + s) && (i5 < k.length) && (i5 < i24))
                  {
                    i15 = k[i5];
                    i26 = b[(i15 & 0xFF)];
                    i19 = i7;
                    i18 = i8;
                    i17 = i9;
                    i16 = i10;
                    i15 = i14;
                    if (i26 != 0)
                    {
                      i15 = i14 + (i26 >>> 24);
                      i16 = i10 + (i26 >> 16 & 0xFF);
                      i17 = i9 + (i26 >> 8 & 0xFF);
                      i18 = i8 + (i26 & 0xFF);
                      i19 = i7 + 1;
                    }
                    i5 += 1;
                    i7 = i19;
                    i8 = i18;
                    i9 = i17;
                    i10 = i16;
                    i14 = i15;
                  }
                  if (i7 == 0)
                  {
                    i5 = 0;
                    if (i5 == 0) {
                      break label1596;
                    }
                    arrayOfInt[i13] = i5;
                  }
                  for (;;)
                  {
                    i1 += s;
                    i13 += 1;
                    break;
                    i5 = i14 / i7 << 24 | i10 / i7 << 16 | i9 / i7 << 8 | i8 / i7;
                    break label1531;
                    if ((!v) && (i11 != 0)) {
                      v = true;
                    }
                  }
                }
                i6 += 1;
                i1 = i2;
                i2 = i3;
                i3 = i1;
                break label943;
                if ((q) && ((g == 0) || (g == 1)))
                {
                  if (p == null) {
                    p = l();
                  }
                  p.setPixels(arrayOfInt, 0, u, 0, 0, u, t);
                }
                paramaim1 = l();
                paramaim1.setPixels(arrayOfInt, 0, u, 0, 0, u, t);
                return paramaim1;
              }
              label1727:
              i5 = i3;
              i1 = i6;
              i3 = i2;
            }
          }
          i5 = i9;
          i8 = i2;
          i13 = i1;
          i3 = i16;
          i1 = i15;
          i2 = i4;
          i4 = i17;
          break;
          i4 = i9;
        }
      }
      label1781:
      i16 = i4;
      i9 = i10;
      i4 = i3;
      i17 = i2;
      i2 = i12;
      i10 = i7;
      i7 = i1;
      i3 = i11;
      i1 = i6;
      i15 = i5;
      i5 = i16;
      i6 = i17;
      continue;
      label1830:
      i16 = i4;
      i17 = i1;
      i1 = i11;
      i4 = i3;
      i11 = i2;
      i9 = i10;
      i2 = i12;
      i3 = i1;
      i1 = i6;
      i10 = i7;
      i15 = i5;
      i5 = i16;
      i7 = i17;
      i6 = i11;
    }
  }
  
  private void i()
  {
    if (f > g) {
      return;
    }
    if (e == null) {
      e = o.a(16384);
    }
    g = 0;
    f = Math.min(c.remaining(), 16384);
    c.get(e, 0, f);
  }
  
  private int j()
  {
    try
    {
      i();
      byte[] arrayOfByte = e;
      int i1 = g;
      g = (i1 + 1);
      i1 = arrayOfByte[i1];
      return i1 & 0xFF;
    }
    catch (Exception localException)
    {
      r = 1;
    }
    return 0;
  }
  
  private int k()
  {
    int i1 = j();
    if (i1 > 0)
    {
      try
      {
        if (d == null) {
          d = o.a(255);
        }
        int i2 = f - g;
        if (i2 >= i1)
        {
          System.arraycopy(e, g, d, 0, i1);
          g += i1;
          return i1;
        }
        if (c.remaining() + i2 >= i1)
        {
          System.arraycopy(e, g, d, 0, i2);
          g = f;
          i();
          int i3 = i1 - i2;
          System.arraycopy(e, 0, d, i2, i3);
          g += i3;
          return i1;
        }
      }
      catch (Exception localException)
      {
        r = 1;
        return i1;
      }
      r = 1;
    }
    return i1;
  }
  
  private Bitmap l()
  {
    if (v) {}
    for (Object localObject = Bitmap.Config.ARGB_8888;; localObject = Bitmap.Config.RGB_565)
    {
      localObject = o.a(u, t, (Bitmap.Config)localObject);
      if (Build.VERSION.SDK_INT >= 12) {
        ((Bitmap)localObject).setHasAlpha(true);
      }
      return (Bitmap)localObject;
    }
  }
  
  public int a(int paramInt)
  {
    int i2 = -1;
    int i1 = i2;
    if (paramInt >= 0)
    {
      i1 = i2;
      if (paramInt < n.c) {
        i1 = n.e.get(paramInt)).i;
      }
    }
    return i1;
  }
  
  public ByteBuffer a()
  {
    return c;
  }
  
  public void a(ain paramain, ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt <= 0) {
      try
      {
        throw new IllegalArgumentException(41 + "Sample size must be >=0, not: " + paramInt);
      }
      finally {}
    }
    paramInt = Integer.highestOneBit(paramInt);
    r = 0;
    n = paramain;
    v = false;
    m = -1;
    c = paramByteBuffer.asReadOnlyBuffer();
    c.position(0);
    c.order(ByteOrder.LITTLE_ENDIAN);
    q = false;
    paramByteBuffer = e.iterator();
    while (paramByteBuffer.hasNext()) {
      if (nextg == 3) {
        q = true;
      }
    }
    s = paramInt;
    k = o.a(f * g);
    l = o.b(f / paramInt * (g / paramInt));
    u = (f / paramInt);
    t = (g / paramInt);
  }
  
  public void b()
  {
    m = ((m + 1) % n.c);
  }
  
  public int c()
  {
    if ((n.c <= 0) || (m < 0)) {
      return 0;
    }
    return a(m);
  }
  
  public int d()
  {
    return n.c;
  }
  
  public int e()
  {
    return m;
  }
  
  public int f()
  {
    return c.limit() + k.length + (l.length << 2);
  }
  
  public Bitmap g()
  {
    int i1 = 0;
    for (;;)
    {
      int i2;
      aim localaim2;
      try
      {
        if ((n.c <= 0) || (m < 0))
        {
          if (Log.isLoggable(a, 3))
          {
            i2 = n.c;
            int i3 = m;
            new StringBuilder(71).append("unable to decode frame, frameCount=").append(i2).append(" framePointer=").append(i3);
          }
          r = 1;
        }
        Object localObject;
        if ((r == 1) || (r == 2))
        {
          if (Log.isLoggable(a, 3))
          {
            i1 = r;
            new StringBuilder(42).append("Unable to decode frame, status=").append(i1);
          }
          localObject = null;
          return (Bitmap)localObject;
        }
        r = 0;
        localaim2 = (aim)n.e.get(m);
        i2 = m - 1;
        if (i2 >= 0)
        {
          localObject = (aim)n.e.get(i2);
          i2 = n.l;
          if (k == null)
          {
            b = n.a;
            if (f)
            {
              i1 = b[h];
              b[h] = 0;
            }
            if (b != null) {
              break label336;
            }
            r = 1;
            localObject = null;
          }
        }
        else
        {
          localObject = (aim)n.e.get(d() - 1);
          continue;
        }
        b = k;
        if (n.j != h) {
          continue;
        }
        n.l = 0;
        continue;
        Bitmap localBitmap = a(localaim2, localaim1);
      }
      finally {}
      label336:
      if (f) {
        b[h] = i1;
      }
      n.l = i2;
    }
  }
  
  public void h()
  {
    n = null;
    if (k != null) {
      o.a(k);
    }
    if (l != null) {
      o.a(l);
    }
    if (p != null) {
      o.a(p);
    }
    p = null;
    c = null;
    v = false;
    if (d != null) {
      o.a(d);
    }
    if (e != null) {
      o.a(e);
    }
  }
}

/* Location:
 * Qualified Name:     aik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */