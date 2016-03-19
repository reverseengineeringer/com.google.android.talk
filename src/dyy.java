import android.content.Context;
import java.util.LinkedList;
import java.util.List;

public final class dyy
{
  private static final boolean a = false;
  private final List<eff> b = new LinkedList();
  private final int c = 0;
  private dza d = dza.a;
  private boolean e;
  private long f = 0L;
  private dyz g;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public static int a()
  {
    return -1;
  }
  
  private void a(long paramLong, dza paramdza, int paramInt)
  {
    if ((paramdza == dza.e) || (paramdza == dza.c) || (paramdza == dza.d)) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      long l;
      Object localObject;
      if (a)
      {
        l = System.currentTimeMillis();
        localObject = String.valueOf(paramdza);
        String str = String.valueOf(d.toString());
        bool = e;
        new StringBuilder(String.valueOf(localObject).length() + 157 + String.valueOf(str).length()).append("setNotificationTrigger eventTime: ").append(paramLong).append(", currentTimeMillis: ").append(l).append(", triggerLevel: ").append((String)localObject).append(", mNotifTriggerLevel: ").append(str).append(", mIsFromLivePush: ").append(bool);
      }
      if (d.ordinal() < paramdza.ordinal())
      {
        localObject = paramdza;
        if (!dvp.Q.b(paramInt))
        {
          localObject = paramdza;
          if (d == dza.a)
          {
            localObject = paramdza;
            if (e)
            {
              localObject = paramdza;
              if (paramLong != -1L)
              {
                l = System.currentTimeMillis();
                localObject = paramdza;
                if (l - paramLong / 1000L > aal.a(aal.oJ, "babel_pushislate", 60000L))
                {
                  if (a)
                  {
                    paramLong /= 1000L;
                    new StringBuilder(71).append("push is late by ").append(l - paramLong).append(" ms, so setting trigger to deferred");
                  }
                  localObject = dza.b;
                  f = (l * 1000L);
                }
              }
            }
          }
        }
        d = ((dza)localObject);
      }
      return;
    }
  }
  
  public void a(int paramInt)
  {
    a(-1L, dza.c, paramInt);
  }
  
  public void a(long paramLong, int paramInt)
  {
    a(paramLong, dza.e, paramInt);
  }
  
  public void a(Context paramContext, bfz parambfz, String paramString, List<czb> paramList)
  {
    if (g != null) {
      g.a(paramContext, parambfz, paramString, paramList);
    }
  }
  
  public void a(bfd parambfd)
  {
    g = new dyz(parambfd);
  }
  
  public void a(eff parameff)
  {
    b.add(parameff);
  }
  
  public void b()
  {
    e = true;
  }
  
  public void b(long paramLong, int paramInt)
  {
    a(paramLong, dza.d, paramInt);
  }
  
  public List<eff> c()
  {
    return b;
  }
  
  public long d()
  {
    return f;
  }
  
  public void e()
  {
    if (g != null) {
      g.a();
    }
  }
  
  public dza f()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     dyy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */