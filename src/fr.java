import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.FutureTask;

final class fr
  extends Handler
{
  public fr()
  {
    super(Looper.getMainLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject = (fq)obj;
    switch (what)
    {
    default: 
      return;
    case 1: 
      paramMessage = a;
      localObject = b[0];
      if (e.isCancelled()) {
        paramMessage.b(localObject);
      }
      for (;;)
      {
        f = fs.c;
        return;
        paramMessage.a(localObject);
      }
    }
    a.b();
  }
}

/* Location:
 * Qualified Name:     fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */