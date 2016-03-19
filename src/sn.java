import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;

public final class sn
  extends qe
  implements uo
{
  private static final Interpolator r = new AccelerateInterpolator();
  private static final Interpolator s = new DecelerateInterpolator();
  private static final boolean t;
  private boolean A;
  private boolean B;
  private ArrayList<qg> C = new ArrayList();
  private boolean D;
  private int E = 0;
  private boolean F;
  private boolean G = true;
  private boolean H;
  Context a;
  ActionBarOverlayLayout b;
  public ActionBarContainer c;
  vf d;
  ActionBarContextView e;
  View f;
  sq g;
  wb h;
  wc i;
  boolean j = true;
  boolean k;
  boolean l;
  ta m;
  boolean n;
  final mn o = new so(this);
  final mn p = new sp(this);
  final mp q = new mp(this);
  private Context u;
  private Activity v;
  private Dialog w;
  private vn x;
  private ArrayList<Object> y = new ArrayList();
  private int z = -1;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14) {}
    for (boolean bool = true;; bool = false)
    {
      t = bool;
      return;
    }
  }
  
  public sn(Activity paramActivity, boolean paramBoolean)
  {
    v = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    b(paramActivity);
    if (!paramBoolean) {
      f = paramActivity.findViewById(16908290);
    }
  }
  
  public sn(Dialog paramDialog)
  {
    w = paramDialog;
    b(paramDialog.getWindow().getDecorView());
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i1 = d.l();
    if ((paramInt2 & 0x4) != 0) {
      A = true;
    }
    d.a(i1 & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  static boolean a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3) {}
    while ((!paramBoolean1) && (!paramBoolean2)) {
      return true;
    }
    return false;
  }
  
  private void b(View paramView)
  {
    b = ((ActionBarOverlayLayout)paramView.findViewById(aal.aI));
    if (b != null) {
      b.a(this);
    }
    Object localObject = paramView.findViewById(aal.at);
    if ((localObject instanceof vf)) {}
    for (localObject = (vf)localObject;; localObject = ((Toolbar)localObject).s())
    {
      d = ((vf)localObject);
      e = ((ActionBarContextView)paramView.findViewById(aal.ay));
      c = ((ActionBarContainer)paramView.findViewById(aal.av));
      if ((d != null) && (e != null) && (c != null)) {
        break label196;
      }
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
      if (!(localObject instanceof Toolbar)) {
        break;
      }
    }
    if ("Can't make a decor toolbar out of " + localObject != null) {}
    for (paramView = localObject.getClass().getSimpleName();; paramView = "null") {
      throw new IllegalStateException(paramView);
    }
    label196:
    a = d.b();
    if ((d.l() & 0x4) != 0) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        A = true;
      }
      paramView = ss.a(a);
      paramView.f();
      g(paramView.d());
      paramView = a.obtainStyledAttributes(null, sb.a, aen.v, 0);
      if (paramView.getBoolean(sb.k, false)) {
        h();
      }
      i1 = paramView.getDimensionPixelSize(sb.i, 0);
      if (i1 != 0) {
        a(i1);
      }
      paramView.recycle();
      return;
    }
  }
  
  private void g(boolean paramBoolean)
  {
    boolean bool = true;
    D = paramBoolean;
    int i1;
    label43:
    Object localObject;
    if (!D)
    {
      d.a(null);
      c.a(x);
      if (o() != 2) {
        break label156;
      }
      i1 = 1;
      if (x != null)
      {
        if (i1 == 0) {
          break label161;
        }
        x.setVisibility(0);
        if (b != null)
        {
          localObject = b;
          ks.a.r((View)localObject);
        }
      }
      label83:
      localObject = d;
      if ((D) || (i1 == 0)) {
        break label173;
      }
      paramBoolean = true;
      label102:
      ((vf)localObject).a(paramBoolean);
      localObject = b;
      if ((D) || (i1 == 0)) {
        break label178;
      }
    }
    label156:
    label161:
    label173:
    label178:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((ActionBarOverlayLayout)localObject).a(paramBoolean);
      return;
      c.a(null);
      d.a(x);
      break;
      i1 = 0;
      break label43;
      x.setVisibility(8);
      break label83;
      paramBoolean = false;
      break label102;
    }
  }
  
  private void h(boolean paramBoolean)
  {
    if (a(k, l, F)) {
      if (!G)
      {
        G = true;
        i(paramBoolean);
      }
    }
    while (!G) {
      return;
    }
    G = false;
    j(paramBoolean);
  }
  
  private void i(boolean paramBoolean)
  {
    if (m != null) {
      m.b();
    }
    c.setVisibility(0);
    Object localObject1;
    if ((E == 0) && (t) && ((H) || (paramBoolean)))
    {
      ks.b(c, 0.0F);
      float f2 = -c.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject1 = new int[2];
        Object tmp77_75 = localObject1;
        tmp77_75[0] = 0;
        Object tmp81_77 = tmp77_75;
        tmp81_77[1] = 0;
        tmp81_77;
        c.getLocationInWindow((int[])localObject1);
        f1 = f2 - localObject1[1];
      }
      ks.b(c, f1);
      localObject1 = new ta();
      Object localObject2 = c;
      localObject2 = ks.a.k((View)localObject2).c(0.0F);
      ((md)localObject2).a(q);
      ((ta)localObject1).a((md)localObject2);
      if ((j) && (f != null))
      {
        ks.b(f, f1);
        localObject2 = f;
        ((ta)localObject1).a(ks.a.k((View)localObject2).c(0.0F));
      }
      ((ta)localObject1).a(s);
      ((ta)localObject1).c();
      ((ta)localObject1).a(p);
      m = ((ta)localObject1);
      ((ta)localObject1).a();
    }
    for (;;)
    {
      if (b != null)
      {
        localObject1 = b;
        ks.a.r((View)localObject1);
      }
      return;
      ks.c(c, 1.0F);
      ks.b(c, 0.0F);
      if ((j) && (f != null)) {
        ks.b(f, 0.0F);
      }
      p.b(null);
    }
  }
  
  private void j(boolean paramBoolean)
  {
    if (m != null) {
      m.b();
    }
    if ((E == 0) && (t) && ((H) || (paramBoolean)))
    {
      ks.c(c, 1.0F);
      c.a(true);
      ta localta = new ta();
      float f2 = -c.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp86_84 = localObject;
        tmp86_84[0] = 0;
        Object tmp90_86 = tmp86_84;
        tmp90_86[1] = 0;
        tmp90_86;
        c.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      Object localObject = c;
      localObject = ks.a.k((View)localObject).c(f1);
      ((md)localObject).a(q);
      localta.a((md)localObject);
      if ((j) && (f != null))
      {
        localObject = f;
        localta.a(ks.a.k((View)localObject).c(f1));
      }
      localta.a(r);
      localta.c();
      localta.a(o);
      m = localta;
      localta.a();
      return;
    }
    o.b(null);
  }
  
  private int o()
  {
    return d.m();
  }
  
  public wb a(wc paramwc)
  {
    if (g != null) {
      g.c();
    }
    b.b(false);
    e.e();
    paramwc = new sq(this, e.getContext(), paramwc);
    if (paramwc.e())
    {
      paramwc.d();
      e.a(paramwc);
      f(true);
      e.sendAccessibilityEvent(32);
      g = paramwc;
      return paramwc;
    }
    return null;
  }
  
  public void a()
  {
    a(0, 8);
  }
  
  public void a(float paramFloat)
  {
    ks.f(c, paramFloat);
  }
  
  public void a(int paramInt)
  {
    a(a.getString(paramInt));
  }
  
  public void a(Configuration paramConfiguration)
  {
    g(ss.a(a).d());
  }
  
  public void a(Drawable paramDrawable)
  {
    d.a(paramDrawable);
  }
  
  public void a(View paramView)
  {
    d.a(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    d.b(paramCharSequence);
  }
  
  public void a(qg paramqg)
  {
    C.add(paramqg);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      a(i1, 4);
      return;
    }
  }
  
  public void b()
  {
    a(16, 16);
  }
  
  public void b(int paramInt)
  {
    d.b(paramInt);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    d.c(paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    if (!A) {
      a(paramBoolean);
    }
  }
  
  public View c()
  {
    return d.n();
  }
  
  public void c(int paramInt)
  {
    d.c(paramInt);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    d.a(paramCharSequence);
  }
  
  public void c(boolean paramBoolean)
  {
    H = paramBoolean;
    if ((!paramBoolean) && (m != null)) {
      m.b();
    }
  }
  
  public int d()
  {
    return d.l();
  }
  
  public void d(int paramInt)
  {
    E = paramInt;
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean == B) {}
    for (;;)
    {
      return;
      B = paramBoolean;
      int i2 = C.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((qg)C.get(i1)).a(paramBoolean);
        i1 += 1;
      }
    }
  }
  
  public void e()
  {
    if (k)
    {
      k = false;
      h(false);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void f()
  {
    if (!k)
    {
      k = true;
      h(false);
    }
  }
  
  public void f(boolean paramBoolean)
  {
    md localmd1;
    md localmd2;
    if (paramBoolean)
    {
      if (!F)
      {
        F = true;
        if (b != null) {
          b.c();
        }
        h(false);
      }
      if (!paramBoolean) {
        break label120;
      }
      localmd1 = d.a(4, 100L);
      localmd2 = e.a(0, 200L);
    }
    for (;;)
    {
      ta localta = new ta();
      localta.a(localmd1, localmd2);
      localta.a();
      return;
      if (!F) {
        break;
      }
      F = false;
      if (b != null) {
        b.c();
      }
      h(false);
      break;
      label120:
      localmd2 = d.a(0, 200L);
      localmd1 = e.a(8, 100L);
    }
  }
  
  public Context g()
  {
    int i1;
    if (u == null)
    {
      TypedValue localTypedValue = new TypedValue();
      a.getTheme().resolveAttribute(aen.z, localTypedValue, true);
      i1 = resourceId;
      if (i1 == 0) {
        break label61;
      }
    }
    label61:
    for (u = new ContextThemeWrapper(a, i1);; u = a) {
      return u;
    }
  }
  
  public void h()
  {
    if (!b.b()) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    n = true;
    b.b(true);
  }
  
  public boolean j()
  {
    if ((d != null) && (d.c()))
    {
      d.d();
      return true;
    }
    return false;
  }
  
  void k()
  {
    if (i != null)
    {
      i.a(h);
      h = null;
      i = null;
    }
  }
  
  public void l()
  {
    if (l)
    {
      l = false;
      h(true);
    }
  }
  
  public void m()
  {
    if (!l)
    {
      l = true;
      h(true);
    }
  }
  
  public void n()
  {
    if (m != null)
    {
      m.b();
      m = null;
    }
  }
}

/* Location:
 * Qualified Name:     sn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */