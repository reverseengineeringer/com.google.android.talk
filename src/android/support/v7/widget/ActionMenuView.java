package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import tl;
import tm;
import tn;
import tp;
import ua;
import ub;
import vz;
import we;
import wl;
import wm;
import wn;
import wo;
import wp;
import ys;

public class ActionMenuView
  extends ys
  implements tn, ub
{
  public tm a;
  public wp b;
  private tl c;
  private Context d;
  private int e;
  private boolean f;
  private we g;
  private ua h;
  private boolean i;
  private int j;
  private int k;
  private int l;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(false);
    float f1 = getResourcesgetDisplayMetricsdensity;
    k = ((int)(56.0F * f1));
    l = ((int)(f1 * 4.0F));
    d = paramContext;
    e = 0;
  }
  
  public static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    wn localwn = (wn)paramView.getLayoutParams();
    int m = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.b())) {
        break label184;
      }
      paramInt4 = 1;
      label57:
      if ((paramInt2 <= 0) || ((paramInt4 != 0) && (paramInt2 < 2))) {
        break label190;
      }
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), m);
      int n = paramView.getMeasuredWidth();
      paramInt3 = n / paramInt1;
      paramInt2 = paramInt3;
      if (n % paramInt1 != 0) {
        paramInt2 = paramInt3 + 1;
      }
      paramInt3 = paramInt2;
      if (paramInt4 != 0)
      {
        paramInt3 = paramInt2;
        if (paramInt2 >= 2) {}
      }
    }
    label184:
    label190:
    for (paramInt3 = 2;; paramInt3 = 0)
    {
      boolean bool1 = bool2;
      if (!a)
      {
        bool1 = bool2;
        if (paramInt4 != 0) {
          bool1 = true;
        }
      }
      d = bool1;
      b = paramInt3;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), m);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }
  
  public wn a(AttributeSet paramAttributeSet)
  {
    return new wn(getContext(), paramAttributeSet);
  }
  
  public wn a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof wn)) {}
      for (paramLayoutParams = new wn((wn)paramLayoutParams);; paramLayoutParams = new wn(paramLayoutParams))
      {
        if (h <= 0) {
          h = 16;
        }
        return paramLayoutParams;
      }
    }
    return b();
  }
  
  public void a(int paramInt)
  {
    if (e != paramInt)
    {
      e = paramInt;
      if (paramInt == 0) {
        d = getContext();
      }
    }
    else
    {
      return;
    }
    d = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void a(tl paramtl)
  {
    c = paramtl;
  }
  
  public void a(ua paramua, tm paramtm)
  {
    h = paramua;
    a = paramtm;
  }
  
  public void a(we paramwe)
  {
    g = paramwe;
    g.a(this);
  }
  
  public void a(wp paramwp)
  {
    b = paramwp;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public boolean a()
  {
    return f;
  }
  
  public boolean a(tp paramtp)
  {
    return c.a(paramtp, 0);
  }
  
  protected wn b()
  {
    wn localwn = new wn();
    h = 16;
    return localwn;
  }
  
  protected boolean b(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof wl)) {
        bool1 = ((wl)localView1).e() | false;
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof wl))) {
      return ((wl)localView2).d() | bool1;
    }
    return bool1;
  }
  
  public wn c()
  {
    wn localwn = b();
    a = true;
    return localwn;
  }
  
  public boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof wn));
  }
  
  public Menu d()
  {
    we localwe;
    if (c == null)
    {
      localObject = getContext();
      c = new tl((Context)localObject);
      c.a(new wo(this));
      g = new we((Context)localObject);
      g.d();
      localwe = g;
      if (h == null) {
        break label108;
      }
    }
    label108:
    for (Object localObject = h;; localObject = new wm(this))
    {
      localwe.a((ua)localObject);
      c.a(g, d);
      g.a(this);
      return c;
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  public tl e()
  {
    return c;
  }
  
  public boolean f()
  {
    return (g != null) && (g.e());
  }
  
  public boolean g()
  {
    return (g != null) && (g.f());
  }
  
  public boolean h()
  {
    return (g != null) && (g.i());
  }
  
  public boolean i()
  {
    return (g != null) && (g.j());
  }
  
  public void j()
  {
    if (g != null) {
      g.g();
    }
  }
  
  public void k()
  {
    g.c(true);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    if (g != null)
    {
      g.b(false);
      if (g.i())
      {
        g.f();
        g.e();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    j();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!i)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i4 = getChildCount();
    int i3 = (paramInt4 - paramInt2) / 2;
    int i5 = m();
    paramInt2 = 0;
    int m = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    paramInt4 = 0;
    paramBoolean = vz.a(this);
    int n = 0;
    label68:
    View localView;
    wn localwn;
    int i1;
    int i6;
    int i2;
    label172:
    int i7;
    if (n < i4)
    {
      localView = getChildAt(n);
      if (localView.getVisibility() == 8) {
        break label681;
      }
      localwn = (wn)localView.getLayoutParams();
      if (a)
      {
        i1 = localView.getMeasuredWidth();
        paramInt4 = i1;
        if (b(n)) {
          paramInt4 = i1 + i5;
        }
        i6 = localView.getMeasuredHeight();
        if (paramBoolean)
        {
          i1 = getPaddingLeft();
          i1 = leftMargin + i1;
          i2 = i1 + paramInt4;
          i7 = i3 - i6 / 2;
          localView.layout(i1, i7, i2, i6 + i7);
          paramInt4 = m - paramInt4;
          i1 = 1;
          m = paramInt2;
          paramInt2 = i1;
        }
      }
    }
    for (;;)
    {
      i1 = n + 1;
      n = m;
      m = paramInt4;
      paramInt4 = paramInt2;
      paramInt2 = n;
      n = i1;
      break label68;
      i2 = getWidth() - getPaddingRight() - rightMargin;
      i1 = i2 - paramInt4;
      break label172;
      i2 = localView.getMeasuredWidth();
      i6 = leftMargin;
      i7 = rightMargin;
      b(n);
      i1 = paramInt2 + 1;
      m -= i7 + (i2 + i6);
      paramInt2 = paramInt4;
      paramInt4 = m;
      m = i1;
      continue;
      if ((i4 == 1) && (paramInt4 == 0))
      {
        localView = getChildAt(0);
        paramInt2 = localView.getMeasuredWidth();
        paramInt4 = localView.getMeasuredHeight();
        paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
        paramInt3 = i3 - paramInt4 / 2;
        localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
        return;
      }
      if (paramInt4 != 0)
      {
        paramInt1 = 0;
        label402:
        paramInt1 = paramInt2 - paramInt1;
        if (paramInt1 <= 0) {
          break label553;
        }
        paramInt1 = m / paramInt1;
        label415:
        paramInt3 = Math.max(0, paramInt1);
        if (!paramBoolean) {
          break label558;
        }
        paramInt1 = getWidth() - getPaddingRight();
        paramInt2 = 0;
        label438:
        if (paramInt2 < i4)
        {
          localView = getChildAt(paramInt2);
          localwn = (wn)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (a)) {
            break label678;
          }
          paramInt1 -= rightMargin;
          paramInt4 = localView.getMeasuredWidth();
          m = localView.getMeasuredHeight();
          n = i3 - m / 2;
          localView.layout(paramInt1 - paramInt4, n, paramInt1, m + n);
          paramInt1 -= leftMargin + paramInt4 + paramInt3;
        }
      }
      label553:
      label558:
      label565:
      label675:
      label678:
      for (;;)
      {
        paramInt2 += 1;
        break label438;
        break;
        paramInt1 = 1;
        break label402;
        paramInt1 = 0;
        break label415;
        paramInt1 = getPaddingLeft();
        paramInt2 = 0;
        if (paramInt2 < i4)
        {
          localView = getChildAt(paramInt2);
          localwn = (wn)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (a)) {
            break label675;
          }
          paramInt1 += leftMargin;
          paramInt4 = localView.getMeasuredWidth();
          m = localView.getMeasuredHeight();
          n = i3 - m / 2;
          localView.layout(paramInt1, n, paramInt1 + paramInt4, m + n);
          paramInt1 = rightMargin + paramInt4 + paramInt3 + paramInt1;
        }
        for (;;)
        {
          paramInt2 += 1;
          break label565;
          break;
        }
      }
      label681:
      i1 = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = m;
      m = i1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = i;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {}
    int m;
    int n;
    int i10;
    int i9;
    int i7;
    int i11;
    int i12;
    for (boolean bool1 = true;; bool1 = false)
    {
      i = bool1;
      if (bool2 != i) {
        j = 0;
      }
      m = View.MeasureSpec.getSize(paramInt1);
      if ((i) && (c != null) && (m != j))
      {
        j = m;
        c.b(true);
      }
      n = getChildCount();
      if ((!i) || (n <= 0)) {
        break label1304;
      }
      i10 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      i9 = View.MeasureSpec.getSize(paramInt2);
      m = getPaddingLeft();
      n = getPaddingRight();
      i7 = getPaddingTop() + getPaddingBottom();
      i11 = getChildMeasureSpec(paramInt2, i7, -2);
      i12 = paramInt1 - (m + n);
      paramInt1 = i12 / k;
      paramInt2 = k;
      if (paramInt1 != 0) {
        break;
      }
      setMeasuredDimension(i12, 0);
      return;
    }
    int i13 = k + i12 % paramInt2 / paramInt1;
    paramInt2 = 0;
    int i3 = 0;
    int i2 = 0;
    int i4 = 0;
    int i1 = 0;
    long l1 = 0L;
    int i14 = getChildCount();
    int i5 = 0;
    Object localObject;
    wn localwn;
    label351:
    label369:
    int i6;
    label407:
    label418:
    long l2;
    if (i5 < i14)
    {
      localObject = getChildAt(i5);
      if (((View)localObject).getVisibility() == 8) {
        break label1438;
      }
      bool1 = localObject instanceof ActionMenuItemView;
      i4 += 1;
      if (bool1) {
        ((View)localObject).setPadding(l, 0, l, 0);
      }
      localwn = (wn)((View)localObject).getLayoutParams();
      f = false;
      c = 0;
      b = 0;
      d = false;
      leftMargin = 0;
      rightMargin = 0;
      if ((bool1) && (((ActionMenuItemView)localObject).b()))
      {
        bool1 = true;
        e = bool1;
        if (!a) {
          break label512;
        }
        m = 1;
        i6 = a((View)localObject, i13, m, i11, i7);
        i3 = Math.max(i3, i6);
        if (!d) {
          break label1431;
        }
        m = i2 + 1;
        if (!a) {
          break label1424;
        }
        n = 1;
        paramInt1 -= i6;
        i2 = Math.max(paramInt2, ((View)localObject).getMeasuredHeight());
        if (i6 != 1) {
          break label1386;
        }
        l2 = 1 << i5;
        paramInt2 = i2;
        i1 = paramInt1;
        i2 = m;
        i6 = n;
        l1 = l2 | l1;
        paramInt1 = i4;
        n = i1;
        m = paramInt2;
        i1 = i6;
        paramInt2 = i3;
      }
    }
    for (;;)
    {
      i5 += 1;
      i4 = paramInt1;
      paramInt1 = n;
      i3 = paramInt2;
      paramInt2 = m;
      break;
      bool1 = false;
      break label351;
      label512:
      m = paramInt1;
      break label369;
      long l3;
      if ((i1 != 0) && (i4 == 2))
      {
        i6 = 1;
        m = 0;
        i5 = paramInt1;
        paramInt1 = m;
        l3 = l1;
        if (i2 <= 0) {
          break label863;
        }
        l3 = l1;
        if (i5 <= 0) {
          break label863;
        }
        m = Integer.MAX_VALUE;
        l2 = 0L;
        n = 0;
        i7 = 0;
        label573:
        if (i7 >= i14) {
          break label697;
        }
        localObject = (wn)getChildAt(i7).getLayoutParams();
        if (!d) {
          break label1371;
        }
        if (b >= m) {
          break label660;
        }
        n = b;
        l2 = 1 << i7;
        m = 1;
      }
      for (;;)
      {
        int i8 = i7 + 1;
        i7 = n;
        n = m;
        m = i7;
        i7 = i8;
        break label573;
        i6 = 0;
        break;
        label660:
        if (b == m)
        {
          l2 |= 1 << i7;
          i8 = n + 1;
          n = m;
          m = i8;
          continue;
          label697:
          l1 |= l2;
          l3 = l1;
          if (n <= i5)
          {
            n = 0;
            paramInt1 = i5;
            label721:
            if (n < i14)
            {
              localObject = getChildAt(n);
              localwn = (wn)((View)localObject).getLayoutParams();
              if ((1 << n & l2) == 0L)
              {
                if (b != m + 1) {
                  break label1368;
                }
                l1 |= 1 << n;
              }
            }
          }
          label863:
          label1029:
          label1032:
          label1140:
          label1208:
          label1211:
          label1214:
          label1304:
          label1362:
          label1368:
          for (;;)
          {
            n += 1;
            break label721;
            if ((i6 != 0) && (e) && (paramInt1 == 1)) {
              ((View)localObject).setPadding(l + i13, 0, l, 0);
            }
            b += 1;
            f = true;
            paramInt1 -= 1;
            continue;
            m = 1;
            i5 = paramInt1;
            paramInt1 = m;
            break;
            float f2;
            float f1;
            if ((i1 == 0) && (i4 == 1))
            {
              m = 1;
              if ((i5 <= 0) || (l3 == 0L) || ((i5 >= i4 - 1) && (m == 0) && (i3 <= 1))) {
                break label1211;
              }
              float f3 = Long.bitCount(l3);
              f2 = f3;
              if (m != 0) {
                break label1362;
              }
              f1 = f3;
              if ((1L & l3) != 0L)
              {
                f1 = f3;
                if (!getChildAt0getLayoutParamse) {
                  f1 = f3 - 0.5F;
                }
              }
              f2 = f1;
              if ((1 << i14 - 1 & l3) == 0L) {
                break label1362;
              }
              f2 = f1;
              if (getChildAt1getLayoutParamse) {
                break label1362;
              }
            }
            for (f1 -= 0.5F;; f1 = f2)
            {
              if (f1 > 0.0F)
              {
                m = (int)(i5 * i13 / f1);
                n = 0;
                i1 = paramInt1;
                if (n >= i14) {
                  break label1214;
                }
                if ((1 << n & l3) == 0L) {
                  break label1208;
                }
                localObject = getChildAt(n);
                localwn = (wn)((View)localObject).getLayoutParams();
                if (!(localObject instanceof ActionMenuItemView)) {
                  break label1140;
                }
                c = m;
                f = true;
                if ((n == 0) && (!e)) {
                  leftMargin = (-m / 2);
                }
                paramInt1 = 1;
              }
              for (;;)
              {
                n += 1;
                break label1032;
                m = 0;
                break;
                m = 0;
                break label1029;
                if (a)
                {
                  c = m;
                  f = true;
                  rightMargin = (-m / 2);
                  paramInt1 = 1;
                }
                else
                {
                  if (n != 0) {
                    leftMargin = (m / 2);
                  }
                  if (n != i14 - 1) {
                    rightMargin = (m / 2);
                  }
                }
              }
              i1 = paramInt1;
              if (i1 != 0)
              {
                paramInt1 = 0;
                while (paramInt1 < i14)
                {
                  localObject = getChildAt(paramInt1);
                  localwn = (wn)((View)localObject).getLayoutParams();
                  if (f)
                  {
                    m = b;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(c + m * i13, 1073741824), i11);
                  }
                  paramInt1 += 1;
                }
              }
              if (i10 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i12, paramInt2);
                return;
                m = 0;
                while (m < n)
                {
                  localObject = (wn)getChildAt(m).getLayoutParams();
                  rightMargin = 0;
                  leftMargin = 0;
                  m += 1;
                }
                super.onMeasure(paramInt1, paramInt2);
                return;
                paramInt2 = i9;
              }
            }
          }
        }
        else
        {
          label1371:
          i8 = m;
          m = n;
          n = i8;
        }
      }
      label1386:
      paramInt2 = i4;
      i1 = i3;
      i3 = i2;
      i4 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i1;
      i2 = m;
      i1 = n;
      m = i3;
      n = i4;
      continue;
      label1424:
      n = i1;
      break label418;
      label1431:
      m = i2;
      break label407;
      label1438:
      m = paramInt2;
      n = paramInt1;
      paramInt2 = i3;
      paramInt1 = i4;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */