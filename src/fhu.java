import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;

public final class fhu
  extends au
{
  Dialog aj = null;
  DialogInterface.OnCancelListener ak = null;
  
  public Dialog a(Bundle paramBundle)
  {
    if (aj == null) {
      f();
    }
    return aj;
  }
  
  public void a(bg parambg, String paramString)
  {
    super.a(parambg, paramString);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (ak != null) {
      ak.onCancel(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     fhu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */