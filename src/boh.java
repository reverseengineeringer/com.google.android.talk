import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class boh
  implements DialogInterface.OnClickListener
{
  boh(bng parambng) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.getActivity();
    if (paramDialogInterface != null) {
      paramDialogInterface.finish();
    }
  }
}

/* Location:
 * Qualified Name:     boh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */