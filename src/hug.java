import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.google.android.libraries.social.async.BackgroundTaskService;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class hug
  implements htv, htw
{
  private static final ThreadFactory f;
  private static final Executor g;
  final Context a;
  final Intent b;
  hum c;
  htu d;
  final Runnable e = new huh(this);
  
  static
  {
    hui localhui = new hui();
    f = localhui;
    g = Executors.newCachedThreadPool(localhui);
  }
  
  hug(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    b = new Intent(a, BackgroundTaskService.class);
    d = new hul();
  }
  
  public void a()
  {
    if (c == null) {
      c = ((hum)ilh.a(a, hum.class));
    }
    for (;;)
    {
      htu localhtu = c.c();
      if (localhtu == null) {
        break;
      }
      localhtu.a(this);
      g.execute(jua.a(new huj(this, localhtu)));
    }
    a.startService(b);
  }
  
  public void a(htu paramhtu, hus paramhus)
  {
    c.d().post(jua.a(new huk(this, paramhtu, paramhus)));
  }
}

/* Location:
 * Qualified Name:     hug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */