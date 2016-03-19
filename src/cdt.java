import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class cdt
  implements DialogInterface.OnClickListener
{
  cdt(cdr paramcdr) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a();
    ((cdn)a.getTargetFragment()).getActivity().finish();
  }
}

/* Location:
 * Qualified Name:     cdt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */