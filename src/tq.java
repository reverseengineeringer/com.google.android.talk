import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

public class tq
  extends th<gj>
  implements MenuItem
{
  private Method e;
  
  public tq(Context paramContext, gj paramgj)
  {
    super(paramContext, paramgj);
  }
  
  tr a(ActionProvider paramActionProvider)
  {
    return new tr(this, a, paramActionProvider);
  }
  
  public void a()
  {
    try
    {
      if (e == null) {
        e = ((gj)d).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
      }
      e.invoke(d, new Object[] { Boolean.valueOf(true) });
      return;
    }
    catch (Exception localException) {}
  }
  
  public boolean collapseActionView()
  {
    return ((gj)d).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((gj)d).expandActionView();
  }
  
  public ActionProvider getActionProvider()
  {
    iq localiq = ((gj)d).a();
    if ((localiq instanceof tr)) {
      return a;
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView2 = ((gj)d).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof ts)) {
      localView1 = ((ts)localView2).c();
    }
    return localView1;
  }
  
  public char getAlphabeticShortcut()
  {
    return ((gj)d).getAlphabeticShortcut();
  }
  
  public int getGroupId()
  {
    return ((gj)d).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((gj)d).getIcon();
  }
  
  public Intent getIntent()
  {
    return ((gj)d).getIntent();
  }
  
  public int getItemId()
  {
    return ((gj)d).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((gj)d).getMenuInfo();
  }
  
  public char getNumericShortcut()
  {
    return ((gj)d).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((gj)d).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((gj)d).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((gj)d).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((gj)d).getTitleCondensed();
  }
  
  public boolean hasSubMenu()
  {
    return ((gj)d).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((gj)d).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((gj)d).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((gj)d).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((gj)d).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((gj)d).isVisible();
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    gj localgj = (gj)d;
    if (paramActionProvider != null) {}
    for (paramActionProvider = a(paramActionProvider);; paramActionProvider = null)
    {
      localgj.a(paramActionProvider);
      return this;
    }
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((gj)d).setActionView(paramInt);
    View localView = ((gj)d).getActionView();
    if ((localView instanceof CollapsibleActionView)) {
      ((gj)d).setActionView(new ts(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof CollapsibleActionView)) {
      localObject = new ts(paramView);
    }
    ((gj)d).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((gj)d).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((gj)d).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((gj)d).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((gj)d).setEnabled(paramBoolean);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((gj)d).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((gj)d).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((gj)d).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((gj)d).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    gj localgj = (gj)d;
    if (paramOnActionExpandListener != null) {}
    for (paramOnActionExpandListener = new tt(this, paramOnActionExpandListener);; paramOnActionExpandListener = null)
    {
      localgj.a(paramOnActionExpandListener);
      return this;
    }
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    gj localgj = (gj)d;
    if (paramOnMenuItemClickListener != null) {}
    for (paramOnMenuItemClickListener = new tu(this, paramOnMenuItemClickListener);; paramOnMenuItemClickListener = null)
    {
      localgj.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((gj)d).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((gj)d).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((gj)d).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((gj)d).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((gj)d).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((gj)d).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((gj)d).setVisible(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     tq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */