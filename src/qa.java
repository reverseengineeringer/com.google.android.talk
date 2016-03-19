import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public final class qa
{
  private static final Interpolator v = new qb();
  private int a;
  private int b;
  private int c = -1;
  private float[] d;
  private float[] e;
  private float[] f;
  private float[] g;
  private int[] h;
  private int[] i;
  private int[] j;
  private int k;
  private VelocityTracker l;
  private float m;
  private float n;
  private int o;
  private int p;
  private pq q;
  private final qd r;
  private View s;
  private boolean t;
  private final ViewGroup u;
  private final Runnable w = new qc(this);
  
  private qa(Context paramContext, ViewGroup paramViewGroup, qd paramqd)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Parent view may not be null");
    }
    if (paramqd == null) {
      throw new IllegalArgumentException("Callback may not be null");
    }
    u = paramViewGroup;
    r = paramqd;
    paramViewGroup = ViewConfiguration.get(paramContext);
    o = ((int)(getResourcesgetDisplayMetricsdensity * 20.0F + 0.5F));
    b = paramViewGroup.getScaledTouchSlop();
    m = paramViewGroup.getScaledMaximumFlingVelocity();
    n = paramViewGroup.getScaledMinimumFlingVelocity();
    q = pq.a(paramContext, v);
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = Math.abs(paramFloat1);
    if (f1 < paramFloat2) {
      paramFloat2 = 0.0F;
    }
    do
    {
      return paramFloat2;
      if (f1 <= paramFloat3) {
        break;
      }
      paramFloat2 = paramFloat3;
    } while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i1 = u.getWidth();
    int i2 = i1 / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f1 = i2;
    float f2 = i2;
    f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;; paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F)) {
      return Math.min(paramInt1, 600);
    }
  }
  
  public static qa a(ViewGroup paramViewGroup, float paramFloat, qd paramqd)
  {
    paramViewGroup = a(paramViewGroup, paramqd);
    b = ((int)(b * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  public static qa a(ViewGroup paramViewGroup, qd paramqd)
  {
    return new qa(paramViewGroup.getContext(), paramViewGroup, paramqd);
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 0;
    if ((d == null) || (d.length <= paramInt))
    {
      localObject = new float[paramInt + 1];
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (d != null)
      {
        System.arraycopy(d, 0, localObject, 0, d.length);
        System.arraycopy(e, 0, arrayOfFloat1, 0, e.length);
        System.arraycopy(f, 0, arrayOfFloat2, 0, f.length);
        System.arraycopy(g, 0, arrayOfFloat3, 0, g.length);
        System.arraycopy(h, 0, arrayOfInt1, 0, h.length);
        System.arraycopy(i, 0, arrayOfInt2, 0, i.length);
        System.arraycopy(j, 0, arrayOfInt3, 0, j.length);
      }
      d = ((float[])localObject);
      e = arrayOfFloat1;
      f = arrayOfFloat2;
      g = arrayOfFloat3;
      h = arrayOfInt1;
      i = arrayOfInt2;
      j = arrayOfInt3;
    }
    Object localObject = d;
    f[paramInt] = paramFloat1;
    localObject[paramInt] = paramFloat1;
    localObject = e;
    g[paramInt] = paramFloat2;
    localObject[paramInt] = paramFloat2;
    localObject = h;
    int i4 = (int)paramFloat1;
    int i3 = (int)paramFloat2;
    if (i4 < u.getLeft() + o) {
      i2 = 1;
    }
    int i1 = i2;
    if (i3 < u.getTop() + o) {
      i1 = i2 | 0x4;
    }
    i2 = i1;
    if (i4 > u.getRight() - o) {
      i2 = i1 | 0x2;
    }
    i1 = i2;
    if (i3 > u.getBottom() - o) {
      i1 = i2 | 0x8;
    }
    localObject[paramInt] = i1;
    k |= 1 << paramInt;
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((h[paramInt1] & paramInt2) != paramInt2) || ((p & paramInt2) == 0) || ((j[paramInt1] & paramInt2) == paramInt2) || ((i[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= b) && (paramFloat2 <= b))) {}
    while (((i[paramInt1] & paramInt2) != 0) || (paramFloat1 <= b)) {
      return false;
    }
    return true;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = s.getLeft();
    int i2 = s.getTop();
    paramInt1 -= i1;
    paramInt2 -= i2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      q.h();
      b(0);
      return false;
    }
    View localView = s;
    paramInt3 = b(paramInt3, (int)n, (int)m);
    paramInt4 = b(paramInt4, (int)n, (int)m);
    int i3 = Math.abs(paramInt1);
    int i4 = Math.abs(paramInt2);
    int i5 = Math.abs(paramInt3);
    int i6 = Math.abs(paramInt4);
    int i7 = i5 + i6;
    int i8 = i3 + i4;
    float f1;
    if (paramInt3 != 0)
    {
      f1 = i5 / i7;
      if (paramInt4 == 0) {
        break label231;
      }
    }
    label231:
    for (float f2 = i6 / i7;; f2 = i4 / i8)
    {
      paramInt3 = a(paramInt1, paramInt3, r.c(localView));
      paramInt4 = a(paramInt2, paramInt4, 0);
      float f3 = paramInt3;
      paramInt3 = (int)(f2 * paramInt4 + f1 * f3);
      q.a(i1, i2, paramInt1, paramInt2, paramInt3);
      b(2);
      return true;
      f1 = i3 / i8;
      break;
    }
  }
  
  private boolean a(View paramView, float paramFloat)
  {
    if (paramView == null) {}
    for (;;)
    {
      return false;
      if (r.c(paramView) > 0) {}
      for (int i1 = 1; (i1 != 0) && (Math.abs(paramFloat) > b); i1 = 0) {
        return true;
      }
    }
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = Math.abs(paramInt1);
    if (i1 < paramInt2) {
      paramInt2 = 0;
    }
    do
    {
      return paramInt2;
      if (i1 <= paramInt3) {
        break;
      }
      paramInt2 = paramInt3;
    } while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }
  
  private void b(float paramFloat)
  {
    t = true;
    r.a(s, paramFloat);
    t = false;
    if (a == 1) {
      b(0);
    }
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 1;
    if (a(paramFloat1, paramFloat2, paramInt, 1)) {}
    for (;;)
    {
      int i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 4)) {
        i1 = i2 | 0x4;
      }
      i2 = i1;
      if (a(paramFloat1, paramFloat2, paramInt, 2)) {
        i2 = i1 | 0x2;
      }
      i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 8)) {
        i1 = i2 | 0x8;
      }
      if (i1 != 0)
      {
        int[] arrayOfInt = i;
        arrayOfInt[paramInt] |= i1;
        r.a(i1, paramInt);
      }
      return;
      i2 = 0;
    }
  }
  
  private boolean b(View paramView, int paramInt)
  {
    if ((paramView == s) && (c == paramInt)) {
      return true;
    }
    if ((paramView != null) && (r.a(paramView)))
    {
      c = paramInt;
      a(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  private void c(int paramInt)
  {
    if (d == null) {
      return;
    }
    d[paramInt] = 0.0F;
    e[paramInt] = 0.0F;
    f[paramInt] = 0.0F;
    g[paramInt] = 0.0F;
    h[paramInt] = 0;
    i[paramInt] = 0;
    j[paramInt] = 0;
    k &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i2 = jx.a.a(paramMotionEvent);
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = jx.b(paramMotionEvent, i1);
      float f1 = jx.c(paramMotionEvent, i1);
      float f2 = jx.d(paramMotionEvent, i1);
      f[i3] = f1;
      g[i3] = f2;
      i1 += 1;
    }
  }
  
  private void h()
  {
    l.computeCurrentVelocity(1000, m);
    float f1 = a(ko.a(l, c), n, m);
    a(ko.b(l, c), n, m);
    b(f1);
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(float paramFloat)
  {
    n = paramFloat;
  }
  
  public void a(int paramInt)
  {
    p = paramInt;
  }
  
  public void a(View paramView, int paramInt)
  {
    if (paramView.getParent() != u) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + u + ")");
    }
    s = paramView;
    c = paramInt;
    r.b(paramView);
    b(1);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    if (!t) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return a(paramInt1, paramInt2, (int)ko.a(l, c), (int)ko.b(l, c));
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = jx.a(paramMotionEvent);
    int i1 = jx.b(paramMotionEvent);
    if (i2 == 0) {
      e();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    switch (i2)
    {
    }
    while (a == 1)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      i1 = jx.b(paramMotionEvent, 0);
      a(f1, f2, i1);
      paramMotionEvent = b((int)f1, (int)f2);
      if ((paramMotionEvent == s) && (a == 2)) {
        b(paramMotionEvent, i1);
      }
      if ((h[i1] & p) != 0)
      {
        r.c();
        continue;
        i2 = jx.b(paramMotionEvent, i1);
        f1 = jx.c(paramMotionEvent, i1);
        f2 = jx.d(paramMotionEvent, i1);
        a(f1, f2, i2);
        if (a == 0)
        {
          if ((h[i2] & p) != 0) {
            r.c();
          }
        }
        else if (a == 2)
        {
          paramMotionEvent = b((int)f1, (int)f2);
          if (paramMotionEvent == s)
          {
            b(paramMotionEvent, i2);
            continue;
            if ((d != null) && (e != null))
            {
              int i3 = jx.a.a(paramMotionEvent);
              i1 = 0;
              for (;;)
              {
                int i4;
                float f3;
                float f4;
                View localView;
                if (i1 < i3)
                {
                  i4 = jx.b(paramMotionEvent, i1);
                  f1 = jx.c(paramMotionEvent, i1);
                  f2 = jx.d(paramMotionEvent, i1);
                  f3 = f1 - d[i4];
                  f4 = e[i4];
                  localView = b((int)f1, (int)f2);
                  if ((localView == null) || (!a(localView, f3))) {
                    break label468;
                  }
                  i2 = 1;
                  label383:
                  if (i2 == 0) {
                    break label474;
                  }
                  int i5 = localView.getLeft();
                  int i6 = (int)f3;
                  i6 = r.a(localView, i6 + i5);
                  localView.getTop();
                  r.d(localView);
                  int i7 = r.c(localView);
                  if ((i7 != 0) && ((i7 <= 0) || (i6 != i5))) {
                    break label474;
                  }
                }
                label468:
                label474:
                do
                {
                  c(paramMotionEvent);
                  break;
                  i2 = 0;
                  break label383;
                  b(f3, f2 - f4, i4);
                } while ((a == 1) || ((i2 != 0) && (b(localView, i4))));
                i1 += 1;
              }
              c(jx.b(paramMotionEvent, i1));
              continue;
              e();
            }
          }
        }
      }
    }
    return false;
  }
  
  public boolean a(View paramView, int paramInt1, int paramInt2)
  {
    s = paramView;
    c = -1;
    boolean bool = a(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (a == 0) && (s != null)) {
      s = null;
    }
    return bool;
  }
  
  public int b()
  {
    return o;
  }
  
  public View b(int paramInt1, int paramInt2)
  {
    int i1 = u.getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = u.getChildAt(r.b(i1));
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  void b(int paramInt)
  {
    u.removeCallbacks(w);
    if (a != paramInt)
    {
      a = paramInt;
      r.a(paramInt);
      if (a == 0) {
        s = null;
      }
    }
  }
  
  public void b(MotionEvent paramMotionEvent)
  {
    int i3 = 0;
    int i1 = 0;
    int i2 = 0;
    int i5 = jx.a(paramMotionEvent);
    int i4 = jx.b(paramMotionEvent);
    if (i5 == 0) {
      e();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (i5)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
      do
      {
        do
        {
          do
          {
            return;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i1 = jx.b(paramMotionEvent, 0);
            paramMotionEvent = b((int)f1, (int)f2);
            a(f1, f2, i1);
            b(paramMotionEvent, i1);
          } while ((h[i1] & p) == 0);
          r.c();
          return;
          i3 = jx.b(paramMotionEvent, i4);
          f1 = jx.c(paramMotionEvent, i4);
          f2 = jx.d(paramMotionEvent, i4);
          a(f1, f2, i3);
          if (a != 0) {
            break;
          }
          b(b((int)f1, (int)f2), i3);
        } while ((h[i3] & p) == 0);
        r.c();
        return;
        i4 = (int)f1;
        i5 = (int)f2;
        paramMotionEvent = s;
        i1 = i2;
        if (paramMotionEvent != null)
        {
          i1 = i2;
          if (i4 >= paramMotionEvent.getLeft())
          {
            i1 = i2;
            if (i4 < paramMotionEvent.getRight())
            {
              i1 = i2;
              if (i5 >= paramMotionEvent.getTop())
              {
                i1 = i2;
                if (i5 < paramMotionEvent.getBottom()) {
                  i1 = 1;
                }
              }
            }
          }
        }
      } while (i1 == 0);
      b(s, i3);
      return;
    case 2: 
      if (a == 1)
      {
        i1 = jx.a(paramMotionEvent, c);
        f1 = jx.c(paramMotionEvent, i1);
        f2 = jx.d(paramMotionEvent, i1);
        i3 = (int)(f1 - f[c]);
        i4 = (int)(f2 - g[c]);
        i2 = s.getLeft() + i3;
        s.getTop();
        int i6 = s.getLeft();
        i5 = s.getTop();
        i1 = i2;
        if (i3 != 0)
        {
          i1 = r.a(s, i2);
          s.offsetLeftAndRight(i1 - i6);
        }
        if (i4 != 0)
        {
          i2 = r.d(s);
          s.offsetTopAndBottom(i2 - i5);
        }
        if ((i3 != 0) || (i4 != 0)) {
          r.b(s, i1);
        }
        c(paramMotionEvent);
        return;
      }
      i2 = jx.a.a(paramMotionEvent);
      i1 = i3;
      while (i1 < i2)
      {
        i3 = jx.b(paramMotionEvent, i1);
        f1 = jx.c(paramMotionEvent, i1);
        f2 = jx.d(paramMotionEvent, i1);
        float f3 = f1 - d[i3];
        b(f3, f2 - e[i3], i3);
        if (a == 1) {
          break;
        }
        View localView = b((int)f1, (int)f2);
        if ((a(localView, f3)) && (b(localView, i3))) {
          break;
        }
        i1 += 1;
      }
      c(paramMotionEvent);
      return;
    case 6: 
      i2 = jx.b(paramMotionEvent, i4);
      if ((a == 1) && (i2 == c))
      {
        i3 = jx.a.a(paramMotionEvent);
        if (i1 >= i3) {
          break label815;
        }
        i4 = jx.b(paramMotionEvent, i1);
        if (i4 == c) {
          break label771;
        }
        f1 = jx.c(paramMotionEvent, i1);
        f2 = jx.d(paramMotionEvent, i1);
        if ((b((int)f1, (int)f2) != s) || (!b(s, i4))) {
          break label771;
        }
      }
      break;
    }
    label771:
    label815:
    for (i1 = c;; i1 = -1)
    {
      if (i1 == -1) {
        h();
      }
      c(i2);
      return;
      i1 += 1;
      break;
      if (a == 1) {
        h();
      }
      e();
      return;
      if (a == 1) {
        b(0.0F);
      }
      e();
      return;
    }
  }
  
  public View c()
  {
    return s;
  }
  
  public int d()
  {
    return b;
  }
  
  public void e()
  {
    c = -1;
    if (d != null)
    {
      Arrays.fill(d, 0.0F);
      Arrays.fill(e, 0.0F);
      Arrays.fill(f, 0.0F);
      Arrays.fill(g, 0.0F);
      Arrays.fill(h, 0);
      Arrays.fill(i, 0);
      Arrays.fill(j, 0);
      k = 0;
    }
    if (l != null)
    {
      l.recycle();
      l = null;
    }
  }
  
  public boolean f()
  {
    boolean bool2 = false;
    if (a == 2)
    {
      boolean bool3 = q.g();
      int i1 = q.b();
      int i2 = q.c();
      int i3 = i1 - s.getLeft();
      int i4 = i2 - s.getTop();
      if (i3 != 0) {
        s.offsetLeftAndRight(i3);
      }
      if (i4 != 0) {
        s.offsetTopAndBottom(i4);
      }
      if ((i3 != 0) || (i4 != 0)) {
        r.b(s, i1);
      }
      bool1 = bool3;
      if (bool3)
      {
        bool1 = bool3;
        if (i1 == q.d())
        {
          bool1 = bool3;
          if (i2 == q.e())
          {
            q.h();
            bool1 = false;
          }
        }
      }
      if (!bool1) {
        u.post(w);
      }
    }
    boolean bool1 = bool2;
    if (a == 2) {
      bool1 = true;
    }
    return bool1;
  }
  
  public boolean g()
  {
    int i3 = d.length;
    int i1 = 0;
    while (i1 < i3)
    {
      if ((k & 1 << i1) != 0)
      {
        i2 = 1;
        if (i2 == 0) {
          break label99;
        }
        float f1 = f[i1] - d[i1];
        float f2 = g[i1] - e[i1];
        if (f1 * f1 + f2 * f2 <= b * b) {
          break label99;
        }
      }
      label99:
      for (int i2 = 1;; i2 = 0)
      {
        if (i2 == 0) {
          break label105;
        }
        return true;
        i2 = 0;
        break;
      }
      label105:
      i1 += 1;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     qa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */