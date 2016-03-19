import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewTreeObserver;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class k
  extends ViewGroup
  implements ke
{
  static final String a;
  static final Class<?>[] b;
  static final ThreadLocal<Map<String, Constructor<aen>>> c;
  static final Comparator<View> e;
  static final StressMode f;
  final Comparator<View> d;
  private final List<View> g;
  private final List<View> h;
  private final Rect i;
  private final Rect j;
  private final Rect k;
  private final int[] l;
  private boolean m;
  private int[] n;
  private View o;
  private View p;
  private View q;
  private n r;
  private boolean s;
  private mq t;
  private boolean u;
  private Drawable v;
  private ViewGroup.OnHierarchyChangeListener w;
  private final kf x;
  
  static
  {
    Object localObject = k.class.getPackage();
    if (localObject != null)
    {
      localObject = ((Package)localObject).getName();
      a = (String)localObject;
      if (Build.VERSION.SDK_INT < 21) {
        break label80;
      }
      e = new p();
    }
    for (f = new StressMode();; f = null)
    {
      b = new Class[] { Context.class, AttributeSet.class };
      c = new ThreadLocal();
      return;
      localObject = null;
      break;
      label80:
      e = null;
    }
  }
  
  private int a(int paramInt)
  {
    if (n == null)
    {
      Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + paramInt);
      return 0;
    }
    if ((paramInt < 0) || (paramInt >= n.length))
    {
      Log.e("CoordinatorLayout", "Keyline index " + paramInt + " out of range for " + this);
      return 0;
    }
    return n[paramInt];
  }
  
  static aen a(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String str;
    if (paramString.startsWith(".")) {
      str = paramContext.getPackageName() + paramString;
    }
    label223:
    for (;;)
    {
      try
      {
        paramString = (Map)c.get();
        if (paramString != null) {
          break label223;
        }
        paramString = new HashMap();
        c.set(paramString);
        Constructor localConstructor2 = (Constructor)paramString.get(str);
        Constructor localConstructor1 = localConstructor2;
        if (localConstructor2 == null)
        {
          localConstructor1 = Class.forName(str, true, paramContext.getClassLoader()).getConstructor(b);
          localConstructor1.setAccessible(true);
          paramString.put(str, localConstructor1);
        }
        paramContext = (aen)localConstructor1.newInstance(new Object[] { paramContext, paramAttributeSet });
        return paramContext;
      }
      catch (Exception paramContext)
      {
        throw new RuntimeException("Could not inflate Behavior subclass " + str, paramContext);
      }
      str = paramString;
      if (paramString.indexOf('.') < 0)
      {
        str = paramString;
        if (!TextUtils.isEmpty(a)) {
          str = a + '.' + paramString;
        }
      }
    }
  }
  
  private boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool1 = false;
    int i3 = 0;
    int i4 = jx.a(paramMotionEvent);
    List localList = h;
    localList.clear();
    boolean bool2 = isChildrenDrawingOrderEnabled();
    int i5 = getChildCount();
    int i1 = i5 - 1;
    if (i1 >= 0)
    {
      if (bool2) {}
      for (i2 = getChildDrawingOrder(i5, i1);; i2 = i1)
      {
        localList.add(getChildAt(i2));
        i1 -= 1;
        break;
      }
    }
    if (e != null) {
      Collections.sort(localList, e);
    }
    i5 = localList.size();
    int i2 = 0;
    MotionEvent localMotionEvent = null;
    i1 = i3;
    View localView;
    m localm;
    aen localaen;
    if (i2 < i5)
    {
      localView = (View)localList.get(i2);
      localm = (m)localView.getLayoutParams();
      localaen = localm.a();
      if (((bool1) || (i1 != 0)) && (i4 != 0))
      {
        if (localaen == null) {
          break label415;
        }
        if (localMotionEvent != null) {
          break label412;
        }
        long l1 = SystemClock.uptimeMillis();
        localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        label199:
        switch (paramInt)
        {
        }
      }
    }
    label300:
    label402:
    label412:
    label415:
    for (;;)
    {
      i2 += 1;
      break;
      localaen.a(this, localView, localMotionEvent);
      continue;
      localaen.a(localMotionEvent);
      continue;
      bool2 = bool1;
      if (!bool1)
      {
        bool2 = bool1;
        if (localaen == null) {}
      }
      boolean bool3;
      switch (paramInt)
      {
      default: 
        bool2 = bool1;
        if (bool1)
        {
          o = localView;
          bool2 = bool1;
        }
        bool1 = bool2;
        bool2 = localm.d();
        bool3 = localm.a(this, localView);
        if ((!bool3) || (bool2)) {
          break;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (bool3)
        {
          bool2 = bool1;
          if (i1 == 0) {
            break label402;
          }
        }
        break;
        bool1 = localaen.a(this, localView, paramMotionEvent);
        break label300;
        bool1 = localaen.a(paramMotionEvent);
        break label300;
      }
      bool2 = bool1;
      localList.clear();
      return bool2;
      break label199;
    }
  }
  
  private static int b(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388659;
    }
    return i1;
  }
  
  private static int c(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388661;
    }
    return i1;
  }
  
  private void f()
  {
    int i1 = 0;
    if (o != null)
    {
      aen localaen = ((m)o.getLayoutParams()).a();
      if (localaen != null)
      {
        long l1 = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        localaen.a(localMotionEvent);
        localMotionEvent.recycle();
      }
      o = null;
    }
    int i2 = getChildCount();
    while (i1 < i2)
    {
      ((m)getChildAt(i1).getLayoutParams()).e();
      i1 += 1;
    }
  }
  
  public m a(AttributeSet paramAttributeSet)
  {
    return new m(getContext(), paramAttributeSet);
  }
  
  m a(View paramView)
  {
    m localm = (m)paramView.getLayoutParams();
    View localView;
    if (!b)
    {
      Class localClass = paramView.getClass();
      paramView = null;
      for (;;)
      {
        localView = paramView;
        if (localClass == null) {
          break;
        }
        paramView = (l)localClass.getAnnotation(l.class);
        localView = paramView;
        if (paramView != null) {
          break;
        }
        localClass = localClass.getSuperclass();
      }
      if (localView == null) {}
    }
    try
    {
      localm.a((aen)localView.a().newInstance());
      b = true;
      return localm;
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        Log.e("CoordinatorLayout", "Default behavior class " + localView.a().getName() + " could not be instantiated. Did you forget a default constructor?", paramView);
      }
    }
  }
  
  protected m a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof m)) {
      return new m((m)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new m((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new m(paramLayoutParams);
  }
  
  void a()
  {
    int i3 = ks.a.u(this);
    int i4 = g.size();
    int i1 = 0;
    while (i1 < i4)
    {
      View localView = (View)g.get(i1);
      Object localObject1 = (m)localView.getLayoutParams();
      int i2 = 0;
      while (i2 < i1)
      {
        localObject2 = (View)g.get(i2);
        if (h == localObject2) {
          b(localView, i3);
        }
        i2 += 1;
      }
      localObject1 = i;
      Object localObject2 = j;
      c(localView, (Rect)localObject1);
      a(localView, true, (Rect)localObject2);
      if (!((Rect)localObject1).equals(localObject2))
      {
        b(localView, (Rect)localObject2);
        i2 = i1 + 1;
        while (i2 < i4)
        {
          ((View)g.get(i2)).getLayoutParams();
          i2 += 1;
        }
      }
      i1 += 1;
    }
  }
  
  public void a(View paramView, int paramInt)
  {
    Object localObject = (m)paramView.getLayoutParams();
    if (((m)localObject).c()) {
      throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }
    if (g != null)
    {
      localObject = g;
      paramView.getLayoutParams();
      localRect1 = i;
      localRect2 = j;
      a((View)localObject, localRect1);
      a(paramView, paramInt, localRect1, localRect2);
      paramView.layout(left, top, right, bottom);
      return;
    }
    if (e >= 0)
    {
      i3 = e;
      localObject = (m)paramView.getLayoutParams();
      int i7 = iy.a(c(c), paramInt);
      int i6 = getWidth();
      int i5 = getHeight();
      int i4 = paramView.getMeasuredWidth();
      i2 = paramView.getMeasuredHeight();
      i1 = i3;
      if (paramInt == 1) {
        i1 = i6 - i3;
      }
      paramInt = a(i1) - i4;
      i1 = 0;
      switch (i7 & 0x7)
      {
      default: 
        switch (i7 & 0x70)
        {
        }
        break;
      }
      for (;;)
      {
        paramInt = Math.max(getPaddingLeft() + leftMargin, Math.min(paramInt, i6 - getPaddingRight() - i4 - rightMargin));
        i1 = Math.max(getPaddingTop() + topMargin, Math.min(i1, i5 - getPaddingBottom() - i2 - bottomMargin));
        paramView.layout(paramInt, i1, paramInt + i4, i2 + i1);
        return;
        paramInt += i4;
        break;
        paramInt += i4 / 2;
        break;
        i1 = i2;
        continue;
        i1 = i2 / 2 + 0;
      }
    }
    localObject = (m)paramView.getLayoutParams();
    Rect localRect1 = i;
    localRect1.set(getPaddingLeft() + leftMargin, getPaddingTop() + topMargin, getWidth() - getPaddingRight() - rightMargin, getHeight() - getPaddingBottom() - bottomMargin);
    if ((t != null) && (ks.a.s(this)) && (!ks.a.s(paramView)))
    {
      left += t.a();
      top += t.b();
      right -= t.c();
      bottom -= t.d();
    }
    Rect localRect2 = j;
    int i1 = b(c);
    int i2 = paramView.getMeasuredWidth();
    int i3 = paramView.getMeasuredHeight();
    iy.a.a(i1, i2, i3, localRect1, localRect2, paramInt);
    paramView.layout(left, top, right, bottom);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, 0);
  }
  
  void a(View paramView, int paramInt, Rect paramRect1, Rect paramRect2)
  {
    m localm = (m)paramView.getLayoutParams();
    int i2 = c;
    int i1 = i2;
    if (i2 == 0) {
      i1 = 17;
    }
    int i5 = iy.a(i1, paramInt);
    i1 = iy.a(b(d), paramInt);
    int i3 = paramView.getMeasuredWidth();
    int i4 = paramView.getMeasuredHeight();
    switch (i1 & 0x7)
    {
    default: 
      paramInt = left;
      switch (i1 & 0x70)
      {
      default: 
        i1 = top;
        label138:
        i2 = paramInt;
        switch (i5 & 0x7)
        {
        default: 
          i2 = paramInt - i3;
        case 5: 
          label178:
          paramInt = i1;
          switch (i5 & 0x70)
          {
          }
          break;
        }
        break;
      }
      break;
    }
    for (paramInt = i1 - i4;; paramInt = i1 - i4 / 2)
    {
      i5 = getWidth();
      i1 = getHeight();
      i2 = Math.max(getPaddingLeft() + leftMargin, Math.min(i2, i5 - getPaddingRight() - i3 - rightMargin));
      paramInt = Math.max(getPaddingTop() + topMargin, Math.min(paramInt, i1 - getPaddingBottom() - i4 - bottomMargin));
      paramRect2.set(i2, paramInt, i2 + i3, paramInt + i4);
      return;
      paramInt = right;
      break;
      paramInt = left;
      paramInt = paramRect1.width() / 2 + paramInt;
      break;
      i1 = bottom;
      break label138;
      i1 = top + paramRect1.height() / 2;
      break label138;
      i2 = paramInt - i3 / 2;
      break label178;
    }
  }
  
  void a(View paramView, Rect paramRect)
  {
    ab.a(this, paramView, paramRect);
  }
  
  void a(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((paramView.isLayoutRequested()) || (paramView.getVisibility() == 8))
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    if (paramBoolean)
    {
      a(paramView, paramRect);
      return;
    }
    paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  public boolean a(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = i;
    a(paramView, localRect);
    return localRect.contains(paramInt1, paramInt2);
  }
  
  void b()
  {
    int i4 = 0;
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      int i3 = i4;
      if (i1 < i2)
      {
        if (b(getChildAt(i1))) {
          i3 = 1;
        }
      }
      else
      {
        if (i3 != s)
        {
          if (i3 == 0) {
            break;
          }
          c();
        }
        return;
      }
      i1 += 1;
    }
    d();
  }
  
  void b(View paramView, int paramInt)
  {
    m localm = (m)paramView.getLayoutParams();
    if (g != null)
    {
      Rect localRect1 = i;
      Rect localRect2 = j;
      Rect localRect3 = k;
      a(g, localRect1);
      a(paramView, false, localRect2);
      a(paramView, paramInt, localRect1, localRect3);
      paramInt = left - left;
      int i1 = top - top;
      if (paramInt != 0) {
        paramView.offsetLeftAndRight(paramInt);
      }
      if (i1 != 0) {
        paramView.offsetTopAndBottom(i1);
      }
    }
  }
  
  void b(View paramView, Rect paramRect)
  {
    ((m)paramView.getLayoutParams()).a(paramRect);
  }
  
  boolean b(View paramView)
  {
    m localm = (m)paramView.getLayoutParams();
    if (g != null) {
      return true;
    }
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((localView != paramView) && (localm.a(localView))) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  void c()
  {
    if (m)
    {
      if (r == null) {
        r = new n(this);
      }
      getViewTreeObserver().addOnPreDrawListener(r);
    }
    s = true;
  }
  
  void c(View paramView, Rect paramRect)
  {
    paramRect.set(((m)paramView.getLayoutParams()).b());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof m)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  void d()
  {
    if ((m) && (r != null)) {
      getViewTreeObserver().removeOnPreDrawListener(r);
    }
    s = false;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    paramView.getLayoutParams();
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected m e()
  {
    return new m();
  }
  
  public int getNestedScrollAxes()
  {
    return x.a();
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    f();
    if (s)
    {
      if (r == null) {
        r = new n(this);
      }
      getViewTreeObserver().addOnPreDrawListener(r);
    }
    if ((t == null) && (ks.a.s(this))) {
      ks.a.r(this);
    }
    m = true;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    f();
    if ((s) && (r != null)) {
      getViewTreeObserver().removeOnPreDrawListener(r);
    }
    if (q != null) {
      onStopNestedScroll(q);
    }
    m = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((u) && (v != null)) {
      if (t == null) {
        break label61;
      }
    }
    label61:
    for (int i1 = t.b();; i1 = 0)
    {
      if (i1 > 0)
      {
        v.setBounds(0, 0, getWidth(), i1);
        v.draw(paramCanvas);
      }
      return;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = jx.a(paramMotionEvent);
    if (i1 == 0) {
      f();
    }
    boolean bool = a(paramMotionEvent, 0);
    if ((i1 == 1) || (i1 == 3)) {
      f();
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = ks.a.u(this);
    paramInt3 = g.size();
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      View localView = (View)g.get(paramInt1);
      localView.getLayoutParams();
      a(localView, paramInt2);
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    g.clear();
    int i1 = 0;
    int i2 = getChildCount();
    while (i1 < i2)
    {
      localObject1 = getChildAt(i1);
      a((View)localObject1).b(this, (View)localObject1);
      g.add(localObject1);
      i1 += 1;
    }
    Object localObject1 = g;
    Object localObject2 = d;
    int i10;
    int i11;
    int i12;
    int i13;
    label136:
    int i15;
    int i16;
    int i17;
    int i18;
    int i7;
    int i6;
    int i3;
    label192:
    int i4;
    int i5;
    label209:
    int i8;
    if ((localObject1 == null) || (((List)localObject1).size() < 2))
    {
      b();
      i10 = getPaddingLeft();
      i11 = getPaddingTop();
      i12 = getPaddingRight();
      i13 = getPaddingBottom();
      int i14 = ks.a.u(this);
      if (i14 != 1) {
        break label665;
      }
      i2 = 1;
      i15 = View.MeasureSpec.getMode(paramInt1);
      i16 = View.MeasureSpec.getSize(paramInt1);
      i17 = View.MeasureSpec.getMode(paramInt2);
      i18 = View.MeasureSpec.getSize(paramInt2);
      i7 = getSuggestedMinimumWidth();
      i6 = getSuggestedMinimumHeight();
      if ((t == null) || (!ks.a.s(this))) {
        break label671;
      }
      i3 = 1;
      int i19 = g.size();
      i4 = 0;
      i5 = 0;
      if (i4 >= i19) {
        break label711;
      }
      localObject1 = (View)g.get(i4);
      localObject2 = (m)((View)localObject1).getLayoutParams();
      if ((e < 0) || (i15 == 0)) {
        break label748;
      }
      i1 = a(e);
      i8 = iy.a(c(c), i14) & 0x7;
      if (((i8 != 3) || (i2 != 0)) && ((i8 != 5) || (i2 == 0))) {
        break label677;
      }
      i1 = Math.max(0, i16 - i12 - i1);
    }
    for (;;)
    {
      label317:
      int i9;
      if ((i3 != 0) && (!ks.a.s((View)localObject1)))
      {
        i9 = t.a();
        int i21 = t.c();
        i8 = t.b();
        int i20 = t.d();
        i9 = View.MeasureSpec.makeMeasureSpec(i16 - (i9 + i21), i15);
        i8 = View.MeasureSpec.makeMeasureSpec(i18 - (i20 + i8), i17);
      }
      for (;;)
      {
        a((View)localObject1, i9, i1, i8);
        i7 = Math.max(i7, ((View)localObject1).getMeasuredWidth() + (i10 + i12) + leftMargin + rightMargin);
        i1 = ((View)localObject1).getMeasuredHeight();
        i8 = topMargin;
        i6 = Math.max(i6, bottomMargin + (i1 + (i11 + i13) + i8));
        i1 = ks.a.e((View)localObject1);
        i5 = ks.a.a(i5, i1);
        i4 += 1;
        break label209;
        View[] arrayOfView = new View[((List)localObject1).size()];
        ((List)localObject1).toArray(arrayOfView);
        i5 = arrayOfView.length;
        i1 = 0;
        while (i1 < i5)
        {
          i2 = i1 + 1;
          for (i3 = i1; i2 < i5; i3 = i4)
          {
            i4 = i3;
            if (((Comparator)localObject2).compare(arrayOfView[i2], arrayOfView[i3]) < 0) {
              i4 = i2;
            }
            i2 += 1;
          }
          if (i1 != i3)
          {
            View localView = arrayOfView[i3];
            arrayOfView[i3] = arrayOfView[i1];
            arrayOfView[i1] = localView;
          }
          i1 += 1;
        }
        ((List)localObject1).clear();
        i1 = 0;
        while (i1 < i5)
        {
          ((List)localObject1).add(arrayOfView[i1]);
          i1 += 1;
        }
        break;
        label665:
        i2 = 0;
        break label136;
        label671:
        i3 = 0;
        break label192;
        label677:
        if (((i8 != 5) || (i2 != 0)) && ((i8 != 3) || (i2 == 0))) {
          break label748;
        }
        i1 = Math.max(0, i1 - i10);
        break label317;
        label711:
        setMeasuredDimension(ks.a(i7, paramInt1, 0xFF000000 & i5), ks.a(i6, paramInt2, i5 << 16));
        return;
        i8 = paramInt2;
        i9 = paramInt1;
      }
      label748:
      i1 = 0;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      getChildAt(i1).getLayoutParams();
      i1 += 1;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      getChildAt(i1).getLayoutParams();
      i1 += 1;
    }
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i7 = getChildCount();
    int i4 = 0;
    int i3 = 0;
    int i1 = 0;
    int i2 = 0;
    label85:
    label102:
    int i5;
    if (i4 < i7)
    {
      paramView = (m)getChildAt(i4).getLayoutParams();
      if ((!paramView.g()) || (paramView.a() == null)) {
        break label200;
      }
      paramView = l;
      l[1] = 0;
      paramView[0] = 0;
      if (paramInt1 > 0)
      {
        i2 = Math.max(i2, l[0]);
        if (paramInt2 <= 0) {
          break label162;
        }
        i1 = Math.max(i1, l[1]);
        i5 = 1;
        i3 = i2;
        i2 = i1;
        i1 = i5;
      }
    }
    for (;;)
    {
      i5 = i4 + 1;
      i4 = i3;
      i3 = i1;
      i1 = i2;
      i2 = i4;
      i4 = i5;
      break;
      i2 = Math.min(i2, l[0]);
      break label85;
      label162:
      i1 = Math.min(i1, l[1]);
      break label102;
      paramArrayOfInt[0] = i2;
      paramArrayOfInt[1] = i1;
      if (i3 != 0) {
        a();
      }
      return;
      label200:
      i5 = i1;
      int i6 = i2;
      i1 = i3;
      i2 = i5;
      i3 = i6;
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    paramInt2 = 0;
    paramInt1 = 0;
    if (paramInt2 < paramInt3)
    {
      paramView = (m)getChildAt(paramInt2).getLayoutParams();
      if ((!paramView.g()) || (paramView.a() == null)) {
        break label60;
      }
      paramInt1 = 1;
    }
    label60:
    for (;;)
    {
      paramInt2 += 1;
      break;
      if (paramInt1 != 0) {
        a();
      }
      return;
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    x.a(paramInt);
    p = paramView1;
    q = paramView2;
    int i1 = getChildCount();
    paramInt = 0;
    while (paramInt < i1)
    {
      getChildAt(paramInt).getLayoutParams();
      paramInt += 1;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (o)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    paramParcelable = a;
    int i1 = 0;
    int i2 = getChildCount();
    while (i1 < i2)
    {
      Object localObject = getChildAt(i1);
      int i3 = ((View)localObject).getId();
      localObject = a((View)localObject).a();
      if ((i3 != -1) && (localObject != null)) {
        paramParcelable.get(i3);
      }
      i1 += 1;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    o localo = new o(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = getChildAt(i1);
      int i3 = ((View)localObject).getId();
      localObject = ((m)((View)localObject).getLayoutParams()).a();
      if ((i3 != -1) && (localObject != null))
      {
        localObject = ((aen)localObject).e();
        if (localObject != null) {
          localSparseArray.append(i3, localObject);
        }
      }
      i1 += 1;
    }
    a = localSparseArray;
    return localo;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    int i1 = getChildCount();
    paramInt = 0;
    while (paramInt < i1)
    {
      ((m)getChildAt(paramInt).getLayoutParams()).a(false);
      paramInt += 1;
    }
    return false;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    x.b();
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      paramView = (m)getChildAt(i1).getLayoutParams();
      if (paramView.g())
      {
        paramView.f();
        paramView.h();
      }
      i1 += 1;
    }
    p = null;
    q = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = jx.a(paramMotionEvent);
    boolean bool2;
    if (o == null)
    {
      bool2 = a(paramMotionEvent, 1);
      if (!bool2) {}
    }
    for (;;)
    {
      aen localaen = ((m)o.getLayoutParams()).a();
      boolean bool1;
      if (localaen != null) {
        bool1 = localaen.a(paramMotionEvent);
      }
      for (;;)
      {
        if (o == null)
        {
          bool1 |= super.onTouchEvent(paramMotionEvent);
          paramMotionEvent = null;
        }
        for (;;)
        {
          if (paramMotionEvent != null) {
            paramMotionEvent.recycle();
          }
          if ((i1 == 1) || (i1 == 3)) {
            f();
          }
          return bool1;
          if (bool2)
          {
            long l1 = SystemClock.uptimeMillis();
            paramMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
            super.onTouchEvent(paramMotionEvent);
          }
          else
          {
            paramMotionEvent = null;
          }
        }
        bool1 = false;
        continue;
        bool1 = false;
      }
      bool2 = false;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if (paramBoolean) {
      f();
    }
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    w = paramOnHierarchyChangeListener;
  }
}

/* Location:
 * Qualified Name:     k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */