import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.AbsListView.MultiChoiceModeListener;

final class dkw
  implements AbsListView.MultiChoiceModeListener
{
  dkw(dkv paramdkv) {}
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return a.a.a(paramMenuItem);
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    a.b = paramActionMode;
    return a.a.a(a, paramMenu);
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    a.a.a();
    a.b = null;
  }
  
  public void onItemCheckedStateChanged(ActionMode paramActionMode, int paramInt, long paramLong, boolean paramBoolean)
  {
    a.a.a(a, paramInt, paramBoolean);
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return a.a.b(a, paramMenu);
  }
}

/* Location:
 * Qualified Name:     dkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */