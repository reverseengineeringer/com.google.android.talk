import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dzb
  implements ServiceConnection
{
  public dzb(RealTimeChatService paramRealTimeChatService) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    a.l = ((eew)paramIBinder).a();
    boolean bool = RealTimeChatService.a;
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    a.l = null;
    boolean bool = RealTimeChatService.a;
  }
}

/* Location:
 * Qualified Name:     dzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */