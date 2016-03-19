import android.util.Log;
import android.util.SparseIntArray;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Map.Entry;
import java.util.TreeMap;

final class hxc
{
  private static final Charset a = Charset.forName("US-ASCII");
  private static final short t = hww.a(hww.C);
  private static final short u = hww.a(hww.D);
  private static final short v = hww.a(hww.am);
  private static final short w = hww.a(hww.E);
  private static final short x = hww.a(hww.F);
  private static final short y = hww.a(hww.i);
  private static final short z = hww.a(hww.m);
  private final TreeMap<Integer, Object> A = new TreeMap();
  private final hwv b;
  private final int c;
  private int d = 0;
  private int e = 0;
  private int f;
  private hxh g;
  private hxf h;
  private hxh i;
  private hxh j;
  private boolean k;
  private boolean l = false;
  private int m;
  private int n = 0;
  private int o;
  private byte[] p;
  private int q;
  private int r;
  private final hww s;
  
  hxc(InputStream paramInputStream, int paramInt, hww paramhww)
  {
    if (paramInputStream == null) {
      throw new IOException("Null argument inputStream to ExifParser");
    }
    s = paramhww;
    l = a(paramInputStream);
    b = new hwv(paramInputStream);
    c = paramInt;
    if (!l) {}
    do
    {
      long l1;
      do
      {
        return;
        paramInt = b.c();
        if (18761 == paramInt) {
          b.a(ByteOrder.LITTLE_ENDIAN);
        }
        while (b.c() != 42)
        {
          throw new hwy("Invalid TIFF header");
          if (19789 == paramInt) {
            b.a(ByteOrder.BIG_ENDIAN);
          } else {
            throw new hwy("Invalid TIFF header");
          }
        }
        l1 = b.f();
        if (l1 > 2147483647L) {
          throw new hwy(35 + "Invalid offset " + l1);
        }
        q = ((int)l1);
        f = 0;
      } while ((!a(0)) && (!m()));
      a(0, l1);
      paramInt = (int)l1 - 8;
      if (paramInt < 0) {
        throw new hwy(35 + "Invalid offset " + l1);
      }
    } while (paramInt <= 0);
    p = new byte[paramInt];
    a(p);
  }
  
  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    return b.read(paramArrayOfByte, 0, paramInt);
  }
  
  protected static hxc a(InputStream paramInputStream, hww paramhww)
  {
    return new hxc(paramInputStream, 63, paramhww);
  }
  
  private void a(int paramInt, long paramLong)
  {
    A.put(Integer.valueOf((int)paramLong), new hxe(paramInt, a(paramInt)));
  }
  
  private boolean a(int paramInt)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return bool;
            } while ((c & 0x1) != 0);
            return false;
          } while ((c & 0x2) != 0);
          return false;
        } while ((c & 0x4) != 0);
        return false;
      } while ((c & 0x8) != 0);
      return false;
    } while ((c & 0x10) != 0);
    return false;
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    paramInt2 = s.a().get(paramInt2);
    if (paramInt2 == 0) {
      return false;
    }
    return hww.a(paramInt2, paramInt1);
  }
  
  private boolean a(InputStream paramInputStream)
  {
    boolean bool2 = false;
    paramInputStream = new hwv(paramInputStream);
    if (paramInputStream.c() != -40) {
      throw new hwy("Invalid JPEG format");
    }
    for (short s1 = paramInputStream.c();; s1 = paramInputStream.c())
    {
      boolean bool1 = bool2;
      int i1;
      if (s1 != -39)
      {
        bool1 = bool2;
        if (!hxj.a(s1))
        {
          int i2 = paramInputStream.d();
          i1 = i2;
          if (s1 != -31) {
            break label162;
          }
          i1 = i2;
          if (i2 < hxj.a.length + 2) {
            break label162;
          }
          byte[] arrayOfByte = new byte[hxj.a.length];
          paramInputStream.read(arrayOfByte, 0, hxj.a.length);
          i2 -= hxj.a.length;
          i1 = i2;
          if (!Arrays.equals(arrayOfByte, hxj.a)) {
            break label162;
          }
          r = paramInputStream.a();
          m = i2;
          n = (r + m);
          bool1 = true;
        }
      }
      label162:
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (i1 < 2);
        bool1 = bool2;
      } while (i1 - 2 != paramInputStream.skip(i1 - 2));
    }
  }
  
  private void b(int paramInt)
  {
    b.a(paramInt);
    while ((!A.isEmpty()) && (((Integer)A.firstKey()).intValue() < paramInt)) {
      A.pollFirstEntry();
    }
  }
  
  private void c(hxh paramhxh)
  {
    int i1 = 0;
    if (paramhxh.e() == 0) {}
    int i2;
    int i3;
    label337:
    do
    {
      for (;;)
      {
        return;
        i2 = paramhxh.b();
        i3 = paramhxh.a();
        if ((i2 == t) && (a(i3, hww.C)))
        {
          if ((a(2)) || (a(3))) {
            a(2, paramhxh.e(0));
          }
        }
        else if ((i2 == u) && (a(i3, hww.D)))
        {
          if (a(4)) {
            a(4, paramhxh.e(0));
          }
        }
        else if ((i2 == v) && (a(i3, hww.am)))
        {
          if (a(3)) {
            a(3, paramhxh.e(0));
          }
        }
        else
        {
          long l1;
          if ((i2 == w) && (a(i3, hww.E)))
          {
            if (l())
            {
              l1 = paramhxh.e(0);
              A.put(Integer.valueOf((int)l1), new hxf());
            }
          }
          else if ((i2 == x) && (a(i3, hww.F)))
          {
            if (l()) {
              j = paramhxh;
            }
          }
          else
          {
            if ((i2 != y) || (!a(i3, hww.i))) {
              break label337;
            }
            if (l())
            {
              if (!paramhxh.f()) {
                break;
              }
              while (i1 < paramhxh.e())
              {
                paramhxh.c();
                l1 = paramhxh.e(i1);
                A.put(Integer.valueOf((int)l1), new hxf(i1));
                i1 += 1;
              }
            }
          }
        }
      }
      A.put(Integer.valueOf(paramhxh.j()), new hxd(paramhxh, false));
      return;
    } while ((i2 != z) || (!a(i3, hww.m)) || (!l()) || (!paramhxh.f()));
    i = paramhxh;
  }
  
  private boolean l()
  {
    return (c & 0x20) != 0;
  }
  
  private boolean m()
  {
    switch (f)
    {
    default: 
    case 0: 
      do
      {
        return false;
      } while ((!a(2)) && (!a(4)) && (!a(3)) && (!a(1)));
      return true;
    case 1: 
      return l();
    }
    return a(3);
  }
  
  private hxh n()
  {
    boolean bool = true;
    short s1 = b.c();
    short s2 = b.c();
    long l1 = b.f();
    if (l1 > 2147483647L) {
      throw new hwy("Number of component is larger then Integer.MAX_VALUE");
    }
    if (!hxh.a(s2))
    {
      if (Log.isLoggable("ExifParser", 5)) {
        String.format("Tag %04x: Invalid data type %d", new Object[] { Short.valueOf(s1), Short.valueOf(s2) });
      }
      b.skip(4L);
      return null;
    }
    int i1 = (int)l1;
    int i2 = f;
    if ((int)l1 != 0) {}
    hxh localhxh;
    long l2;
    for (;;)
    {
      localhxh = new hxh(s1, s2, i1, i2, bool);
      i1 = localhxh.d();
      if (i1 <= 4) {
        break label253;
      }
      l2 = b.f();
      if (l2 <= 2147483647L) {
        break;
      }
      throw new hwy("offset is larger then Integer.MAX_VALUE");
      bool = false;
    }
    if ((p != null) && (l2 < q) && (s2 == 7))
    {
      byte[] arrayOfByte = new byte[(int)l1];
      System.arraycopy(p, (int)l2 - 8, arrayOfByte, 0, (int)l1);
      localhxh.a(arrayOfByte);
      return localhxh;
    }
    localhxh.g((int)l2);
    return localhxh;
    label253:
    bool = localhxh.k();
    localhxh.a(false);
    b(localhxh);
    localhxh.a(bool);
    b.skip(4 - i1);
    localhxh.g(b.a() - 4);
    return localhxh;
  }
  
  private boolean o()
  {
    int i1 = m - b.a() - 2;
    if ((i1 > 0) && (b.skip(i1) != i1)) {}
    for (;;)
    {
      return false;
      b.a(ByteOrder.BIG_ENDIAN);
      try
      {
        for (short s1 = b.c(); (s1 != -39) && (!hxj.a(s1)); s1 = b.c())
        {
          int i2 = b.d();
          i1 = i2;
          if (s1 == -31)
          {
            i1 = i2;
            if (i2 >= hxj.b.length + 2)
            {
              byte[] arrayOfByte = new byte[hxj.b.length];
              a(arrayOfByte, hxj.b.length);
              i2 -= hxj.b.length;
              i1 = i2;
              if (Arrays.equals(arrayOfByte, hxj.b))
              {
                o = (i2 - 2);
                return true;
              }
            }
          }
          if ((i1 < 2) || (i1 - 2 != b.skip(i1 - 2))) {
            break;
          }
        }
        return false;
      }
      catch (EOFException localEOFException) {}
    }
  }
  
  private long p()
  {
    return b.e() & 0xFFFFFFFF;
  }
  
  protected int a()
  {
    int i1 = 1;
    if (!l) {
      i1 = 6;
    }
    int i2;
    int i3;
    do
    {
      return i1;
      i2 = b.a();
      i3 = d + 2 + e * 12;
      if (i2 >= i3) {
        break;
      }
      g = n();
      if (g == null) {
        return a();
      }
    } while (!k);
    c(g);
    return 1;
    long l1;
    if (i2 == i3)
    {
      if (f != 0) {
        break label278;
      }
      l1 = p();
      if (((a(1)) || (l())) && (l1 != 0L)) {
        a(1, l1);
      }
    }
    Object localObject2;
    Object localObject1;
    if (!A.isEmpty())
    {
      localObject2 = A.pollFirstEntry();
      localObject1 = ((Map.Entry)localObject2).getValue();
      label278:
      try
      {
        b(((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!(localObject1 instanceof hxe)) {
          break label524;
        }
        f = a;
        e = b.d();
        d = ((Integer)((Map.Entry)localObject2).getKey()).intValue();
        if (e * 12 + d + 2 <= m) {
          break label496;
        }
        if (Log.isLoggable("ExifParser", 5))
        {
          i1 = f;
          new StringBuilder(31).append("Invalid size of IFD ").append(i1);
        }
        return 6;
      }
      catch (IOException localIOException) {}
      if (A.isEmpty()) {
        break label622;
      }
    }
    label496:
    label524:
    label622:
    for (i1 = ((Integer)A.firstEntry().getKey()).intValue() - b.a();; i1 = 4)
    {
      if (i1 < 4)
      {
        if (!Log.isLoggable("ExifParser", 5)) {
          break;
        }
        new StringBuilder(45).append("Invalid size of link to next IFD: ").append(i1);
        break;
      }
      l1 = p();
      if ((l1 == 0L) || (!Log.isLoggable("ExifParser", 5))) {
        break;
      }
      new StringBuilder(46).append("Invalid link to next IFD: ").append(l1);
      break;
      if (!Log.isLoggable("ExifParser", 5)) {
        break;
      }
      localObject2 = String.valueOf(((Map.Entry)localObject2).getKey());
      localObject1 = String.valueOf(localObject1.getClass().getName());
      new StringBuilder(String.valueOf(localObject2).length() + 57 + String.valueOf(localObject1).length()).append("Failed to skip to data at: ").append((String)localObject2).append(" for ").append((String)localObject1).append(", the file may be broken.");
      break;
      k = m();
      if (b) {
        return 0;
      }
      b();
      break;
      if ((localObject1 instanceof hxf))
      {
        h = ((hxf)localObject1);
        return h.b;
      }
      localObject1 = (hxd)localObject1;
      g = a;
      if (g.c() != 7)
      {
        b(g);
        c(g);
      }
      if (!b) {
        break;
      }
      return 2;
      if ((o == 0) && (o())) {
        return 5;
      }
      return 6;
    }
  }
  
  protected int a(byte[] paramArrayOfByte)
  {
    return b.read(paramArrayOfByte);
  }
  
  protected void a(hxh paramhxh)
  {
    if (paramhxh.j() >= b.a()) {
      A.put(Integer.valueOf(paramhxh.j()), new hxd(paramhxh, true));
    }
  }
  
  protected void b()
  {
    int i1 = d;
    int i3 = e * 12 + (i1 + 2);
    i1 = b.a();
    if (i1 > i3) {}
    long l1;
    do
    {
      return;
      if (k) {
        while (i1 < i3)
        {
          g = n();
          int i2 = i1 + 12;
          i1 = i2;
          if (g != null)
          {
            c(g);
            i1 = i2;
          }
        }
      }
      b(i3);
      l1 = p();
    } while ((f != 0) || ((!a(1)) && (!l())) || (l1 <= 0L));
    a(1, l1);
  }
  
  protected void b(hxh paramhxh)
  {
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i1 = 0;
    int i5 = paramhxh.c();
    Object localObject;
    if ((i5 == 2) || (i5 == 7) || (i5 == 1))
    {
      i5 = paramhxh.e();
      if ((!A.isEmpty()) && (((Integer)A.firstEntry().getKey()).intValue() < i5 + b.a()))
      {
        localObject = A.firstEntry().getValue();
        if (!(localObject instanceof hxf)) {
          break label311;
        }
        if (Log.isLoggable("ExifParser", 5))
        {
          localObject = String.valueOf(paramhxh);
          new StringBuilder(String.valueOf(localObject).length() + 35).append("Thumbnail overlaps value for tag: \n").append((String)localObject);
        }
        localObject = A.pollFirstEntry();
        if (Log.isLoggable("ExifParser", 5))
        {
          localObject = String.valueOf(((Map.Entry)localObject).getKey());
          new StringBuilder(String.valueOf(localObject).length() + 26).append("Invalid thumbnail offset: ").append((String)localObject);
        }
      }
    }
    switch (paramhxh.c())
    {
    }
    for (;;)
    {
      if (Log.isLoggable("ExifParser", 2))
      {
        paramhxh = String.valueOf(paramhxh);
        new StringBuilder(String.valueOf(paramhxh).length() + 1).append("\n").append(paramhxh);
      }
      return;
      label311:
      if ((localObject instanceof hxe)) {
        if (Log.isLoggable("ExifParser", 5))
        {
          i5 = a;
          localObject = String.valueOf(paramhxh);
          new StringBuilder(String.valueOf(localObject).length() + 41).append("Ifd ").append(i5).append(" overlaps value for tag: \n").append((String)localObject);
        }
      }
      for (;;)
      {
        i5 = ((Integer)A.firstEntry().getKey()).intValue() - b.a();
        if (Log.isLoggable("ExifParser", 5))
        {
          localObject = String.valueOf(paramhxh);
          new StringBuilder(String.valueOf(localObject).length() + 52).append("Invalid size of tag: \n").append((String)localObject).append(" setting count to: ").append(i5);
        }
        paramhxh.c(i5);
        break;
        if (((localObject instanceof hxd)) && (Log.isLoggable("ExifParser", 5)))
        {
          localObject = String.valueOf(a);
          String str = String.valueOf(paramhxh);
          new StringBuilder(String.valueOf(localObject).length() + 46 + String.valueOf(str).length()).append("Tag value for tag: \n").append((String)localObject).append(" overlaps value for tag: \n").append(str);
        }
      }
      localObject = new byte[paramhxh.e()];
      a((byte[])localObject);
      paramhxh.a((byte[])localObject);
      continue;
      i1 = paramhxh.e();
      localObject = a;
      if (i1 > 0) {}
      for (localObject = b.a(i1, (Charset)localObject);; localObject = "")
      {
        paramhxh.a((String)localObject);
        break;
      }
      localObject = new long[paramhxh.e()];
      i2 = localObject.length;
      while (i1 < i2)
      {
        localObject[i1] = p();
        i1 += 1;
      }
      paramhxh.a((long[])localObject);
      continue;
      localObject = new hxl[paramhxh.e()];
      i3 = localObject.length;
      i1 = i2;
      while (i1 < i3)
      {
        localObject[i1] = new hxl(p(), p());
        i1 += 1;
      }
      paramhxh.a((hxl[])localObject);
      continue;
      localObject = new int[paramhxh.e()];
      i2 = localObject.length;
      i1 = i3;
      while (i1 < i2)
      {
        localObject[i1] = (b.c() & 0xFFFF);
        i1 += 1;
      }
      paramhxh.a((int[])localObject);
      continue;
      localObject = new int[paramhxh.e()];
      i2 = localObject.length;
      i1 = i4;
      while (i1 < i2)
      {
        localObject[i1] = b.e();
        i1 += 1;
      }
      paramhxh.a((int[])localObject);
      continue;
      localObject = new hxl[paramhxh.e()];
      i2 = localObject.length;
      i1 = 0;
      while (i1 < i2)
      {
        i3 = b.e();
        i4 = b.e();
        localObject[i1] = new hxl(i3, i4);
        i1 += 1;
      }
      paramhxh.a((hxl[])localObject);
    }
  }
  
  protected hxh c()
  {
    return g;
  }
  
  protected int d()
  {
    return f;
  }
  
  protected int e()
  {
    return h.a;
  }
  
  protected int f()
  {
    if (i == null) {
      return 0;
    }
    return (int)i.e(0);
  }
  
  protected int g()
  {
    if (j == null) {
      return 0;
    }
    return (int)j.e(0);
  }
  
  byte[] h()
  {
    byte[] arrayOfByte = new byte[o];
    a(arrayOfByte, o);
    return arrayOfByte;
  }
  
  protected int i()
  {
    return n;
  }
  
  protected int j()
  {
    return r;
  }
  
  protected ByteOrder k()
  {
    return b.b();
  }
}

/* Location:
 * Qualified Name:     hxc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */