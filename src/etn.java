import android.os.Handler;
import android.os.SystemClock;

final class etn
  implements hjb, Runnable
{
  private boolean b;
  private long c;
  
  etn(etk parametk) {}
  
  private void a(String paramString, boolean paramBoolean)
  {
    aal.y().removeCallbacks(this);
    if ((b) || (a.g)) {
      return;
    }
    if (paramString != null) {
      a.b(paramString);
    }
    if (!paramBoolean) {
      a.a(paramBoolean);
    }
    b = true;
    a.m();
  }
  
  private void b(String paramString)
  {
    int i = (int)(SystemClock.elapsedRealtime() - c);
    if (c())
    {
      a.a(2889, i);
      ezi.c("Babel_telephony", "HangoutIdCreatorListener.handleSlowHangoutIdCreation, latency too high. Using cell", new Object[0]);
      a(null, false);
      return;
    }
    a.a(2891, i);
    a(paramString, true);
  }
  
  private boolean c()
  {
    int i = eut.a(a.a).b();
    return (dvp.L.b(i)) || (dvp.M.b(i));
  }
  
  private long d()
  {
    return aal.a(a.a, "babel_wifi_calls_create_hangout_id_timeout_millis", ers.c);
  }
  
  public void a()
  {
    String str = String.valueOf("HangoutIdCreatorListener.onFailure, Failed to create hangoutId\n responseReceived : ");
    boolean bool1 = b;
    boolean bool2 = a.g;
    ezi.c("Babel_telephony", String.valueOf(str).length() + 28 + str + bool1 + ", setupFinished : " + bool2, new Object[0]);
    a.a(2889, -1);
    a(null, false);
  }
  
  public void a(String paramString)
  {
    int i = (int)(SystemClock.elapsedRealtime() - c);
    ezi.c("Babel_telephony", 87 + "HangoutIdCreatorListener.onSuccess, time taken to create hangoutId : " + i + " millis", new Object[0]);
    boolean bool1 = b;
    boolean bool2 = a.g;
    ezi.c("Babel_telephony", String.valueOf(paramString).length() + 105 + "HangoutIdCreatorListener.onSuccess, Received hangoutId : " + paramString + " responseReceived : " + bool1 + ", setupFinished : " + bool2, new Object[0]);
    if (i < d())
    {
      if (c()) {
        a.a(2890, i);
      }
      for (;;)
      {
        a(paramString, true);
        return;
        a.a(2892, i);
      }
    }
    b(paramString);
  }
  
  void b()
  {
    Handler localHandler = aal.y();
    if (c()) {}
    for (long l = d();; l = aal.a(a.a, "babel_wifi_calls_create_hangout_id_max_timeout_millis", ers.d))
    {
      localHandler.postDelayed(this, l);
      c = SystemClock.elapsedRealtime();
      return;
    }
  }
  
  public void run()
  {
    String str = String.valueOf("HangoutIdCreatorListener.run, timed out when creating hangoutId\n responseReceived : ");
    boolean bool1 = b;
    boolean bool2 = a.g;
    ezi.c("Babel_telephony", String.valueOf(str).length() + 28 + str + bool1 + ", setupFinished : " + bool2, new Object[0]);
    b(null);
  }
}

/* Location:
 * Qualified Name:     etn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */