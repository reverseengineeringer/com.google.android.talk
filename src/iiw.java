import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class iiw
  implements DialogInterface.OnClickListener
{
  iiw(iiv paramiiv) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a = paramInt;
    a.onClick(paramDialogInterface, -1);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     iiw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */