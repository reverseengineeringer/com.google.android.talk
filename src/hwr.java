import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class hwr
  extends Handler
{
  private final WeakReference<hwp> a;
  
  hwr(hwp paramhwp)
  {
    a = new WeakReference(paramhwp);
  }
  
  void a()
  {
    if (!hasMessages(0)) {
      sendEmptyMessageDelayed(0, 800L);
    }
  }
  
  void b()
  {
    removeMessages(0);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 0)
    {
      paramMessage = (hwp)a.get();
      if (paramMessage != null) {
        paramMessage.c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     hwr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */