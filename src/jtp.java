import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class jtp
  implements DialogInterface.OnClickListener
{
  jtp(jto paramjto, String paramString, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c.a.a(a);
    try
    {
      b.onClick(paramDialogInterface, paramInt);
      return;
    }
    finally
    {
      jud.b(a);
    }
  }
}

/* Location:
 * Qualified Name:     jtp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */