import android.os.Looper;
import android.os.MessageQueue;

final class hyj
  implements Runnable
{
  hyj(hyg paramhyg) {}
  
  public void run()
  {
    Looper.myQueue().addIdleHandler(a.b);
  }
}

/* Location:
 * Qualified Name:     hyj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */