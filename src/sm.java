import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;
import android.widget.ListAdapter;

final class sm
  extends tc
{
  public sm(sh paramsh, Window.Callback paramCallback)
  {
    super(paramCallback);
  }
  
  public View onCreatePanelView(int paramInt)
  {
    switch (paramInt)
    {
    }
    Menu localMenu;
    do
    {
      return super.onCreatePanelView(paramInt);
      localMenu = a.a.o();
    } while ((!onPreparePanel(paramInt, null, localMenu)) || (!onMenuOpened(paramInt, localMenu)));
    sh localsh = a;
    tl localtl;
    Object localObject;
    Resources.Theme localTheme;
    if ((d == null) && ((localMenu instanceof tl)))
    {
      localtl = (tl)localMenu;
      localObject = a.b();
      TypedValue localTypedValue = new TypedValue();
      localTheme = ((Context)localObject).getResources().newTheme();
      localTheme.setTo(((Context)localObject).getTheme());
      localTheme.resolveAttribute(aen.t, localTypedValue, true);
      if (resourceId != 0) {
        localTheme.applyStyle(resourceId, true);
      }
      localTheme.resolveAttribute(aen.Y, localTypedValue, true);
      if (resourceId == 0) {
        break label256;
      }
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      localObject = new ContextThemeWrapper((Context)localObject, 0);
      ((Context)localObject).getTheme().setTo(localTheme);
      d = new tj((Context)localObject, aal.bk);
      d.a(new sl(localsh));
      localtl.a(d);
      if ((localMenu != null) && (d != null)) {
        break;
      }
      return null;
      label256:
      localTheme.applyStyle(aal.bw, true);
    }
    if (d.a().getCount() > 0) {
      return (View)d.a(a.a());
    }
    return null;
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
    if ((bool) && (!a.b))
    {
      a.a.j();
      a.b = true;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     sm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */