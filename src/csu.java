import android.content.DialogInterface;
import android.os.Bundle;

public final class csu
  extends ikt
{
  private csv aj;
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((csv)an.a(csv.class));
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    aj.b();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case -1: 
      aj.a();
      return;
    }
    aj.b();
  }
}

/* Location:
 * Qualified Name:     csu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */