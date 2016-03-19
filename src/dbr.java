import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

final class dbr
  extends ResultReceiver
{
  dbr(dbq paramdbq, Handler paramHandler, bdy parambdy)
  {
    super(paramHandler);
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    super.onReceiveResult(paramInt, paramBundle);
    dbh.a(b.a, a);
  }
}

/* Location:
 * Qualified Name:     dbr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */