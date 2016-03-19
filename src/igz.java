import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;

public final class igz
  extends HandlerThread
  implements Handler.Callback
{
  private Handler a;
  
  public igz()
  {
    super("ImageLoader");
  }
  
  public void a(igp paramigp)
  {
    a.sendMessage(a.obtainMessage(0, paramigp));
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    paramMessage = (igp)obj;
    if ((paramMessage.m() == 2) || (paramMessage.m() == 4) || (paramMessage.m() == 6)) {
      paramMessage.c();
    }
    return true;
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
  
  public void start()
  {
    try
    {
      super.start();
      a = new Handler(getLooper(), this);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     igz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */