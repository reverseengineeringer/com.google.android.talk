import android.app.Notification;
import android.os.Binder;
import com.google.android.libraries.hangouts.video.internal.CallService;

public final class hcr
  extends Binder
{
  public hcr(CallService paramCallService) {}
  
  public void a()
  {
    a.a = null;
    a.stopForeground(true);
  }
  
  public void a(hcd paramhcd)
  {
    a.a = paramhcd;
    paramhcd = paramhcd.l().a().s();
    if (paramhcd == null)
    {
      hlk.a(5, "vclib", "No notification was specified for the call; service may be terminated unexpectedly.");
      return;
    }
    flags |= 0x2;
    a.startForeground(1, paramhcd);
  }
}

/* Location:
 * Qualified Name:     hcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */