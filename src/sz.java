import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Constructor;

final class sz
{
  iq a;
  private Menu c;
  private int d;
  private int e;
  private int f;
  private int g;
  private boolean h;
  private boolean i;
  private boolean j;
  private int k;
  private int l;
  private CharSequence m;
  private CharSequence n;
  private int o;
  private char p;
  private char q;
  private int r;
  private boolean s;
  private boolean t;
  private boolean u;
  private int v;
  private int w;
  private String x;
  private String y;
  private String z;
  
  public sz(sx paramsx, Menu paramMenu)
  {
    c = paramMenu;
    a();
  }
  
  private static char a(String paramString)
  {
    if (paramString == null) {
      return '\000';
    }
    return paramString.charAt(0);
  }
  
  private <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramString = b.e.getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass);
      paramString.setAccessible(true);
      paramString = paramString.newInstance(paramArrayOfObject);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private void a(MenuItem paramMenuItem)
  {
    int i1 = 1;
    Object localObject = paramMenuItem.setChecked(s).setVisible(t).setEnabled(u);
    if (r > 0) {}
    for (boolean bool = true;; bool = false)
    {
      ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(n).setIcon(o).setAlphabeticShortcut(p).setNumericShortcut(q);
      if (v >= 0) {
        jr.a(paramMenuItem, v);
      }
      if (z == null) {
        break label188;
      }
      if (!b.e.isRestricted()) {
        break;
      }
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    localObject = b;
    if (f == null) {
      f = ((sx)localObject).a(e);
    }
    paramMenuItem.setOnMenuItemClickListener(new sy(f, z));
    label188:
    if (r >= 2)
    {
      if ((paramMenuItem instanceof tp)) {
        ((tp)paramMenuItem).a(true);
      }
    }
    else
    {
      if (x == null) {
        break label298;
      }
      jr.a(paramMenuItem, (View)a(x, sx.a, b.c));
    }
    for (;;)
    {
      if ((w > 0) && (i1 == 0)) {
        jr.b(paramMenuItem, w);
      }
      if (a != null) {
        jr.a(paramMenuItem, a);
      }
      return;
      if (!(paramMenuItem instanceof tq)) {
        break;
      }
      ((tq)paramMenuItem).a();
      break;
      label298:
      i1 = 0;
    }
  }
  
  public void a()
  {
    d = 0;
    e = 0;
    f = 0;
    g = 0;
    h = true;
    i = true;
  }
  
  public void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = b.e.obtainStyledAttributes(paramAttributeSet, sb.aN);
    d = paramAttributeSet.getResourceId(sb.aQ, 0);
    e = paramAttributeSet.getInt(sb.aR, 0);
    f = paramAttributeSet.getInt(sb.aS, 0);
    g = paramAttributeSet.getInt(sb.aO, 0);
    h = paramAttributeSet.getBoolean(sb.aT, true);
    i = paramAttributeSet.getBoolean(sb.aP, true);
    paramAttributeSet.recycle();
  }
  
  public void b()
  {
    j = true;
    a(c.add(d, k, l, m));
  }
  
  public void b(AttributeSet paramAttributeSet)
  {
    int i2 = 1;
    paramAttributeSet = b.e.obtainStyledAttributes(paramAttributeSet, sb.aU);
    k = paramAttributeSet.getResourceId(sb.bd, 0);
    l = (paramAttributeSet.getInt(sb.be, e) & 0xFFFF0000 | paramAttributeSet.getInt(sb.bh, f) & 0xFFFF);
    m = paramAttributeSet.getText(sb.bi);
    n = paramAttributeSet.getText(sb.bj);
    o = paramAttributeSet.getResourceId(sb.bc, 0);
    p = a(paramAttributeSet.getString(sb.aY));
    q = a(paramAttributeSet.getString(sb.bf));
    int i1;
    if (paramAttributeSet.hasValue(sb.aZ)) {
      if (paramAttributeSet.getBoolean(sb.aZ, false))
      {
        i1 = 1;
        r = i1;
        label154:
        s = paramAttributeSet.getBoolean(sb.ba, false);
        t = paramAttributeSet.getBoolean(sb.bk, h);
        u = paramAttributeSet.getBoolean(sb.bb, i);
        v = paramAttributeSet.getInt(sb.bl, -1);
        z = paramAttributeSet.getString(sb.bg);
        w = paramAttributeSet.getResourceId(sb.aV, 0);
        x = paramAttributeSet.getString(sb.aX);
        y = paramAttributeSet.getString(sb.aW);
        if (y == null) {
          break label331;
        }
        i1 = i2;
        label262:
        if ((i1 == 0) || (w != 0) || (x != null)) {
          break label336;
        }
      }
    }
    label331:
    label336:
    for (a = ((iq)a(y, sx.b, b.d));; a = null)
    {
      paramAttributeSet.recycle();
      j = false;
      return;
      i1 = 0;
      break;
      r = g;
      break label154;
      i1 = 0;
      break label262;
    }
  }
  
  public SubMenu c()
  {
    j = true;
    SubMenu localSubMenu = c.addSubMenu(d, k, l, m);
    a(localSubMenu.getItem());
    return localSubMenu;
  }
  
  public boolean d()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     sz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */