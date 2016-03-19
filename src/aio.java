import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;

public final class aio
{
  private final byte[] a = new byte['Ā'];
  private ByteBuffer b;
  private ain c;
  private int d = 0;
  
  private int[] a(int paramInt)
  {
    int j = 0;
    localObject = null;
    byte[] arrayOfByte = new byte[paramInt * 3];
    try
    {
      b.get(arrayOfByte);
      int[] arrayOfInt = new int['Ā'];
      int i = 0;
      for (;;)
      {
        localObject = arrayOfInt;
        if (i >= paramInt) {
          break;
        }
        int n = j + 1;
        int k = arrayOfByte[j];
        int m = n + 1;
        n = arrayOfByte[n];
        j = m + 1;
        arrayOfInt[i] = ((k & 0xFF) << 16 | 0xFF000000 | (n & 0xFF) << 8 | arrayOfByte[m] & 0xFF);
        i += 1;
      }
      return (int[])localObject;
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
      c.b = 1;
    }
  }
  
  private void c()
  {
    int i = 0;
    while ((i == 0) && (!i()) && (c.c <= Integer.MAX_VALUE))
    {
      int k;
      int j;
      label184:
      Object localObject;
      boolean bool;
      switch (h())
      {
      default: 
        c.b = 1;
        break;
      case 44: 
        if (c.d == null) {
          c.d = new aim();
        }
        c.d.a = b.getShort();
        c.d.b = b.getShort();
        c.d.c = b.getShort();
        c.d.d = b.getShort();
        k = h();
        int m;
        if ((k & 0x80) != 0)
        {
          j = 1;
          m = (int)Math.pow(2.0D, (k & 0x7) + 1);
          localObject = c.d;
          if ((k & 0x40) == 0) {
            break label327;
          }
          bool = true;
          e = bool;
          if (j == 0) {
            break label333;
          }
        }
        for (c.d.k = a(m);; c.d.k = null)
        {
          c.d.j = b.position();
          h();
          f();
          if (i()) {
            break;
          }
          localObject = c;
          c += 1;
          c.e.add(c.d);
          break;
          j = 0;
          break label184;
          bool = false;
          break label221;
        }
      case 33: 
        switch (h())
        {
        default: 
          f();
          break;
        case 249: 
          c.d = new aim();
          h();
          j = h();
          c.d.g = ((j & 0x1C) >> 2);
          if (c.d.g == 0) {
            c.d.g = 1;
          }
          localObject = c.d;
          if ((j & 0x1) != 0) {}
          for (bool = true;; bool = false)
          {
            f = bool;
            k = b.getShort();
            j = k;
            if (k < 2) {
              j = 10;
            }
            c.d.i = (j * 10);
            c.d.h = h();
            h();
            break;
          }
        case 255: 
          g();
          localObject = "";
          j = 0;
          while (j < 11)
          {
            localObject = String.valueOf(localObject);
            char c1 = (char)a[j];
            localObject = String.valueOf(localObject).length() + 1 + (String)localObject + c1;
            j += 1;
          }
          if (((String)localObject).equals("NETSCAPE2.0")) {
            d();
          } else {
            f();
          }
          break;
        case 254: 
          f();
          break;
        case 1: 
          f();
        }
        break;
      case 59: 
        label221:
        label327:
        label333:
        i = 1;
      }
    }
  }
  
  private void d()
  {
    do
    {
      g();
      if (a[0] == 1)
      {
        int i = a[1];
        int j = a[2];
        c.m = (i & 0xFF | (j & 0xFF) << 8);
      }
    } while ((d > 0) && (!i()));
  }
  
  private void e()
  {
    boolean bool = true;
    Object localObject = "";
    int i = 0;
    while (i < 6)
    {
      localObject = String.valueOf(localObject);
      char c1 = (char)h();
      localObject = String.valueOf(localObject).length() + 1 + (String)localObject + c1;
      i += 1;
    }
    if (!((String)localObject).startsWith("GIF"))
    {
      c.b = 1;
      return;
    }
    c.f = b.getShort();
    c.g = b.getShort();
    i = h();
    localObject = c;
    if ((i & 0x80) != 0) {}
    for (;;)
    {
      h = bool;
      c.i = (2 << (i & 0x7));
      c.j = h();
      c.k = h();
      if ((!c.h) || (i())) {
        break;
      }
      c.a = a(c.i);
      c.l = c.a[c.j];
      return;
      bool = false;
    }
  }
  
  private void f()
  {
    int i;
    do
    {
      i = h();
      b.position(b.position() + i);
    } while (i > 0);
  }
  
  private int g()
  {
    int m = 0;
    int i = 0;
    d = h();
    if (d > 0)
    {
      int j = 0;
      for (;;)
      {
        int k = j;
        m = i;
        try
        {
          if (i < d)
          {
            k = j;
            j = d - i;
            k = j;
            b.get(a, i, j);
            i += j;
          }
        }
        catch (Exception localException)
        {
          if (Log.isLoggable("GifHeaderParser", 3))
          {
            j = d;
            new StringBuilder(76).append("Error Reading Block n: ").append(i).append(" count: ").append(k).append(" blockSize: ").append(j);
          }
          c.b = 1;
          m = i;
        }
      }
    }
    return m;
  }
  
  private int h()
  {
    try
    {
      int i = b.get();
      return i & 0xFF;
    }
    catch (Exception localException)
    {
      c.b = 1;
    }
    return 0;
  }
  
  private boolean i()
  {
    return c.b != 0;
  }
  
  public aio a(ByteBuffer paramByteBuffer)
  {
    b = null;
    Arrays.fill(a, (byte)0);
    c = new ain();
    d = 0;
    b = paramByteBuffer.asReadOnlyBuffer();
    b.position(0);
    b.order(ByteOrder.LITTLE_ENDIAN);
    return this;
  }
  
  public void a()
  {
    b = null;
    c = null;
  }
  
  public ain b()
  {
    if (b == null) {
      throw new IllegalStateException("You must call setData() before parseHeader()");
    }
    if (i()) {
      return c;
    }
    e();
    if (!i())
    {
      c();
      if (c.c < 0) {
        c.b = 1;
      }
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     aio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */