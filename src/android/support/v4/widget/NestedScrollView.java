package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.ArrayList;
import java.util.List;
import jx;
import kb;
import kc;
import kd;
import ke;
import kf;
import km;
import ko;
import ks;
import lc;
import oz;
import pf;
import pg;
import ph;
import pq;

public class NestedScrollView
  extends FrameLayout
  implements kc, ke, km
{
  private static final pf v = new pf();
  private static final int[] w = { 16843130 };
  private pg A;
  private long a;
  private final Rect b = new Rect();
  private pq c = new pq(getContext(), null);
  private oz d;
  private oz e;
  private int f;
  private boolean g = true;
  private boolean h = false;
  private View i = null;
  private boolean j = false;
  private VelocityTracker k;
  private boolean l;
  private boolean m = true;
  private int n;
  private int o;
  private int p;
  private int q = -1;
  private final int[] r = new int[2];
  private final int[] s = new int[2];
  private int t;
  private ph u;
  private final kf x;
  private final kd y;
  private float z;
  
  public NestedScrollView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NestedScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NestedScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFocusable(true);
    setDescendantFocusability(262144);
    setWillNotDraw(false);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    n = localViewConfiguration.getScaledTouchSlop();
    o = localViewConfiguration.getScaledMinimumFlingVelocity();
    p = localViewConfiguration.getScaledMaximumFlingVelocity();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, w, paramInt, 0);
    a(paramContext.getBoolean(0, false));
    paramContext.recycle();
    x = new kf(this);
    y = new kd(this);
    setNestedScrollingEnabled(true);
    ks.a(this, v);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0) {
      return;
    }
    if (AnimationUtils.currentAnimationTimeMillis() - a > 250L)
    {
      paramInt1 = getHeight();
      int i1 = getPaddingBottom();
      int i2 = getPaddingTop();
      i1 = Math.max(0, getChildAt(0).getHeight() - (paramInt1 - i1 - i2));
      paramInt1 = getScrollY();
      paramInt2 = Math.max(0, Math.min(paramInt1 + paramInt2, i1));
      c.a(getScrollX(), paramInt1, paramInt2 - paramInt1);
      ks.a.m(this);
    }
    for (;;)
    {
      a = AnimationUtils.currentAnimationTimeMillis();
      return;
      if (!c.a()) {
        c.h();
      }
      scrollBy(paramInt1, paramInt2);
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() >> 8 & 0xFF;
    if (jx.b(paramMotionEvent, i1) == q) {
      if (i1 != 0) {
        break label64;
      }
    }
    label64:
    for (i1 = 1;; i1 = 0)
    {
      f = ((int)jx.d(paramMotionEvent, i1));
      q = jx.b(paramMotionEvent, i1);
      if (k != null) {
        k.clear();
      }
      return;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = getHeight();
    int i6 = getScrollY();
    int i7 = i6 + i1;
    int i3;
    Object localObject1;
    int i4;
    label53:
    Object localObject2;
    int i5;
    int i9;
    int i2;
    if (paramInt1 == 33)
    {
      i3 = 1;
      ArrayList localArrayList = getFocusables(2);
      localObject1 = null;
      i1 = 0;
      int i8 = localArrayList.size();
      i4 = 0;
      if (i4 >= i8) {
        break label237;
      }
      localObject2 = (View)localArrayList.get(i4);
      i5 = ((View)localObject2).getTop();
      i9 = ((View)localObject2).getBottom();
      if ((paramInt2 >= i9) || (i5 >= paramInt3)) {
        break label312;
      }
      if ((paramInt2 >= i5) || (i9 >= paramInt3)) {
        break label143;
      }
      i2 = 1;
      label115:
      if (localObject1 != null) {
        break label149;
      }
      localObject1 = localObject2;
      i1 = i2;
    }
    label143:
    label149:
    label210:
    label237:
    label312:
    for (;;)
    {
      i4 += 1;
      break label53;
      i3 = 0;
      break;
      i2 = 0;
      break label115;
      if (((i3 != 0) && (i5 < ((View)localObject1).getTop())) || ((i3 == 0) && (i9 > ((View)localObject1).getBottom()))) {}
      for (i5 = 1;; i5 = 0)
      {
        if (i1 == 0) {
          break label210;
        }
        if ((i2 == 0) || (i5 == 0)) {
          break label312;
        }
        localObject1 = localObject2;
        break;
      }
      if (i2 != 0)
      {
        localObject1 = localObject2;
        i1 = 1;
      }
      else if (i5 != 0)
      {
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = this;
        }
        boolean bool;
        if ((paramInt2 >= i6) && (paramInt3 <= i7))
        {
          bool = false;
          if (localObject2 != findFocus()) {
            ((View)localObject2).requestFocus(paramInt1);
          }
          return bool;
        }
        if (i3 != 0) {
          paramInt2 -= i6;
        }
        for (;;)
        {
          f(paramInt2);
          bool = true;
          break;
          paramInt2 = paramInt3 - i7;
        }
      }
    }
  }
  
  private boolean a(View paramView)
  {
    boolean bool = false;
    if (!a(paramView, 0, getHeight())) {
      bool = true;
    }
    return bool;
  }
  
  private boolean a(View paramView, int paramInt1, int paramInt2)
  {
    paramView.getDrawingRect(b);
    offsetDescendantRectToMyCoords(paramView, b);
    return (b.bottom + paramInt1 >= getScrollY()) && (b.top - paramInt1 <= getScrollY() + paramInt2);
  }
  
  private static boolean a(View paramView1, View paramView2)
  {
    if (paramView1 == paramView2) {
      return true;
    }
    paramView1 = paramView1.getParent();
    return ((paramView1 instanceof ViewGroup)) && (a((View)paramView1, paramView2));
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramInt2 >= paramInt3) || (paramInt1 < 0)) {
      i1 = 0;
    }
    do
    {
      return i1;
      i1 = paramInt1;
    } while (paramInt2 + paramInt1 <= paramInt3);
    return paramInt3 - paramInt2;
  }
  
  private void b(View paramView)
  {
    paramView.getDrawingRect(b);
    offsetDescendantRectToMyCoords(paramView, b);
    int i1 = a(b);
    if (i1 != 0) {
      scrollBy(0, i1);
    }
  }
  
  private void c()
  {
    if (k == null) {
      k = VelocityTracker.obtain();
    }
  }
  
  private void d()
  {
    if (k != null)
    {
      k.recycle();
      k = null;
    }
  }
  
  private void e()
  {
    j = false;
    d();
    stopNestedScroll();
    if (d != null)
    {
      d.c();
      e.c();
    }
  }
  
  private void f()
  {
    if (ks.a.a(this) != 2)
    {
      if (d == null)
      {
        Context localContext = getContext();
        d = new oz(localContext);
        e = new oz(localContext);
      }
      return;
    }
    d = null;
    e = null;
  }
  
  private void f(int paramInt)
  {
    if (paramInt != 0)
    {
      if (m) {
        a(0, paramInt);
      }
    }
    else {
      return;
    }
    scrollBy(0, paramInt);
  }
  
  private void g(int paramInt)
  {
    int i1 = getScrollY();
    if (((i1 > 0) || (paramInt > 0)) && ((i1 < b()) || (paramInt < 0))) {}
    for (boolean bool = true;; bool = false)
    {
      if (!dispatchNestedPreFling(0.0F, paramInt))
      {
        dispatchNestedFling(0.0F, paramInt, bool);
        if (bool) {
          e(paramInt);
        }
      }
      return;
    }
  }
  
  public int a()
  {
    return (int)(0.5F * getHeight());
  }
  
  protected int a(Rect paramRect)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    int i4 = getHeight();
    int i1 = getScrollY();
    int i3 = i1 + i4;
    int i5 = getVerticalFadingEdgeLength();
    int i2 = i1;
    if (top > 0) {
      i2 = i1 + i5;
    }
    i1 = i3;
    if (bottom < getChildAt(0).getHeight()) {
      i1 = i3 - i5;
    }
    if ((bottom > i1) && (top > i2)) {
      if (paramRect.height() > i4)
      {
        i2 = top - i2 + 0;
        i1 = Math.min(i2, getChildAt(0).getBottom() - i1);
      }
    }
    for (;;)
    {
      return i1;
      i2 = bottom - i1 + 0;
      break;
      if ((top < i2) && (bottom < i1))
      {
        if (paramRect.height() > i4) {}
        for (i1 = 0 - (i1 - bottom);; i1 = 0 - (i2 - top))
        {
          i1 = Math.max(i1, -getScrollY());
          break;
        }
      }
      i1 = 0;
    }
  }
  
  public void a(pg parampg)
  {
    A = parampg;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean != l)
    {
      l = paramBoolean;
      requestLayout();
    }
  }
  
  public boolean a(int paramInt)
  {
    int i1;
    int i2;
    if (paramInt == 130)
    {
      i1 = 1;
      i2 = getHeight();
      if (i1 == 0) {
        break label121;
      }
      b.top = (getScrollY() + i2);
      i1 = getChildCount();
      if (i1 > 0)
      {
        View localView = getChildAt(i1 - 1);
        if (b.top + i2 > localView.getBottom()) {
          b.top = (localView.getBottom() - i2);
        }
      }
    }
    for (;;)
    {
      b.bottom = (b.top + i2);
      return a(paramInt, b.top, b.bottom);
      i1 = 0;
      break;
      label121:
      b.top = (getScrollY() - i2);
      if (b.top < 0) {
        b.top = 0;
      }
    }
  }
  
  boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    boolean bool3 = false;
    ks.a.a(this);
    computeHorizontalScrollRange();
    computeHorizontalScrollExtent();
    computeVerticalScrollRange();
    computeVerticalScrollExtent();
    paramInt1 = paramInt3 + paramInt1;
    paramInt2 = paramInt4 + paramInt2;
    boolean bool1;
    if (paramInt1 > 0)
    {
      bool1 = true;
      paramInt1 = 0;
    }
    for (;;)
    {
      boolean bool2;
      if (paramInt2 > paramInt5) {
        bool2 = true;
      }
      for (;;)
      {
        if (bool2) {
          c.b(paramInt1, paramInt5, b());
        }
        onOverScrolled(paramInt1, paramInt5, bool1, bool2);
        if (!bool1)
        {
          bool1 = bool3;
          if (!bool2) {}
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        if (paramInt1 >= 0) {
          break label143;
        }
        bool1 = true;
        paramInt1 = 0;
        break;
        if (paramInt2 < 0)
        {
          bool2 = true;
          paramInt5 = 0;
        }
        else
        {
          paramInt5 = paramInt2;
          bool2 = false;
        }
      }
      label143:
      bool1 = false;
    }
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    int i2 = 33;
    boolean bool2 = false;
    b.setEmpty();
    View localView = getChildAt(0);
    if (localView != null)
    {
      i1 = localView.getHeight();
      if (getHeight() < i1 + getPaddingTop() + getPaddingBottom()) {
        i1 = 1;
      }
    }
    boolean bool1;
    while (i1 == 0)
    {
      bool1 = bool2;
      if (isFocused())
      {
        bool1 = bool2;
        if (paramKeyEvent.getKeyCode() != 4)
        {
          localView = findFocus();
          paramKeyEvent = localView;
          if (localView == this) {
            paramKeyEvent = null;
          }
          paramKeyEvent = FocusFinder.getInstance().findNextFocus(this, paramKeyEvent, 130);
          bool1 = bool2;
          if (paramKeyEvent != null)
          {
            bool1 = bool2;
            if (paramKeyEvent != this)
            {
              bool1 = bool2;
              if (paramKeyEvent.requestFocus(130)) {
                bool1 = true;
              }
            }
          }
        }
      }
      return bool1;
      i1 = 0;
      continue;
      i1 = 0;
    }
    if (paramKeyEvent.getAction() == 0) {}
    switch (paramKeyEvent.getKeyCode())
    {
    default: 
      bool1 = false;
    case 19: 
    case 20: 
      for (;;)
      {
        return bool1;
        if (!paramKeyEvent.isAltPressed())
        {
          bool1 = c(33);
        }
        else
        {
          bool1 = b(33);
          continue;
          if (!paramKeyEvent.isAltPressed()) {
            bool1 = c(130);
          } else {
            bool1 = b(130);
          }
        }
      }
    }
    if (paramKeyEvent.isShiftPressed()) {}
    for (int i1 = i2;; i1 = 130)
    {
      a(i1);
      break;
    }
  }
  
  public void addView(View paramView)
  {
    if (getChildCount() > 0) {
      throw new IllegalStateException("ScrollView can host only one direct child");
    }
    super.addView(paramView);
  }
  
  public void addView(View paramView, int paramInt)
  {
    if (getChildCount() > 0) {
      throw new IllegalStateException("ScrollView can host only one direct child");
    }
    super.addView(paramView, paramInt);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() > 0) {
      throw new IllegalStateException("ScrollView can host only one direct child");
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() > 0) {
      throw new IllegalStateException("ScrollView can host only one direct child");
    }
    super.addView(paramView, paramLayoutParams);
  }
  
  public int b()
  {
    int i1 = 0;
    if (getChildCount() > 0) {
      i1 = Math.max(0, getChildAt(0).getHeight() - (getHeight() - getPaddingBottom() - getPaddingTop()));
    }
    return i1;
  }
  
  public boolean b(int paramInt)
  {
    if (paramInt == 130) {}
    for (int i1 = 1;; i1 = 0)
    {
      int i2 = getHeight();
      b.top = 0;
      b.bottom = i2;
      if (i1 != 0)
      {
        i1 = getChildCount();
        if (i1 > 0)
        {
          View localView = getChildAt(i1 - 1);
          b.bottom = (localView.getBottom() + getPaddingBottom());
          b.top = (b.bottom - i2);
        }
      }
      return a(paramInt, b.top, b.bottom);
    }
  }
  
  public boolean c(int paramInt)
  {
    View localView2 = findFocus();
    View localView1 = localView2;
    if (localView2 == this) {
      localView1 = null;
    }
    localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    int i2 = a();
    if ((localView2 != null) && (a(localView2, i2, getHeight())))
    {
      localView2.getDrawingRect(b);
      offsetDescendantRectToMyCoords(localView2, b);
      f(a(b));
      localView2.requestFocus(paramInt);
      if ((localView1 != null) && (localView1.isFocused()) && (a(localView1)))
      {
        paramInt = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(paramInt);
      }
      return true;
    }
    int i1;
    if ((paramInt == 33) && (getScrollY() < i2)) {
      i1 = getScrollY();
    }
    while (i1 == 0)
    {
      return false;
      i1 = i2;
      if (paramInt == 130)
      {
        i1 = i2;
        if (getChildCount() > 0)
        {
          int i3 = getChildAt(0).getBottom();
          int i4 = getScrollY() + getHeight() - getPaddingBottom();
          i1 = i2;
          if (i3 - i4 < i2) {
            i1 = i3 - i4;
          }
        }
      }
    }
    if (paramInt == 130) {}
    for (;;)
    {
      f(i1);
      break;
      i1 = -i1;
    }
  }
  
  public int computeHorizontalScrollExtent()
  {
    return super.computeHorizontalScrollExtent();
  }
  
  public int computeHorizontalScrollOffset()
  {
    return super.computeHorizontalScrollOffset();
  }
  
  public int computeHorizontalScrollRange()
  {
    return super.computeHorizontalScrollRange();
  }
  
  public void computeScroll()
  {
    int i3;
    int i5;
    int i6;
    int i1;
    if (c.g())
    {
      int i2 = getScrollX();
      i3 = getScrollY();
      int i4 = c.b();
      i5 = c.c();
      if ((i2 != i4) || (i3 != i5))
      {
        i6 = b();
        i1 = ks.a.a(this);
        if ((i1 != 0) && ((i1 != 1) || (i6 <= 0))) {
          break label131;
        }
        i1 = 1;
        a(i4 - i2, i5 - i3, i2, i3, i6);
        if (i1 != 0)
        {
          f();
          if ((i5 > 0) || (i3 <= 0)) {
            break label136;
          }
          d.a((int)c.f());
        }
      }
    }
    label131:
    label136:
    while ((i5 < i6) || (i3 >= i6))
    {
      return;
      i1 = 0;
      break;
    }
    e.a((int)c.f());
  }
  
  public int computeVerticalScrollExtent()
  {
    return super.computeVerticalScrollExtent();
  }
  
  public int computeVerticalScrollOffset()
  {
    return Math.max(0, super.computeVerticalScrollOffset());
  }
  
  public int computeVerticalScrollRange()
  {
    int i2 = getChildCount();
    int i1 = getHeight() - getPaddingBottom() - getPaddingTop();
    if (i2 == 0) {}
    int i3;
    int i4;
    do
    {
      return i1;
      i2 = getChildAt(0).getBottom();
      i3 = getScrollY();
      i4 = Math.max(0, i2 - i1);
      if (i3 < 0) {
        return i2 - i3;
      }
      i1 = i2;
    } while (i3 <= i4);
    return i2 + (i3 - i4);
  }
  
  public final void d(int paramInt)
  {
    a(0 - getScrollX(), paramInt - getScrollY());
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return y.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return y.a(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return y.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return y.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (d != null)
    {
      int i1 = getScrollY();
      int i2;
      int i3;
      int i4;
      if (!d.a())
      {
        i2 = paramCanvas.save();
        i3 = getWidth();
        i4 = getPaddingLeft();
        int i5 = getPaddingRight();
        paramCanvas.translate(getPaddingLeft(), Math.min(0, i1));
        d.a(i3 - i4 - i5, getHeight());
        if (d.a(paramCanvas)) {
          ks.a.m(this);
        }
        paramCanvas.restoreToCount(i2);
      }
      if (!e.a())
      {
        i2 = paramCanvas.save();
        i3 = getWidth() - getPaddingLeft() - getPaddingRight();
        i4 = getHeight();
        paramCanvas.translate(-i3 + getPaddingLeft(), Math.max(b(), i1) + i4);
        paramCanvas.rotate(180.0F, i3, 0.0F);
        e.a(i3, i4);
        if (e.a(paramCanvas)) {
          ks.a.m(this);
        }
        paramCanvas.restoreToCount(i2);
      }
    }
  }
  
  public void e(int paramInt)
  {
    if (getChildCount() > 0)
    {
      int i1 = getHeight() - getPaddingBottom() - getPaddingTop();
      int i2 = getChildAt(0).getHeight();
      c.b(getScrollX(), getScrollY(), paramInt, Math.max(0, i2 - i1), i1 / 2);
      ks.a.m(this);
    }
  }
  
  protected float getBottomFadingEdgeStrength()
  {
    if (getChildCount() == 0) {
      return 0.0F;
    }
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getHeight();
    int i3 = getPaddingBottom();
    i2 = getChildAt(0).getBottom() - getScrollY() - (i2 - i3);
    if (i2 < i1) {
      return i2 / i1;
    }
    return 1.0F;
  }
  
  public int getNestedScrollAxes()
  {
    return x.a();
  }
  
  protected float getTopFadingEdgeStrength()
  {
    if (getChildCount() == 0) {
      return 0.0F;
    }
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getScrollY();
    if (i2 < i1) {
      return i2 / i1;
    }
    return 1.0F;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return y.b();
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return y.a();
  }
  
  protected void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight(), width), View.MeasureSpec.makeMeasureSpec(0, 0));
  }
  
  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    paramInt1 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin + paramInt2, width);
    paramInt2 = topMargin;
    paramView.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(bottomMargin + paramInt2, 0));
  }
  
  public void onAttachedToWindow()
  {
    h = false;
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if ((jx.a.b(paramMotionEvent) & 0x2) != 0) {
      switch (paramMotionEvent.getAction())
      {
      }
    }
    for (;;)
    {
      return false;
      if (!j)
      {
        float f1 = jx.e(paramMotionEvent, 9);
        if (f1 != 0.0F)
        {
          if (z == 0.0F)
          {
            paramMotionEvent = new TypedValue();
            Context localContext = getContext();
            if (!localContext.getTheme().resolveAttribute(16842829, paramMotionEvent, true)) {
              throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            z = paramMotionEvent.getDimension(localContext.getResources().getDisplayMetrics());
          }
          int i1 = (int)(f1 * z);
          int i2 = b();
          int i4 = getScrollY();
          int i3 = i4 - i1;
          if (i3 < 0) {
            i1 = 0;
          }
          while (i1 != i4)
          {
            super.scrollTo(getScrollX(), i1);
            return true;
            i1 = i2;
            if (i3 <= i2) {
              i1 = i3;
            }
          }
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 2) && (j)) {
      return true;
    }
    switch (i1 & 0xFF)
    {
    }
    for (;;)
    {
      return j;
      i1 = q;
      if (i1 != -1)
      {
        int i2 = jx.a(paramMotionEvent, i1);
        if (i2 == -1)
        {
          Log.e("NestedScrollView", "Invalid pointerId=" + i1 + " in onInterceptTouchEvent");
        }
        else
        {
          i1 = (int)jx.d(paramMotionEvent, i2);
          if ((Math.abs(i1 - f) > n) && ((getNestedScrollAxes() & 0x2) == 0))
          {
            j = true;
            f = i1;
            c();
            k.addMovement(paramMotionEvent);
            t = 0;
            paramMotionEvent = getParent();
            if (paramMotionEvent != null)
            {
              paramMotionEvent.requestDisallowInterceptTouchEvent(true);
              continue;
              i2 = (int)paramMotionEvent.getY();
              i1 = (int)paramMotionEvent.getX();
              if (getChildCount() > 0)
              {
                int i3 = getScrollY();
                View localView = getChildAt(0);
                if ((i2 >= localView.getTop() - i3) && (i2 < localView.getBottom() - i3) && (i1 >= localView.getLeft()) && (i1 < localView.getRight())) {
                  i1 = 1;
                }
              }
              for (;;)
              {
                if (i1 != 0) {
                  break label307;
                }
                j = false;
                d();
                break;
                i1 = 0;
                continue;
                i1 = 0;
              }
              label307:
              f = i2;
              q = jx.b(paramMotionEvent, 0);
              if (k == null)
              {
                k = VelocityTracker.obtain();
                label335:
                k.addMovement(paramMotionEvent);
                if (c.a()) {
                  break label378;
                }
              }
              for (;;)
              {
                j = bool;
                startNestedScroll(2);
                break;
                k.clear();
                break label335;
                label378:
                bool = false;
              }
              j = false;
              q = -1;
              d();
              if (c.b(getScrollX(), getScrollY(), b())) {
                ks.a.m(this);
              }
              stopNestedScroll();
              continue;
              a(paramMotionEvent);
            }
          }
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    g = false;
    if ((i != null) && (a(i, this))) {
      b(i);
    }
    i = null;
    if (!h)
    {
      if (u != null)
      {
        scrollTo(getScrollX(), u.a);
        u = null;
      }
      if (getChildCount() <= 0) {
        break label153;
      }
      paramInt1 = getChildAt(0).getMeasuredHeight();
      paramInt1 = Math.max(0, paramInt1 - (paramInt4 - paramInt2 - getPaddingBottom() - getPaddingTop()));
      if (getScrollY() <= paramInt1) {
        break label158;
      }
      scrollTo(getScrollX(), paramInt1);
    }
    for (;;)
    {
      scrollTo(getScrollX(), getScrollY());
      h = true;
      return;
      label153:
      paramInt1 = 0;
      break;
      label158:
      if (getScrollY() < 0) {
        scrollTo(getScrollX(), 0);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!l) {}
    View localView;
    do
    {
      do
      {
        return;
      } while ((View.MeasureSpec.getMode(paramInt2) == 0) || (getChildCount() <= 0));
      localView = getChildAt(0);
      paramInt2 = getMeasuredHeight();
    } while (localView.getMeasuredHeight() >= paramInt2);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    localView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight(), width), View.MeasureSpec.makeMeasureSpec(paramInt2 - getPaddingTop() - getPaddingBottom(), 1073741824));
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      g((int)paramFloat2);
      return true;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getScrollY();
    scrollBy(0, paramInt4);
    paramInt1 = getScrollY() - paramInt1;
    dispatchNestedScroll(0, paramInt1, 0, paramInt4 - paramInt1, null);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    x.a(paramInt);
    startNestedScroll(2);
  }
  
  protected void onOverScrolled(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.scrollTo(paramInt1, paramInt2);
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1;
    View localView;
    if (paramInt == 2)
    {
      i1 = 130;
      if (paramRect != null) {
        break label44;
      }
      localView = FocusFinder.getInstance().findNextFocus(this, null, i1);
      label24:
      if (localView != null) {
        break label58;
      }
    }
    label44:
    label58:
    while (a(localView))
    {
      return false;
      i1 = paramInt;
      if (paramInt != 1) {
        break;
      }
      i1 = 33;
      break;
      localView = FocusFinder.getInstance().findNextFocusFromRect(this, paramRect, i1);
      break label24;
    }
    return localView.requestFocus(i1, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (ph)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    u = paramParcelable;
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    ph localph = new ph(super.onSaveInstanceState());
    a = getScrollY();
    return localph;
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (A != null) {
      A.a(this);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = findFocus();
    if ((localView == null) || (this == localView)) {}
    while (!a(localView, 0, paramInt4)) {
      return;
    }
    localView.getDrawingRect(b);
    offsetDescendantRectToMyCoords(localView, b);
    f(a(b));
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return (paramInt & 0x2) != 0;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    x.b();
    stopNestedScroll();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    c();
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int i1 = jx.a(paramMotionEvent);
    if (i1 == 0) {
      t = 0;
    }
    localMotionEvent.offsetLocation(0.0F, t);
    int i3;
    int i4;
    int i2;
    switch (i1)
    {
    case 4: 
    default: 
    case 0: 
    case 2: 
      ViewParent localViewParent;
      for (;;)
      {
        if (k != null) {
          k.addMovement(localMotionEvent);
        }
        localMotionEvent.recycle();
        return true;
        if (getChildCount() == 0) {
          return false;
        }
        if (!c.a()) {}
        for (boolean bool = true;; bool = false)
        {
          j = bool;
          if (bool)
          {
            localViewParent = getParent();
            if (localViewParent != null) {
              localViewParent.requestDisallowInterceptTouchEvent(true);
            }
          }
          if (!c.a()) {
            c.h();
          }
          f = ((int)paramMotionEvent.getY());
          q = jx.b(paramMotionEvent, 0);
          startNestedScroll(2);
          break;
        }
        i3 = jx.a(paramMotionEvent, q);
        if (i3 != -1) {
          break;
        }
        Log.e("NestedScrollView", "Invalid pointerId=" + q + " in onTouchEvent");
      }
      i4 = (int)jx.d(paramMotionEvent, i3);
      i2 = f - i4;
      i1 = i2;
      if (dispatchNestedPreScroll(0, i2, s, r))
      {
        i1 = i2 - s[1];
        localMotionEvent.offsetLocation(0.0F, r[1]);
        t += r[1];
      }
      if ((!j) && (Math.abs(i1) > n))
      {
        localViewParent = getParent();
        if (localViewParent != null) {
          localViewParent.requestDisallowInterceptTouchEvent(true);
        }
        j = true;
        if (i1 > 0) {
          i1 -= n;
        }
      }
      break;
    }
    label383:
    while (j)
    {
      f = (i4 - r[1]);
      int i5 = getScrollY();
      i4 = b();
      i2 = ks.a.a(this);
      if ((i2 == 0) || ((i2 == 1) && (i4 > 0))) {}
      for (i2 = 1;; i2 = 0)
      {
        if ((a(0, i1, 0, getScrollY(), i4)) && (!hasNestedScrollingParent())) {
          k.clear();
        }
        int i6 = getScrollY() - i5;
        if (!dispatchNestedScroll(0, i6, 0, i1 - i6, r)) {
          break label558;
        }
        f -= r[1];
        localMotionEvent.offsetLocation(0.0F, r[1]);
        t += r[1];
        break;
        i1 += n;
        break label383;
      }
      label558:
      if (i2 == 0) {
        break;
      }
      f();
      i2 = i5 + i1;
      if (i2 < 0)
      {
        d.a(i1 / getHeight(), jx.c(paramMotionEvent, i3) / getWidth());
        if (!e.a()) {
          e.c();
        }
      }
      while ((d != null) && ((!d.a()) || (!e.a())))
      {
        ks.a.m(this);
        break;
        if (i2 > i4)
        {
          e.a(i1 / getHeight(), 1.0F - jx.c(paramMotionEvent, i3) / getWidth());
          if (!d.a()) {
            d.c();
          }
        }
      }
      if (j)
      {
        paramMotionEvent = k;
        paramMotionEvent.computeCurrentVelocity(1000, p);
        i1 = (int)ko.b(paramMotionEvent, q);
        if (Math.abs(i1) <= o) {
          break label778;
        }
        g(-i1);
      }
      for (;;)
      {
        q = -1;
        e();
        break;
        label778:
        if (c.b(getScrollX(), getScrollY(), b())) {
          ks.a.m(this);
        }
      }
      if ((j) && (getChildCount() > 0) && (c.b(getScrollX(), getScrollY(), b()))) {
        ks.a.m(this);
      }
      q = -1;
      e();
      break;
      i1 = jx.b(paramMotionEvent);
      f = ((int)jx.d(paramMotionEvent, i1));
      q = jx.b(paramMotionEvent, i1);
      break;
      a(paramMotionEvent);
      f = ((int)jx.d(paramMotionEvent, jx.a(paramMotionEvent, q)));
      break;
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if (!g) {
      b(paramView2);
    }
    for (;;)
    {
      super.requestChildFocus(paramView1, paramView2);
      return;
      i = paramView2;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    paramRect.offset(paramView.getLeft() - paramView.getScrollX(), paramView.getTop() - paramView.getScrollY());
    int i1 = a(paramRect);
    if (i1 != 0) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool)
      {
        if (!paramBoolean) {
          break;
        }
        scrollBy(0, i1);
      }
      return bool;
    }
    a(0, i1);
    return bool;
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (paramBoolean) {
      d();
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    g = true;
    super.requestLayout();
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      paramInt1 = b(paramInt1, getWidth() - getPaddingRight() - getPaddingLeft(), localView.getWidth());
      paramInt2 = b(paramInt2, getHeight() - getPaddingBottom() - getPaddingTop(), localView.getHeight());
      if ((paramInt1 != getScrollX()) || (paramInt2 != getScrollY())) {
        super.scrollTo(paramInt1, paramInt2);
      }
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    y.a(paramBoolean);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return true;
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return y.a(paramInt);
  }
  
  public void stopNestedScroll()
  {
    y.c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.NestedScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */