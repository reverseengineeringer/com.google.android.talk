import android.content.Intent;
import android.util.Base64;
import com.google.android.apps.hangouts.realtimechat.GcmIntentService;

final class cfk
  implements Runnable
{
  cfk(cfc paramcfc, Intent paramIntent) {}
  
  public void run()
  {
    byte[] arrayOfByte = Base64.decode(GcmIntentService.a(a), 0);
    hgd.a().a(arrayOfByte);
  }
}

/* Location:
 * Qualified Name:     cfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */