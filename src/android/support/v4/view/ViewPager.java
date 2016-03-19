package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import jc;
import jf;
import jx;
import kh;
import ko;
import ks;
import lc;
import le;
import li;
import lm;
import ln;
import lo;
import lp;
import lq;
import lr;
import ls;
import lt;
import lu;
import lv;
import lw;
import lz;
import oz;

public class ViewPager
  extends ViewGroup
{
  public static final int[] a = { 16842931 };
  private static final lz ag = new lz();
  private static final Comparator<lq> e = new lm();
  private static final Interpolator f = new ln();
  private boolean A;
  private boolean B;
  private int C;
  private int D;
  private int E;
  private float F;
  private float G;
  private float H;
  private float I;
  private int J = -1;
  private VelocityTracker K;
  private int L;
  private int M;
  private int N;
  private int O;
  private boolean P;
  private oz Q;
  private oz R;
  private boolean S = true;
  private boolean T = false;
  private boolean U;
  private int V;
  private List<lt> W;
  private lt aa;
  private lt ab;
  private lu ac;
  private Method ad;
  private int ae;
  private ArrayList<View> af;
  private final Runnable ah = new lo(this);
  private int ai = 0;
  public kh b;
  public int c;
  private int d;
  private final ArrayList<lq> g = new ArrayList();
  private final lq h = new lq();
  private final Rect i = new Rect();
  private int j = -1;
  private Parcelable k = null;
  private ClassLoader l = null;
  private Scroller m;
  private lv n;
  private int o;
  private Drawable p;
  private int q;
  private int r;
  private float s = -3.4028235E38F;
  private float t = Float.MAX_VALUE;
  private int u;
  private int v;
  private boolean w;
  private boolean x;
  private boolean y;
  private int z = 1;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      left = paramView.getLeft();
      right = paramView.getRight();
      top = paramView.getTop();
      bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        left += paramView.getLeft();
        right += paramView.getRight();
        top += paramView.getTop();
        bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!g.isEmpty()))
    {
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingLeft();
      int i4 = getPaddingRight();
      f1 = getScrollX() / (paramInt2 - i3 - i4 + paramInt4);
      paramInt2 = (int)((paramInt1 - i1 - i2 + paramInt3) * f1);
      scrollTo(paramInt2, getScrollY());
      if (!m.isFinished())
      {
        paramInt3 = m.getDuration();
        paramInt4 = m.timePassed();
        locallq = f(c);
        m.startScroll(paramInt2, 0, (int)(e * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    lq locallq = f(c);
    if (locallq != null) {}
    for (float f1 = Math.min(e, t);; f1 = 0.0F)
    {
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      b(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    lq locallq = f(paramInt1);
    float f1;
    if (locallq != null) {
      f1 = h();
    }
    for (int i1 = (int)(Math.max(s, Math.min(e, t)) * f1);; i1 = 0)
    {
      if (paramBoolean1)
      {
        a(i1, paramInt2);
        if (paramBoolean2) {
          i(paramInt1);
        }
        return;
      }
      if (paramBoolean2) {
        i(paramInt1);
      }
      b(false);
      scrollTo(i1, 0);
      h(i1);
      return;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = jx.b(paramMotionEvent);
    if (jx.b(paramMotionEvent, i1) == J) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (i1 = 1;; i1 = 0)
    {
      F = jx.c(paramMotionEvent, i1);
      J = jx.b(paramMotionEvent, i1);
      if (K != null) {
        K.clear();
      }
      return;
    }
  }
  
  private void a(lq paramlq1, int paramInt, lq paramlq2)
  {
    int i3 = b.b();
    int i1 = h();
    if (i1 > 0) {}
    float f1;
    int i2;
    for (float f2 = o / i1;; f2 = 0.0F)
    {
      if (paramlq2 == null) {
        break label365;
      }
      i1 = b;
      if (i1 >= b) {
        break;
      }
      f1 = e + d + f2;
      i2 = 0;
      i1 += 1;
      if ((i1 > b) || (i2 >= g.size())) {
        break label365;
      }
      for (paramlq2 = (lq)g.get(i2); (i1 > b) && (i2 < g.size() - 1); paramlq2 = (lq)g.get(i2)) {
        i2 += 1;
      }
    }
    for (;;)
    {
      if (i1 < b)
      {
        i1 += 1;
        f1 = f2 + 1.0F + f1;
      }
      else
      {
        e = f1;
        f1 += d + f2;
        i1 += 1;
        break;
        if (i1 > b)
        {
          i2 = g.size();
          f1 = e;
          i2 -= 1;
          i1 -= 1;
          if ((i1 >= b) && (i2 >= 0)) {
            for (paramlq2 = (lq)g.get(i2); (i1 < b) && (i2 > 0); paramlq2 = (lq)g.get(i2)) {
              i2 -= 1;
            }
          }
        }
        for (;;)
        {
          if (i1 > b)
          {
            i1 -= 1;
            f1 -= f2 + 1.0F;
          }
          else
          {
            f1 -= d + f2;
            e = f1;
            i1 -= 1;
            break;
            label365:
            int i4 = g.size();
            float f3 = e;
            i1 = b - 1;
            if (b == 0)
            {
              f1 = e;
              s = f1;
              if (b != i3 - 1) {
                break label498;
              }
              f1 = e + d - 1.0F;
              label431:
              t = f1;
              i2 = paramInt - 1;
              f1 = f3;
            }
            for (;;)
            {
              if (i2 < 0) {
                break label551;
              }
              paramlq2 = (lq)g.get(i2);
              for (;;)
              {
                if (i1 > b)
                {
                  i1 -= 1;
                  f1 -= f2 + 1.0F;
                  continue;
                  f1 = -3.4028235E38F;
                  break;
                  label498:
                  f1 = Float.MAX_VALUE;
                  break label431;
                }
              }
              f1 -= d + f2;
              e = f1;
              if (b == 0) {
                s = f1;
              }
              i1 -= 1;
              i2 -= 1;
            }
            label551:
            f1 = e + d + f2;
            i2 = b + 1;
            i1 = paramInt + 1;
            paramInt = i2;
            while (i1 < i4)
            {
              paramlq1 = (lq)g.get(i1);
              while (paramInt < b)
              {
                paramInt += 1;
                f1 += f2 + 1.0F;
              }
              if (b == i3 - 1) {
                t = (d + f1 - 1.0F);
              }
              e = f1;
              f1 += d + f2;
              paramInt += 1;
              i1 += 1;
            }
            T = false;
            return;
          }
        }
      }
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (ai == 2) {}
    int i2;
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        c(false);
        m.abortAnimation();
        i2 = getScrollX();
        i3 = getScrollY();
        int i4 = m.getCurrX();
        int i5 = m.getCurrY();
        if ((i2 != i4) || (i3 != i5))
        {
          scrollTo(i4, i5);
          if (i4 != i2) {
            h(i4);
          }
        }
      }
      y = false;
      int i3 = 0;
      i2 = i1;
      i1 = i3;
      while (i1 < g.size())
      {
        lq locallq = (lq)g.get(i1);
        if (c)
        {
          c = false;
          i2 = 1;
        }
        i1 += 1;
      }
    }
    if (i2 != 0)
    {
      if (paramBoolean) {
        ks.a(this, ah);
      }
    }
    else {
      return;
    }
    ah.run();
  }
  
  private boolean b(float paramFloat)
  {
    int i2 = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = F;
    F = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int i3 = h();
    paramFloat = i3 * s;
    f1 = i3;
    float f3 = t;
    lq locallq1 = (lq)g.get(0);
    lq locallq2 = (lq)g.get(g.size() - 1);
    if (b != 0) {
      paramFloat = e * i3;
    }
    for (int i1 = 0;; i1 = 1)
    {
      if (b != b.b() - 1)
      {
        f1 = e * i3;
        i2 = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i1 != 0)
          {
            bool1 = Q.a(Math.abs(paramFloat - f2) / i3);
            f1 = paramFloat;
          }
        }
        for (;;)
        {
          F += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          h((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (i2 != 0) {
              bool1 = R.a(Math.abs(f2 - f1) / i3);
            }
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (x != paramBoolean) {
      x = paramBoolean;
    }
  }
  
  private int h()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private boolean h(int paramInt)
  {
    boolean bool = false;
    if (g.size() == 0)
    {
      U = false;
      a(0, 0.0F, 0);
      if (!U) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      lq locallq = l();
      int i2 = h();
      int i3 = o;
      float f1 = o / i2;
      int i1 = b;
      f1 = (paramInt / i2 - e) / (d + f1);
      paramInt = (int)((i3 + i2) * f1);
      U = false;
      a(i1, f1, paramInt);
      if (!U) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool = true;
    }
    return bool;
  }
  
  private void i()
  {
    if (ae != 0)
    {
      if (af == null) {
        af = new ArrayList();
      }
      for (;;)
      {
        int i2 = getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          View localView = getChildAt(i1);
          af.add(localView);
          i1 += 1;
        }
        af.clear();
      }
      Collections.sort(af, ag);
    }
  }
  
  private void i(int paramInt)
  {
    if (aa != null) {
      aa.a(paramInt);
    }
    if (W != null)
    {
      int i2 = W.size();
      int i1 = 0;
      while (i1 < i2)
      {
        lt locallt = (lt)W.get(i1);
        if (locallt != null) {
          locallt.a(paramInt);
        }
        i1 += 1;
      }
    }
    if (ab != null) {
      ab.a(paramInt);
    }
  }
  
  private boolean j()
  {
    J = -1;
    A = false;
    B = false;
    if (K != null)
    {
      K.recycle();
      K = null;
    }
    return Q.c() | R.c();
  }
  
  private void k()
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(true);
    }
  }
  
  private lq l()
  {
    int i1 = h();
    float f1;
    float f2;
    label36:
    float f4;
    float f3;
    int i3;
    int i2;
    Object localObject1;
    label53:
    Object localObject2;
    lq locallq;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0) {
        break label203;
      }
      f2 = o / i1;
      f4 = 0.0F;
      f3 = 0.0F;
      i3 = -1;
      i1 = 0;
      i2 = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i1 < g.size())
      {
        locallq = (lq)g.get(i1);
        if ((i2 != 0) || (b == i3 + 1)) {
          break label238;
        }
        locallq = h;
        e = (f4 + f3 + f2);
        b = (i3 + 1);
        d = 1.0F;
        i1 -= 1;
      }
    }
    label203:
    label208:
    label238:
    for (;;)
    {
      f3 = e;
      f4 = d;
      if (i2 == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3) {}
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i1 != g.size() - 1)) {
          break label208;
        }
        localObject2 = locallq;
      }
      return (lq)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      i3 = b;
      f4 = d;
      i2 = 0;
      i1 += 1;
      localObject1 = locallq;
      break label53;
    }
  }
  
  float a(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  lq a(View paramView)
  {
    int i1 = 0;
    while (i1 < g.size())
    {
      lq locallq = (lq)g.get(i1);
      if (b.a(paramView, a)) {
        return locallq;
      }
      i1 += 1;
    }
    return null;
  }
  
  void a()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    m = new Scroller(localContext, f);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f1 = getResourcesgetDisplayMetricsdensity;
    E = le.a.a(localViewConfiguration);
    L = ((int)(400.0F * f1));
    M = localViewConfiguration.getScaledMaximumFlingVelocity();
    Q = new oz(localContext);
    R = new oz(localContext);
    N = ((int)(25.0F * f1));
    O = ((int)(2.0F * f1));
    C = ((int)(16.0F * f1));
    ks.a(this, new ls(this));
    if (ks.a.n(this) == 0) {
      ks.c(this, 1);
    }
  }
  
  public void a(int paramInt)
  {
    int i4 = 0;
    if (ai == paramInt) {}
    label38:
    label73:
    label79:
    do
    {
      return;
      ai = paramInt;
      int i1;
      int i2;
      if (ac != null)
      {
        if (paramInt != 0)
        {
          i1 = 1;
          int i5 = getChildCount();
          i2 = 0;
          if (i2 >= i5) {
            break label79;
          }
          if (i1 == 0) {
            break label73;
          }
        }
        for (int i3 = 2;; i3 = 0)
        {
          ks.d(getChildAt(i2), i3);
          i2 += 1;
          break label38;
          i1 = 0;
          break;
        }
      }
      if (aa != null) {
        aa.b(paramInt);
      }
      if (W != null)
      {
        i2 = W.size();
        i1 = i4;
        while (i1 < i2)
        {
          lt locallt = (lt)W.get(i1);
          if (locallt != null) {
            locallt.b(paramInt);
          }
          i1 += 1;
        }
      }
    } while (ab == null);
    ab.b(paramInt);
  }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i1;
    int i2;
    int i7;
    int i5;
    Object localObject;
    int i3;
    int i4;
    label132:
    int i9;
    if (V > 0)
    {
      int i6 = getScrollX();
      i1 = getPaddingLeft();
      i2 = getPaddingRight();
      i7 = getWidth();
      int i8 = getChildCount();
      i5 = 0;
      if (i5 < i8)
      {
        localObject = getChildAt(i5);
        lr locallr = (lr)((View)localObject).getLayoutParams();
        if (!a) {
          break label559;
        }
        switch (b & 0x7)
        {
        case 2: 
        case 4: 
        default: 
          i3 = i1;
          i4 = i2;
          i2 = i1;
          i1 = i4;
          i9 = i3 + i6 - ((View)localObject).getLeft();
          i3 = i1;
          i4 = i2;
          if (i9 != 0)
          {
            ((View)localObject).offsetLeftAndRight(i9);
            i4 = i2;
            i3 = i1;
          }
          break;
        }
      }
    }
    for (;;)
    {
      i5 += 1;
      i1 = i4;
      i2 = i3;
      break;
      i3 = ((View)localObject).getWidth();
      i4 = i3 + i1;
      i3 = i1;
      i1 = i2;
      i2 = i4;
      break label132;
      i3 = Math.max((i7 - ((View)localObject).getMeasuredWidth()) / 2, i1);
      i4 = i1;
      i1 = i2;
      i2 = i4;
      break label132;
      i3 = i7 - i2 - ((View)localObject).getMeasuredWidth();
      i9 = ((View)localObject).getMeasuredWidth();
      i4 = i1;
      i1 = i2 + i9;
      i2 = i4;
      break label132;
      if (aa != null) {
        aa.a(paramInt1, paramFloat, paramInt2);
      }
      if (W != null)
      {
        i2 = W.size();
        i1 = 0;
        while (i1 < i2)
        {
          localObject = (lt)W.get(i1);
          if (localObject != null) {
            ((lt)localObject).a(paramInt1, paramFloat, paramInt2);
          }
          i1 += 1;
        }
      }
      if (ab != null) {
        ab.a(paramInt1, paramFloat, paramInt2);
      }
      if (ac != null)
      {
        paramInt2 = getScrollX();
        i1 = getChildCount();
        paramInt1 = 0;
        if (paramInt1 < i1)
        {
          localObject = getChildAt(paramInt1);
          if (!getLayoutParamsa)
          {
            paramFloat = (((View)localObject).getLeft() - paramInt2) / h();
            if ((paramFloat >= 0.0F) && (paramFloat < 1.0F)) {
              break label500;
            }
            ((View)localObject).setTranslationX(0.0F);
            ((View)localObject).setAlpha(1.0F);
            ((View)localObject).setScaleX(1.0F);
            ((View)localObject).setScaleY(1.0F);
          }
          for (;;)
          {
            paramInt1 += 1;
            break;
            label500:
            ((View)localObject).setTranslationX(-paramFloat * ((View)localObject).getWidth());
            ((View)localObject).setAlpha(Math.max(0.0F, 1.0F - paramFloat));
            paramFloat = Math.max(0.0F, 1.0F - paramFloat * 0.3F);
            ((View)localObject).setScaleX(paramFloat);
            ((View)localObject).setScaleY(paramFloat);
          }
        }
      }
      U = true;
      return;
      label559:
      i3 = i2;
      i4 = i1;
    }
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0)
    {
      c(false);
      return;
    }
    int i1 = getScrollX();
    int i2 = getScrollY();
    int i3 = paramInt1 - i1;
    int i4 = 0 - i2;
    if ((i3 == 0) && (i4 == 0))
    {
      b(false);
      e();
      a(0);
      return;
    }
    c(true);
    a(2);
    paramInt1 = h();
    int i5 = paramInt1 / 2;
    float f3 = Math.min(1.0F, Math.abs(i3) * 1.0F / paramInt1);
    float f1 = i5;
    float f2 = i5;
    f3 = a(f3);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt2)) * 4;; paramInt1 = (int)((Math.abs(i3) / (f1 + o) + 1.0F) * 100.0F))
    {
      paramInt1 = Math.min(paramInt1, 600);
      m.startScroll(i1, i2, i3, i4, paramInt1);
      ks.a.m(this);
      return;
      f1 = paramInt1;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    y = false;
    a(paramInt, paramBoolean, false);
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((b == null) || (b.b() <= 0))
    {
      c(false);
      return;
    }
    if ((!paramBoolean2) && (c == paramInt1) && (g.size() != 0))
    {
      c(false);
      return;
    }
    int i1;
    if (paramInt1 < 0) {
      i1 = 0;
    }
    for (;;)
    {
      paramInt1 = z;
      if ((i1 <= c + paramInt1) && (i1 >= c - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < g.size())
      {
        g.get(paramInt1)).c = true;
        paramInt1 += 1;
      }
      i1 = paramInt1;
      if (paramInt1 >= b.b()) {
        i1 = b.b() - 1;
      }
    }
    paramBoolean2 = bool;
    if (c != i1) {
      paramBoolean2 = true;
    }
    if (S)
    {
      c = i1;
      if (paramBoolean2) {
        i(i1);
      }
      requestLayout();
      return;
    }
    e(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  public void a(kh paramkh)
  {
    if (b != null)
    {
      b.b(n);
      int i1 = 0;
      while (i1 < g.size())
      {
        lq locallq = (lq)g.get(i1);
        b.a(this, b, a);
        i1 += 1;
      }
      b.a();
      g.clear();
      int i2;
      for (i1 = 0; i1 < getChildCount(); i1 = i2 + 1)
      {
        i2 = i1;
        if (!getChildAtgetLayoutParamsa)
        {
          removeViewAt(i1);
          i2 = i1 - 1;
        }
      }
      c = 0;
      scrollTo(0, 0);
    }
    b = paramkh;
    d = 0;
    boolean bool;
    if (b != null)
    {
      if (n == null) {
        n = new lv(this);
      }
      b.a(n);
      y = false;
      bool = S;
      S = true;
      d = b.b();
      if (j >= 0)
      {
        a(j, false, true);
        j = -1;
        k = null;
        l = null;
      }
    }
    else
    {
      return;
    }
    if (!bool)
    {
      e();
      return;
    }
    requestLayout();
  }
  
  @Deprecated
  public void a(lt paramlt)
  {
    aa = paramlt;
  }
  
  public void a(lu paramlu)
  {
    int i2 = 0;
    if (Build.VERSION.SDK_INT >= 11) {
      if (ac == null) {
        break label50;
      }
    }
    label50:
    for (int i1 = 1;; i1 = 0)
    {
      if (1 != i1) {
        i2 = 1;
      }
      ac = paramlu;
      a(true);
      ae = 2;
      if (i2 != 0) {
        e();
      }
      return;
    }
  }
  
  void a(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (ad == null)) {}
    try
    {
      ad = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          ad.invoke(this, new Object[] { Boolean.valueOf(true) });
          return;
        }
        catch (Exception localException)
        {
          Log.e("ViewPager", "Error changing children drawing order", localException);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
      }
    }
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return g(17);
        return g(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (jc.a.b(paramKeyEvent.getMetaState())) {
        return g(2);
      }
    } while (!jc.a.a(paramKeyEvent.getMetaState(), 1));
    return g(1);
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      i1 = localViewGroup.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = localViewGroup.getChildAt(i1);
        if ((paramInt2 + i2 < localView.getLeft()) || (paramInt2 + i2 >= localView.getRight()) || (paramInt3 + i3 < localView.getTop()) || (paramInt3 + i3 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i2 - localView.getLeft(), paramInt3 + i3 - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (ks.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i2 = paramArrayList.size();
    int i3 = getDescendantFocusability();
    if (i3 != 393216)
    {
      int i1 = 0;
      while (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (localView.getVisibility() == 0)
        {
          lq locallq = a(localView);
          if ((locallq != null) && (b == c)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i1 += 1;
      }
    }
    if (((i3 == 262144) && (i2 != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        lq locallq = a(localView);
        if ((locallq != null) && (b == c)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i1 += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      lr locallr = (lr)paramLayoutParams;
      a |= paramView instanceof lp;
      if (w)
      {
        if ((locallr != null) && (a)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        d = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  public kh b()
  {
    return b;
  }
  
  lq b(int paramInt1, int paramInt2)
  {
    lq locallq = new lq();
    b = paramInt1;
    a = b.a(this, paramInt1);
    d = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= g.size()))
    {
      g.add(locallq);
      return locallq;
    }
    g.add(paramInt2, locallq);
    return locallq;
  }
  
  lq b(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return a(paramView);
  }
  
  public void b(int paramInt)
  {
    y = false;
    if (!S) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }
  
  public void b(lt paramlt)
  {
    if (W == null) {
      W = new ArrayList();
    }
    W.add(paramlt);
  }
  
  public int c()
  {
    return c;
  }
  
  public void c(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt <= 0)
    {
      new StringBuilder("Requested offscreen page limit ").append(paramInt).append(" too small; defaulting to 1");
      i1 = 1;
    }
    if (i1 != z)
    {
      z = i1;
      e();
    }
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    if (b == null) {}
    int i1;
    int i2;
    do
    {
      do
      {
        return false;
        i1 = h();
        i2 = getScrollX();
        if (paramInt >= 0) {
          break;
        }
      } while (i2 <= (int)(i1 * s));
      return true;
    } while ((paramInt <= 0) || (i2 >= (int)(i1 * t)));
    return true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof lr)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!m.isFinished()) && (m.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = m.getCurrX();
      int i4 = m.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!h(i3))
        {
          m.abortAnimation();
          scrollTo(0, i4);
        }
      }
      ks.a.m(this);
      return;
    }
    b(true);
  }
  
  public void d()
  {
    int i7 = b.b();
    d = i7;
    int i1;
    int i2;
    int i3;
    int i5;
    int i4;
    label67:
    Object localObject;
    if ((g.size() < (z << 1) + 1) && (g.size() < i7))
    {
      i1 = 1;
      i2 = c;
      i3 = 0;
      i5 = 0;
      i4 = i1;
      i1 = i2;
      i2 = i3;
      i3 = i5;
      if (i3 >= g.size()) {
        break label270;
      }
      localObject = (lq)g.get(i3);
      i5 = b.c(a);
      if (i5 == -1) {
        break label354;
      }
      if (i5 != -2) {
        break label218;
      }
      g.remove(i3);
      i4 = i3 - 1;
      i3 = i2;
      if (i2 == 0) {
        i3 = 1;
      }
      b.a(this, b, a);
      if (c != b) {
        break label375;
      }
      i2 = Math.max(0, Math.min(c, i7 - 1));
      i1 = i3;
      i3 = 1;
    }
    for (;;)
    {
      i5 = i3;
      int i6 = i2;
      i3 = i4 + 1;
      i2 = i1;
      i1 = i6;
      i4 = i5;
      break label67;
      i1 = 0;
      break;
      label218:
      if (b != i5)
      {
        if (b == c) {
          i1 = i5;
        }
        b = i5;
        i5 = i1;
        i6 = 1;
        i4 = i3;
        i1 = i2;
        i2 = i5;
        i3 = i6;
        continue;
        label270:
        if (i2 != 0) {
          b.a();
        }
        Collections.sort(g, e);
        if (i4 != 0)
        {
          i3 = getChildCount();
          i2 = 0;
          while (i2 < i3)
          {
            localObject = (lr)getChildAt(i2).getLayoutParams();
            if (!a) {
              c = 0.0F;
            }
            i2 += 1;
          }
          a(i1, false, true);
          requestLayout();
        }
      }
      else
      {
        label354:
        i5 = i1;
        i6 = i4;
        i4 = i3;
        i1 = i2;
        i2 = i5;
        i3 = i6;
        continue;
        label375:
        i2 = i1;
        i5 = 1;
        i1 = i3;
        i3 = i5;
      }
    }
  }
  
  public void d(int paramInt)
  {
    int i1 = o;
    o = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i1 >= i2) {
        break;
      }
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        lq locallq = a(localView);
        if ((locallq != null) && (b == c) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i1 += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i3 = 0;
    int i1 = 0;
    int i4 = ks.a.a(this);
    boolean bool;
    if ((i4 == 0) || ((i4 == 1) && (b != null) && (b.b() > 1)))
    {
      int i2;
      if (!Q.a())
      {
        i3 = paramCanvas.save();
        i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        i4 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), s * i4);
        Q.a(i1, i4);
        i2 = Q.a(paramCanvas) | false;
        paramCanvas.restoreToCount(i3);
      }
      i3 = i2;
      if (!R.a())
      {
        i4 = paramCanvas.save();
        i3 = getWidth();
        int i5 = getHeight();
        int i6 = getPaddingTop();
        int i7 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(t + 1.0F) * i3);
        R.a(i5 - i6 - i7, i3);
        bool = i2 | R.a(paramCanvas);
        paramCanvas.restoreToCount(i4);
      }
    }
    for (;;)
    {
      if (bool) {
        ks.a.m(this);
      }
      return;
      Q.b();
      R.b();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = p;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public void e()
  {
    e(c);
  }
  
  void e(int paramInt)
  {
    int i1;
    Object localObject2;
    if (c != paramInt) {
      if (c < paramInt)
      {
        i1 = 66;
        localObject2 = f(c);
        c = paramInt;
      }
    }
    for (int i2 = i1;; i2 = 2)
    {
      if (b == null) {
        i();
      }
      do
      {
        return;
        i1 = 17;
        break;
        if (y)
        {
          i();
          return;
        }
      } while (getWindowToken() == null);
      paramInt = z;
      int i8 = Math.max(0, c - paramInt);
      int i6 = b.b();
      int i7 = Math.min(i6 - 1, paramInt + c);
      Object localObject1;
      if (i6 != d) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + d + ", found: " + i6 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + b.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      if (paramInt < g.size())
      {
        localObject1 = (lq)g.get(paramInt);
        if (b >= c) {
          if (b != c) {
            break label1254;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (i6 > 0)) {}
        for (Object localObject3 = b(c, paramInt);; localObject3 = localObject1)
        {
          label333:
          int i9;
          float f2;
          label346:
          float f3;
          int i3;
          label368:
          float f1;
          if (localObject3 != null)
          {
            int i5 = paramInt - 1;
            int i4;
            Object localObject4;
            if (i5 >= 0)
            {
              localObject1 = (lq)g.get(i5);
              i9 = h();
              if (i9 > 0) {
                break label530;
              }
              f2 = 0.0F;
              i1 = c;
              f3 = 0.0F;
              i4 = i1 - 1;
              i3 = paramInt;
              localObject4 = localObject1;
              if (i4 < 0) {
                break label680;
              }
              if ((f3 < f2) || (i4 >= i8)) {
                break label560;
              }
              if (localObject4 == null) {
                break label680;
              }
              localObject1 = localObject4;
              paramInt = i5;
              f1 = f3;
              i1 = i3;
              if (i4 == b)
              {
                localObject1 = localObject4;
                paramInt = i5;
                f1 = f3;
                i1 = i3;
                if (!c)
                {
                  g.remove(i5);
                  b.a(this, i4, a);
                  paramInt = i5 - 1;
                  i1 = i3 - 1;
                  if (paramInt < 0) {
                    break label551;
                  }
                  localObject1 = (lq)g.get(paramInt);
                  f1 = f3;
                }
              }
            }
            for (;;)
            {
              i4 -= 1;
              localObject4 = localObject1;
              i5 = paramInt;
              f3 = f1;
              i3 = i1;
              break label368;
              paramInt += 1;
              break;
              localObject1 = null;
              break label333;
              label530:
              f2 = 2.0F - d + getPaddingLeft() / i9;
              break label346;
              label551:
              localObject1 = null;
              f1 = f3;
              continue;
              label560:
              if ((localObject4 != null) && (i4 == b))
              {
                f1 = f3 + d;
                paramInt = i5 - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (lq)g.get(paramInt);
                  i1 = i3;
                }
                else
                {
                  localObject1 = null;
                  i1 = i3;
                }
              }
              else
              {
                f1 = f3 + b1d;
                i1 = i3 + 1;
                if (i5 >= 0)
                {
                  localObject1 = (lq)g.get(i5);
                  paramInt = i5;
                }
                else
                {
                  localObject1 = null;
                  paramInt = i5;
                }
              }
            }
            label680:
            f1 = d;
            paramInt = i3 + 1;
            if (f1 < 2.0F) {
              if (paramInt < g.size())
              {
                localObject1 = (lq)g.get(paramInt);
                label721:
                if (i9 > 0) {
                  break label846;
                }
                f2 = 0.0F;
                label728:
                i1 = c;
                i1 += 1;
                label740:
                if (i1 >= i6) {
                  break label989;
                }
                if ((f1 < f2) || (i1 <= i7)) {
                  break label867;
                }
                if (localObject1 == null) {
                  break label989;
                }
                if ((i1 != b) || (c)) {
                  break label1244;
                }
                g.remove(paramInt);
                b.a(this, i1, a);
                if (paramInt >= g.size()) {
                  break label861;
                }
                localObject1 = (lq)g.get(paramInt);
              }
            }
          }
          label846:
          label861:
          label867:
          label989:
          label1236:
          label1242:
          label1244:
          for (;;)
          {
            i1 += 1;
            break label740;
            localObject1 = null;
            break label721;
            f2 = getPaddingRight() / i9 + 2.0F;
            break label728;
            localObject1 = null;
            continue;
            if ((localObject1 != null) && (i1 == b))
            {
              f3 = d;
              paramInt += 1;
              if (paramInt < g.size()) {}
              for (localObject1 = (lq)g.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = b(i1, paramInt);
            paramInt += 1;
            f3 = d;
            if (paramInt < g.size()) {}
            for (localObject1 = (lq)g.get(paramInt);; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            a((lq)localObject3, i3, (lq)localObject2);
            localObject2 = b;
            if (localObject3 != null) {}
            for (localObject1 = a;; localObject1 = null)
            {
              ((kh)localObject2).a(localObject1);
              b.a();
              i1 = getChildCount();
              paramInt = 0;
              while (paramInt < i1)
              {
                localObject2 = getChildAt(paramInt);
                localObject1 = (lr)((View)localObject2).getLayoutParams();
                f = paramInt;
                if ((!a) && (c == 0.0F))
                {
                  localObject2 = a((View)localObject2);
                  if (localObject2 != null)
                  {
                    c = d;
                    e = b;
                  }
                }
                paramInt += 1;
              }
            }
            i();
            if (!hasFocus()) {
              break;
            }
            localObject1 = findFocus();
            if (localObject1 != null) {}
            for (localObject1 = b((View)localObject1);; localObject1 = null)
            {
              if ((localObject1 != null) && (b == c)) {
                break label1242;
              }
              paramInt = 0;
              for (;;)
              {
                if (paramInt >= getChildCount()) {
                  break label1236;
                }
                localObject1 = getChildAt(paramInt);
                localObject2 = a((View)localObject1);
                if ((localObject2 != null) && (b == c) && (((View)localObject1).requestFocus(i2))) {
                  break;
                }
                paramInt += 1;
              }
              break;
            }
            break;
          }
        }
        label1254:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  lq f(int paramInt)
  {
    int i1 = 0;
    while (i1 < g.size())
    {
      lq locallq = (lq)g.get(i1);
      if (b == paramInt) {
        return locallq;
      }
      i1 += 1;
    }
    return null;
  }
  
  boolean f()
  {
    if (c > 0)
    {
      a(c - 1, true);
      return true;
    }
    return false;
  }
  
  boolean g()
  {
    if ((b != null) && (c < b.b() - 1))
    {
      a(c + 1, true);
      return true;
    }
    return false;
  }
  
  public boolean g(int paramInt)
  {
    View localView = findFocus();
    Object localObject;
    int i2;
    boolean bool;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label317;
      }
      if (paramInt != 17) {
        break label263;
      }
      i1 = ai, localView).left;
      i2 = ai, (View)localObject).left;
      if ((localObject != null) && (i1 >= i2))
      {
        bool = f();
        label89:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label363;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label370;
      }
      if (localObject != this) {}
    }
    label263:
    label317:
    label357:
    label363:
    label370:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label89;
        if (paramInt == 66)
        {
          i1 = ai, localView).left;
          i2 = ai, (View)localObject).left;
          if ((localObject == null) || (i1 > i2))
          {
            bool = localView.requestFocus();
            break label89;
            if ((paramInt == 17) || (paramInt == 1))
            {
              bool = f();
              break label89;
            }
            if ((paramInt != 66) && (paramInt != 2)) {
              break label357;
            }
          }
          bool = g();
          break label89;
        }
        bool = false;
        break label89;
      }
      localObject = localView;
      break;
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new lr();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new lr(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (ae == 2) {
      i1 = paramInt1 - 1 - paramInt2;
    }
    return af.get(i1)).getLayoutParams()).f;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    S = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(ah);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((o > 0) && (p != null) && (g.size() > 0) && (b != null))
    {
      int i3 = getScrollX();
      int i4 = getWidth();
      float f3 = o / i4;
      Object localObject = (lq)g.get(0);
      float f1 = e;
      int i5 = g.size();
      int i1 = b;
      int i6 = g.get(i5 - 1)).b;
      int i2 = 0;
      if (i1 < i6)
      {
        while ((i1 > b) && (i2 < i5))
        {
          localObject = g;
          i2 += 1;
          localObject = (lq)((ArrayList)localObject).get(i2);
        }
        float f2;
        if (i1 == b) {
          f2 = (e + d) * i4;
        }
        for (f1 = e + d + f3;; f1 += 1.0F + f3)
        {
          if (o + f2 > i3)
          {
            p.setBounds((int)f2, q, (int)(o + f2 + 0.5F), r);
            p.draw(paramCanvas);
          }
          if (f2 > i3 + i4) {
            return;
          }
          i1 += 1;
          break;
          f2 = (1.0F + f1) * i4;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if ((i1 == 3) || (i1 == 1)) {
      j();
    }
    do
    {
      return false;
      if (i1 == 0) {
        break;
      }
      if (A) {
        return true;
      }
    } while (B);
    switch (i1)
    {
    }
    for (;;)
    {
      if (K == null) {
        K = VelocityTracker.obtain();
      }
      K.addMovement(paramMotionEvent);
      return A;
      i1 = J;
      if (i1 != -1)
      {
        i1 = jx.a(paramMotionEvent, i1);
        float f2 = jx.c(paramMotionEvent, i1);
        float f1 = f2 - F;
        float f4 = Math.abs(f1);
        float f3 = jx.d(paramMotionEvent, i1);
        float f5 = Math.abs(f3 - I);
        if (f1 != 0.0F)
        {
          float f6 = F;
          if (((f6 < D) && (f1 > 0.0F)) || ((f6 > getWidth() - D) && (f1 < 0.0F))) {}
          for (i1 = 1; (i1 == 0) && (a(this, false, (int)f1, (int)f2, (int)f3)); i1 = 0)
          {
            F = f2;
            G = f3;
            B = true;
            return false;
          }
        }
        if ((f4 > E) && (0.5F * f4 > f5))
        {
          A = true;
          k();
          a(1);
          if (f1 > 0.0F)
          {
            f1 = H + E;
            label328:
            F = f1;
            G = f3;
            c(true);
          }
        }
        while ((A) && (b(f2)))
        {
          ks.a.m(this);
          break;
          f1 = H - E;
          break label328;
          if (f5 > E) {
            B = true;
          }
        }
        f1 = paramMotionEvent.getX();
        H = f1;
        F = f1;
        f1 = paramMotionEvent.getY();
        I = f1;
        G = f1;
        J = jx.b(paramMotionEvent, 0);
        B = false;
        m.computeScrollOffset();
        if ((ai == 2) && (Math.abs(m.getFinalX() - m.getCurrX()) > O))
        {
          m.abortAnimation();
          y = false;
          e();
          A = true;
          k();
          a(1);
        }
        else
        {
          b(false);
          A = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i6 = getChildCount();
    int i8 = paramInt3 - paramInt1;
    int i7 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i1 = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i9 = getScrollX();
    int i2 = 0;
    int i4 = 0;
    View localView;
    lr locallr;
    int i10;
    int i3;
    label154:
    int i5;
    if (i4 < i6)
    {
      localView = getChildAt(i4);
      if (localView.getVisibility() == 8) {
        break label671;
      }
      locallr = (lr)localView.getLayoutParams();
      if (!a) {
        break label671;
      }
      paramInt4 = b;
      i10 = b;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt2;
        i3 = paramInt2;
        switch (i10 & 0x70)
        {
        default: 
          i5 = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = i5;
          label204:
          paramInt4 += i9;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          i2 += 1;
          paramInt4 = i1;
          paramInt3 = i3;
          i1 = paramInt1;
          paramInt1 = i2;
        }
        break;
      }
    }
    for (;;)
    {
      i4 += 1;
      i3 = paramInt3;
      i2 = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i1;
      i1 = paramInt4;
      paramInt2 = i3;
      break;
      i3 = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      i3 += paramInt2;
      break label154;
      paramInt4 = Math.max((i8 - localView.getMeasuredWidth()) / 2, paramInt2);
      i3 = paramInt2;
      break label154;
      i3 = localView.getMeasuredWidth();
      paramInt4 = i1 + localView.getMeasuredWidth();
      i5 = i8 - i1 - i3;
      i1 = paramInt4;
      i3 = paramInt2;
      paramInt4 = i5;
      break label154;
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      i5 += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i5;
      break label204;
      i5 = Math.max((i7 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i5;
      break label204;
      i5 = i7 - paramInt3 - localView.getMeasuredHeight();
      i10 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i10;
      paramInt3 = i5;
      break label204;
      i1 = i8 - paramInt2 - i1;
      paramInt4 = 0;
      while (paramInt4 < i6)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          locallr = (lr)localView.getLayoutParams();
          if (!a)
          {
            lq locallq = a(localView);
            if (locallq != null)
            {
              float f1 = i1;
              i3 = (int)(e * f1) + paramInt2;
              if (d)
              {
                d = false;
                f1 = i1;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f1), 1073741824), View.MeasureSpec.makeMeasureSpec(i7 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(i3, paramInt1, localView.getMeasuredWidth() + i3, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      q = paramInt1;
      r = (i7 - paramInt3);
      V = i2;
      if (S) {
        a(c, false, 0, false);
      }
      S = false;
      return;
      label671:
      paramInt4 = i2;
      i2 = paramInt1;
      i3 = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i1;
      i1 = paramInt3;
      paramInt2 = i2;
      paramInt3 = i3;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    D = Math.min(paramInt1 / 10, C);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i9 = getChildCount();
    int i3 = 0;
    View localView;
    int i1;
    int i2;
    lr locallr;
    int i4;
    int i6;
    label183:
    int i5;
    if (i3 < i9)
    {
      localView = getChildAt(i3);
      i1 = paramInt1;
      i2 = paramInt2;
      if (localView.getVisibility() != 8)
      {
        locallr = (lr)localView.getLayoutParams();
        i1 = paramInt1;
        i2 = paramInt2;
        if (locallr != null)
        {
          i1 = paramInt1;
          i2 = paramInt2;
          if (a)
          {
            i1 = b & 0x7;
            i4 = b & 0x70;
            i6 = Integer.MIN_VALUE;
            i2 = Integer.MIN_VALUE;
            if ((i4 != 48) && (i4 != 80)) {
              break label333;
            }
            i4 = 1;
            if ((i1 != 3) && (i1 != 5)) {
              break label339;
            }
            i5 = 1;
            label198:
            if (i4 == 0) {
              break label345;
            }
            i1 = 1073741824;
            label208:
            if (width == -2) {
              break label528;
            }
            i6 = 1073741824;
            if (width == -1) {
              break label522;
            }
            i1 = width;
          }
        }
      }
    }
    for (;;)
    {
      int i8;
      if (height != -2)
      {
        i7 = 1073741824;
        i2 = i7;
        if (height != -1)
        {
          i8 = height;
          i2 = i7;
        }
      }
      for (int i7 = i8;; i7 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i1, i6), View.MeasureSpec.makeMeasureSpec(i7, i2));
        if (i4 != 0)
        {
          i2 = paramInt2 - localView.getMeasuredHeight();
          i1 = paramInt1;
        }
        for (;;)
        {
          i3 += 1;
          paramInt1 = i1;
          paramInt2 = i2;
          break;
          label333:
          i4 = 0;
          break label183;
          label339:
          i5 = 0;
          break label198;
          label345:
          i1 = i6;
          if (i5 == 0) {
            break label208;
          }
          i2 = 1073741824;
          i1 = i6;
          break label208;
          i1 = paramInt1;
          i2 = paramInt2;
          if (i5 != 0)
          {
            i1 = paramInt1 - localView.getMeasuredWidth();
            i2 = paramInt2;
          }
        }
        u = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        v = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        w = true;
        e();
        w = false;
        i1 = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            locallr = (lr)localView.getLayoutParams();
            if ((locallr == null) || (!a))
            {
              float f1 = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f1), 1073741824), v);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i1 = paramInt1;
      continue;
      label528:
      i6 = i1;
      i1 = paramInt1;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i3 = -1;
    int i2 = getChildCount();
    int i1;
    if ((paramInt & 0x2) != 0)
    {
      i3 = 1;
      i1 = 0;
    }
    while (i1 != i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        lq locallq = a(localView);
        if ((locallq != null) && (b == c) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i1 = i2 - 1;
          i2 = -1;
          continue;
        }
      }
      i1 += i3;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof lw))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (lw)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (b != null)
    {
      Object localObject = b;
      localObject = c;
      a(a, false, true);
      return;
    }
    j = a;
    k = b;
    l = c;
  }
  
  public Parcelable onSaveInstanceState()
  {
    lw locallw = new lw(super.onSaveInstanceState());
    a = c;
    if (b != null) {
      b = null;
    }
    return locallw;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      a(paramInt1, paramInt3, o, o);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if (P) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((b == null) || (b.b() == 0)) {
      return false;
    }
    if (K == null) {
      K = VelocityTracker.obtain();
    }
    K.addMovement(paramMotionEvent);
    boolean bool1 = bool2;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      bool1 = bool2;
    }
    for (;;)
    {
      if (bool1) {
        ks.a.m(this);
      }
      return true;
      m.abortAnimation();
      y = false;
      e();
      float f1 = paramMotionEvent.getX();
      H = f1;
      F = f1;
      f1 = paramMotionEvent.getY();
      I = f1;
      G = f1;
      J = jx.b(paramMotionEvent, 0);
      bool1 = bool2;
      continue;
      int i1;
      float f2;
      if (!A)
      {
        i1 = jx.a(paramMotionEvent, J);
        if (i1 == -1)
        {
          bool1 = j();
          continue;
        }
        f1 = jx.c(paramMotionEvent, i1);
        float f3 = Math.abs(f1 - F);
        f2 = jx.d(paramMotionEvent, i1);
        float f4 = Math.abs(f2 - G);
        if ((f3 > E) && (f3 > f4))
        {
          A = true;
          k();
          if (f1 - H <= 0.0F) {
            break label395;
          }
        }
      }
      Object localObject;
      label395:
      for (f1 = H + E;; f1 = H - E)
      {
        F = f1;
        G = f2;
        a(1);
        c(true);
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
        bool1 = bool2;
        if (!A) {
          break;
        }
        bool1 = b(jx.c(paramMotionEvent, jx.a(paramMotionEvent, J))) | false;
        break;
      }
      bool1 = bool2;
      if (A)
      {
        localObject = K;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, M);
        int i3 = (int)ko.a((VelocityTracker)localObject, J);
        y = true;
        int i2 = h();
        int i4 = getScrollX();
        localObject = l();
        i1 = b;
        f2 = (i4 / i2 - e) / d;
        if ((Math.abs((int)(jx.c(paramMotionEvent, jx.a(paramMotionEvent, J)) - H)) > N) && (Math.abs(i3) > L))
        {
          if (i3 > 0) {}
          for (;;)
          {
            i2 = i1;
            if (g.size() > 0)
            {
              paramMotionEvent = (lq)g.get(0);
              localObject = (lq)g.get(g.size() - 1);
              i2 = Math.max(b, Math.min(i1, b));
            }
            a(i2, true, true, i3);
            bool1 = j();
            break;
            i1 += 1;
          }
        }
        if (i1 >= c) {}
        for (f1 = 0.4F;; f1 = 0.6F)
        {
          i1 = (int)(i1 + f2 + f1);
          break;
        }
        bool1 = bool2;
        if (A)
        {
          a(c, true, 0, false);
          bool1 = j();
          continue;
          i1 = jx.b(paramMotionEvent);
          F = jx.c(paramMotionEvent, i1);
          J = jx.b(paramMotionEvent, i1);
          bool1 = bool2;
          continue;
          a(paramMotionEvent);
          F = jx.c(paramMotionEvent, jx.a(paramMotionEvent, J));
          bool1 = bool2;
        }
      }
    }
  }
  
  public void removeView(View paramView)
  {
    if (w)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == p);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */