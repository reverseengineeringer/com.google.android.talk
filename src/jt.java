import android.view.MenuItem;
import android.view.View;

class jt
  implements jv
{
  public MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    return paramMenuItem.setActionView(paramView);
  }
  
  public View a(MenuItem paramMenuItem)
  {
    return paramMenuItem.getActionView();
  }
  
  public void a(MenuItem paramMenuItem, int paramInt)
  {
    paramMenuItem.setShowAsAction(paramInt);
  }
  
  public MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    return paramMenuItem.setActionView(paramInt);
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public boolean c(MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     jt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */