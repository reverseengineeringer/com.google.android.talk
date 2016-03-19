import android.content.Context;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class tr
  extends iq
{
  final ActionProvider a;
  
  public tr(tq paramtq, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramContext);
    a = paramActionProvider;
  }
  
  public View a()
  {
    return a.onCreateActionView();
  }
  
  public void a(SubMenu paramSubMenu)
  {
    a.onPrepareSubMenu(b.a(paramSubMenu));
  }
  
  public boolean d()
  {
    return a.onPerformDefaultAction();
  }
  
  public boolean e()
  {
    return a.hasSubMenu();
  }
}

/* Location:
 * Qualified Name:     tr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */