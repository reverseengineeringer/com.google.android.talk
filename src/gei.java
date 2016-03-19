import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

final class gei
  extends gfa
{
  private Handler a;
  
  public void a(Location paramLocation)
  {
    if (a == null)
    {
      Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramLocation;
    a.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     gei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */