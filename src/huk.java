import android.content.Context;
import android.os.Handler;
import android.os.Message;

final class huk
  implements Runnable
{
  huk(hug paramhug, htu paramhtu, hus paramhus) {}
  
  public void run()
  {
    c.c.a(a, b);
    Handler localHandler;
    if (!c.c.b())
    {
      localHandler = c.c.d();
      localHandler.removeMessages(510);
      if (a == c.d) {
        c.a.stopService(c.b);
      }
    }
    else
    {
      return;
    }
    Message localMessage = Message.obtain(localHandler, jua.a(c.e));
    what = 510;
    localHandler.sendMessageDelayed(localMessage, 5000L);
  }
}

/* Location:
 * Qualified Name:     huk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */