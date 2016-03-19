import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;

public abstract class ech
  extends htu
{
  public final bfd a;
  public final String b;
  private final long c;
  
  public ech(Context paramContext, String paramString1, bfd parambfd, String paramString2)
  {
    this(paramContext, paramString1, parambfd, paramString2, aal.a(aal.oJ, "babel_pending_message_failure_duration", 1200000L));
  }
  
  public ech(Context paramContext, String paramString1, bfd parambfd, String paramString2, long paramLong)
  {
    super(paramContext, paramString1);
    a = parambfd;
    b = paramString2;
    if (paramLong > 0L) {}
    for (paramLong = SystemClock.elapsedRealtime() + paramLong;; paramLong = -1L)
    {
      c = paramLong;
      return;
    }
  }
  
  protected hus a()
  {
    Object localObject1;
    if (g())
    {
      localObject1 = String.valueOf(toString());
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "The task was cancelled:".concat((String)localObject1);
        ezi.a("Babel_SrvOpTask", (String)localObject1, new Object[0]);
        localObject1 = new hus(200, null, "canceled");
      }
    }
    for (;;)
    {
      return (hus)localObject1;
      localObject1 = new String("The task was cancelled:");
      break;
      if ((c > 0L) && (c < SystemClock.elapsedRealtime()))
      {
        localObject1 = String.valueOf(toString());
        if (((String)localObject1).length() != 0) {}
        for (localObject1 = "The task expired:".concat((String)localObject1);; localObject1 = new String("The task expired:"))
        {
          ezi.d("Babel_SrvOpTask", (String)localObject1, new Object[0]);
          return new hus(0, null, "expired");
        }
      }
      Object localObject3;
      Object localObject4;
      Object localObject2;
      for (;;)
      {
        try
        {
          c();
          localObject1 = b();
          if (localObject1 != null) {
            break;
          }
          localObject1 = String.valueOf(toString());
          if (((String)localObject1).length() != 0)
          {
            localObject1 = "The task gets null server operation:".concat((String)localObject1);
            ezi.a("Babel_SrvOpTask", (String)localObject1, new Object[0]);
            return new hus(200, null, "no server op");
          }
        }
        catch (Exception localException)
        {
          localObject3 = String.valueOf(toString());
          localObject4 = String.valueOf(localException);
          ezi.e("Babel_SrvOpTask", String.valueOf(localObject3).length() + 37 + String.valueOf(localObject4).length() + "The task " + (String)localObject3 + " failed in local operations " + (String)localObject4, new Object[0]);
          return new hus(0, localException, "local failed");
        }
        localObject2 = new String("The task gets null server operation:");
      }
      try
      {
        ((dom)localObject2).f();
        localObject3 = new hus(k, m, "server op result");
        localObject4 = ((dom)localObject2).e();
        localObject2 = localObject3;
        if (localObject4 == null) {
          continue;
        }
        ((hus)localObject3).d().putSerializable("response_header", c);
        return (hus)localObject3;
      }
      catch (dvn localdvn)
      {
        for (;;)
        {
          localObject3 = String.valueOf(toString());
          localObject4 = String.valueOf(localObject2);
          String str = String.valueOf(localdvn);
          ezi.e("Babel_SrvOpTask", String.valueOf(localObject3).length() + 25 + String.valueOf(localObject4).length() + String.valueOf(str).length() + "The task " + (String)localObject3 + " failed in " + (String)localObject4 + " for " + str, new Object[0]);
        }
      }
    }
  }
  
  public String a(String paramString1, String paramString2)
  {
    if (a != null) {}
    for (int i = a.g();; i = -1)
    {
      String str = b;
      long l = c;
      return String.valueOf(paramString1).length() + 80 + String.valueOf(str).length() + String.valueOf(paramString2).length() + paramString1 + " [account=" + i + ", conversationId=" + str + ", expirationMillis=" + l + ", " + paramString2 + "]";
    }
  }
  
  public abstract dom<?, ?> b();
  
  public void c() {}
}

/* Location:
 * Qualified Name:     ech
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */