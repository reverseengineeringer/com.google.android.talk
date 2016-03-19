import android.content.Context;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

final class tw
  extends tr
  implements ActionProvider.VisibilityListener
{
  is c;
  
  public tw(tv paramtv, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramtv, paramContext, paramActionProvider);
  }
  
  public View a(MenuItem paramMenuItem)
  {
    return a.onCreateActionView(paramMenuItem);
  }
  
  public void a(is paramis)
  {
    c = paramis;
    a.setVisibilityListener(this);
  }
  
  public boolean b()
  {
    return a.overridesItemVisibility();
  }
  
  public boolean c()
  {
    return a.isVisible();
  }
  
  public void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (c != null) {
      c.a();
    }
  }
}

/* Location:
 * Qualified Name:     tw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */