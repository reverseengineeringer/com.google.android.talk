import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

public class ri
  extends rh
  implements LayoutInflaterFactory, tm
{
  public View A;
  boolean B;
  boolean C;
  boolean D;
  ry[] E;
  ry F;
  boolean G;
  boolean H;
  int I;
  final Runnable J;
  boolean K;
  public Rect L;
  public Rect M;
  sf N;
  public final Context a;
  final Window b;
  final Window.Callback c;
  final Window.Callback d;
  final rg e;
  qe f;
  MenuInflater g;
  boolean h;
  boolean i;
  public boolean j;
  boolean k;
  boolean l;
  CharSequence m;
  boolean n;
  ve o;
  ru p;
  rz q;
  wb r;
  public ActionBarContextView s;
  PopupWindow t;
  Runnable u;
  md v;
  boolean w;
  ViewGroup x;
  public ViewGroup y;
  TextView z;
  
  ri(Context paramContext, Window paramWindow, rg paramrg)
  {
    a = paramContext;
    b = paramWindow;
    e = paramrg;
    c = b.getCallback();
    if ((c instanceof rk)) {
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }
    d = a(c);
    b.setCallback(d);
  }
  
  ri(Context paramContext, Window paramWindow, rg paramrg, byte paramByte)
  {
    this(paramContext, paramWindow, paramrg);
    v = null;
    J = new rq(this);
  }
  
  public View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = a(paramString, paramContext, paramAttributeSet);
    if (localView != null) {
      return localView;
    }
    return b(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((c instanceof LayoutInflater.Factory))
    {
      paramString = ((LayoutInflater.Factory)c).onCreateView(paramString, paramContext, paramAttributeSet);
      if (paramString != null) {
        return paramString;
      }
    }
    return null;
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new rk(this, paramCallback);
  }
  
  public qe a()
  {
    k();
    return f;
  }
  
  ry a(Menu paramMenu)
  {
    ry[] arrayOfry = E;
    int i1;
    int i2;
    if (arrayOfry != null)
    {
      i1 = arrayOfry.length;
      i2 = 0;
    }
    for (;;)
    {
      if (i2 >= i1) {
        break label57;
      }
      ry localry = arrayOfry[i2];
      if ((localry != null) && (j == paramMenu))
      {
        return localry;
        i1 = 0;
        break;
      }
      i2 += 1;
    }
    label57:
    return null;
  }
  
  wb a(wc paramwc)
  {
    o();
    if (r != null) {
      r.c();
    }
    rv localrv = new rv(this, paramwc);
    Object localObject2;
    Object localObject1;
    label253:
    boolean bool;
    if (s == null)
    {
      if (!k) {
        break label454;
      }
      localObject2 = new TypedValue();
      localObject1 = a.getTheme();
      ((Resources.Theme)localObject1).resolveAttribute(aen.y, (TypedValue)localObject2, true);
      if (resourceId != 0)
      {
        Resources.Theme localTheme = a.getResources().newTheme();
        localTheme.setTo((Resources.Theme)localObject1);
        localTheme.applyStyle(resourceId, true);
        localObject1 = new st(a, 0);
        ((Context)localObject1).getTheme().setTo(localTheme);
        s = new ActionBarContextView((Context)localObject1);
        t = new PopupWindow((Context)localObject1, null, aen.B);
        pj.a(t, 2);
        t.setContentView(s);
        t.setWidth(-1);
        ((Context)localObject1).getTheme().resolveAttribute(aen.u, (TypedValue)localObject2, true);
        int i1 = TypedValue.complexToDimensionPixelSize(data, ((Context)localObject1).getResources().getDisplayMetrics());
        s.a(i1);
        t.setHeight(-2);
        u = new rr(this);
      }
    }
    else if (s != null)
    {
      o();
      s.e();
      localObject1 = s.getContext();
      localObject2 = s;
      if (t != null) {
        break label501;
      }
      bool = true;
      label295:
      localObject1 = new su((Context)localObject1, (ActionBarContextView)localObject2, localrv, bool);
      if (!paramwc.a((wb)localObject1, ((wb)localObject1).b())) {
        break label506;
      }
      ((wb)localObject1).d();
      s.a((wb)localObject1);
      r = ((wb)localObject1);
      ks.c(s, 0.0F);
      paramwc = s;
      v = ks.a.k(paramwc).a(1.0F);
      v.a(new rt(this));
      if (t != null) {
        b.getDecorView().post(u);
      }
    }
    for (;;)
    {
      if ((r != null) && (e != null)) {
        e.a(r);
      }
      return r;
      localObject1 = a;
      break;
      label454:
      localObject1 = (ViewStubCompat)y.findViewById(aal.aA);
      if (localObject1 == null) {
        break label253;
      }
      ((ViewStubCompat)localObject1).a(LayoutInflater.from(l()));
      s = ((ActionBarContextView)((ViewStubCompat)localObject1).a());
      break label253;
      label501:
      bool = false;
      break label295;
      label506:
      r = null;
    }
  }
  
  public void a(int paramInt)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)y.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(a).inflate(paramInt, localViewGroup);
    c.onContentChanged();
  }
  
  void a(int paramInt, ry paramry, Menu paramMenu)
  {
    Object localObject1 = paramry;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      ry localry = paramry;
      if (paramry == null)
      {
        localry = paramry;
        if (paramInt >= 0)
        {
          localry = paramry;
          if (paramInt < E.length) {
            localry = E[paramInt];
          }
        }
      }
      localObject1 = localry;
      localObject2 = paramMenu;
      if (localry != null)
      {
        localObject2 = j;
        localObject1 = localry;
      }
    }
    if ((localObject1 != null) && (!o)) {}
    while (n) {
      return;
    }
    c.onPanelClosed(paramInt, (Menu)localObject2);
  }
  
  public void a(Configuration paramConfiguration)
  {
    if ((h) && (w))
    {
      qe localqe = a();
      if (localqe != null) {
        localqe.a(paramConfiguration);
      }
    }
  }
  
  public void a(Toolbar paramToolbar)
  {
    if (!(c instanceof Activity)) {
      return;
    }
    if ((a() instanceof sn)) {
      throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }
    g = null;
    paramToolbar = new sh(paramToolbar, ((Activity)a).getTitle(), d);
    f = paramToolbar;
    b.setCallback(paramToolbar.k());
    paramToolbar.i();
  }
  
  public void a(View paramView)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)y.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    c.onContentChanged();
  }
  
  public void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)y.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    c.onContentChanged();
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    m = paramCharSequence;
    b(paramCharSequence);
  }
  
  void a(ry paramry, KeyEvent paramKeyEvent)
  {
    int i3 = -1;
    if ((o) || (n)) {}
    Object localObject;
    int i1;
    label115:
    label120:
    label124:
    label126:
    do
    {
      do
      {
        for (;;)
        {
          return;
          if (a == 0)
          {
            localObject = a;
            if ((getResourcesgetConfigurationscreenLayout & 0xF) != 4) {
              break label115;
            }
            i1 = 1;
            if (getApplicationInfotargetSdkVersion < 11) {
              break label120;
            }
          }
          for (int i2 = 1;; i2 = 0)
          {
            if ((i1 != 0) && (i2 != 0)) {
              break label124;
            }
            localObject = b.getCallback();
            if ((localObject == null) || (((Window.Callback)localObject).onMenuOpened(a, j))) {
              break label126;
            }
            a(paramry, true);
            return;
            i1 = 0;
            break;
          }
        }
        localObject = (WindowManager)a.getSystemService("window");
      } while ((localObject == null) || (!b(paramry, paramKeyEvent)));
      if ((g != null) && (!q)) {
        break label496;
      }
      if (g != null) {
        break;
      }
      paramry.a(l());
      g = new rx(this, l);
      c = 81;
    } while (g == null);
    label213:
    if (i != null)
    {
      h = i;
      i1 = 1;
      label230:
      if ((i1 == 0) || (!paramry.a())) {
        break label494;
      }
      paramKeyEvent = h.getLayoutParams();
      if (paramKeyEvent != null) {
        break label532;
      }
      paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
    }
    label494:
    label496:
    label532:
    for (;;)
    {
      i1 = b;
      g.setBackgroundResource(i1);
      ViewParent localViewParent = h.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(h);
      }
      g.addView(h, paramKeyEvent);
      if (!h.hasFocus()) {
        h.requestFocus();
      }
      i1 = -2;
      for (;;)
      {
        n = false;
        paramKeyEvent = new WindowManager.LayoutParams(i1, -2, d, e, 1002, 8519680, -3);
        gravity = c;
        windowAnimations = f;
        ((WindowManager)localObject).addView(g, paramKeyEvent);
        o = true;
        return;
        if ((!q) || (g.getChildCount() <= 0)) {
          break label213;
        }
        g.removeAllViews();
        break label213;
        if (j != null)
        {
          if (q == null) {
            q = new rz(this);
          }
          h = ((View)paramry.a(q));
          if (h != null)
          {
            i1 = 1;
            break label230;
          }
        }
        i1 = 0;
        break label230;
        break;
        if (i != null)
        {
          paramKeyEvent = i.getLayoutParams();
          if (paramKeyEvent != null)
          {
            i1 = i3;
            if (width == -1) {
              continue;
            }
          }
        }
        i1 = -2;
      }
    }
  }
  
  void a(ry paramry, boolean paramBoolean)
  {
    if ((paramBoolean) && (a == 0) && (o != null) && (o.i())) {
      b(j);
    }
    do
    {
      return;
      WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
      if ((localWindowManager != null) && (o) && (g != null))
      {
        localWindowManager.removeView(g);
        if (paramBoolean) {
          a(a, paramry, null);
        }
      }
      m = false;
      n = false;
      o = false;
      h = null;
      q = true;
    } while (F != paramry);
    F = null;
  }
  
  public void a(tl paramtl)
  {
    if ((o != null) && (o.h()))
    {
      paramtl = ViewConfiguration.get(a);
      if ((!le.a.b(paramtl)) || (o.j()))
      {
        paramtl = b.getCallback();
        if (!o.i()) {
          if ((paramtl != null) && (!n))
          {
            if ((H) && ((I & 0x1) != 0))
            {
              x.removeCallbacks(J);
              J.run();
            }
            ry localry = e(0);
            if ((j != null) && (!r) && (paramtl.onPreparePanel(0, i, j)))
            {
              paramtl.onMenuOpened(108, j);
              o.k();
            }
          }
        }
        do
        {
          return;
          o.l();
        } while (n);
        paramtl.onPanelClosed(108, e0j);
        return;
      }
    }
    paramtl = e(0);
    q = true;
    a(paramtl, false);
    a(paramtl, null);
  }
  
  boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = a();
    if ((localObject != null) && (((qe)localObject).a(paramInt, paramKeyEvent))) {}
    boolean bool;
    do
    {
      do
      {
        return true;
        if ((F == null) || (!a(F, paramKeyEvent.getKeyCode(), paramKeyEvent))) {
          break;
        }
      } while (F == null);
      F.n = true;
      return true;
      if (F != null) {
        break;
      }
      localObject = e(0);
      b((ry)localObject, paramKeyEvent);
      bool = a((ry)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent);
      m = false;
    } while (bool);
    return false;
  }
  
  boolean a(KeyEvent paramKeyEvent)
  {
    int i1 = 1;
    if ((paramKeyEvent.getKeyCode() == 82) && (c.dispatchKeyEvent(paramKeyEvent))) {
      return true;
    }
    int i2 = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() == 0) {}
    while (i1 != 0)
    {
      return c(i2, paramKeyEvent);
      i1 = 0;
    }
    return b(i2, paramKeyEvent);
  }
  
  boolean a(ry paramry, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.isSystem()) {}
    while (((!m) && (!b(paramry, paramKeyEvent))) || (j == null)) {
      return false;
    }
    return j.performShortcut(paramInt, paramKeyEvent, 1);
  }
  
  public boolean a(tl paramtl, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = b.getCallback();
    if ((localCallback != null) && (!n))
    {
      paramtl = a(paramtl.r());
      if (paramtl != null) {
        return localCallback.onMenuItemSelected(a, paramMenuItem);
      }
    }
    return false;
  }
  
  public MenuInflater b()
  {
    if (g == null)
    {
      k();
      if (f == null) {
        break label43;
      }
    }
    label43:
    for (Context localContext = f.g();; localContext = a)
    {
      g = new sx(localContext);
      return g;
    }
  }
  
  public View b(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    int i2 = 0;
    if (Build.VERSION.SDK_INT < 21) {}
    int i1;
    label66:
    Object localObject2;
    label86:
    Context localContext;
    for (boolean bool = true;; bool = false)
    {
      if (N == null) {
        N = new sf();
      }
      if ((!bool) || (!w)) {
        break;
      }
      localObject1 = (ViewParent)paramView;
      if (localObject1 != null) {
        break label820;
      }
      i1 = 0;
      if (i1 == 0) {
        break;
      }
      i1 = 1;
      localObject2 = N;
      if ((i1 == 0) || (paramView == null)) {
        break label815;
      }
      paramView = paramView.getContext();
      localContext = sf.a(paramView, paramAttributeSet, bool, true);
      paramView = null;
      switch (paramString.hashCode())
      {
      default: 
        label216:
        i1 = -1;
        switch (i1)
        {
        default: 
          label219:
          label288:
          localObject1 = paramView;
          if (paramView == null)
          {
            localObject1 = paramView;
            if (paramContext != localContext) {
              localObject1 = ((sf)localObject2).a(localContext, paramString, paramAttributeSet);
            }
          }
          if (localObject1 != null) {
            sf.a((View)localObject1, paramAttributeSet);
          }
          return (View)localObject1;
        }
        break;
      }
    }
    label337:
    Object localObject1 = ((ViewParent)localObject1).getParent();
    label815:
    label820:
    for (;;)
    {
      if (localObject1 == null)
      {
        i1 = 1;
        break;
      }
      if ((localObject1 != x) && ((localObject1 instanceof View)))
      {
        localObject2 = (View)localObject1;
        if (!ks.a.A((View)localObject2)) {
          break label337;
        }
      }
      i1 = 0;
      break;
      i1 = 0;
      break label66;
      if (!paramString.equals("TextView")) {
        break label216;
      }
      i1 = i2;
      break label219;
      if (!paramString.equals("ImageView")) {
        break label216;
      }
      i1 = 1;
      break label219;
      if (!paramString.equals("Button")) {
        break label216;
      }
      i1 = 2;
      break label219;
      if (!paramString.equals("EditText")) {
        break label216;
      }
      i1 = 3;
      break label219;
      if (!paramString.equals("Spinner")) {
        break label216;
      }
      i1 = 4;
      break label219;
      if (!paramString.equals("ImageButton")) {
        break label216;
      }
      i1 = 5;
      break label219;
      if (!paramString.equals("CheckBox")) {
        break label216;
      }
      i1 = 6;
      break label219;
      if (!paramString.equals("RadioButton")) {
        break label216;
      }
      i1 = 7;
      break label219;
      if (!paramString.equals("CheckedTextView")) {
        break label216;
      }
      i1 = 8;
      break label219;
      if (!paramString.equals("AutoCompleteTextView")) {
        break label216;
      }
      i1 = 9;
      break label219;
      if (!paramString.equals("MultiAutoCompleteTextView")) {
        break label216;
      }
      i1 = 10;
      break label219;
      if (!paramString.equals("RatingBar")) {
        break label216;
      }
      i1 = 11;
      break label219;
      if (!paramString.equals("SeekBar")) {
        break label216;
      }
      i1 = 12;
      break label219;
      paramView = new xr(localContext, paramAttributeSet);
      break label288;
      paramView = new xb(localContext, paramAttributeSet);
      break label288;
      paramView = new wu(localContext, paramAttributeSet);
      break label288;
      paramView = new wy(localContext, paramAttributeSet);
      break label288;
      paramView = new xi(localContext, paramAttributeSet);
      break label288;
      paramView = new wz(localContext, paramAttributeSet);
      break label288;
      paramView = new wv(localContext, paramAttributeSet);
      break label288;
      paramView = new xe(localContext, paramAttributeSet);
      break label288;
      paramView = new ww(localContext, paramAttributeSet);
      break label288;
      paramView = new ws(localContext, paramAttributeSet);
      break label288;
      paramView = new xc(localContext, paramAttributeSet);
      break label288;
      paramView = new xf(localContext, paramAttributeSet);
      break label288;
      paramView = new xg(localContext, paramAttributeSet);
      break label288;
      paramView = paramContext;
      break label86;
    }
  }
  
  public wb b(wc paramwc)
  {
    if (r != null) {
      r.c();
    }
    paramwc = new rv(this, paramwc);
    qe localqe = a();
    if (localqe != null)
    {
      r = localqe.a(paramwc);
      if ((r != null) && (e != null)) {
        e.a(r);
      }
    }
    if (r == null) {
      r = a(paramwc);
    }
    return r;
  }
  
  public void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    n();
    ((ViewGroup)y.findViewById(16908290)).addView(paramView, paramLayoutParams);
    c.onContentChanged();
  }
  
  void b(CharSequence paramCharSequence)
  {
    if (o != null) {
      o.a(paramCharSequence);
    }
    do
    {
      return;
      if (f != null)
      {
        f.c(paramCharSequence);
        return;
      }
    } while (z == null);
    z.setText(paramCharSequence);
  }
  
  void b(tl paramtl)
  {
    if (D) {
      return;
    }
    D = true;
    o.n();
    Window.Callback localCallback = b.getCallback();
    if ((localCallback != null) && (!n)) {
      localCallback.onPanelClosed(108, paramtl);
    }
    D = false;
  }
  
  public boolean b(int paramInt)
  {
    int i1;
    if (paramInt == 8) {
      i1 = 108;
    }
    while ((l) && (i1 == 108))
    {
      return false;
      i1 = paramInt;
      if (paramInt == 9) {
        i1 = 109;
      }
    }
    if ((h) && (i1 == 1)) {
      h = false;
    }
    switch (i1)
    {
    default: 
      return b.requestFeature(i1);
    case 108: 
      q();
      h = true;
      return true;
    case 109: 
      q();
      i = true;
      return true;
    case 10: 
      q();
      j = true;
      return true;
    case 2: 
      q();
      B = true;
      return true;
    case 5: 
      q();
      C = true;
      return true;
    }
    q();
    l = true;
    return true;
  }
  
  boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    ry localry;
    switch (paramInt)
    {
    default: 
      return false;
    case 82: 
      if (r == null)
      {
        localry = e(0);
        if ((o == null) || (!o.h())) {
          break label164;
        }
        ViewConfiguration localViewConfiguration = ViewConfiguration.get(a);
        if (le.a.b(localViewConfiguration)) {
          break label164;
        }
        if (o.i()) {
          break label151;
        }
        if ((n) || (!b(localry, paramKeyEvent))) {
          break;
        }
        bool = o.k();
      }
      for (;;)
      {
        label122:
        if (bool)
        {
          paramKeyEvent = (AudioManager)a.getSystemService("audio");
          if (paramKeyEvent != null) {
            paramKeyEvent.playSoundEffect(0);
          }
        }
        return true;
        label151:
        bool = o.l();
        continue;
        label164:
        if ((!o) && (!n)) {
          break;
        }
        bool = o;
        a(localry, true);
      }
      if (m)
      {
        if (!r) {
          break label295;
        }
        m = false;
      }
      break;
    }
    label295:
    for (boolean bool = b(localry, paramKeyEvent);; bool = true)
    {
      if (bool)
      {
        a(localry, paramKeyEvent);
        bool = true;
        break label122;
        bool = G;
        G = false;
        paramKeyEvent = e(0);
        if ((paramKeyEvent != null) && (o))
        {
          if (!bool) {
            a(paramKeyEvent, true);
          }
          return true;
        }
        if (!p()) {
          break;
        }
        return true;
      }
      bool = false;
      break label122;
    }
  }
  
  boolean b(ry paramry, KeyEvent paramKeyEvent)
  {
    if (n) {
      return false;
    }
    if (m) {
      return true;
    }
    if ((F != null) && (F != paramry)) {
      a(F, false);
    }
    Window.Callback localCallback = b.getCallback();
    if (localCallback != null) {
      i = localCallback.onCreatePanelView(a);
    }
    int i1;
    label89:
    Context localContext;
    TypedValue localTypedValue;
    Resources.Theme localTheme;
    Object localObject1;
    if ((a == 0) || (a == 108))
    {
      i1 = 1;
      if ((i1 != 0) && (o != null)) {
        o.m();
      }
      if ((i != null) || ((i1 != 0) && ((f instanceof sh)))) {
        break label624;
      }
      if ((j != null) && (!r)) {
        break label494;
      }
      if (j == null)
      {
        localContext = a;
        if (((a != 0) && (a != 108)) || (o == null)) {
          break label652;
        }
        localTypedValue = new TypedValue();
        localTheme = localContext.getTheme();
        localTheme.resolveAttribute(aen.y, localTypedValue, true);
        if (resourceId == 0) {
          break label471;
        }
        localObject1 = localContext.getResources().newTheme();
        ((Resources.Theme)localObject1).setTo(localTheme);
        ((Resources.Theme)localObject1).applyStyle(resourceId, true);
        ((Resources.Theme)localObject1).resolveAttribute(aen.z, localTypedValue, true);
        label256:
        Object localObject2 = localObject1;
        if (resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localContext.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(resourceId, true);
        }
        if (localObject2 == null) {
          break label652;
        }
        localObject1 = new st(localContext, 0);
        ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
      }
    }
    for (;;)
    {
      localObject1 = new tl((Context)localObject1);
      ((tl)localObject1).a(this);
      paramry.a((tl)localObject1);
      if (j == null) {
        break;
      }
      if ((i1 != 0) && (o != null))
      {
        if (p == null) {
          p = new ru(this);
        }
        o.a(j, p);
      }
      j.g();
      if (!localCallback.onCreatePanelMenu(a, j))
      {
        paramry.a(null);
        if ((i1 == 0) || (o == null)) {
          break;
        }
        o.a(null, p);
        return false;
        i1 = 0;
        break label89;
        label471:
        localTheme.resolveAttribute(aen.z, localTypedValue, true);
        localObject1 = null;
        break label256;
      }
      r = false;
      label494:
      j.g();
      if (s != null)
      {
        j.b(s);
        s = null;
      }
      if (!localCallback.onPreparePanel(0, i, j))
      {
        if ((i1 != 0) && (o != null)) {
          o.a(null, p);
        }
        j.h();
        return false;
      }
      if (paramKeyEvent != null)
      {
        i1 = paramKeyEvent.getDeviceId();
        if (KeyCharacterMap.load(i1).getKeyboardType() == 1) {
          break label646;
        }
      }
      label624:
      label646:
      for (boolean bool = true;; bool = false)
      {
        p = bool;
        j.setQwertyMode(p);
        j.h();
        m = true;
        n = false;
        F = paramry;
        return true;
        i1 = -1;
        break;
      }
      label652:
      localObject1 = localContext;
    }
  }
  
  public void c()
  {
    x = ((ViewGroup)b.getDecorView());
    qe localqe;
    if (((c instanceof Activity)) && (cn.b((Activity)c) != null))
    {
      localqe = f;
      if (localqe == null) {
        K = true;
      }
    }
    else
    {
      return;
    }
    localqe.b(true);
  }
  
  void c(int paramInt)
  {
    Object localObject;
    if (paramInt == 108)
    {
      localObject = a();
      if (localObject != null) {
        ((qe)localObject).d(false);
      }
    }
    do
    {
      do
      {
        return;
      } while (paramInt != 0);
      localObject = e(paramInt);
    } while (!o);
    a((ry)localObject, false);
  }
  
  boolean c(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    switch (paramInt)
    {
    default: 
      if (Build.VERSION.SDK_INT < 11) {
        a(paramInt, paramKeyEvent);
      }
      bool1 = false;
    case 82: 
      ry localry;
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramKeyEvent.getRepeatCount() != 0);
        localry = e(0);
        bool1 = bool2;
      } while (o);
      b(localry, paramKeyEvent);
      return true;
    }
    if ((paramKeyEvent.getFlags() & 0x80) != 0) {}
    for (;;)
    {
      G = bool1;
      break;
      bool1 = false;
    }
  }
  
  public void d()
  {
    n();
  }
  
  boolean d(int paramInt)
  {
    if (paramInt == 108)
    {
      qe localqe = a();
      if (localqe != null) {
        localqe.d(true);
      }
      return true;
    }
    return false;
  }
  
  ry e(int paramInt)
  {
    Object localObject2 = E;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt) {}
    }
    else
    {
      localObject1 = new ry[paramInt + 1];
      if (localObject2 != null) {
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      }
      E = ((ry[])localObject1);
    }
    localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      localObject2 = new ry(paramInt);
      localObject1[paramInt] = localObject2;
      return (ry)localObject2;
    }
    return (ry)localObject2;
  }
  
  public void e()
  {
    qe localqe = a();
    if (localqe != null) {
      localqe.c(false);
    }
  }
  
  public void f()
  {
    qe localqe = a();
    if (localqe != null) {
      localqe.c(true);
    }
  }
  
  void f(int paramInt)
  {
    I |= 1 << paramInt;
    if ((!H) && (x != null))
    {
      ks.a(x, J);
      H = true;
    }
  }
  
  public int g(int paramInt)
  {
    int i2 = 1;
    int i3 = 1;
    int i4 = 0;
    Object localObject1;
    Object localObject2;
    int i1;
    if ((s != null) && ((s.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject1 = (ViewGroup.MarginLayoutParams)s.getLayoutParams();
      if (s.isShown())
      {
        if (L == null)
        {
          L = new Rect();
          M = new Rect();
        }
        localObject2 = L;
        Rect localRect = M;
        ((Rect)localObject2).set(0, paramInt, 0, 0);
        vz.a(y, (Rect)localObject2, localRect);
        if (top == 0)
        {
          i1 = paramInt;
          if (topMargin == i1) {
            break label355;
          }
          topMargin = paramInt;
          if (A != null) {
            break label279;
          }
          A = new View(a);
          A.setBackgroundColor(a.getResources().getColor(aal.B));
          y.addView(A, -1, new ViewGroup.LayoutParams(-1, paramInt));
          i1 = 1;
          label201:
          if (A == null) {
            break label317;
          }
          label208:
          i2 = paramInt;
          if (!j)
          {
            i2 = paramInt;
            if (i3 != 0) {
              i2 = 0;
            }
          }
          paramInt = i2;
          i2 = i1;
          i1 = i3;
          label233:
          if (i2 != 0) {
            s.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          }
        }
      }
    }
    for (;;)
    {
      if (A != null)
      {
        localObject1 = A;
        if (i1 == 0) {
          break label342;
        }
      }
      label279:
      label317:
      label342:
      for (i1 = i4;; i1 = 8)
      {
        ((View)localObject1).setVisibility(i1);
        return paramInt;
        i1 = 0;
        break;
        localObject2 = A.getLayoutParams();
        if (height != paramInt)
        {
          height = paramInt;
          A.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        i1 = 1;
        break label201;
        i3 = 0;
        break label208;
        if (topMargin == 0) {
          break label348;
        }
        topMargin = 0;
        i1 = 0;
        break label233;
      }
      label348:
      i2 = 0;
      i1 = 0;
      break label233;
      label355:
      i1 = 0;
      break label201;
      i1 = 0;
    }
  }
  
  public void g()
  {
    qe localqe = a();
    if ((localqe != null) && (localqe.i())) {
      return;
    }
    f(0);
  }
  
  public final void h()
  {
    n = true;
  }
  
  public final qi i()
  {
    return new rj(this);
  }
  
  public void j()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(a);
    if (localLayoutInflater.getFactory() == null) {
      jg.a(localLayoutInflater, this);
    }
  }
  
  public void k()
  {
    n();
    if ((!h) || (f != null)) {}
    for (;;)
    {
      return;
      if ((c instanceof Activity)) {
        f = new sn((Activity)c, i);
      }
      while (f != null)
      {
        f.b(K);
        return;
        if ((c instanceof Dialog)) {
          f = new sn((Dialog)c);
        }
      }
    }
  }
  
  final Context l()
  {
    Context localContext = null;
    Object localObject = a();
    if (localObject != null) {
      localContext = ((qe)localObject).g();
    }
    localObject = localContext;
    if (localContext == null) {
      localObject = a;
    }
    return (Context)localObject;
  }
  
  public boolean m()
  {
    return false;
  }
  
  void n()
  {
    Object localObject1;
    if (!w)
    {
      localObject1 = a.obtainStyledAttributes(sb.cp);
      if (!((TypedArray)localObject1).hasValue(sb.ct))
      {
        ((TypedArray)localObject1).recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
      }
      if (((TypedArray)localObject1).getBoolean(sb.cC, false))
      {
        b(1);
        if (((TypedArray)localObject1).getBoolean(sb.cu, false)) {
          b(109);
        }
        if (((TypedArray)localObject1).getBoolean(sb.cv, false)) {
          b(10);
        }
        k = ((TypedArray)localObject1).getBoolean(sb.cr, false);
        ((TypedArray)localObject1).recycle();
        localObject1 = LayoutInflater.from(a);
        if (l) {
          break label429;
        }
        if (!k) {
          break label267;
        }
        localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(aal.bg, null);
        i = false;
        h = false;
      }
    }
    for (;;)
    {
      if (localObject1 == null)
      {
        throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + h + ", windowActionBarOverlay: " + i + ", android:windowIsFloating: " + k + ", windowActionModeOverlay: " + j + ", windowNoTitle: " + l + " }");
        if (!((TypedArray)localObject1).getBoolean(sb.ct, false)) {
          break;
        }
        b(108);
        break;
        label267:
        if (!h) {
          break label895;
        }
        localObject1 = new TypedValue();
        a.getTheme().resolveAttribute(aen.y, (TypedValue)localObject1, true);
        if (resourceId != 0) {}
        for (localObject1 = new st(a, resourceId);; localObject1 = a)
        {
          localObject1 = (ViewGroup)LayoutInflater.from((Context)localObject1).inflate(aal.bp, null);
          o = ((ve)((ViewGroup)localObject1).findViewById(aal.aI));
          o.a(b.getCallback());
          if (i) {
            o.b(109);
          }
          if (B) {
            o.b(2);
          }
          if (C) {
            o.b(5);
          }
          break;
        }
        label429:
        if (j) {}
        for (localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(aal.bo, null);; localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(aal.bn, null))
        {
          if (Build.VERSION.SDK_INT < 21) {
            break label491;
          }
          localObject2 = new kg(this);
          ks.a.a((View)localObject1, (kg)localObject2);
          break;
        }
        label491:
        ((vh)localObject1).a(new vi(this));
        continue;
      }
      if (o == null) {
        z = ((TextView)((ViewGroup)localObject1).findViewById(aal.aW));
      }
      vz.b((View)localObject1);
      Object localObject2 = (ViewGroup)b.findViewById(16908290);
      ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)((ViewGroup)localObject1).findViewById(aal.au);
      while (((ViewGroup)localObject2).getChildCount() > 0)
      {
        View localView = ((ViewGroup)localObject2).getChildAt(0);
        ((ViewGroup)localObject2).removeViewAt(0);
        localContentFrameLayout.addView(localView);
      }
      b.setContentView((View)localObject1);
      ((ViewGroup)localObject2).setId(-1);
      localContentFrameLayout.setId(16908290);
      if ((localObject2 instanceof FrameLayout)) {
        ((FrameLayout)localObject2).setForeground(null);
      }
      localContentFrameLayout.a(new vd(this));
      y = ((ViewGroup)localObject1);
      if ((c instanceof Activity)) {}
      for (localObject1 = ((Activity)c).getTitle();; localObject1 = m)
      {
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          b((CharSequence)localObject1);
        }
        localObject1 = (ContentFrameLayout)y.findViewById(16908290);
        ((ContentFrameLayout)localObject1).a(x.getPaddingLeft(), x.getPaddingTop(), x.getPaddingRight(), x.getPaddingBottom());
        localObject2 = a.obtainStyledAttributes(sb.cp);
        ((TypedArray)localObject2).getValue(sb.cA, ((ContentFrameLayout)localObject1).a());
        ((TypedArray)localObject2).getValue(sb.cB, ((ContentFrameLayout)localObject1).b());
        if (((TypedArray)localObject2).hasValue(sb.cy)) {
          ((TypedArray)localObject2).getValue(sb.cy, ((ContentFrameLayout)localObject1).c());
        }
        if (((TypedArray)localObject2).hasValue(sb.cz)) {
          ((TypedArray)localObject2).getValue(sb.cz, ((ContentFrameLayout)localObject1).d());
        }
        if (((TypedArray)localObject2).hasValue(sb.cw)) {
          ((TypedArray)localObject2).getValue(sb.cw, ((ContentFrameLayout)localObject1).e());
        }
        if (((TypedArray)localObject2).hasValue(sb.cx)) {
          ((TypedArray)localObject2).getValue(sb.cx, ((ContentFrameLayout)localObject1).f());
        }
        ((TypedArray)localObject2).recycle();
        ((ContentFrameLayout)localObject1).requestLayout();
        w = true;
        localObject1 = e(0);
        if ((!n) && ((localObject1 == null) || (j == null))) {
          f(108);
        }
        return;
      }
      label895:
      localObject1 = null;
    }
  }
  
  void o()
  {
    if (v != null) {
      v.b();
    }
  }
  
  boolean p()
  {
    if (r != null) {
      r.c();
    }
    qe localqe;
    do
    {
      return true;
      localqe = a();
    } while ((localqe != null) && (localqe.j()));
    return false;
  }
  
  void q()
  {
    if (w) {
      throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }
  }
  
  public void r()
  {
    if (o != null) {
      o.n();
    }
    if (t != null)
    {
      x.removeCallbacks(u);
      if (!t.isShowing()) {}
    }
    try
    {
      t.dismiss();
      t = null;
      o();
      ry localry = e(0);
      if ((localry != null) && (j != null)) {
        j.close();
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     ri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */