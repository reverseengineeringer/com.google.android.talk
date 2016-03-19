import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ArrayAdapter;

final class dgk
  implements DialogInterface.OnClickListener
{
  dgk(dfq paramdfq, ArrayAdapter paramArrayAdapter) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((dgz)a.getItem(paramInt)).a();
  }
}

/* Location:
 * Qualified Name:     dgk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */