import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class hxb
  extends FilterOutputStream
{
  private hwx a;
  private int b = 0;
  private int c;
  private int d;
  private byte[] e = new byte[1];
  private ByteBuffer f = ByteBuffer.allocate(4);
  private final hww g;
  
  protected hxb(OutputStream paramOutputStream, hww paramhww)
  {
    super(new BufferedOutputStream(paramOutputStream, 65536));
    g = paramhww;
  }
  
  private int a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt1 = Math.min(paramInt1 - f.position(), paramInt3);
    f.put(paramArrayOfByte, paramInt2, paramInt1);
    return paramInt1;
  }
  
  private static int a(hxi paramhxi, int paramInt)
  {
    int i = paramhxi.c();
    paramhxi = paramhxi.a();
    int k = paramhxi.length;
    i = paramInt + (i * 12 + 2 + 4);
    paramInt = 0;
    while (paramInt < k)
    {
      Object localObject = paramhxi[paramInt];
      int j = i;
      if (((hxh)localObject).d() > 4)
      {
        ((hxh)localObject).g(i);
        j = i + ((hxh)localObject).d();
      }
      paramInt += 1;
      i = j;
    }
    return i;
  }
  
  private void a()
  {
    if (a == null) {}
    Object localObject2;
    do
    {
      return;
      localObject2 = a;
      localObject1 = new ArrayList();
      Object localObject3 = ((hwx)localObject2).h();
      if (localObject3 != null)
      {
        i = 0;
        while (i < ((List)localObject3).size())
        {
          hxh localhxh = (hxh)((hwx)localObject2).h().get(0);
          if ((localhxh.h() == null) && (!hww.a(localhxh.b())))
          {
            ((hwx)localObject2).b(localhxh.b(), localhxh.a());
            ((ArrayList)localObject1).add(localhxh);
          }
          i += 1;
        }
      }
      b();
      int i = c();
      if (i + 8 > 65535) {
        throw new IOException("Exif header is too large (>64Kb)");
      }
      localObject2 = new hxk(out);
      ((hxk)localObject2).a(ByteOrder.BIG_ENDIAN);
      ((hxk)localObject2).a((short)-31);
      ((hxk)localObject2).a((short)(i + 2 + hxj.a.length));
      ((hxk)localObject2).write(hxj.a);
      if (a.g() == ByteOrder.BIG_ENDIAN) {
        ((hxk)localObject2).a((short)19789);
      }
      for (;;)
      {
        ((hxk)localObject2).a(a.g());
        ((hxk)localObject2).a((short)42);
        ((hxk)localObject2).a(8);
        a(a.b(0), (hxk)localObject2);
        a(a.b(2), (hxk)localObject2);
        localObject3 = a.b(3);
        if (localObject3 != null) {
          a((hxi)localObject3, (hxk)localObject2);
        }
        localObject3 = a.b(4);
        if (localObject3 != null) {
          a((hxi)localObject3, (hxk)localObject2);
        }
        if (a.b(1) != null) {
          a(a.b(1), (hxk)localObject2);
        }
        a((hxk)localObject2);
        localObject1 = ((ArrayList)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject3 = (hxh)((Iterator)localObject1).next();
          a.a((hxh)localObject3);
        }
        ((hxk)localObject2).a((short)18761);
      }
    } while (!a.b());
    Object localObject1 = a.a();
    ((hxk)localObject2).a(ByteOrder.BIG_ENDIAN);
    ((hxk)localObject2).a((short)-31);
    ((hxk)localObject2).a((short)(localObject1.length + 2 + hxj.b.length));
    ((hxk)localObject2).write(hxj.b);
    ((hxk)localObject2).write((byte[])localObject1);
  }
  
  private static void a(hxh paramhxh, hxk paramhxk)
  {
    int j = 0;
    int k = 0;
    int i = 0;
    if (!paramhxh.f()) {}
    for (;;)
    {
      return;
      byte[] arrayOfByte;
      switch (paramhxh.c())
      {
      case 6: 
      case 8: 
      default: 
        return;
      case 1: 
      case 7: 
        arrayOfByte = new byte[paramhxh.e()];
        paramhxh.b(arrayOfByte);
        paramhxk.write(arrayOfByte);
        return;
      case 2: 
        arrayOfByte = paramhxh.i();
        if (arrayOfByte.length == paramhxh.e())
        {
          arrayOfByte[(arrayOfByte.length - 1)] = 0;
          paramhxk.write(arrayOfByte);
          return;
        }
        paramhxk.write(arrayOfByte);
        paramhxk.write(0);
        return;
      case 4: 
      case 9: 
        j = paramhxh.e();
        while (i < j)
        {
          paramhxk.a((int)paramhxh.e(i));
          i += 1;
        }
      case 5: 
      case 10: 
        k = paramhxh.e();
        i = j;
        while (i < k)
        {
          paramhxk.a(paramhxh.f(i));
          i += 1;
        }
      }
      j = paramhxh.e();
      i = k;
      while (i < j)
      {
        paramhxk.a((short)(int)paramhxh.e(i));
        i += 1;
      }
    }
  }
  
  private static void a(hxi paramhxi, hxk paramhxk)
  {
    int k = 0;
    hxh[] arrayOfhxh = paramhxi.a();
    paramhxk.a((short)arrayOfhxh.length);
    int m = arrayOfhxh.length;
    int i = 0;
    if (i < m)
    {
      hxh localhxh = arrayOfhxh[i];
      paramhxk.a(localhxh.b());
      paramhxk.a(localhxh.c());
      paramhxk.a(localhxh.e());
      if (Log.isLoggable("ExifOutputStream", 2))
      {
        String str = String.valueOf(localhxh);
        new StringBuilder(String.valueOf(str).length() + 1).append("\n").append(str);
      }
      if (localhxh.d() > 4) {
        paramhxk.a(localhxh.j());
      }
      for (;;)
      {
        i += 1;
        break;
        a(localhxh, paramhxk);
        int n = localhxh.d();
        j = 0;
        while (j < 4 - n)
        {
          paramhxk.write(0);
          j += 1;
        }
      }
    }
    paramhxk.a(paramhxi.d());
    int j = arrayOfhxh.length;
    i = k;
    while (i < j)
    {
      paramhxi = arrayOfhxh[i];
      if (paramhxi.d() > 4) {
        a(paramhxi, paramhxk);
      }
      i += 1;
    }
  }
  
  private void a(hxk paramhxk)
  {
    if (a.d()) {
      paramhxk.write(a.c());
    }
    for (;;)
    {
      return;
      if (a.f())
      {
        int i = 0;
        while (i < a.e())
        {
          paramhxk.write(a.a(i));
          i += 1;
        }
      }
    }
  }
  
  private void b()
  {
    Object localObject2 = a.b(0);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new hxi(0);
      a.a((hxi)localObject1);
    }
    localObject2 = g.c(hww.C);
    int i;
    if (localObject2 == null)
    {
      i = hww.C;
      throw new IOException(47 + "No definition for crucial exif tag: " + i);
    }
    ((hxi)localObject1).a((hxh)localObject2);
    Object localObject3 = a.b(2);
    localObject2 = localObject3;
    if (localObject3 == null)
    {
      localObject2 = new hxi(2);
      a.a((hxi)localObject2);
    }
    if (a.b(4) != null)
    {
      localObject3 = g.c(hww.D);
      if (localObject3 == null)
      {
        i = hww.D;
        throw new IOException(47 + "No definition for crucial exif tag: " + i);
      }
      ((hxi)localObject1).a((hxh)localObject3);
    }
    if (a.b(3) != null)
    {
      localObject1 = g.c(hww.am);
      if (localObject1 == null)
      {
        i = hww.am;
        throw new IOException(47 + "No definition for crucial exif tag: " + i);
      }
      ((hxi)localObject2).a((hxh)localObject1);
    }
    localObject2 = a.b(1);
    if (a.d())
    {
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new hxi(1);
        a.a((hxi)localObject1);
      }
      localObject2 = g.c(hww.E);
      if (localObject2 == null)
      {
        i = hww.E;
        throw new IOException(47 + "No definition for crucial exif tag: " + i);
      }
      ((hxi)localObject1).a((hxh)localObject2);
      localObject2 = g.c(hww.F);
      if (localObject2 == null)
      {
        i = hww.F;
        throw new IOException(47 + "No definition for crucial exif tag: " + i);
      }
      ((hxh)localObject2).d(a.c().length);
      ((hxi)localObject1).a((hxh)localObject2);
      ((hxi)localObject1).b(hww.a(hww.i));
      ((hxi)localObject1).b(hww.a(hww.m));
    }
    do
    {
      return;
      if (a.f())
      {
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = new hxi(1);
          a.a((hxi)localObject1);
        }
        i = a.e();
        localObject2 = g.c(hww.i);
        if (localObject2 == null)
        {
          i = hww.i;
          throw new IOException(47 + "No definition for crucial exif tag: " + i);
        }
        localObject3 = g.c(hww.m);
        if (localObject3 == null)
        {
          i = hww.m;
          throw new IOException(47 + "No definition for crucial exif tag: " + i);
        }
        long[] arrayOfLong = new long[i];
        i = 0;
        while (i < a.e())
        {
          arrayOfLong[i] = a.a(i).length;
          i += 1;
        }
        ((hxh)localObject3).a(arrayOfLong);
        ((hxi)localObject1).a((hxh)localObject2);
        ((hxi)localObject1).a((hxh)localObject3);
        ((hxi)localObject1).b(hww.a(hww.E));
        ((hxi)localObject1).b(hww.a(hww.F));
        return;
      }
    } while (localObject2 == null);
    ((hxi)localObject2).b(hww.a(hww.i));
    ((hxi)localObject2).b(hww.a(hww.m));
    ((hxi)localObject2).b(hww.a(hww.E));
    ((hxi)localObject2).b(hww.a(hww.F));
  }
  
  private int c()
  {
    Object localObject = a.b(0);
    int i = a((hxi)localObject, 8);
    ((hxi)localObject).a(hww.a(hww.C)).d(i);
    hxi localhxi1 = a.b(2);
    int j = a(localhxi1, i);
    hxi localhxi2 = a.b(3);
    i = j;
    if (localhxi2 != null)
    {
      localhxi1.a(hww.a(hww.am)).d(j);
      i = a(localhxi2, j);
    }
    localhxi1 = a.b(4);
    j = i;
    if (localhxi1 != null)
    {
      ((hxi)localObject).a(hww.a(hww.D)).d(i);
      j = a(localhxi1, i);
    }
    localhxi1 = a.b(1);
    i = j;
    if (localhxi1 != null)
    {
      ((hxi)localObject).a(j);
      i = a(localhxi1, j);
    }
    if (a.d())
    {
      localhxi1.a(hww.a(hww.E)).d(i);
      return a.c().length + i;
    }
    if (a.f())
    {
      localObject = new long[a.e()];
      int k = 0;
      j = i;
      i = k;
      while (i < a.e())
      {
        localObject[i] = j;
        j += a.a(i).length;
        i += 1;
      }
      localhxi1.a(hww.a(hww.i)).a((long[])localObject);
      return j;
    }
    return i;
  }
  
  protected void a(hwx paramhwx)
  {
    a = paramhwx;
  }
  
  public void write(int paramInt)
  {
    e[0] = ((byte)(paramInt & 0xFF));
    write(e);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (((c > 0) || (d > 0) || (b != 2)) && (paramInt2 > 0))
    {
      i = paramInt1;
      j = paramInt2;
      if (c > 0)
      {
        i = Math.min(c, paramInt2);
        j = paramInt2 - i;
        c -= i;
        i = paramInt1 + i;
      }
      paramInt1 = i;
      paramInt2 = j;
      if (d > 0)
      {
        paramInt1 = Math.min(d, j);
        out.write(paramArrayOfByte, i, paramInt1);
        paramInt2 = j - paramInt1;
        d -= paramInt1;
        paramInt1 = i + paramInt1;
      }
      if (paramInt2 != 0) {}
    }
    while (paramInt2 <= 0)
    {
      do
      {
        do
        {
          int j;
          return;
          switch (b)
          {
          default: 
            break;
          case 0: 
            i = a(2, paramArrayOfByte, paramInt1, paramInt2);
            paramInt1 += i;
            paramInt2 -= i;
          }
        } while (f.position() < 2);
        f.rewind();
        if (f.getShort() != -40) {
          throw new IOException("Not a valid jpeg image, cannot write exif");
        }
        out.write(f.array(), 0, 2);
        b = 1;
        f.rewind();
        a();
        break;
        int i = a(4, paramArrayOfByte, paramInt1, paramInt2);
        paramInt1 += i;
        paramInt2 -= i;
        if ((f.position() == 2) && (f.getShort() == -39))
        {
          out.write(f.array(), 0, 2);
          f.rewind();
        }
      } while (f.position() < 4);
      f.rewind();
      short s = f.getShort();
      if (s == -31)
      {
        c = ((f.getShort() & 0xFFFF) - 2);
        b = 2;
      }
      for (;;)
      {
        f.rewind();
        break;
        if (!hxj.a(s))
        {
          out.write(f.array(), 0, 4);
          d = ((f.getShort() & 0xFFFF) - 2);
        }
        else
        {
          out.write(f.array(), 0, 4);
          b = 2;
        }
      }
    }
    out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     hxb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */