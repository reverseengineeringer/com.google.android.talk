import android.content.Context;
import android.os.Build.VERSION;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Map;

class th<T>
  extends ti<T>
{
  final Context a;
  Map<gj, MenuItem> b;
  Map<gk, SubMenu> c;
  
  th(Context paramContext, T paramT)
  {
    super(paramT);
    a = paramContext;
  }
  
  final MenuItem a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof gj))
    {
      gj localgj = (gj)paramMenuItem;
      if (b == null) {
        b = new hq();
      }
      MenuItem localMenuItem = (MenuItem)b.get(paramMenuItem);
      paramMenuItem = localMenuItem;
      if (localMenuItem == null)
      {
        paramMenuItem = aal.a(a, localgj);
        b.put(localgj, paramMenuItem);
      }
      return paramMenuItem;
    }
    return paramMenuItem;
  }
  
  final SubMenu a(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof gk))
    {
      gk localgk = (gk)paramSubMenu;
      if (c == null) {
        c = new hq();
      }
      SubMenu localSubMenu = (SubMenu)c.get(localgk);
      paramSubMenu = localSubMenu;
      if (localSubMenu == null)
      {
        paramSubMenu = a;
        if (Build.VERSION.SDK_INT >= 14)
        {
          paramSubMenu = new uf(paramSubMenu, localgk);
          c.put(localgk, paramSubMenu);
        }
      }
      else
      {
        return paramSubMenu;
      }
      throw new UnsupportedOperationException();
    }
    return paramSubMenu;
  }
}

/* Location:
 * Qualified Name:     th
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */