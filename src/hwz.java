import android.util.Log;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class hwz
{
  private final ByteBuffer a;
  private final hwx b;
  private final List<hxa> c = new ArrayList();
  private final hww d;
  private int e;
  
  protected hwz(ByteBuffer paramByteBuffer, hww paramhww)
  {
    a = paramByteBuffer;
    e = paramByteBuffer.position();
    d = paramhww;
    try
    {
      paramhww = new hwu(paramByteBuffer);
      int i;
      hww.a(paramhww);
    }
    finally
    {
      try
      {
        paramByteBuffer = hxc.a(paramhww, d);
        b = new hwx(paramByteBuffer.k());
        i = e;
        e = (paramByteBuffer.j() + i);
        a.position(0);
        hww.a(paramhww);
        return;
      }
      finally {}
      paramByteBuffer = finally;
      paramhww = null;
    }
    throw paramByteBuffer;
  }
  
  public void a(hxh paramhxh)
  {
    b.a(paramhxh);
  }
  
  protected boolean a()
  {
    for (;;)
    {
      try
      {
        localhwu = new hwu(a);
      }
      finally
      {
        hwu localhwu;
        Object localObject7;
        hxc localhxc;
        Object localObject3;
        Object localObject6 = null;
        continue;
        int j = 0;
        int i = j;
        if (localObject7[1] == null) {
          continue;
        }
        i = j | 0x2;
        j = i;
        if (localObject7[2] == null) {
          continue;
        }
        j = i | 0x4;
        i = j;
        if (localObject7[4] == null) {
          continue;
        }
        i = j | 0x8;
        j = i;
        if (localObject7[3] == null) {
          continue;
        }
        j = i | 0x10;
        continue;
        if (i == 6) {
          continue;
        }
        switch (i)
        {
        }
        Object localObject5 = localObject6;
        continue;
        i = 0;
        continue;
        continue;
      }
      try
      {
        localObject7 = new hxi[5];
        localObject7[0] = b.b(0);
        localObject7[1] = b.b(1);
        localObject7[2] = b.b(2);
        localObject7[3] = b.b(3);
        localObject7[4] = b.b(4);
        if (localObject7[0] == null) {
          continue;
        }
        j = 1;
      }
      finally
      {
        localObject6 = localhwu;
      }
    }
    localhxc = new hxc(localhwu, j, d);
    i = localhxc.a();
    localObject6 = null;
    break label823;
    for (;;)
    {
      i = localhxc.a();
      localObject6 = localObject1;
      break;
      localObject6 = localObject7[localhxc.d()];
      Object localObject1 = localObject6;
      if (localObject6 == null)
      {
        localhxc.b();
        localObject1 = localObject6;
        continue;
        hww.a((Closeable)localObject6);
        throw ((Throwable)localObject2);
        hxh localhxh1 = localhxc.c();
        hxh localhxh2 = ((hxi)localObject6).a(localhxh1.b());
        localObject3 = localObject6;
        if (localhxh2 != null)
        {
          if (localhxh2.e() == localhxh1.e())
          {
            i = localhxh2.c();
            j = localhxh1.c();
            if (i == j) {}
          }
          else
          {
            hww.a(localhwu);
            return false;
          }
          c.add(new hxa(localhxh2, localhxh1.j()));
          ((hxi)localObject6).b(localhxh1.b());
          localObject3 = localObject6;
          if (((hxi)localObject6).c() == 0)
          {
            localhxc.b();
            localObject3 = localObject6;
          }
        }
      }
    }
    while (i < 5)
    {
      localObject3 = localObject7[i];
      if (localObject3 != null)
      {
        j = ((hxi)localObject3).c();
        if (j > 0)
        {
          hww.a(localhwu);
          return false;
        }
      }
      i += 1;
    }
    a.order(b.g());
    localObject3 = c.iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject7 = (hxa)((Iterator)localObject3).next();
      localObject6 = b;
      i = a;
      if (((hxh)localObject6).f())
      {
        if (Log.isLoggable("ExifModifier", 2))
        {
          localObject7 = String.valueOf(localObject6);
          new StringBuilder(String.valueOf(localObject7).length() + 19).append("modifying tag to: \n").append((String)localObject7);
          new StringBuilder(22).append("at offset: ").append(i);
        }
        a.position(i + e);
        switch (((hxh)localObject6).c())
        {
        case 1: 
        case 7: 
          localObject7 = new byte[((hxh)localObject6).e()];
          ((hxh)localObject6).b((byte[])localObject7);
          a.put((byte[])localObject7);
          break;
        case 2: 
          localObject7 = ((hxh)localObject6).i();
          if (localObject7.length == ((hxh)localObject6).e())
          {
            localObject7[(localObject7.length - 1)] = 0;
            a.put((byte[])localObject7);
          }
          else
          {
            a.put((byte[])localObject7);
            a.put((byte)0);
          }
          break;
        }
      }
    }
    j = ((hxh)localObject6).e();
    i = 0;
    while (i < j)
    {
      a.putInt((int)((hxh)localObject6).e(i));
      i += 1;
    }
    j = ((hxh)localObject6).e();
    i = 0;
    while (i < j)
    {
      localObject7 = ((hxh)localObject6).f(i);
      a.putInt((int)((hxl)localObject7).a());
      a.putInt((int)((hxl)localObject7).b());
      i += 1;
    }
    j = ((hxh)localObject6).e();
    i = 0;
    while (i < j)
    {
      a.putShort((short)(int)((hxh)localObject6).e(i));
      i += 1;
    }
    hww.a(localhwu);
    return true;
  }
}

/* Location:
 * Qualified Name:     hwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */