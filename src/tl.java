import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class tl
  implements gi
{
  private static final int[] d = { 1, 4, 5, 3, 2, 0 };
  CharSequence a;
  Drawable b;
  View c;
  private final Context e;
  private final Resources f;
  private boolean g;
  private boolean h;
  private tm i;
  private ArrayList<tp> j;
  private ArrayList<tp> k;
  private boolean l;
  private ArrayList<tp> m;
  private ArrayList<tp> n;
  private boolean o;
  private int p = 0;
  private ContextMenu.ContextMenuInfo q;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private ArrayList<tp> v = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<tz>> w = new CopyOnWriteArrayList();
  private tp x;
  private boolean y;
  
  public tl(Context paramContext)
  {
    e = paramContext;
    f = paramContext.getResources();
    j = new ArrayList();
    k = new ArrayList();
    l = true;
    m = new ArrayList();
    n = new ArrayList();
    o = true;
    if ((f.getConfiguration().keyboard != 1) && (f.getBoolean(aal.A))) {}
    for (;;)
    {
      h = bool;
      return;
      bool = false;
    }
  }
  
  private static int a(ArrayList<tp> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size() - 1;
    while (i1 >= 0)
    {
      if (((tp)paramArrayList.get(i1)).c() <= paramInt) {
        return i1 + 1;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= j.size())) {}
    do
    {
      return;
      j.remove(paramInt);
    } while (!paramBoolean);
    b(true);
  }
  
  private void a(CharSequence paramCharSequence, Drawable paramDrawable, View paramView)
  {
    if (paramView != null)
    {
      c = paramView;
      a = null;
      b = null;
    }
    for (;;)
    {
      b(false);
      return;
      if (paramCharSequence != null) {
        a = paramCharSequence;
      }
      if (paramDrawable != null) {
        b = paramDrawable;
      }
      c = null;
    }
  }
  
  public int a(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((tp)j.get(i1)).getItemId() == paramInt) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  protected MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = paramInt3 >> 16;
    if ((i1 < 0) || (i1 >= d.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    i1 = d[i1] << 16 | 0xFFFF & paramInt3;
    paramCharSequence = new tp(this, paramInt1, paramInt2, paramInt3, i1, paramCharSequence, p);
    if (q != null) {
      paramCharSequence.a(q);
    }
    j.add(a(j, i1), paramCharSequence);
    b(true);
    return paramCharSequence;
  }
  
  public tl a()
  {
    p = 1;
    return this;
  }
  
  protected tl a(Drawable paramDrawable)
  {
    a(null, paramDrawable, null);
    return this;
  }
  
  protected tl a(View paramView)
  {
    a(null, null, paramView);
    return this;
  }
  
  protected tl a(CharSequence paramCharSequence)
  {
    a(paramCharSequence, null, null);
    return this;
  }
  
  tp a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = v;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int i4 = localArrayList.size();
    if (i4 == 1) {
      return (tp)localArrayList.get(0);
    }
    boolean bool = c();
    int i1 = 0;
    label84:
    if (i1 < i4)
    {
      tp localtp = (tp)localArrayList.get(i1);
      if (bool) {}
      for (int i2 = localtp.getAlphabeticShortcut();; i2 = localtp.getNumericShortcut())
      {
        if (i2 == meta[0])
        {
          paramKeyEvent = localtp;
          if ((i3 & 0x2) == 0) {
            break;
          }
        }
        if (i2 == meta[2])
        {
          paramKeyEvent = localtp;
          if ((i3 & 0x2) != 0) {
            break;
          }
        }
        if ((bool) && (i2 == 8))
        {
          paramKeyEvent = localtp;
          if (paramInt == 67) {
            break;
          }
        }
        i1 += 1;
        break label84;
      }
    }
    return null;
  }
  
  public void a(Bundle paramBundle)
  {
    int i2 = size();
    int i1 = 0;
    Object localObject3;
    for (Object localObject1 = null; i1 < i2; localObject1 = localObject3)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = jr.a(localMenuItem);
      localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (jr.c(localMenuItem))
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((ue)localMenuItem.getSubMenu()).a(paramBundle);
      }
      i1 += 1;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(b(), (SparseArray)localObject1);
    }
  }
  
  void a(MenuItem paramMenuItem)
  {
    int i2 = paramMenuItem.getGroupId();
    int i3 = j.size();
    int i1 = 0;
    if (i1 < i3)
    {
      tp localtp = (tp)j.get(i1);
      if ((localtp.getGroupId() == i2) && (localtp.g()) && (localtp.isCheckable())) {
        if (localtp != paramMenuItem) {
          break label85;
        }
      }
      label85:
      for (boolean bool = true;; bool = false)
      {
        localtp.b(bool);
        i1 += 1;
        break;
      }
    }
  }
  
  void a(List<tp> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = c();
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int i4 = j.size();
    int i1 = 0;
    label49:
    tp localtp;
    if (i1 < i4)
    {
      localtp = (tp)j.get(i1);
      if (localtp.hasSubMenu()) {
        ((tl)localtp.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      }
      if (!bool) {
        break label184;
      }
    }
    label184:
    for (int i2 = localtp.getAlphabeticShortcut();; i2 = localtp.getNumericShortcut())
    {
      if (((i3 & 0x5) == 0) && (i2 != 0) && ((i2 == meta[0]) || (i2 == meta[2]) || ((bool) && (i2 == 8) && (paramInt == 67))) && (localtp.isEnabled())) {
        paramList.add(localtp);
      }
      i1 += 1;
      break label49;
      break;
    }
  }
  
  public void a(tm paramtm)
  {
    i = paramtm;
  }
  
  public void a(tz paramtz)
  {
    a(paramtz, e);
  }
  
  public void a(tz paramtz, Context paramContext)
  {
    w.add(new WeakReference(paramtz));
    paramtz.a(paramContext, this);
    o = true;
  }
  
  public final void a(boolean paramBoolean)
  {
    if (u) {
      return;
    }
    u = true;
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      tz localtz = (tz)localWeakReference.get();
      if (localtz == null) {
        w.remove(localWeakReference);
      } else {
        localtz.a(this, paramBoolean);
      }
    }
    u = false;
  }
  
  public boolean a(MenuItem paramMenuItem, int paramInt)
  {
    return a(paramMenuItem, null, paramInt);
  }
  
  public boolean a(MenuItem paramMenuItem, tz paramtz, int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    paramMenuItem = (tp)paramMenuItem;
    if ((paramMenuItem == null) || (!paramMenuItem.isEnabled())) {
      bool1 = false;
    }
    boolean bool3;
    Object localObject;
    label95:
    do
    {
      return bool1;
      bool3 = paramMenuItem.b();
      localObject = paramMenuItem.a();
      if ((localObject != null) && (((iq)localObject).e())) {}
      for (int i1 = 1;; i1 = 0)
      {
        if (!paramMenuItem.m()) {
          break label95;
        }
        bool2 = paramMenuItem.expandActionView() | bool3;
        bool1 = bool2;
        if (!bool2) {
          break;
        }
        a(true);
        return bool2;
      }
      if ((!paramMenuItem.hasSubMenu()) && (i1 == 0)) {
        break label283;
      }
      a(false);
      if (!paramMenuItem.hasSubMenu()) {
        paramMenuItem.a(new ue(e(), this, paramMenuItem));
      }
      paramMenuItem = (ue)paramMenuItem.getSubMenu();
      if (i1 != 0) {
        ((iq)localObject).a(paramMenuItem);
      }
      if (!w.isEmpty()) {
        break;
      }
      bool2 = bool3 | bool1;
      bool1 = bool2;
    } while (bool2);
    a(true);
    return bool2;
    bool1 = bool2;
    if (paramtz != null) {
      bool1 = paramtz.a(paramMenuItem);
    }
    paramtz = w.iterator();
    label214:
    while (paramtz.hasNext())
    {
      localObject = (WeakReference)paramtz.next();
      tz localtz = (tz)((WeakReference)localObject).get();
      if (localtz == null)
      {
        w.remove(localObject);
      }
      else
      {
        if (bool1) {
          break label297;
        }
        bool1 = localtz.a(paramMenuItem);
      }
    }
    label283:
    label297:
    for (;;)
    {
      break label214;
      break;
      if ((paramInt & 0x1) == 0) {
        a(true);
      }
      return bool3;
    }
  }
  
  boolean a(tl paramtl, MenuItem paramMenuItem)
  {
    return (i != null) && (i.a(paramtl, paramMenuItem));
  }
  
  public boolean a(tp paramtp)
  {
    boolean bool2 = false;
    if (w.isEmpty()) {
      return bool2;
    }
    g();
    Iterator localIterator = w.iterator();
    boolean bool1 = false;
    for (;;)
    {
      label29:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        tz localtz = (tz)localWeakReference.get();
        if (localtz == null)
        {
          w.remove(localWeakReference);
        }
        else
        {
          bool1 = localtz.b(paramtp);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      h();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      x = paramtp;
      return bool1;
      break label29;
    }
  }
  
  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, f.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = e.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    label52:
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i1 = localList.size();
      if ((paramInt4 & 0x1) == 0) {
        removeGroup(paramInt1);
      }
      paramInt4 = 0;
      if (paramInt4 >= i1) {
        break label214;
      }
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (specificIndex >= 0) {
        break label201;
      }
    }
    label201:
    for (paramComponentName = paramIntent;; paramComponentName = paramArrayOfIntent[specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (specificIndex >= 0)) {
        paramArrayOfMenuItem[specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
      break label52;
      i1 = 0;
      break;
    }
    label214:
    return i1;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, f.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (tp)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    ue localue = new ue(e, this, paramCharSequence);
    paramCharSequence.a(localue);
    return localue;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public int b(int paramInt)
  {
    return c(paramInt);
  }
  
  protected String b()
  {
    return "android:menu:actionviewstates";
  }
  
  public void b(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      int i1;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(b());
        int i2 = size();
        i1 = 0;
        while (i1 < i2)
        {
          MenuItem localMenuItem = getItem(i1);
          View localView = jr.a(localMenuItem);
          if ((localView != null) && (localView.getId() != -1)) {
            localView.restoreHierarchyState(localSparseArray);
          }
          if (localMenuItem.hasSubMenu()) {
            ((ue)localMenuItem.getSubMenu()).b(paramBundle);
          }
          i1 += 1;
        }
        i1 = paramBundle.getInt("android:menu:expandedactionview");
      } while (i1 <= 0);
      paramBundle = findItem(i1);
    } while (paramBundle == null);
    jr.b(paramBundle);
  }
  
  public void b(tz paramtz)
  {
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      tz localtz = (tz)localWeakReference.get();
      if ((localtz == null) || (localtz == paramtz)) {
        w.remove(localWeakReference);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (!r)
    {
      if (paramBoolean)
      {
        l = true;
        o = true;
      }
      if (!w.isEmpty())
      {
        g();
        Iterator localIterator = w.iterator();
        while (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          tz localtz = (tz)localWeakReference.get();
          if (localtz == null) {
            w.remove(localWeakReference);
          } else {
            localtz.b(paramBoolean);
          }
        }
        h();
      }
      return;
    }
    s = true;
  }
  
  public boolean b(tp paramtp)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!w.isEmpty())
    {
      if (x != paramtp) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    g();
    Iterator localIterator = w.iterator();
    bool1 = false;
    for (;;)
    {
      label41:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        tz localtz = (tz)localWeakReference.get();
        if (localtz == null)
        {
          w.remove(localWeakReference);
        }
        else
        {
          bool1 = localtz.c(paramtp);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      h();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      x = null;
      return bool1;
      break label41;
    }
  }
  
  public int c(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((tp)j.get(i1)).getGroupId() == paramInt) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public void c(boolean paramBoolean)
  {
    y = paramBoolean;
  }
  
  boolean c()
  {
    return g;
  }
  
  public void clear()
  {
    if (x != null) {
      b(x);
    }
    j.clear();
    b(true);
  }
  
  public void clearHeader()
  {
    b = null;
    a = null;
    c = null;
    b(false);
  }
  
  public void close()
  {
    a(true);
  }
  
  public boolean d()
  {
    return h;
  }
  
  public Context e()
  {
    return e;
  }
  
  public void f()
  {
    if (i != null) {
      i.a(this);
    }
  }
  
  public MenuItem findItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (tp)j.get(i1);
      if (((tp)localObject).getItemId() == paramInt) {}
      MenuItem localMenuItem;
      do
      {
        return (MenuItem)localObject;
        if (!((tp)localObject).hasSubMenu()) {
          break;
        }
        localMenuItem = ((tp)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      } while (localMenuItem != null);
      i1 += 1;
    }
    return null;
  }
  
  public void g()
  {
    if (!r)
    {
      r = true;
      s = false;
    }
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)j.get(paramInt);
  }
  
  public void h()
  {
    r = false;
    if (s)
    {
      s = false;
      b(true);
    }
  }
  
  public boolean hasVisibleItems()
  {
    if (y) {
      return true;
    }
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((tp)j.get(i1)).isVisible()) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public void i()
  {
    l = true;
    b(true);
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }
  
  void j()
  {
    o = true;
    b(true);
  }
  
  public ArrayList<tp> k()
  {
    if (!l) {
      return k;
    }
    k.clear();
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      tp localtp = (tp)j.get(i1);
      if (localtp.isVisible()) {
        k.add(localtp);
      }
      i1 += 1;
    }
    l = false;
    o = true;
    return k;
  }
  
  public void l()
  {
    ArrayList localArrayList = k();
    if (!o) {
      return;
    }
    Object localObject = w.iterator();
    int i1 = 0;
    while (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      tz localtz = (tz)localWeakReference.get();
      if (localtz == null) {
        w.remove(localWeakReference);
      } else {
        i1 = localtz.b() | i1;
      }
    }
    if (i1 != 0)
    {
      m.clear();
      n.clear();
      int i3 = localArrayList.size();
      i1 = 0;
      if (i1 < i3)
      {
        localObject = (tp)localArrayList.get(i1);
        if (((tp)localObject).i()) {
          m.add(localObject);
        }
        for (;;)
        {
          int i2;
          i1 += 1;
          break;
          n.add(localObject);
        }
      }
    }
    else
    {
      m.clear();
      n.clear();
      n.addAll(k());
    }
    o = false;
  }
  
  public ArrayList<tp> m()
  {
    l();
    return m;
  }
  
  public ArrayList<tp> n()
  {
    l();
    return n;
  }
  
  public CharSequence o()
  {
    return a;
  }
  
  public Drawable p()
  {
    return b;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = a(paramKeyEvent, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      a(true);
    }
    return bool;
  }
  
  public View q()
  {
    return c;
  }
  
  public tl r()
  {
    return this;
  }
  
  public void removeGroup(int paramInt)
  {
    int i2 = b(paramInt);
    if (i2 >= 0)
    {
      int i3 = j.size();
      int i1 = 0;
      while ((i1 < i3 - i2) && (((tp)j.get(i2)).getGroupId() == paramInt))
      {
        a(i2, false);
        i1 += 1;
      }
      b(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    a(a(paramInt), true);
  }
  
  boolean s()
  {
    return t;
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      tp localtp = (tp)j.get(i1);
      if (localtp.getGroupId() == paramInt)
      {
        localtp.a(paramBoolean2);
        localtp.setCheckable(paramBoolean1);
      }
      i1 += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      tp localtp = (tp)j.get(i1);
      if (localtp.getGroupId() == paramInt) {
        localtp.setEnabled(paramBoolean);
      }
      i1 += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i3 = j.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      tp localtp = (tp)j.get(i2);
      if ((localtp.getGroupId() != paramInt) || (!localtp.c(paramBoolean))) {
        break label74;
      }
      i1 = 1;
    }
    label74:
    for (;;)
    {
      i2 += 1;
      break;
      if (i1 != 0) {
        b(true);
      }
      return;
    }
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    g = paramBoolean;
    b(false);
  }
  
  public int size()
  {
    return j.size();
  }
  
  public tp t()
  {
    return x;
  }
}

/* Location:
 * Qualified Name:     tl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */