import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public final class td
  implements gj
{
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private CharSequence e;
  private CharSequence f;
  private Intent g;
  private char h;
  private char i;
  private Drawable j;
  private int k = 0;
  private Context l;
  private MenuItem.OnMenuItemClickListener m;
  private int n = 16;
  
  public td(Context paramContext, CharSequence paramCharSequence)
  {
    l = paramContext;
    a = 16908332;
    b = 0;
    c = 0;
    d = 0;
    e = paramCharSequence;
  }
  
  public gj a(iq paramiq)
  {
    throw new UnsupportedOperationException();
  }
  
  public gj a(jw paramjw)
  {
    return this;
  }
  
  public iq a()
  {
    return null;
  }
  
  public boolean collapseActionView()
  {
    return false;
  }
  
  public boolean expandActionView()
  {
    return false;
  }
  
  public ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException();
  }
  
  public View getActionView()
  {
    return null;
  }
  
  public char getAlphabeticShortcut()
  {
    return i;
  }
  
  public int getGroupId()
  {
    return b;
  }
  
  public Drawable getIcon()
  {
    return j;
  }
  
  public Intent getIntent()
  {
    return g;
  }
  
  public int getItemId()
  {
    return a;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }
  
  public char getNumericShortcut()
  {
    return h;
  }
  
  public int getOrder()
  {
    return d;
  }
  
  public SubMenu getSubMenu()
  {
    return null;
  }
  
  public CharSequence getTitle()
  {
    return e;
  }
  
  public CharSequence getTitleCondensed()
  {
    if (f != null) {
      return f;
    }
    return e;
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean isActionViewExpanded()
  {
    return false;
  }
  
  public boolean isCheckable()
  {
    return (n & 0x1) != 0;
  }
  
  public boolean isChecked()
  {
    return (n & 0x2) != 0;
  }
  
  public boolean isEnabled()
  {
    return (n & 0x10) != 0;
  }
  
  public boolean isVisible()
  {
    return (n & 0x8) == 0;
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    i = paramChar;
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int i2 = n;
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      n = (i1 | i2 & 0xFFFFFFFE);
      return this;
    }
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    int i2 = n;
    if (paramBoolean) {}
    for (int i1 = 2;; i1 = 0)
    {
      n = (i1 | i2 & 0xFFFFFFFD);
      return this;
    }
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    int i2 = n;
    if (paramBoolean) {}
    for (int i1 = 16;; i1 = 0)
    {
      n = (i1 | i2 & 0xFFFFFFEF);
      return this;
    }
  }
  
  public MenuItem setIcon(int paramInt)
  {
    k = paramInt;
    j = ey.a(l, paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    j = paramDrawable;
    k = 0;
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    g = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    h = paramChar;
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    m = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    h = paramChar1;
    i = paramChar2;
    return this;
  }
  
  public void setShowAsAction(int paramInt) {}
  
  public MenuItem setTitle(int paramInt)
  {
    e = l.getResources().getString(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    int i2 = n;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      n = (i1 | i2 & 0x8);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     td
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */