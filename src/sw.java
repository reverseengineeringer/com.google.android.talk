import android.content.Context;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

public final class sw
  implements wc
{
  final ActionMode.Callback a;
  final Context b;
  final ArrayList<sv> c;
  final if<Menu, Menu> d;
  
  public sw(Context paramContext, ActionMode.Callback paramCallback)
  {
    b = paramContext;
    a = paramCallback;
    c = new ArrayList();
    d = new if();
  }
  
  private Menu a(Menu paramMenu)
  {
    Menu localMenu2 = (Menu)d.get(paramMenu);
    Menu localMenu1 = localMenu2;
    if (localMenu2 == null)
    {
      localMenu1 = aal.a(b, (gi)paramMenu);
      d.put(paramMenu, localMenu1);
    }
    return localMenu1;
  }
  
  public void a(wb paramwb)
  {
    a.onDestroyActionMode(b(paramwb));
  }
  
  public boolean a(wb paramwb, Menu paramMenu)
  {
    return a.onCreateActionMode(b(paramwb), a(paramMenu));
  }
  
  public boolean a(wb paramwb, MenuItem paramMenuItem)
  {
    return a.onActionItemClicked(b(paramwb), aal.a(b, (gj)paramMenuItem));
  }
  
  public ActionMode b(wb paramwb)
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      sv localsv = (sv)c.get(i);
      if ((localsv != null) && (b == paramwb)) {
        return localsv;
      }
      i += 1;
    }
    paramwb = new sv(b, paramwb);
    c.add(paramwb);
    return paramwb;
  }
  
  public boolean b(wb paramwb, Menu paramMenu)
  {
    return a.onPrepareActionMode(b(paramwb), a(paramMenu));
  }
}

/* Location:
 * Qualified Name:     sw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */