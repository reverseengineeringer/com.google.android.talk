import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class tt
  extends ti<MenuItem.OnActionExpandListener>
  implements jw
{
  tt(tq paramtq, MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    super(paramOnActionExpandListener);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)d).onMenuItemActionExpand(a.a(paramMenuItem));
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)d).onMenuItemActionCollapse(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     tt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */