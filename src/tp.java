import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;

public final class tp
  implements gj
{
  private static String w;
  private static String x;
  private static String y;
  private static String z;
  public tl a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private CharSequence f;
  private CharSequence g;
  private Intent h;
  private char i;
  private char j;
  private Drawable k;
  private int l = 0;
  private ue m;
  private Runnable n;
  private MenuItem.OnMenuItemClickListener o;
  private int p = 16;
  private int q = 0;
  private View r;
  private iq s;
  private jw t;
  private boolean u = false;
  private ContextMenu.ContextMenuInfo v;
  
  tp(tl paramtl, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    a = paramtl;
    b = paramInt2;
    c = paramInt1;
    d = paramInt3;
    e = paramInt4;
    f = paramCharSequence;
    q = paramInt5;
  }
  
  private gj a(View paramView)
  {
    r = paramView;
    s = null;
    if ((paramView != null) && (paramView.getId() == -1) && (b > 0)) {
      paramView.setId(b);
    }
    a.j();
    return this;
  }
  
  public gj a(iq paramiq)
  {
    if (s != null) {
      s.f();
    }
    r = null;
    s = paramiq;
    a.b(true);
    if (s != null) {
      s.a(new is(this));
    }
    return this;
  }
  
  public gj a(jw paramjw)
  {
    t = paramjw;
    return this;
  }
  
  public iq a()
  {
    return s;
  }
  
  public CharSequence a(uc paramuc)
  {
    if ((paramuc != null) && (paramuc.c())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  void a(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    v = paramContextMenuInfo;
  }
  
  public void a(ue paramue)
  {
    m = paramue;
    paramue.setHeaderTitle(getTitle());
  }
  
  public void a(boolean paramBoolean)
  {
    int i2 = p;
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      p = (i1 | i2 & 0xFFFFFFFB);
      return;
    }
  }
  
  void b(boolean paramBoolean)
  {
    int i2 = p;
    int i3 = p;
    if (paramBoolean) {}
    for (int i1 = 2;; i1 = 0)
    {
      p = (i1 | i3 & 0xFFFFFFFD);
      if (i2 != p) {
        a.b(false);
      }
      return;
    }
  }
  
  public boolean b()
  {
    if ((o != null) && (o.onMenuItemClick(this))) {}
    do
    {
      do
      {
        return true;
      } while (a.a(a.r(), this));
      if (n != null)
      {
        n.run();
        return true;
      }
      if (h != null) {
        try
        {
          a.e().startActivity(h);
          return true;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
        }
      }
    } while ((s != null) && (s.d()));
    return false;
  }
  
  public int c()
  {
    return e;
  }
  
  boolean c(boolean paramBoolean)
  {
    boolean bool = false;
    int i2 = p;
    int i3 = p;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      p = (i1 | i3 & 0xFFFFFFF7);
      paramBoolean = bool;
      if (i2 != p) {
        paramBoolean = true;
      }
      return paramBoolean;
    }
  }
  
  public boolean collapseActionView()
  {
    if ((q & 0x8) == 0) {}
    do
    {
      return false;
      if (r == null) {
        return true;
      }
    } while ((t != null) && (!t.b(this)));
    return a.b(this);
  }
  
  public char d()
  {
    if (a.c()) {
      return j;
    }
    return i;
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      p |= 0x20;
      return;
    }
    p &= 0xFFFFFFDF;
  }
  
  public String e()
  {
    char c1 = d();
    if (c1 == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(w);
    switch (c1)
    {
    default: 
      localStringBuilder.append(c1);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(x);
      continue;
      localStringBuilder.append(y);
      continue;
      localStringBuilder.append(z);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    u = paramBoolean;
    a.b(false);
  }
  
  public boolean expandActionView()
  {
    if (!m()) {}
    while ((t != null) && (!t.a(this))) {
      return false;
    }
    return a.a(this);
  }
  
  public boolean f()
  {
    return (a.d()) && (d() != 0);
  }
  
  public boolean g()
  {
    return (p & 0x4) != 0;
  }
  
  public ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }
  
  public View getActionView()
  {
    if (r != null) {
      return r;
    }
    if (s != null)
    {
      r = s.a(this);
      return r;
    }
    return null;
  }
  
  public char getAlphabeticShortcut()
  {
    return j;
  }
  
  public int getGroupId()
  {
    return c;
  }
  
  public Drawable getIcon()
  {
    if (k != null) {
      return k;
    }
    if (l != 0)
    {
      Drawable localDrawable = vv.a(a.e(), l);
      l = 0;
      k = localDrawable;
      return localDrawable;
    }
    return null;
  }
  
  public Intent getIntent()
  {
    return h;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getItemId()
  {
    return b;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return v;
  }
  
  public char getNumericShortcut()
  {
    return i;
  }
  
  public int getOrder()
  {
    return d;
  }
  
  public SubMenu getSubMenu()
  {
    return m;
  }
  
  @ViewDebug.CapturedViewProperty
  public CharSequence getTitle()
  {
    return f;
  }
  
  public CharSequence getTitleCondensed()
  {
    if (g != null) {}
    for (CharSequence localCharSequence = g;; localCharSequence = f)
    {
      Object localObject = localCharSequence;
      if (Build.VERSION.SDK_INT < 18)
      {
        localObject = localCharSequence;
        if (localCharSequence != null)
        {
          localObject = localCharSequence;
          if (!(localCharSequence instanceof String)) {
            localObject = localCharSequence.toString();
          }
        }
      }
      return (CharSequence)localObject;
    }
  }
  
  public boolean h()
  {
    return a.s();
  }
  
  public boolean hasSubMenu()
  {
    return m != null;
  }
  
  public boolean i()
  {
    return (p & 0x20) == 32;
  }
  
  public boolean isActionViewExpanded()
  {
    return u;
  }
  
  public boolean isCheckable()
  {
    return (p & 0x1) == 1;
  }
  
  public boolean isChecked()
  {
    return (p & 0x2) == 2;
  }
  
  public boolean isEnabled()
  {
    return (p & 0x10) != 0;
  }
  
  public boolean isVisible()
  {
    if ((s != null) && (s.b())) {
      if (((p & 0x8) != 0) || (!s.c())) {}
    }
    while ((p & 0x8) == 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public boolean j()
  {
    return (q & 0x1) == 1;
  }
  
  public boolean k()
  {
    return (q & 0x2) == 2;
  }
  
  public boolean l()
  {
    return (q & 0x4) == 4;
  }
  
  public boolean m()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((q & 0x8) != 0)
    {
      if ((r == null) && (s != null)) {
        r = s.a(this);
      }
      bool1 = bool2;
      if (r != null) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (j == paramChar) {
      return this;
    }
    j = Character.toLowerCase(paramChar);
    a.b(false);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int i2 = p;
    int i3 = p;
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      p = (i1 | i3 & 0xFFFFFFFE);
      if (i2 != p) {
        a.b(false);
      }
      return this;
    }
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    if ((p & 0x4) != 0)
    {
      a.a(this);
      return this;
    }
    b(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (p |= 0x10;; p &= 0xFFFFFFEF)
    {
      a.b(false);
      return this;
    }
  }
  
  public MenuItem setIcon(int paramInt)
  {
    k = null;
    l = paramInt;
    a.b(false);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    l = 0;
    k = paramDrawable;
    a.b(false);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    h = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    if (i == paramChar) {
      return this;
    }
    i = paramChar;
    a.b(false);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    o = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    i = paramChar1;
    j = Character.toLowerCase(paramChar2);
    a.b(false);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    q = paramInt;
    a.j();
  }
  
  public MenuItem setTitle(int paramInt)
  {
    return setTitle(a.e().getString(paramInt));
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    a.b(false);
    if (m != null) {
      m.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    g = paramCharSequence;
    a.b(false);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    if (c(paramBoolean)) {
      a.i();
    }
    return this;
  }
  
  public String toString()
  {
    if (f != null) {
      return f.toString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     tp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */