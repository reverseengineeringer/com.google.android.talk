package android.support.v7.widget;

import aal;
import aav;
import aen;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources.Theme;
import android.support.v7.internal.widget.ActivityChooserView;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import iq;
import uq;
import vv;

public class ShareActionProvider
  extends iq
{
  public final Context a;
  public String b = "share_history.xml";
  private int c = 4;
  private final aav d = new aav(this);
  
  public ShareActionProvider(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
  }
  
  public View a()
  {
    ActivityChooserView localActivityChooserView = new ActivityChooserView(a);
    if (!localActivityChooserView.isInEditMode()) {
      localActivityChooserView.a(uq.a(a, b));
    }
    TypedValue localTypedValue = new TypedValue();
    a.getTheme().resolveAttribute(aen.C, localTypedValue, true);
    localActivityChooserView.a(vv.a(a, resourceId));
    localActivityChooserView.a(this);
    localActivityChooserView.c(aal.bu);
    localActivityChooserView.a(aal.bt);
    return localActivityChooserView;
  }
  
  public void a(SubMenu paramSubMenu)
  {
    paramSubMenu.clear();
    uq localuq = uq.a(a, b);
    PackageManager localPackageManager = a.getPackageManager();
    int j = localuq.a();
    int k = Math.min(j, c);
    int i = 0;
    ResolveInfo localResolveInfo;
    while (i < k)
    {
      localResolveInfo = localuq.a(i);
      paramSubMenu.add(0, i, i, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setOnMenuItemClickListener(d);
      i += 1;
    }
    if (k < j)
    {
      paramSubMenu = paramSubMenu.addSubMenu(0, k, k, a.getString(aal.br));
      i = 0;
      while (i < j)
      {
        localResolveInfo = localuq.a(i);
        paramSubMenu.add(0, i, i, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setOnMenuItemClickListener(d);
        i += 1;
      }
    }
  }
  
  public boolean e()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ShareActionProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */