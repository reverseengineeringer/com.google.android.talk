import android.database.Cursor;
import android.widget.PopupWindow.OnDismissListener;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class dfd
  implements PopupWindow.OnDismissListener
{
  public dfd(DebugActivity paramDebugActivity, Cursor paramCursor, Runnable paramRunnable) {}
  
  public void onDismiss()
  {
    if (a != null) {
      a.close();
    }
    if (b != null) {
      b.run();
    }
  }
}

/* Location:
 * Qualified Name:     dfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */