import android.os.Handler;
import android.os.Message;

final class cbq
  extends Handler
{
  private final cbp a;
  
  public cbq(cbp paramcbp)
  {
    a = paramcbp;
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 0) {
      a.at();
    }
  }
}

/* Location:
 * Qualified Name:     cbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */