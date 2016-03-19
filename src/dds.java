import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;

public final class dds
  implements DialogInterface.OnClickListener
{
  public dds(BabelHomeActivity paramBabelHomeActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
  }
}

/* Location:
 * Qualified Name:     dds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */