import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ArrayAdapter;

final class blx
  implements DialogInterface.OnClickListener
{
  blx(blw paramblw, ArrayAdapter paramArrayAdapter) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((dgz)a.getItem(paramInt)).a();
  }
}

/* Location:
 * Qualified Name:     blx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */