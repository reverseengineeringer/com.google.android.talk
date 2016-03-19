import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

public final class aan
  implements Runnable
{
  private int b;
  private int c;
  private pq d;
  private Interpolator e = RecyclerView.z;
  private boolean f = false;
  private boolean g = false;
  
  public aan(RecyclerView paramRecyclerView)
  {
    d = pq.a(paramRecyclerView.getContext(), RecyclerView.z);
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, RecyclerView.z);
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (e != paramInterpolator)
    {
      e = paramInterpolator;
      d = pq.a(a.getContext(), paramInterpolator);
    }
    a.a(2);
    c = 0;
    b = 0;
    d.a(0, 0, paramInt1, paramInt2, paramInt3);
    b();
  }
  
  private void b()
  {
    if (f)
    {
      g = true;
      return;
    }
    a.removeCallbacks(this);
    ks.a(a, this);
  }
  
  public void a()
  {
    a.removeCallbacks(this);
    d.h();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.a(2);
    c = 0;
    b = 0;
    d.a(paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE);
    b();
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n;
    int i1;
    if (k > m)
    {
      j = 1;
      n = (int)Math.sqrt(0.0D);
      i1 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (j == 0) {
        break label155;
      }
    }
    label155:
    for (int i = a.getWidth();; i = a.getHeight())
    {
      int i2 = i / 2;
      float f3 = Math.min(1.0F, i1 * 1.0F / i);
      float f1 = i2;
      float f2 = i2;
      f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
      if (n <= 0) {
        break label167;
      }
      i = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / n)) * 4;
      a(paramInt1, paramInt2, Math.min(i, 2000));
      return;
      j = 0;
      break;
    }
    label167:
    if (j != 0) {}
    for (int j = k;; j = m)
    {
      i = (int)((j / i + 1.0F) * 300.0F);
      break;
    }
  }
  
  public void run()
  {
    g = false;
    f = true;
    a.e();
    Object localObject1 = d;
    aak localaak = a.h.s;
    int i6;
    int i7;
    int i4;
    int i5;
    int i1;
    int k;
    int j;
    int i3;
    int i;
    int n;
    int m;
    Object localObject2;
    if (((pq)localObject1).g())
    {
      i6 = ((pq)localObject1).b();
      i7 = ((pq)localObject1).c();
      i4 = i6 - b;
      i5 = i7 - c;
      i1 = 0;
      k = 0;
      i2 = 0;
      j = 0;
      b = i6;
      c = i7;
      i3 = 0;
      i = 0;
      n = 0;
      m = 0;
      if (a.g == null) {
        break label2207;
      }
      a.f();
      a.o();
      aal.a("RV Scroll");
      if (i4 != 0)
      {
        k = a.h.a(i4, a.b, a.u);
        i = i4 - k;
      }
      if (i5 != 0)
      {
        j = a.h.b(i5, a.b, a.u);
        m = i5 - j;
      }
      aal.b();
      a.z();
      a.p();
      a.a(false);
      n = m;
      i2 = j;
      i3 = i;
      i1 = k;
      if (localaak == null) {
        break label2207;
      }
      n = m;
      i2 = j;
      i3 = i;
      i1 = k;
      if (localaak.b()) {
        break label2207;
      }
      n = m;
      i2 = j;
      i3 = i;
      i1 = k;
      if (!localaak.c()) {
        break label2207;
      }
      n = a.u.d();
      if (n != 0) {
        break label871;
      }
      localaak.a();
      i1 = k;
      if (!a.i.isEmpty()) {
        a.invalidate();
      }
      localObject2 = a;
      if (ks.a.a((View)localObject2) != 2) {
        a.c(i4, i5);
      }
      if ((i != 0) || (m != 0))
      {
        n = (int)((pq)localObject1).f();
        if (i == i6) {
          break label2696;
        }
        if (i >= 0) {
          break label2220;
        }
        k = -n;
      }
    }
    label402:
    label421:
    label554:
    label581:
    label601:
    label621:
    label746:
    label751:
    label815:
    label871:
    label1004:
    label1009:
    label1305:
    label1324:
    label1526:
    label1646:
    label1651:
    label1973:
    label1992:
    label2189:
    label2207:
    label2220:
    label2253:
    label2258:
    label2263:
    label2270:
    label2467:
    label2486:
    label2683:
    label2696:
    for (int i2 = k;; i2 = 0)
    {
      if (m != i7) {
        if (m < 0) {
          k = -n;
        }
      }
      for (;;)
      {
        localObject2 = a;
        if (ks.a.a((View)localObject2) != 2) {
          a.d(i2, k);
        }
        if (((i2 != 0) || (i == i6) || (((pq)localObject1).d() == 0)) && ((k != 0) || (m == i7) || (((pq)localObject1).e() == 0))) {
          ((pq)localObject1).h();
        }
        if ((i1 != 0) || (j != 0)) {
          a.h(i1, j);
        }
        if (!RecyclerView.a(a)) {
          a.invalidate();
        }
        boolean bool;
        if ((i5 != 0) && (a.h.j()) && (j == i5))
        {
          i = 1;
          if ((i4 == 0) || (!a.h.i()) || (i1 != i4)) {
            break label2253;
          }
          j = 1;
          if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
            break label2258;
          }
          i = 1;
          if ((!((pq)localObject1).a()) && (i != 0)) {
            break label2263;
          }
          a.a(0);
          if (localaak != null) {
            if (localaak.b())
            {
              localObject1 = b;
              if ((!d) || (a == -1) || (localObject1 == null)) {
                localaak.a();
              }
              c = false;
              if (e != null)
              {
                if (localaak.a(e) != a) {
                  break label2467;
                }
                localObject2 = u;
                localObject2 = f;
                if (d < 0) {
                  break label2270;
                }
                i = d;
                d = -1;
                ((RecyclerView)localObject1).c(i);
                f = false;
                localaak.a();
              }
              if (d)
              {
                localObject2 = u;
                bool = f.a();
                localObject2 = f;
                if (d < 0) {
                  break label2486;
                }
                i = d;
                d = -1;
                ((RecyclerView)localObject1).c(i);
                f = false;
                if (bool)
                {
                  if (!d) {
                    break label2683;
                  }
                  c = true;
                  t.b();
                }
              }
            }
          }
        }
        for (;;)
        {
          if (!g) {
            localaak.a();
          }
          f = false;
          if (g) {
            b();
          }
          return;
          Object localObject3;
          if (localaak.d() >= n)
          {
            localaak.a(n - 1);
            localObject2 = b;
            if ((!d) || (a == -1) || (localObject2 == null)) {
              localaak.a();
            }
            c = false;
            if (e != null)
            {
              if (localaak.a(e) != a) {
                break label1305;
              }
              localObject3 = u;
              localObject3 = f;
              if (d >= 0)
              {
                n = d;
                d = -1;
                ((RecyclerView)localObject2).c(n);
                f = false;
                localaak.a();
              }
            }
            else
            {
              if (!d) {
                break label1526;
              }
              localObject3 = u;
              bool = f.a();
              localObject3 = f;
              if (d < 0) {
                break label1324;
              }
              n = d;
              d = -1;
              ((RecyclerView)localObject2).c(n);
              f = false;
            }
            for (;;)
            {
              if (bool)
              {
                if (d)
                {
                  c = true;
                  t.b();
                  i1 = k;
                  break;
                  if (f)
                  {
                    if ((e != null) && (c <= 0)) {
                      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                    }
                    if (c <= 0) {
                      throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    if (e == null) {
                      if (c == Integer.MIN_VALUE) {
                        t.b(a, b);
                      }
                    }
                    for (;;)
                    {
                      g += 1;
                      if (g > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                      }
                      f = false;
                      break;
                      t.a(a, b, c);
                      continue;
                      t.a(a, b, c, e);
                    }
                  }
                  g = 0;
                  break label1004;
                  Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                  e = null;
                  break label1009;
                  if (f)
                  {
                    if ((e != null) && (c <= 0)) {
                      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                    }
                    if (c <= 0) {
                      throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    if (e == null) {
                      if (c == Integer.MIN_VALUE) {
                        t.b(a, b);
                      }
                    }
                    for (;;)
                    {
                      g += 1;
                      if (g > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                      }
                      f = false;
                      break;
                      t.a(a, b, c);
                      continue;
                      t.a(a, b, c, e);
                    }
                  }
                  g = 0;
                  continue;
                }
                localaak.a();
              }
            }
            i1 = k;
            break;
          }
          localObject2 = b;
          if ((!d) || (a == -1) || (localObject2 == null)) {
            localaak.a();
          }
          c = false;
          if (e != null)
          {
            if (localaak.a(e) != a) {
              break label1973;
            }
            localObject3 = u;
            localObject3 = f;
            if (d >= 0)
            {
              n = d;
              d = -1;
              ((RecyclerView)localObject2).c(n);
              f = false;
              localaak.a();
            }
          }
          else
          {
            n = m;
            i2 = j;
            i3 = i;
            i1 = k;
            if (!d) {
              break label2207;
            }
            localObject3 = u;
            bool = f.a();
            localObject3 = f;
            if (d < 0) {
              break label1992;
            }
            n = d;
            d = -1;
            ((RecyclerView)localObject2).c(n);
            f = false;
          }
          for (;;)
          {
            n = m;
            i2 = j;
            i3 = i;
            i1 = k;
            if (!bool) {
              break label2207;
            }
            if (!d) {
              break label2189;
            }
            c = true;
            t.b();
            i1 = k;
            break;
            if (f)
            {
              if ((e != null) && (c <= 0)) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
              }
              if (c <= 0) {
                throw new IllegalStateException("Scroll duration must be a positive number");
              }
              if (e == null) {
                if (c == Integer.MIN_VALUE) {
                  t.b(a, b);
                }
              }
              for (;;)
              {
                g += 1;
                if (g > 10) {
                  Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                f = false;
                break;
                t.a(a, b, c);
                continue;
                t.a(a, b, c, e);
              }
            }
            g = 0;
            break label1646;
            Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
            e = null;
            break label1651;
            if (f)
            {
              if ((e != null) && (c <= 0)) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
              }
              if (c <= 0) {
                throw new IllegalStateException("Scroll duration must be a positive number");
              }
              if (e == null) {
                if (c == Integer.MIN_VALUE) {
                  t.b(a, b);
                }
              }
              for (;;)
              {
                g += 1;
                if (g > 10) {
                  Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                f = false;
                break;
                t.a(a, b, c);
                continue;
                t.a(a, b, c, e);
              }
            }
            g = 0;
          }
          localaak.a();
          i1 = k;
          i3 = i;
          i2 = j;
          n = m;
          j = i2;
          i = i3;
          m = n;
          break;
          if (i > 0)
          {
            k = n;
            break label402;
          }
          k = 0;
          break label402;
          k = n;
          if (m > 0) {
            break label421;
          }
          k = 0;
          break label421;
          i = 0;
          break label554;
          j = 0;
          break label581;
          i = 0;
          break label601;
          b();
          break label621;
          if (f)
          {
            if ((e != null) && (c <= 0)) {
              throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            if (c <= 0) {
              throw new IllegalStateException("Scroll duration must be a positive number");
            }
            if (e == null) {
              if (c == Integer.MIN_VALUE) {
                t.b(a, b);
              }
            }
            for (;;)
            {
              g += 1;
              if (g > 10) {
                Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
              }
              f = false;
              break;
              t.a(a, b, c);
              continue;
              t.a(a, b, c, e);
            }
          }
          g = 0;
          break label746;
          Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
          e = null;
          break label751;
          if (f)
          {
            if ((e != null) && (c <= 0)) {
              throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            if (c <= 0) {
              throw new IllegalStateException("Scroll duration must be a positive number");
            }
            if (e == null) {
              if (c == Integer.MIN_VALUE) {
                t.b(a, b);
              }
            }
            for (;;)
            {
              g += 1;
              if (g > 10) {
                Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
              }
              f = false;
              break;
              t.a(a, b, c);
              continue;
              t.a(a, b, c, e);
            }
          }
          g = 0;
          break label815;
          localaak.a();
        }
        k = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     aan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */