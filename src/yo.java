import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public final class yo
  extends yu
{
  static final int a = View.MeasureSpec.makeMeasureSpec(0, 0);
  boolean b = false;
  int c = -1;
  int[] d;
  View[] e;
  final SparseIntArray f = new SparseIntArray();
  final SparseIntArray g = new SparseIntArray();
  yr h = new yp();
  final Rect i = new Rect();
  
  public yo(Context paramContext)
  {
    if (1 != c)
    {
      b = true;
      c = 1;
      h.a();
    }
  }
  
  private void F()
  {
    int k = 0;
    int j;
    int i1;
    int m;
    if (k() == 1)
    {
      j = w() - A() - y();
      if ((d == null) || (d.length != c + 1) || (d[(d.length - 1)] != j)) {
        d = new int[c + 1];
      }
      d[0] = 0;
      i1 = j / c;
      int i2 = j % c;
      m = 1;
      j = 0;
      label101:
      if (m > c) {
        break label179;
      }
      j += i2;
      if ((j <= 0) || (c - j >= i2)) {
        break label180;
      }
      j -= c;
    }
    label179:
    label180:
    for (int n = i1 + 1;; n = i1)
    {
      k += n;
      d[m] = k;
      m += 1;
      break label101;
      j = x() - B() - z();
      break;
      return;
    }
  }
  
  private void G()
  {
    if ((e == null) || (e.length != c)) {
      e = new View[c];
    }
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int j;
    do
    {
      return paramInt1;
      j = View.MeasureSpec.getMode(paramInt1);
    } while ((j != Integer.MIN_VALUE) && (j != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, j);
  }
  
  private int a(aag paramaag, aam paramaam, int paramInt)
  {
    if (!paramaam.a()) {
      return h.c(paramInt, c);
    }
    paramInt = paramaag.a(paramInt);
    if (paramInt == -1) {
      return 0;
    }
    return h.c(paramInt, c);
  }
  
  private void a(aag paramaag, aam paramaam, int paramInt, boolean paramBoolean)
  {
    int k;
    int j;
    int m;
    int n;
    label43:
    yq localyq;
    if (paramBoolean)
    {
      k = 1;
      j = 0;
      m = paramInt;
      paramInt = j;
      if ((this.j != 1) || (!l())) {
        break label148;
      }
      j = c - 1;
      n = -1;
      if (paramInt == m) {
        return;
      }
      View localView = e[paramInt];
      localyq = (yq)localView.getLayoutParams();
      b = c(paramaag, paramaam, d(localView));
      if ((n != -1) || (b <= 1)) {
        break label157;
      }
    }
    label148:
    label157:
    for (a = (j - (b - 1));; a = j)
    {
      j += b * n;
      paramInt += k;
      break label43;
      paramInt -= 1;
      k = -1;
      m = -1;
      break;
      j = 0;
      n = 1;
      break label43;
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a(paramView, i);
    aac localaac = (aac)paramView.getLayoutParams();
    int j;
    if (!paramBoolean)
    {
      j = paramInt1;
      if (this.j != 1) {}
    }
    else
    {
      j = a(paramInt1, leftMargin + i.left, rightMargin + i.right);
    }
    if (!paramBoolean)
    {
      paramInt1 = paramInt2;
      if (this.j != 0) {}
    }
    else
    {
      paramInt1 = a(paramInt2, topMargin + i.top, bottomMargin + i.bottom);
    }
    paramView.measure(j, paramInt1);
  }
  
  private int b(aag paramaag, aam paramaam, int paramInt)
  {
    int j;
    if (!paramaam.a()) {
      j = h.b(paramInt, c);
    }
    int k;
    do
    {
      return j;
      k = g.get(paramInt, -1);
      j = k;
    } while (k != -1);
    paramInt = paramaag.a(paramInt);
    if (paramInt == -1) {
      return 0;
    }
    return h.b(paramInt, c);
  }
  
  private int c(aag paramaag, aam paramaam, int paramInt)
  {
    if (!paramaam.a()) {}
    do
    {
      return 1;
      int j = f.get(paramInt, -1);
      if (j != -1) {
        return j;
      }
    } while (paramaag.a(paramInt) != -1);
    return 1;
  }
  
  private static int k(int paramInt)
  {
    if (paramInt < 0) {
      return a;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt, 1073741824);
  }
  
  public int a(int paramInt, aag paramaag, aam paramaam)
  {
    F();
    G();
    return super.a(paramInt, paramaag, paramaam);
  }
  
  public int a(aag paramaag, aam paramaam)
  {
    if (j == 0) {
      return c;
    }
    if (paramaam.d() <= 0) {
      return 0;
    }
    return a(paramaag, paramaam, paramaam.d() - 1);
  }
  
  public aac a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new yq(paramContext, paramAttributeSet);
  }
  
  public aac a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new yq((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new yq(paramLayoutParams);
  }
  
  View a(aag paramaag, aam paramaam, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = null;
    m();
    int k = this.k.c();
    int m = this.k.d();
    int j;
    Object localObject2;
    label37:
    View localView;
    if (paramInt2 > paramInt1)
    {
      j = 1;
      localObject2 = null;
      if (paramInt1 == paramInt2) {
        break label162;
      }
      localView = f(paramInt1);
      int n = d(localView);
      if ((n < 0) || (n >= paramInt3) || (b(paramaag, paramaam, n) != 0)) {
        break label177;
      }
      if (!((aac)localView.getLayoutParams()).c()) {
        break label118;
      }
      if (localObject2 != null) {
        break label177;
      }
      localObject2 = localView;
    }
    label118:
    label162:
    label174:
    label177:
    for (;;)
    {
      paramInt1 += j;
      break label37;
      j = -1;
      break;
      Object localObject3;
      if (this.k.a(localView) < m)
      {
        localObject3 = localView;
        if (this.k.b(localView) >= k) {}
      }
      else
      {
        if (localObject1 != null) {
          break label177;
        }
        localObject1 = localView;
        continue;
        if (localObject1 == null) {
          break label174;
        }
        localObject3 = localObject1;
      }
      return (View)localObject3;
      return (View)localObject2;
    }
  }
  
  public void a()
  {
    h.a();
  }
  
  public void a(aag paramaag, aam paramaam, View paramView, my parammy)
  {
    boolean bool2 = false;
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof yq))
    {
      super.a(paramView, parammy);
      return;
    }
    paramView = (yq)localLayoutParams;
    int j = a(paramaag, paramaam, paramView.e());
    if (this.j == 0)
    {
      k = paramView.a();
      m = paramView.b();
      if ((c > 1) && (paramView.b() == c)) {}
      for (bool1 = true;; bool1 = false)
      {
        parammy.b(nh.a(k, m, j, 1, bool1));
        return;
      }
    }
    int k = paramView.a();
    int m = paramView.b();
    boolean bool1 = bool2;
    if (c > 1)
    {
      bool1 = bool2;
      if (paramView.b() == c) {
        bool1 = true;
      }
    }
    parammy.b(nh.a(j, 1, k, m, bool1));
  }
  
  void a(aag paramaag, aam paramaam, yv paramyv)
  {
    super.a(paramaag, paramaam, paramyv);
    F();
    if ((paramaam.d() > 0) && (!paramaam.a())) {
      for (int j = b(paramaag, paramaam, a); (j > 0) && (a > 0); j = b(paramaag, paramaam, a)) {
        a -= 1;
      }
    }
    G();
  }
  
  void a(aag paramaag, aam paramaam, yx paramyx, yw paramyw)
  {
    boolean bool;
    int j;
    int i1;
    if (e == 1)
    {
      bool = true;
      j = c;
      if (bool) {
        break label883;
      }
      j = b(paramaag, paramaam, d) + c(paramaag, paramaam, d);
      i1 = 0;
    }
    for (;;)
    {
      int m;
      if ((i1 < c) && (paramyx.a(paramaam)) && (j > 0))
      {
        k = d;
        m = c(paramaag, paramaam, k);
        if (m > c)
        {
          throw new IllegalArgumentException("Item at position " + k + " requires " + m + " spans but GridLayoutManager has only " + c + " spans.");
          bool = false;
          break;
        }
        j -= m;
        if (j >= 0)
        {
          View localView = paramyx.a(paramaag);
          if (localView != null)
          {
            e[i1] = localView;
            i1 += 1;
            continue;
          }
        }
      }
      if (i1 == 0)
      {
        b = true;
        return;
      }
      j = 0;
      a(paramaag, paramaam, i1, bool);
      int k = 0;
      if (k < i1)
      {
        paramaag = e[k];
        if (k == null) {
          if (bool)
          {
            b(paramaag);
            label259:
            paramaam = (yq)paramaag.getLayoutParams();
            m = View.MeasureSpec.makeMeasureSpec(d[(a + b)] - d[a], 1073741824);
            if (this.j != 1) {
              break label382;
            }
            a(paramaag, m, k(height), false);
            label321:
            m = this.k.c(paramaag);
            if (m <= j) {
              break label880;
            }
            j = m;
          }
        }
      }
      label382:
      label504:
      label592:
      label823:
      label871:
      label880:
      for (;;)
      {
        k += 1;
        break;
        b(paramaag, 0);
        break label259;
        if (bool)
        {
          a(paramaag);
          break label259;
        }
        a(paramaag, 0);
        break label259;
        a(paramaag, k(width), m, false);
        break label321;
        m = k(j);
        k = 0;
        if (k < i1)
        {
          paramaag = e[k];
          if (this.k.c(paramaag) != j)
          {
            paramaam = (yq)paramaag.getLayoutParams();
            n = View.MeasureSpec.makeMeasureSpec(d[(a + b)] - d[a], 1073741824);
            if (this.j != 1) {
              break label504;
            }
            a(paramaag, n, m, true);
          }
          for (;;)
          {
            k += 1;
            break;
            a(paramaag, m, n, true);
          }
        }
        a = j;
        int n = 0;
        m = 0;
        int i2;
        int i3;
        if (this.j == 1) {
          if (f == -1)
          {
            m = b;
            n = m - j;
            j = 0;
            k = 0;
            i2 = 0;
            i3 = k;
            k = n;
            int i4 = j;
            n = m;
            j = i3;
            m = i4;
            if (i2 >= i1) {
              break label871;
            }
            paramaag = e[i2];
            paramaam = (yq)paramaag.getLayoutParams();
            if (this.j != 1) {
              break label823;
            }
            j = y();
            j = d[a] + j;
            i3 = this.k.d(paramaag);
            m = k;
          }
        }
        for (k = i3 + j;; k = i3)
        {
          a(paramaag, j + leftMargin, m + topMargin, k - rightMargin, n - bottomMargin);
          if ((paramaam.c()) || (paramaam.d())) {
            c = true;
          }
          d |= paramaag.isFocusable();
          i3 = i2 + 1;
          i2 = k;
          k = m;
          m = i2;
          i2 = i3;
          break label592;
          n = b;
          m = n + j;
          j = 0;
          k = 0;
          break;
          if (f == -1)
          {
            i2 = b;
            k = i2 - j;
            j = i2;
            break;
          }
          k = b;
          j += k;
          break;
          k = z();
          k = d[a] + k;
          n = this.k.d(paramaag) + k;
          i3 = m;
          m = k;
        }
        Arrays.fill(e, null);
        return;
      }
      label883:
      i1 = 0;
    }
  }
  
  public boolean a(aac paramaac)
  {
    return paramaac instanceof yq;
  }
  
  public int b(int paramInt, aag paramaag, aam paramaam)
  {
    F();
    G();
    return super.b(paramInt, paramaag, paramaam);
  }
  
  public int b(aag paramaag, aam paramaam)
  {
    if (j == 1) {
      return c;
    }
    if (paramaam.d() <= 0) {
      return 0;
    }
    return a(paramaag, paramaam, paramaam.d() - 1);
  }
  
  public void b()
  {
    h.a();
  }
  
  public void c()
  {
    h.a();
  }
  
  public void c(aag paramaag, aam paramaam)
  {
    if (paramaam.a())
    {
      int k = v();
      int j = 0;
      while (j < k)
      {
        yq localyq = (yq)f(j).getLayoutParams();
        int m = localyq.e();
        f.put(m, localyq.b());
        g.put(m, localyq.a());
        j += 1;
      }
    }
    super.c(paramaag, paramaam);
    f.clear();
    g.clear();
    if (!paramaam.a()) {
      b = false;
    }
  }
  
  public void d()
  {
    h.a();
  }
  
  public void e()
  {
    h.a();
  }
  
  public aac f()
  {
    return new yq();
  }
  
  public boolean g()
  {
    return (o == null) && (!b);
  }
}

/* Location:
 * Qualified Name:     yo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */