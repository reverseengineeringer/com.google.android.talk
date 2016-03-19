import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;

class rn
  extends rk
{
  rn(rm paramrm, Window.Callback paramCallback)
  {
    super(paramrm, paramCallback);
  }
  
  final ActionMode a(ActionMode.Callback paramCallback)
  {
    paramCallback = new sw(b.a, paramCallback);
    wb localwb = b.b(paramCallback);
    if (localwb != null) {
      return paramCallback.b(localwb);
    }
    return null;
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    if (b.m()) {
      return a(paramCallback);
    }
    return super.onWindowStartingActionMode(paramCallback);
  }
}

/* Location:
 * Qualified Name:     rn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */