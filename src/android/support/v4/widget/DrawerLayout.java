package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import fv;
import fw;
import iy;
import java.util.ArrayList;
import jc;
import jf;
import jx;
import ks;
import lc;
import lj;
import ll;
import ol;
import om;
import on;
import oo;
import op;
import oq;
import or;
import os;
import ou;
import oy;
import qa;

public class DrawerLayout
  extends ViewGroup
  implements oy
{
  public static final int[] a;
  public static final boolean b;
  static final on c;
  private static final boolean d;
  private Drawable A;
  private CharSequence B;
  private CharSequence C;
  private Object D;
  private boolean E;
  private Drawable F = null;
  private Drawable G = null;
  private Drawable H = null;
  private Drawable I = null;
  private final ArrayList<View> J;
  private final om e = new om(this);
  private float f;
  private int g;
  private int h = -1728053248;
  private float i;
  private Paint j = new Paint();
  private final qa k;
  private final qa l;
  private final ou m;
  private final ou n;
  private int o;
  private boolean p;
  private boolean q = true;
  private int r;
  private int s;
  private boolean t;
  private boolean u;
  private oq v;
  private float w;
  private float x;
  private Drawable y;
  private Drawable z;
  
  static
  {
    boolean bool2 = true;
    a = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = true;
      b = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label70;
      }
      c = new oo();
      return;
      bool1 = false;
      break;
    }
    label70:
    c = new op();
  }
  
  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResourcesgetDisplayMetricsdensity;
    g = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    m = new ou(this, 3);
    n = new ou(this, 5);
    k = qa.a(this, 1.0F, m);
    k.a(1);
    k.a(f2);
    m.a(k);
    l = qa.a(this, 1.0F, n);
    l.a(2);
    l.a(f2);
    n.a(l);
    setFocusableInTouchMode(true);
    ks.c(this, 1);
    ks.a(this, new ol(this));
    lj.a.a(this, false);
    if (ks.a.s(this))
    {
      c.a(this);
      y = c.a(paramContext);
    }
    f = (f1 * 10.0F);
    J = new ArrayList();
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!g(localView))) || ((paramBoolean) && (localView == paramView))) {
        ks.c(localView, 1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        ks.c(localView, 4);
      }
    }
  }
  
  private static boolean a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable == null) || (!fv.a.b(paramDrawable))) {
      return false;
    }
    fv.a.b(paramDrawable, paramInt);
    return true;
  }
  
  private static String e(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  public static boolean l(View paramView)
  {
    return (ks.a.n(paramView) != 4) && (ks.a.n(paramView) != 2);
  }
  
  public int a(View paramView)
  {
    int i1 = e(paramView);
    if (i1 == 3) {
      return r;
    }
    if (i1 == 5) {
      return s;
    }
    return 0;
  }
  
  View a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (getLayoutParamsd) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    a(paramInt, 3);
    a(paramInt, 5);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    paramInt2 = iy.a(paramInt2, ks.a.u(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      r = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label78;
        }
        localObject = k;
        label36:
        ((qa)localObject).e();
      }
      switch (paramInt1)
      {
      }
    }
    label78:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        s = paramInt1;
        break;
        localObject = l;
        break label36;
        localObject = c(paramInt2);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = c(paramInt2);
    } while (localObject == null);
    i((View)localObject);
  }
  
  public void a(int paramInt, View paramView)
  {
    int i2 = 1;
    int i3 = k.a();
    int i4 = l.a();
    int i1 = i2;
    or localor;
    if (i3 != 1)
    {
      if (i4 == 1) {
        i1 = i2;
      }
    }
    else if ((paramView != null) && (paramInt == 0))
    {
      localor = (or)paramView.getLayoutParams();
      if (b != 0.0F) {
        break label122;
      }
      b(paramView);
    }
    for (;;)
    {
      if (i1 != o)
      {
        o = i1;
        if (v != null) {
          v.a(i1);
        }
      }
      return;
      if ((i3 == 2) || (i4 == 2))
      {
        i1 = 2;
        break;
      }
      i1 = 0;
      break;
      label122:
      if (b == 1.0F) {
        c(paramView);
      }
    }
  }
  
  void a(View paramView, float paramFloat)
  {
    if (v != null) {
      v.a(paramView, paramFloat);
    }
  }
  
  public void a(Object paramObject, boolean paramBoolean)
  {
    D = paramObject;
    E = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
    }
  }
  
  public void a(oq paramoq)
  {
    v = paramoq;
  }
  
  void a(boolean paramBoolean)
  {
    int i4 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i4)
    {
      View localView = getChildAt(i2);
      or localor = (or)localView.getLayoutParams();
      boolean bool = i1;
      int i3;
      if (g(localView)) {
        if (paramBoolean)
        {
          bool = i1;
          if (!c) {}
        }
        else
        {
          i3 = localView.getWidth();
          if (!a(localView, 3)) {
            break label116;
          }
          i1 |= k.a(localView, -i3, localView.getTop());
        }
      }
      for (;;)
      {
        c = false;
        i3 = i1;
        i2 += 1;
        i1 = i3;
        break;
        label116:
        i1 |= l.a(localView, getWidth(), localView.getTop());
      }
    }
    m.a();
    n.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return (e(paramView) & paramInt) == paramInt;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i3 = 0;
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int i4 = getChildCount();
    int i1 = 0;
    int i2 = 0;
    View localView;
    if (i1 < i4)
    {
      localView = getChildAt(i1);
      if (g(localView)) {
        if (j(localView))
        {
          i2 = 1;
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        J.add(localView);
      }
    }
    if (i2 == 0)
    {
      i2 = J.size();
      i1 = i3;
      while (i1 < i2)
      {
        localView = (View)J.get(i1);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    J.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((a() != null) || (g(paramView))) {
      ks.c(paramView, 4);
    }
    for (;;)
    {
      if (!b) {
        ks.a(paramView, e);
      }
      return;
      ks.c(paramView, 1);
    }
  }
  
  public CharSequence b(int paramInt)
  {
    paramInt = iy.a(paramInt, ks.a.u(this));
    if (paramInt == 3) {
      return B;
    }
    if (paramInt == 5) {
      return C;
    }
    return null;
  }
  
  public void b()
  {
    a(false);
  }
  
  void b(View paramView)
  {
    or localor = (or)paramView.getLayoutParams();
    if (d)
    {
      d = false;
      if (v != null) {
        v.b(paramView);
      }
      a(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  public void b(View paramView, float paramFloat)
  {
    or localor = (or)paramView.getLayoutParams();
    if (paramFloat == b) {
      return;
    }
    b = paramFloat;
    a(paramView, paramFloat);
  }
  
  public View c(int paramInt)
  {
    int i1 = iy.a(paramInt, ks.a.u(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((e(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  public void c()
  {
    View localView = c(8388611);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + e(8388611));
    }
    h(localView);
  }
  
  void c(View paramView)
  {
    or localor = (or)paramView.getLayoutParams();
    if (!d)
    {
      d = true;
      if (v != null) {
        v.a(paramView);
      }
      a(paramView, true);
      if (hasWindowFocus()) {
        sendAccessibilityEvent(32);
      }
      paramView.requestFocus();
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof or)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, getChildAtgetLayoutParamsb);
      i1 += 1;
    }
    i = f1;
    if ((k.f() | l.f())) {
      ks.a.m(this);
    }
  }
  
  public float d(View paramView)
  {
    return getLayoutParamsb;
  }
  
  public void d()
  {
    View localView = c(8388611);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + e(8388611));
    }
    i(localView);
  }
  
  public void d(int paramInt)
  {
    y = new ColorDrawable(paramInt);
    invalidate();
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i7 = getHeight();
    boolean bool1 = f(paramView);
    int i2 = 0;
    int i5 = 0;
    int i1 = getWidth();
    int i8 = paramCanvas.save();
    int i3 = i1;
    int i4;
    View localView;
    if (bool1)
    {
      int i9 = getChildCount();
      i4 = 0;
      i2 = i5;
      if (i4 < i9)
      {
        localView = getChildAt(i4);
        if ((localView != paramView) && (localView.getVisibility() == 0))
        {
          Drawable localDrawable = localView.getBackground();
          if (localDrawable != null) {
            if (localDrawable.getOpacity() == -1)
            {
              i3 = 1;
              label106:
              if ((i3 == 0) || (!g(localView)) || (localView.getHeight() < i7)) {
                break label217;
              }
              if (!a(localView, 3)) {
                break label195;
              }
              i3 = localView.getRight();
              if (i3 <= i2) {
                break label560;
              }
              i2 = i3;
            }
          }
        }
      }
    }
    label195:
    label217:
    label560:
    for (;;)
    {
      i5 = i2;
      i3 = i1;
      for (;;)
      {
        i4 += 1;
        i1 = i3;
        i2 = i5;
        break;
        i3 = 0;
        break label106;
        i3 = 0;
        break label106;
        int i6 = localView.getLeft();
        i3 = i6;
        i5 = i2;
        if (i6 >= i1)
        {
          i3 = i1;
          i5 = i2;
        }
      }
      paramCanvas.clipRect(i2, 0, i1, getHeight());
      i3 = i1;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i8);
      if ((i > 0.0F) && (bool1))
      {
        i1 = (int)(((h & 0xFF000000) >>> 24) * i);
        i4 = h;
        j.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i2, 0.0F, i3, getHeight(), j);
      }
      do
      {
        return bool2;
        if ((z != null) && (a(paramView, 3)))
        {
          i1 = z.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = k.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          z.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          z.setAlpha((int)(255.0F * f1));
          z.draw(paramCanvas);
          return bool2;
        }
      } while ((A == null) || (!a(paramView, 5)));
      i1 = A.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = l.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      A.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      A.setAlpha((int)(255.0F * f1));
      A.draw(paramCanvas);
      return bool2;
    }
  }
  
  public int e(View paramView)
  {
    return iy.a(getLayoutParamsa, ks.a.u(this));
  }
  
  public boolean e()
  {
    View localView = c(8388611);
    if (localView != null) {
      return j(localView);
    }
    return false;
  }
  
  public boolean f()
  {
    View localView = c(8388611);
    if (localView != null) {
      return k(localView);
    }
    return false;
  }
  
  boolean f(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  public View g()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((g(localView)) && (k(localView))) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public boolean g(View paramView)
  {
    return (iy.a(getLayoutParamsa, ks.a.u(paramView)) & 0x7) != 0;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new or();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new or(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof or)) {
      return new or((or)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new or((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new or(paramLayoutParams);
  }
  
  public void h()
  {
    int i1 = 0;
    if (!u)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
      int i2 = getChildCount();
      while (i1 < i2)
      {
        getChildAt(i1).dispatchTouchEvent(localMotionEvent);
        i1 += 1;
      }
      localMotionEvent.recycle();
      u = true;
    }
  }
  
  public void h(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (q)
    {
      or localor = (or)paramView.getLayoutParams();
      b = 1.0F;
      d = true;
      a(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        k.a(paramView, 0, paramView.getTop());
      } else {
        l.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public void i(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (q)
    {
      paramView = (or)paramView.getLayoutParams();
      b = 0.0F;
      d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        k.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        l.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public boolean j(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsd;
  }
  
  public boolean k(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsb > 0.0F;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    q = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((E) && (y != null))
    {
      int i1 = c.a(D);
      if (i1 > 0)
      {
        y.setBounds(0, 0, getWidth(), i1);
        y.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = jx.a(paramMotionEvent);
    boolean bool2 = k.a(paramMotionEvent);
    boolean bool3 = l.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if ((!(bool2 | bool3)) && (i1 == 0))
      {
        int i2 = getChildCount();
        i1 = 0;
        if (i1 >= i2) {
          break label257;
        }
        if (!getChildAtgetLayoutParamsc) {
          break;
        }
        i1 = 1;
        if ((i1 == 0) && (!u)) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      label85:
      label113:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      w = f1;
      x = f2;
      if (i > 0.0F)
      {
        paramMotionEvent = k.b((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!f(paramMotionEvent))) {}
      }
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      t = false;
      u = false;
      break label63;
      if (!k.g()) {
        break;
      }
      m.a();
      n.a();
      i1 = 0;
      break label63;
      a(true);
      t = false;
      u = false;
      break;
      i1 += 1;
      break label85;
      label257:
      i1 = 0;
      break label113;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (g() != null) {}
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        jc.a.a(paramKeyEvent);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = g();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        b();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    while (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      or localor;
      if (localView.getVisibility() != 8)
      {
        localor = (or)localView.getLayoutParams();
        if (f(localView)) {
          localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
        }
      }
      else
      {
        paramInt3 += 1;
        continue;
      }
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i1;
      float f1;
      label164:
      int i2;
      if (a(localView, 3))
      {
        paramInt1 = -i6;
        i1 = (int)(i6 * b) + paramInt1;
        f1 = (i6 + i1) / i6;
        if (f1 == b) {
          break label310;
        }
        i2 = 1;
        label178:
        switch (a & 0x70)
        {
        default: 
          localView.layout(i1, topMargin, i6 + i1, i7 + topMargin);
          label237:
          if (i2 != 0) {
            b(localView, f1);
          }
          if (b <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i1 = i4 - (int)(i6 * b);
        f1 = (i4 - i1) / i6;
        break label164;
        label310:
        i2 = 0;
        break label178;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i1, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - bottomMargin);
        break label237;
        int i8 = paramInt4 - paramInt2;
        int i3 = (i8 - i7) / 2;
        if (i3 < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          break;
          paramInt1 = i3;
          if (i3 + i7 > i8 - bottomMargin) {
            paramInt1 = i8 - bottomMargin - i7;
          }
        }
      }
    }
    p = false;
    q = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i5 = 300;
    int i4 = 0;
    int i8 = View.MeasureSpec.getMode(paramInt1);
    int i7 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i6 = View.MeasureSpec.getSize(paramInt2);
    int i2;
    if (i8 == 1073741824)
    {
      i2 = i3;
      if (i7 == 1073741824) {}
    }
    else if (isInEditMode())
    {
      i1 = i3;
      if (i8 != Integer.MIN_VALUE)
      {
        i1 = i3;
        if (i8 == 0) {
          i1 = 300;
        }
      }
      i2 = i1;
      if (i7 == Integer.MIN_VALUE) {
        break label516;
      }
      i2 = i1;
      if (i7 != 0) {
        break label516;
      }
      i2 = i1;
    }
    label149:
    label228:
    label307:
    label326:
    label472:
    label515:
    label516:
    for (int i1 = i5;; i1 = i6)
    {
      setMeasuredDimension(i2, i1);
      View localView;
      or localor;
      if ((D != null) && (ks.a.s(this)))
      {
        i3 = 1;
        i5 = ks.a.u(this);
        i6 = getChildCount();
        if (i4 >= i6) {
          break label515;
        }
        localView = getChildAt(i4);
        if (localView.getVisibility() != 8)
        {
          localor = (or)localView.getLayoutParams();
          if (i3 != 0)
          {
            i7 = iy.a(a, i5);
            if (!ks.a.s(localView)) {
              break label307;
            }
            c.a(localView, D, i7);
          }
          if (!f(localView)) {
            break label326;
          }
          localView.measure(View.MeasureSpec.makeMeasureSpec(i2 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i1 - topMargin - bottomMargin, 1073741824));
        }
      }
      for (;;)
      {
        i4 += 1;
        break label149;
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
        i3 = 0;
        break;
        c.a(localor, D, i7);
        break label228;
        if (!g(localView)) {
          break label472;
        }
        if ((d) && (ks.a.B(localView) != f)) {
          ks.f(localView, f);
        }
        i7 = e(localView) & 0x7;
        if ((i7 & 0x0) != 0) {
          throw new IllegalStateException("Child drawer has absolute gravity " + e(i7) + " but this DrawerLayout already has a drawer view along that edge");
        }
        localView.measure(getChildMeasureSpec(paramInt1, g + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
      }
      throw new IllegalStateException("Child " + localView + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
      return;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (os)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = c(a);
      if (localView != null) {
        h(localView);
      }
    }
    a(b, 3);
    a(c, 5);
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    Drawable localDrawable;
    if (!d)
    {
      paramInt = ks.a.u(this);
      if (paramInt != 0) {
        break label83;
      }
      if (F == null) {
        break label107;
      }
      a(F, paramInt);
      localDrawable = F;
      z = localDrawable;
      paramInt = ks.a.u(this);
      if (paramInt != 0) {
        break label115;
      }
      if (G == null) {
        break label139;
      }
      a(G, paramInt);
      localDrawable = G;
    }
    for (;;)
    {
      A = localDrawable;
      return;
      label83:
      if (G != null)
      {
        a(G, paramInt);
        localDrawable = G;
        break;
      }
      label107:
      localDrawable = H;
      break;
      label115:
      if (F != null)
      {
        a(F, paramInt);
        localDrawable = F;
      }
      else
      {
        label139:
        localDrawable = I;
      }
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    os localos = new os(super.onSaveInstanceState());
    View localView = a();
    if (localView != null) {
      a = getLayoutParamsa;
    }
    b = r;
    c = s;
    return localos;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    k.b(paramMotionEvent);
    l.b(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      w = f1;
      x = f2;
      t = false;
      u = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = k.b((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (f(paramMotionEvent)))
      {
        f2 -= w;
        f1 -= x;
        int i1 = k.d();
        if (f2 * f2 + f1 * f1 < i1 * i1)
        {
          paramMotionEvent = a();
          if (paramMotionEvent != null) {
            if (a(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      a(bool);
      t = false;
      return true;
      bool = false;
      continue;
      a(true);
      t = false;
      u = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    t = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!p) {
      super.requestLayout();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */