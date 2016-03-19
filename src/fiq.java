import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;

public final class fiq<R extends fim>
  extends Handler
{
  public fiq()
  {
    this(Looper.getMainLooper());
  }
  
  public fiq(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void a()
  {
    removeMessages(2);
  }
  
  public void a(fin<R> paramfin, R paramR)
  {
    sendMessage(obtainMessage(1, new Pair(paramfin, paramR)));
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.wtf("AbstractPendingResult", "Don't know how to handle this message.");
      return;
    case 1: 
      Object localObject = (Pair)obj;
      paramMessage = (fin)first;
      localObject = (fim)second;
      try
      {
        paramMessage.a((fim)localObject);
        return;
      }
      catch (RuntimeException paramMessage)
      {
        fip.b((fim)localObject);
        throw paramMessage;
      }
    }
    ((fip)obj).b(Status.d);
  }
}

/* Location:
 * Qualified Name:     fiq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */