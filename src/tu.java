import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class tu
  extends ti<MenuItem.OnMenuItemClickListener>
  implements MenuItem.OnMenuItemClickListener
{
  tu(tq paramtq, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    super(paramOnMenuItemClickListener);
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnMenuItemClickListener)d).onMenuItemClick(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     tu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */