import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.locks.Lock;

final class fjn
  extends Handler
{
  fjn(fjj paramfjj, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      new StringBuilder("Unknown message id: ").append(what);
      return;
    case 1: 
      paramMessage = a;
      a.lock();
      try
      {
        if (paramMessage.m()) {
          paramMessage.b();
        }
        return;
      }
      finally
      {
        a.unlock();
      }
    case 2: 
      fjj.a(a);
      return;
    case 3: 
      fjo localfjo = (fjo)obj;
      paramMessage = a;
      a.lock();
      try
      {
        fjs localfjs1 = k;
        fjs localfjs2 = d;
        if (localfjs1 != localfjs2) {
          return;
        }
        localfjo.a();
        return;
      }
      finally
      {
        a.unlock();
      }
    }
    throw ((RuntimeException)obj);
  }
}

/* Location:
 * Qualified Name:     fjn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */