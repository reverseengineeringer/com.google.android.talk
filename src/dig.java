import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.google.android.apps.hangouts.phone.HangoutUrlHandlerActivity;

public final class dig
  implements DialogInterface.OnCancelListener
{
  public dig(HangoutUrlHandlerActivity paramHangoutUrlHandlerActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a.finish();
  }
}

/* Location:
 * Qualified Name:     dig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */