import android.os.Handler.Callback;
import android.os.Message;

final class alv
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      ((alr)obj).e();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     alv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */