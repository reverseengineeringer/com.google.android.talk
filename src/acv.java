import android.util.Log;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

public final class acv
{
  private InputStream a;
  private byte[] b;
  private boolean c;
  private int d = 0;
  private int e = 0;
  
  public acv(InputStream paramInputStream)
  {
    a = paramInputStream;
    b = new byte[e(16)];
    c = false;
  }
  
  private boolean d(int paramInt)
  {
    StressMode.a("fill");
    if (paramInt < d)
    {
      StressMode.d();
      throw new IllegalStateException(String.format("Index %d is before buffer %d", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(d) }));
    }
    int j = paramInt - d;
    if (a == null)
    {
      StressMode.d();
      return false;
    }
    int k = j + 1;
    int i = j;
    if (k > b.length)
    {
      if (!c) {
        break label189;
      }
      c(paramInt);
      i = paramInt - d;
    }
    try
    {
      for (;;)
      {
        paramInt = a.read(b, e, b.length - e);
        if (paramInt == -1) {
          break;
        }
        e = (paramInt + e);
        if (Log.isLoggable("InputStreamBuffer", 3)) {
          String.format("fill %d      buffer: %s", new Object[] { Integer.valueOf(i), this });
        }
        StressMode.d();
        if (i >= e) {
          break label255;
        }
        return true;
        label189:
        paramInt = e(k);
        String.format("Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called.", new Object[] { Integer.valueOf(b.length), Integer.valueOf(paramInt) });
        b = Arrays.copyOf(b, paramInt);
        i = j;
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        paramInt = -1;
        continue;
        a = null;
      }
    }
    label255:
    return false;
  }
  
  private static int e(int paramInt)
  {
    paramInt -= 1;
    paramInt |= paramInt >> 1;
    paramInt |= paramInt >> 2;
    paramInt |= paramInt >> 4;
    paramInt |= paramInt >> 8;
    return (paramInt | paramInt >> 16) + 1;
  }
  
  public byte a(int paramInt)
  {
    StressMode.a("get");
    if (b(paramInt))
    {
      int i = d;
      StressMode.d();
      return b[(paramInt - i)];
    }
    StressMode.d();
    throw new IndexOutOfBoundsException(String.format("Index %d beyond length.", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public boolean b(int paramInt)
  {
    StressMode.a("has");
    if (paramInt < d)
    {
      StressMode.d();
      throw new IllegalStateException(String.format("Index %d is before buffer %d", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(d) }));
    }
    int i = paramInt - d;
    if ((i >= e) || (i >= b.length))
    {
      StressMode.d();
      return d(paramInt);
    }
    StressMode.d();
    return true;
  }
  
  public void c(int paramInt)
  {
    StressMode.a("advance to");
    int n = paramInt - d;
    if (n <= 0)
    {
      StressMode.d();
      return;
    }
    int i;
    if (n < e)
    {
      if (n >= b.length) {
        throw new IndexOutOfBoundsException(String.format("Index %d out of bounds. Length %d", new Object[] { Integer.valueOf(n), Integer.valueOf(b.length) }));
      }
      i = 0;
      while (i + n < e)
      {
        b[i] = b[(i + n)];
        i += 1;
      }
      d = paramInt;
      e -= n;
    }
    for (;;)
    {
      if (Log.isLoggable("InputStreamBuffer", 3)) {
        String.format("advanceTo %d buffer: %s", new Object[] { Integer.valueOf(n), this });
      }
      StressMode.d();
      return;
      if (a != null)
      {
        i = n - e;
        int k = 0;
        label181:
        if (i > 0) {}
        for (;;)
        {
          try
          {
            l = a.skip(i);
            if (l > 0L) {
              continue;
            }
            m = k + 1;
            j = i;
            i = j;
            k = m;
            if (m < 5) {
              break label181;
            }
            i = 1;
          }
          catch (IOException localIOException)
          {
            long l;
            int m;
            int j = i;
            i = 1;
            continue;
          }
          if (i != 0) {
            a = null;
          }
          d = (paramInt - j);
          e = 0;
          break;
          j = (int)(i - l);
          m = k;
          continue;
          j = i;
          i = 0;
        }
      }
      d = paramInt;
      e = 0;
    }
  }
  
  public String toString()
  {
    return String.format("+%d+%d [%d]", new Object[] { Integer.valueOf(d), Integer.valueOf(b.length), Integer.valueOf(e) });
  }
}

/* Location:
 * Qualified Name:     acv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */