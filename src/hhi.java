import android.content.Context;
import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class hhi
  implements hhb
{
  private static final int[] a = { 100, 103, 106, 109, 112 };
  private static final int[] b = { 101, 104, 107, 110, 113 };
  private static final int[] c = { 102, 105, 108, 111, 114 };
  private final hhb d;
  private final hbx e;
  private final hhk f;
  private final long g;
  private boolean h;
  private boolean i;
  private final Map<Long, Integer> j;
  private final long[] k;
  private final long[] l;
  private final long[] m;
  
  public hhi(Context paramContext, hhb paramhhb, String paramString1, String paramString2, boolean paramBoolean)
  {
    this(paramhhb, new hhl(paramContext, paramString1, paramString2), new hhk(), paramBoolean);
  }
  
  private hhi(hhb paramhhb, hbx paramhbx, hhk paramhhk, boolean paramBoolean)
  {
    d = paramhhb;
    e = paramhbx;
    f = paramhhk;
    g = 40000L;
    h = false;
    i = false;
    j = new HashMap();
    k = new long[5];
    Arrays.fill(k, -1L);
    l = new long[5];
    Arrays.fill(l, -1L);
    m = new long[5];
    if (paramBoolean)
    {
      m[1] = 1L;
      m[4] = 1L;
      return;
    }
    m[1] = 1L;
    m[0] = 1L;
    m[2] = 1L;
    m[3] = 1L;
  }
  
  private void a(long paramLong, boolean paramBoolean)
  {
    int i1 = 0;
    Integer localInteger = (Integer)j.remove(Long.valueOf(paramLong));
    if (localInteger == null) {
      break label26;
    }
    label26:
    label136:
    for (;;)
    {
      return;
      if (m[localInteger.intValue()] > 0L)
      {
        l[localInteger.intValue()] = SystemClock.elapsedRealtime();
        if (!paramBoolean) {
          break;
        }
        long[] arrayOfLong = m;
        int n = localInteger.intValue();
        arrayOfLong[n] -= 1L;
        n = 0;
        if (n < m.length) {
          if (m[n] <= 0L) {}
        }
        for (n = i1;; n = 1)
        {
          if (n == 0) {
            break label136;
          }
          a();
          return;
          n += 1;
          break;
        }
      }
    }
  }
  
  void a()
  {
    if (i) {
      return;
    }
    int n = 0;
    while (n < 5)
    {
      if (k[n] != -1L)
      {
        e.a(a[n], k[n]);
        if (m[n] == 0L) {
          e.a(b[n], l[n]);
        }
      }
      else
      {
        n += 1;
        continue;
      }
      if (l[n] == -1L) {}
      for (long l1 = SystemClock.elapsedRealtime();; l1 = l[n])
      {
        e.a(c[n], l1);
        break;
      }
    }
    e.a();
    i = true;
  }
  
  public void a(long paramLong)
  {
    if (hlk.a()) {
      new StringBuilder(36).append("Request failed: ").append(paramLong);
    }
    a(paramLong, false);
    d.a(paramLong);
  }
  
  public void a(long paramLong, String paramString)
  {
    if (hlk.a()) {
      new StringBuilder(String.valueOf(paramString).length() + 51).append("Request starting: ").append(paramString).append(", requestId: ").append(paramLong);
    }
    int n;
    if (paramString.startsWith("hangout_participants/add")) {
      n = 0;
    }
    for (;;)
    {
      if (n != -1)
      {
        j.put(Long.valueOf(paramLong), Integer.valueOf(n));
        if (k[n] == -1L) {
          k[n] = SystemClock.elapsedRealtime();
        }
        if ((g > 0L) && (!h))
        {
          aal.a(new hhj(this), g);
          h = true;
        }
      }
      d.a(paramLong, paramString);
      return;
      if (paramString.startsWith("media_sessions/add")) {
        n = 1;
      } else if (paramString.startsWith("media_sources/add")) {
        n = 2;
      } else if (paramString.startsWith("media_streams/add")) {
        n = 3;
      } else if (paramString.startsWith("hangouts/bulk")) {
        n = 4;
      } else {
        n = -1;
      }
    }
  }
  
  public void a(long paramLong, byte[] paramArrayOfByte)
  {
    if (hlk.a()) {
      new StringBuilder(39).append("Request completed: ").append(paramLong);
    }
    a(paramLong, true);
    d.a(paramLong, paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     hhi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */