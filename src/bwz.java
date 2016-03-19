import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

final class bwz
  implements DialogInterface.OnKeyListener
{
  bwz(bwy parambwy) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1))
    {
      if (!a.A) {
        a.b(true);
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     bwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */