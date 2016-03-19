package android.support.v7.internal.widget;

import aal;
import aen;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;
import ke;
import kf;
import ks;
import lc;
import md;
import mn;
import pq;
import ua;
import ul;
import um;
import un;
import uo;
import up;
import ve;
import vf;
import vz;

public class ActionBarOverlayLayout
  extends ViewGroup
  implements ke, ve
{
  static final int[] e = { aen.u, 16842841 };
  private final Runnable A = new un(this);
  private final kf B;
  public ActionBarContainer a;
  public boolean b;
  public md c;
  public final mn d = new ul(this);
  private int f;
  private int g = 0;
  private ContentFrameLayout h;
  private vf i;
  private Drawable j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private int o;
  private int p;
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private final Rect u = new Rect();
  private final Rect v = new Rect();
  private uo w;
  private final int x = 600;
  private pq y;
  private final Runnable z = new um(this);
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    B = new kf(this);
  }
  
  private void a(Context paramContext)
  {
    boolean bool2 = true;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(e);
    f = localTypedArray.getDimensionPixelSize(0, 0);
    j = localTypedArray.getDrawable(1);
    if (j == null)
    {
      bool1 = true;
      setWillNotDraw(bool1);
      localTypedArray.recycle();
      if (getApplicationInfotargetSdkVersion >= 19) {
        break label91;
      }
    }
    label91:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      k = bool1;
      y = pq.a(paramContext, null);
      return;
      bool1 = false;
      break;
    }
  }
  
  private static boolean a(View paramView, Rect paramRect, boolean paramBoolean)
  {
    boolean bool = false;
    paramView = (up)paramView.getLayoutParams();
    if (leftMargin != left)
    {
      leftMargin = left;
      bool = true;
    }
    if (topMargin != top)
    {
      topMargin = top;
      bool = true;
    }
    if (rightMargin != right)
    {
      rightMargin = right;
      bool = true;
    }
    if ((paramBoolean) && (bottomMargin != bottom))
    {
      bottomMargin = bottom;
      return true;
    }
    return bool;
  }
  
  public up a(AttributeSet paramAttributeSet)
  {
    return new up(getContext(), paramAttributeSet);
  }
  
  public void a()
  {
    boolean bool = true;
    l = true;
    if (getContextgetApplicationInfotargetSdkVersion < 19) {}
    for (;;)
    {
      k = bool;
      return;
      bool = false;
    }
  }
  
  public void a(int paramInt)
  {
    g();
    paramInt = Math.max(0, Math.min(paramInt, a.getHeight()));
    ks.b(a, -paramInt);
  }
  
  public void a(Menu paramMenu, ua paramua)
  {
    e();
    i.a(paramMenu, paramua);
  }
  
  public void a(Window.Callback paramCallback)
  {
    e();
    i.a(paramCallback);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    e();
    i.a(paramCharSequence);
  }
  
  public void a(uo paramuo)
  {
    w = paramuo;
    if (getWindowToken() != null)
    {
      w.d(g);
      if (p != 0)
      {
        onWindowSystemUiVisibilityChanged(p);
        ks.a.r(this);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void b(int paramInt)
  {
    e();
    switch (paramInt)
    {
    case 2: 
    case 5: 
    default: 
      return;
    }
    a();
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean != n)
    {
      n = paramBoolean;
      if (!paramBoolean)
      {
        g();
        a(0);
      }
    }
  }
  
  public boolean b()
  {
    return l;
  }
  
  public void c() {}
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof up;
  }
  
  protected up d()
  {
    return new up();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    float f1;
    ActionBarContainer localActionBarContainer;
    if ((j != null) && (!k))
    {
      if (a.getVisibility() != 0) {
        break label91;
      }
      f1 = a.getBottom();
      localActionBarContainer = a;
    }
    label91:
    for (int i1 = (int)(f1 + ks.a.g(localActionBarContainer) + 0.5F);; i1 = 0)
    {
      j.setBounds(0, i1, getWidth(), j.getIntrinsicHeight() + i1);
      j.draw(paramCanvas);
      return;
    }
  }
  
  void e()
  {
    if (h == null)
    {
      h = ((ContentFrameLayout)findViewById(aal.au));
      a = ((ActionBarContainer)findViewById(aal.av));
      localObject = findViewById(aal.at);
      if (!(localObject instanceof vf)) {
        break label61;
      }
    }
    for (Object localObject = (vf)localObject;; localObject = ((Toolbar)localObject).s())
    {
      i = ((vf)localObject);
      return;
      label61:
      if (!(localObject instanceof Toolbar)) {
        break;
      }
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + localObject.getClass().getSimpleName());
  }
  
  public int f()
  {
    if (a != null)
    {
      ActionBarContainer localActionBarContainer = a;
      return -(int)ks.a.g(localActionBarContainer);
    }
    return 0;
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    e();
    ks.a.x(this);
    boolean bool = a(a, paramRect, false);
    t.set(paramRect);
    vz.a(this, t, q);
    if (!r.equals(q))
    {
      r.set(q);
      bool = true;
    }
    if (bool) {
      requestLayout();
    }
    return true;
  }
  
  public void g()
  {
    removeCallbacks(z);
    removeCallbacks(A);
    if (c != null) {
      c.b();
    }
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new up(paramLayoutParams);
  }
  
  public int getNestedScrollAxes()
  {
    return B.a();
  }
  
  public boolean h()
  {
    e();
    return i.e();
  }
  
  public boolean i()
  {
    e();
    return i.f();
  }
  
  public boolean j()
  {
    e();
    return i.g();
  }
  
  public boolean k()
  {
    e();
    return i.h();
  }
  
  public boolean l()
  {
    e();
    return i.i();
  }
  
  public void m()
  {
    e();
    i.j();
  }
  
  public void n()
  {
    e();
    i.k();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    a(getContext());
    ks.a.r(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    g();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt3 = getPaddingLeft();
    getPaddingRight();
    paramInt4 = getPaddingTop();
    getPaddingBottom();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        up localup = (up)localView.getLayoutParams();
        int i1 = localView.getMeasuredWidth();
        int i2 = localView.getMeasuredHeight();
        int i3 = leftMargin + paramInt3;
        int i4 = topMargin + paramInt4;
        localView.layout(i3, i4, i1 + i3, i2 + i4);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    e();
    measureChildWithMargins(a, paramInt1, 0, paramInt2, 0);
    Object localObject = (up)a.getLayoutParams();
    int i6 = Math.max(0, a.getMeasuredWidth() + leftMargin + rightMargin);
    int i1 = a.getMeasuredHeight();
    int i2 = topMargin;
    int i5 = Math.max(0, bottomMargin + (i1 + i2));
    localObject = a;
    int i4 = vz.a(0, ks.a.e((View)localObject));
    int i3;
    if ((ks.a.x(this) & 0x100) != 0)
    {
      i2 = 1;
      if (i2 == 0) {
        break label459;
      }
      i3 = f;
      i1 = i3;
      if (m)
      {
        i1 = i3;
        if (a.a() != null) {
          i1 = i3 + f;
        }
      }
    }
    for (;;)
    {
      label163:
      s.set(q);
      u.set(t);
      if ((!l) && (i2 == 0))
      {
        localObject = s;
        top = (i1 + top);
        localObject = s;
      }
      for (bottom = bottom;; bottom = bottom)
      {
        a(h, s, true);
        if (!v.equals(u))
        {
          v.set(u);
          h.a(u);
        }
        measureChildWithMargins(h, paramInt1, 0, paramInt2, 0);
        localObject = (up)h.getLayoutParams();
        i1 = Math.max(i6, h.getMeasuredWidth() + leftMargin + rightMargin);
        i2 = h.getMeasuredHeight();
        i3 = topMargin;
        i2 = Math.max(i5, bottomMargin + (i2 + i3));
        localObject = h;
        i3 = vz.a(i4, ks.a.e((View)localObject));
        i4 = getPaddingLeft();
        i5 = getPaddingRight();
        i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(ks.a(Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth()), paramInt1, i3), ks.a(i2, paramInt2, i3 << 16));
        return;
        i2 = 0;
        break;
        label459:
        if (a.getVisibility() == 8) {
          break label519;
        }
        i1 = a.getMeasuredHeight();
        break label163;
        localObject = u;
        top = (i1 + top);
        localObject = u;
      }
      label519:
      i1 = 0;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i1 = 0;
    if ((!n) || (!paramBoolean)) {
      return false;
    }
    y.a(0, (int)paramFloat2, 0, 0);
    if (y.e() > a.getHeight()) {
      i1 = 1;
    }
    if (i1 != 0)
    {
      g();
      A.run();
    }
    for (;;)
    {
      b = true;
      return true;
      g();
      z.run();
    }
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    o += paramInt2;
    a(o);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    B.a(paramInt);
    o = f();
    g();
    if (w != null) {
      w.n();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (a.getVisibility() != 0)) {
      return false;
    }
    return n;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((n) && (!b))
    {
      if (o <= a.getHeight())
      {
        g();
        postDelayed(z, 600L);
      }
    }
    else {
      return;
    }
    g();
    postDelayed(A, 600L);
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    e();
    int i3 = p;
    p = paramInt;
    int i1;
    int i2;
    if ((paramInt & 0x4) == 0)
    {
      i1 = 1;
      if ((paramInt & 0x100) == 0) {
        break label123;
      }
      i2 = 1;
      label49:
      if (w != null)
      {
        uo localuo = w;
        if (i2 != 0) {
          break label128;
        }
        label66:
        localuo.e(bool);
        if ((i1 == 0) && (i2 != 0)) {
          break label134;
        }
        w.l();
      }
    }
    for (;;)
    {
      if ((((i3 ^ paramInt) & 0x100) != 0) && (w != null)) {
        ks.a.r(this);
      }
      return;
      i1 = 0;
      break;
      label123:
      i2 = 0;
      break label49;
      label128:
      bool = false;
      break label66;
      label134:
      w.m();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    g = paramInt;
    if (w != null) {
      w.d(paramInt);
    }
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */