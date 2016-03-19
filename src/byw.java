import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;

public final class byw
  implements ActionMode.Callback
{
  public byw(CallContactPickerFragment paramCallContactPickerFragment) {}
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return false;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    a.f.w_();
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    a.f.x_();
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     byw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */