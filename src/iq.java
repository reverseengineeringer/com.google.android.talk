import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class iq
{
  private final Context a;
  private ir b;
  private is c;
  
  public iq(Context paramContext)
  {
    a = paramContext;
  }
  
  public abstract View a();
  
  public View a(MenuItem paramMenuItem)
  {
    return a();
  }
  
  public void a(SubMenu paramSubMenu) {}
  
  public void a(ir paramir)
  {
    b = paramir;
  }
  
  public void a(is paramis)
  {
    if (c != null) {
      new StringBuilder("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ").append(getClass().getSimpleName()).append(" instance while it is still in use somewhere else?");
    }
    c = paramis;
  }
  
  public void a(boolean paramBoolean)
  {
    if (b != null) {
      b.a(paramBoolean);
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean c()
  {
    return true;
  }
  
  public boolean d()
  {
    return false;
  }
  
  public boolean e()
  {
    return false;
  }
  
  public void f()
  {
    c = null;
    b = null;
  }
}

/* Location:
 * Qualified Name:     iq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */