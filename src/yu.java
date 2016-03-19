import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class yu
  extends aab
{
  private yx a;
  private boolean b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f;
  int j;
  zo k;
  boolean l = false;
  int m = -1;
  int n = Integer.MIN_VALUE;
  yy o = null;
  final yv p = new yv(this);
  
  public yu()
  {
    this((byte)0);
  }
  
  public yu(byte paramByte)
  {
    a(1);
    a(false);
  }
  
  private void F()
  {
    boolean bool = true;
    if ((j == 1) || (!l())) {
      bool = c;
    }
    for (;;)
    {
      l = bool;
      return;
      if (c) {
        bool = false;
      }
    }
  }
  
  private View G()
  {
    if (l) {}
    for (int i = v() - 1;; i = 0) {
      return f(i);
    }
  }
  
  private View H()
  {
    if (l) {}
    for (int i = 0;; i = v() - 1) {
      return f(i);
    }
  }
  
  private int a(int paramInt, aag paramaag, aam paramaam, boolean paramBoolean)
  {
    int i = k.d() - paramInt;
    if (i > 0)
    {
      int i1 = -c(-i, paramaag, paramaam);
      i = i1;
      if (paramBoolean)
      {
        paramInt = k.d() - (paramInt + i1);
        i = i1;
        if (paramInt > 0)
        {
          k.a(paramInt);
          i = i1 + paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, aam paramaam)
  {
    int i = -1;
    int i1 = 1;
    a.h = a(paramaam);
    a.f = paramInt1;
    if (paramInt1 == 1)
    {
      paramaam = a;
      h += k.g();
      paramaam = H();
      localyx = a;
      if (l) {}
      for (paramInt1 = i;; paramInt1 = 1)
      {
        e = paramInt1;
        a.d = (d(paramaam) + a.e);
        a.b = k.b(paramaam);
        paramInt1 = k.b(paramaam) - k.d();
        a.c = paramInt2;
        if (paramBoolean)
        {
          paramaam = a;
          c -= paramInt1;
        }
        a.g = paramInt1;
        return;
      }
    }
    paramaam = G();
    yx localyx = a;
    h += k.c();
    localyx = a;
    if (l) {}
    for (paramInt1 = i1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.d = (d(paramaam) + a.e);
      a.b = k.a(paramaam);
      paramInt1 = -k.a(paramaam) + k.c();
      break;
    }
  }
  
  private void a(aag paramaag, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paramaag);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i > paramInt2)
        {
          a(i, paramaag);
          i -= 1;
        }
      }
    }
  }
  
  private void a(aag paramaag, yx paramyx)
  {
    if (!a) {}
    for (;;)
    {
      return;
      int i;
      int i1;
      int i2;
      if (f == -1)
      {
        i = g;
        i1 = v();
        if (i >= 0)
        {
          i2 = k.e() - i;
          if (l)
          {
            i = 0;
            while (i < i1)
            {
              paramyx = f(i);
              if (k.a(paramyx) < i2)
              {
                a(paramaag, 0, i);
                return;
              }
              i += 1;
            }
          }
          else
          {
            i = i1 - 1;
            while (i >= 0)
            {
              paramyx = f(i);
              if (k.a(paramyx) < i2)
              {
                a(paramaag, i1 - 1, i);
                return;
              }
              i -= 1;
            }
          }
        }
      }
      else
      {
        i1 = g;
        if (i1 >= 0)
        {
          i2 = v();
          if (l)
          {
            i = i2 - 1;
            while (i >= 0)
            {
              paramyx = f(i);
              if (k.b(paramyx) > i1)
              {
                a(paramaag, i2 - 1, i);
                return;
              }
              i -= 1;
            }
          }
          else
          {
            i = 0;
            while (i < i2)
            {
              paramyx = f(i);
              if (k.b(paramyx) > i1)
              {
                a(paramaag, 0, i);
                return;
              }
              i += 1;
            }
          }
        }
      }
    }
  }
  
  private void a(yv paramyv)
  {
    c(a, b);
  }
  
  private int b(int paramInt, aag paramaag, aam paramaam, boolean paramBoolean)
  {
    int i = paramInt - k.c();
    if (i > 0)
    {
      int i1 = -c(i, paramaag, paramaam);
      i = i1;
      if (paramBoolean)
      {
        paramInt = paramInt + i1 - k.c();
        i = i1;
        if (paramInt > 0)
        {
          k.a(-paramInt);
          i = i1 - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View b(boolean paramBoolean)
  {
    if (l) {
      return a(v() - 1, -1, paramBoolean, true);
    }
    return a(0, v(), paramBoolean, true);
  }
  
  private void b(yv paramyv)
  {
    d(a, b);
  }
  
  private View c(boolean paramBoolean)
  {
    if (l) {
      return a(0, v(), paramBoolean, true);
    }
    return a(v() - 1, -1, paramBoolean, true);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    a.c = (k.d() - paramInt2);
    yx localyx = a;
    if (l) {}
    for (int i = -1;; i = 1)
    {
      e = i;
      a.d = paramInt1;
      a.f = 1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private View d(aag paramaag, aam paramaam)
  {
    if (l) {
      return f(paramaag, paramaam);
    }
    return g(paramaag, paramaam);
  }
  
  private void d(int paramInt1, int paramInt2)
  {
    a.c = (paramInt2 - k.c());
    a.d = paramInt1;
    yx localyx = a;
    if (l) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.f = -1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private View e(aag paramaag, aam paramaam)
  {
    if (l) {
      return g(paramaag, paramaam);
    }
    return f(paramaag, paramaam);
  }
  
  private View f(aag paramaag, aam paramaam)
  {
    return a(paramaag, paramaam, 0, v(), paramaam.d());
  }
  
  private View g(aag paramaag, aam paramaam)
  {
    return a(paramaag, paramaam, v() - 1, -1, paramaam.d());
  }
  
  private int h(aam paramaam)
  {
    boolean bool2 = true;
    int i = 0;
    if (v() == 0) {
      i1 = i;
    }
    zo localzo;
    boolean bool1;
    label40:
    View localView1;
    label59:
    View localView2;
    do
    {
      do
      {
        do
        {
          do
          {
            return i1;
            m();
            localzo = k;
            if (e) {
              break;
            }
            bool1 = true;
            localView1 = b(bool1);
            if (e) {
              break label262;
            }
            bool1 = bool2;
            localView2 = c(bool1);
            bool1 = e;
            bool2 = l;
            i1 = i;
          } while (v() == 0);
          i1 = i;
        } while (paramaam.d() == 0);
        i1 = i;
      } while (localView1 == null);
      i1 = i;
    } while (localView2 == null);
    i = Math.min(d(localView1), d(localView2));
    int i1 = Math.max(d(localView1), d(localView2));
    if (bool2) {}
    for (i = Math.max(0, paramaam.d() - i1 - 1);; i = Math.max(0, i))
    {
      i1 = i;
      if (!bool1) {
        break;
      }
      i1 = Math.abs(localzo.b(localView2) - localzo.a(localView1));
      int i2 = Math.abs(d(localView1) - d(localView2));
      float f1 = i1 / (i2 + 1);
      float f2 = i;
      return Math.round(localzo.c() - localzo.a(localView1) + f1 * f2);
      bool1 = false;
      break label40;
      label262:
      bool1 = false;
      break label59;
    }
  }
  
  private int i(aam paramaam)
  {
    boolean bool2 = true;
    if (v() == 0) {
      return 0;
    }
    m();
    zo localzo = k;
    label32:
    View localView1;
    if (!e)
    {
      bool1 = true;
      localView1 = b(bool1);
      if (e) {
        break label119;
      }
    }
    View localView2;
    label119:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localView2 = c(bool1);
      bool1 = e;
      if ((v() == 0) || (paramaam.d() == 0) || (localView1 == null) || (localView2 == null)) {
        break;
      }
      if (bool1) {
        break label125;
      }
      return Math.abs(d(localView1) - d(localView2)) + 1;
      bool1 = false;
      break label32;
    }
    label125:
    int i = localzo.b(localView2);
    int i1 = localzo.a(localView1);
    return Math.min(localzo.f(), i - i1);
  }
  
  private int j(aam paramaam)
  {
    boolean bool2 = true;
    if (v() == 0) {
      return 0;
    }
    m();
    zo localzo = k;
    label32:
    View localView1;
    if (!e)
    {
      bool1 = true;
      localView1 = b(bool1);
      if (e) {
        break label105;
      }
    }
    View localView2;
    label105:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localView2 = c(bool1);
      bool1 = e;
      if ((v() == 0) || (paramaam.d() == 0) || (localView1 == null) || (localView2 == null)) {
        break;
      }
      if (bool1) {
        break label111;
      }
      return paramaam.d();
      bool1 = false;
      break label32;
    }
    label111:
    int i = localzo.b(localView2);
    int i1 = localzo.a(localView1);
    int i2 = Math.abs(d(localView1) - d(localView2));
    return (int)((i - i1) / (i2 + 1) * paramaam.d());
  }
  
  public int a(int paramInt, aag paramaag, aam paramaam)
  {
    if (j == 1) {
      return 0;
    }
    return c(paramInt, paramaag, paramaam);
  }
  
  int a(aag paramaag, yx paramyx, aam paramaam, boolean paramBoolean)
  {
    int i2 = c;
    if (g != Integer.MIN_VALUE)
    {
      if (c < 0) {
        g += c;
      }
      a(paramaag, paramyx);
    }
    int i = c + h;
    yw localyw = new yw();
    do
    {
      int i1;
      do
      {
        if ((i <= 0) || (!paramyx.a(paramaam))) {
          break;
        }
        localyw.a();
        a(paramaag, paramaam, paramyx, localyw);
        if (b) {
          break;
        }
        b += a * f;
        if ((c) && (a.k == null))
        {
          i1 = i;
          if (paramaam.a()) {}
        }
        else
        {
          c -= a;
          i1 = i - a;
        }
        if (g != Integer.MIN_VALUE)
        {
          g += a;
          if (c < 0) {
            g += c;
          }
          a(paramaag, paramyx);
        }
        i = i1;
      } while (!paramBoolean);
      i = i1;
    } while (!d);
    return i2 - c;
  }
  
  protected int a(aam paramaam)
  {
    if (paramaam.c()) {
      return k.f();
    }
    return 0;
  }
  
  View a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    m();
    int i1 = k.c();
    int i2 = k.d();
    if (paramInt2 > paramInt1) {}
    Object localObject;
    View localView;
    for (int i = 1;; i = -1)
    {
      localObject = null;
      if (paramInt1 == paramInt2) {
        break label125;
      }
      localView = f(paramInt1);
      int i3 = k.a(localView);
      int i4 = k.b(localView);
      if ((i3 >= i2) || (i4 <= i1)) {
        break label128;
      }
      if ((paramBoolean1) && ((i3 < i1) || (i4 > i2))) {
        break;
      }
      return localView;
    }
    if (localObject == null) {
      localObject = localView;
    }
    label125:
    label128:
    for (;;)
    {
      paramInt1 += i;
      break;
      return (View)localObject;
    }
  }
  
  View a(aag paramaag, aam paramaam, int paramInt1, int paramInt2, int paramInt3)
  {
    paramaag = null;
    m();
    int i1 = k.c();
    int i2 = k.d();
    int i;
    label35:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      paramaam = null;
      if (paramInt1 == paramInt2) {
        break label145;
      }
      localView = f(paramInt1);
      int i3 = d(localView);
      if ((i3 < 0) || (i3 >= paramInt3)) {
        break label157;
      }
      if (!((aac)localView.getLayoutParams()).c()) {
        break label103;
      }
      if (paramaam != null) {
        break label157;
      }
      paramaam = localView;
    }
    label103:
    label145:
    label155:
    label157:
    for (;;)
    {
      paramInt1 += i;
      break label35;
      i = -1;
      break;
      Object localObject;
      if (k.a(localView) < i2)
      {
        localObject = localView;
        if (k.b(localView) >= i1) {}
      }
      else
      {
        if (paramaag != null) {
          break label157;
        }
        paramaag = localView;
        continue;
        if (paramaag == null) {
          break label155;
        }
        localObject = paramaag;
      }
      return (View)localObject;
      return paramaam;
    }
  }
  
  public void a(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    a(null);
    if (paramInt == j) {
      return;
    }
    j = paramInt;
    k = null;
    r();
  }
  
  void a(aag paramaag, aam paramaam, yv paramyv) {}
  
  void a(aag paramaag, aam paramaam, yx paramyx, yw paramyw)
  {
    paramaag = paramyx.a(paramaag);
    if (paramaag == null)
    {
      b = true;
      return;
    }
    paramaam = (aac)paramaag.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label61:
    int i;
    int i1;
    label118:
    int i2;
    int i3;
    if (k == null)
    {
      bool2 = l;
      if (f == -1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label213;
        }
        b(paramaag);
        e(paramaag);
        a = k.c(paramaag);
        if (j != 1) {
          break label320;
        }
        if (!l()) {
          break label269;
        }
        i = w() - A();
        i1 = i - k.d(paramaag);
        if (f != -1) {
          break label291;
        }
        i2 = b;
        i3 = b - a;
      }
    }
    for (;;)
    {
      a(paramaag, i1 + leftMargin, i3 + topMargin, i - rightMargin, i2 - bottomMargin);
      if ((paramaam.c()) || (paramaam.d())) {
        c = true;
      }
      d = paramaag.isFocusable();
      return;
      bool1 = false;
      break;
      label213:
      b(paramaag, 0);
      break label61;
      bool2 = l;
      if (f == -1) {}
      for (bool1 = true;; bool1 = false)
      {
        if (bool2 != bool1) {
          break label260;
        }
        a(paramaag);
        break;
      }
      label260:
      a(paramaag, 0);
      break label61;
      label269:
      i1 = y();
      i = k.d(paramaag) + i1;
      break label118;
      label291:
      i3 = b;
      i2 = b;
      int i4 = a;
      i2 += i4;
      continue;
      label320:
      i3 = z();
      i2 = k.d(paramaag) + i3;
      if (f == -1)
      {
        i = b;
        i1 = b - a;
      }
      else
      {
        i1 = b;
        i = b;
        i4 = a;
        i += i4;
      }
    }
  }
  
  public void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof yy))
    {
      o = ((yy)paramParcelable);
      r();
    }
  }
  
  public void a(RecyclerView paramRecyclerView, aag paramaag)
  {
    super.a(paramRecyclerView, paramaag);
    if (f)
    {
      c(paramaag);
      paramaag.a();
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    if (v() > 0)
    {
      paramAccessibilityEvent = ms.a(paramAccessibilityEvent);
      paramAccessibilityEvent.b(p());
      paramAccessibilityEvent.c(q());
    }
  }
  
  public void a(String paramString)
  {
    if (o == null) {
      super.a(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(null);
    if (!c) {
      return;
    }
    c = false;
    r();
  }
  
  public int b(int paramInt, aag paramaag, aam paramaam)
  {
    if (j == 0) {
      return 0;
    }
    return c(paramInt, paramaag, paramaam);
  }
  
  public int b(aam paramaam)
  {
    return h(paramaam);
  }
  
  public View b(int paramInt)
  {
    int i = v();
    Object localObject;
    if (i == 0) {
      localObject = null;
    }
    View localView;
    do
    {
      return (View)localObject;
      int i1 = paramInt - d(f(0));
      if ((i1 < 0) || (i1 >= i)) {
        break;
      }
      localView = f(i1);
      localObject = localView;
    } while (d(localView) == paramInt);
    return super.b(paramInt);
  }
  
  int c(int paramInt, aag paramaag, aam paramaam)
  {
    if ((v() == 0) || (paramInt == 0)) {
      return 0;
    }
    a.a = true;
    m();
    if (paramInt > 0) {}
    int i1;
    int i2;
    for (int i = 1;; i = -1)
    {
      i1 = Math.abs(paramInt);
      a(i, i1, true, paramaam);
      i2 = a.g + a(paramaag, a, paramaam, false);
      if (i2 >= 0) {
        break;
      }
      return 0;
    }
    if (i1 > i2) {
      paramInt = i * i2;
    }
    k.a(-paramInt);
    a.j = paramInt;
    return paramInt;
  }
  
  public int c(aam paramaam)
  {
    return h(paramaam);
  }
  
  public void c(int paramInt)
  {
    m = paramInt;
    n = Integer.MIN_VALUE;
    if (o != null) {
      o.b();
    }
    r();
  }
  
  public void c(aag paramaag, aam paramaam)
  {
    if (((o != null) || (m != -1)) && (paramaam.d() == 0))
    {
      c(paramaag);
      return;
    }
    if ((o != null) && (o.a())) {
      m = o.a;
    }
    m();
    a.a = false;
    F();
    p.a();
    p.c = (l ^ d);
    Object localObject2 = p;
    Object localObject1;
    label180:
    label193:
    label216:
    int i1;
    label241:
    int i2;
    int i3;
    label361:
    label374:
    int i4;
    if ((paramaam.a()) || (m == -1))
    {
      i = 0;
      if (i == 0)
      {
        if (v() == 0) {
          break label1325;
        }
        localObject1 = C();
        if (localObject1 == null) {
          break label1174;
        }
        aac localaac = (aac)((View)localObject1).getLayoutParams();
        if ((localaac.c()) || (localaac.e() < 0) || (localaac.e() >= paramaam.d())) {
          break label1169;
        }
        i = 1;
        if (i == 0) {
          break label1174;
        }
        ((yv)localObject2).a((View)localObject1);
        i = 1;
        if (i == 0)
        {
          ((yv)localObject2).b();
          if (!d) {
            break label1330;
          }
          i = paramaam.d() - 1;
          a = i;
        }
      }
      i = a(paramaam);
      if (a.j < 0) {
        break label1335;
      }
      i1 = 0;
      i2 = i1 + k.c();
      i3 = i + k.g();
      i = i3;
      i1 = i2;
      if (paramaam.a())
      {
        i = i3;
        i1 = i2;
        if (m != -1)
        {
          i = i3;
          i1 = i2;
          if (n != Integer.MIN_VALUE)
          {
            localObject1 = b(m);
            i = i3;
            i1 = i2;
            if (localObject1 != null)
            {
              if (!l) {
                break label1343;
              }
              i = k.d() - k.b((View)localObject1) - n;
              if (i <= 0) {
                break label1375;
              }
              i1 = i2 + i;
              i = i3;
            }
          }
        }
      }
      a(paramaag, paramaam, p);
      a(paramaag);
      a.i = paramaam.a();
      if (!p.c) {
        break label1387;
      }
      b(p);
      a.h = i1;
      a(paramaag, a, paramaam, false);
      i3 = a.b;
      i4 = a.d;
      i1 = i;
      if (a.c > 0) {
        i1 = i + a.c;
      }
      a(p);
      a.h = i1;
      localObject1 = a;
      d += a.e;
      a(paramaag, a, paramaam, false);
      i2 = a.b;
      if (a.c <= 0) {
        break label1960;
      }
      i = a.c;
      d(i4, i3);
      a.h = i;
      a(paramaag, a, paramaam, false);
    }
    label603:
    label1074:
    label1101:
    label1107:
    label1169:
    label1174:
    label1201:
    label1267:
    label1309:
    label1314:
    label1325:
    label1330:
    label1335:
    label1343:
    label1375:
    label1387:
    label1665:
    label1707:
    label1719:
    label1777:
    label1783:
    label1937:
    label1960:
    for (int i = a.b;; i = i3)
    {
      i1 = i;
      i = i2;
      if (v() > 0) {
        if ((l ^ d))
        {
          i2 = a(i, paramaag, paramaam, true);
          i3 = i1 + i2;
          i1 = b(i3, paramaag, paramaam, false);
          i3 += i1;
          i2 = i + i2 + i1;
        }
      }
      for (;;)
      {
        boolean bool;
        if ((!paramaam.b()) || (v() == 0) || (paramaam.a()) || (!g()))
        {
          if (!paramaam.a())
          {
            m = -1;
            n = Integer.MIN_VALUE;
            k.a();
          }
          b = d;
          o = null;
          return;
          if ((m < 0) || (m >= paramaam.d()))
          {
            m = -1;
            n = Integer.MIN_VALUE;
            i = 0;
            break;
          }
          a = m;
          if ((o != null) && (o.a()))
          {
            c = o.c;
            if (c) {}
            for (b = (k.d() - o.b);; b = (k.c() + o.b))
            {
              i = 1;
              break;
            }
          }
          if (n == Integer.MIN_VALUE)
          {
            localObject1 = b(m);
            if (localObject1 != null) {
              if (k.c((View)localObject1) > k.f()) {
                ((yv)localObject2).b();
              }
            }
          }
          for (;;)
          {
            i = 1;
            break;
            if (k.a((View)localObject1) - k.c() < 0)
            {
              b = k.c();
              c = false;
            }
            else if (k.d() - k.b((View)localObject1) < 0)
            {
              b = k.d();
              c = true;
            }
            else
            {
              if (c) {}
              for (i = k.b((View)localObject1) + k.b();; i = k.a((View)localObject1))
              {
                b = i;
                i = 1;
                break;
              }
              if (v() > 0)
              {
                i = d(f(0));
                if (m >= i) {
                  break label1101;
                }
                bool = true;
                if (bool != l) {
                  break label1107;
                }
              }
              for (bool = true;; bool = false)
              {
                c = bool;
                ((yv)localObject2).b();
                break;
                bool = false;
                break label1074;
              }
              c = l;
              if (l) {
                b = (k.d() - n);
              } else {
                b = (k.c() + n);
              }
            }
          }
          i = 0;
          break label180;
          if (b == d)
          {
            if (c)
            {
              localObject1 = d(paramaag, paramaam);
              if (localObject1 == null) {
                break label1325;
              }
              ((yv)localObject2).b((View)localObject1);
              if ((!paramaam.a()) && (g()))
              {
                if ((k.a((View)localObject1) < k.d()) && (k.b((View)localObject1) >= k.c())) {
                  break label1309;
                }
                i = 1;
                if (i != 0) {
                  if (!c) {
                    break label1314;
                  }
                }
              }
            }
            for (i = k.d();; i = k.c())
            {
              b = i;
              i = 1;
              break;
              localObject1 = e(paramaag, paramaam);
              break label1201;
              i = 0;
              break label1267;
            }
          }
          i = 0;
          break label193;
          i = 0;
          break label216;
          i1 = i;
          i = 0;
          break label241;
          i = k.a((View)localObject1);
          i1 = k.c();
          i = n - (i - i1);
          break label361;
          i = i3 - i;
          i1 = i2;
          break label374;
          a(p);
          a.h = i;
          a(paramaag, a, paramaam, false);
          i2 = a.b;
          i4 = a.d;
          i = i1;
          if (a.c > 0) {
            i = i1 + a.c;
          }
          b(p);
          a.h = i;
          localObject1 = a;
          d += a.e;
          a(paramaag, a, paramaam, false);
          i3 = a.b;
          i = i2;
          i1 = i3;
          if (a.c <= 0) {
            break label603;
          }
          i = a.c;
          c(i4, i2);
          a.h = i;
          a(paramaag, a, paramaam, false);
          i = a.b;
          i1 = i3;
          break label603;
          i2 = b(i1, paramaag, paramaam, true);
          i += i2;
          i4 = a(i, paramaag, paramaam, false);
          i3 = i1 + i2 + i4;
          i2 = i + i4;
          continue;
        }
        i = 0;
        i1 = 0;
        localObject1 = paramaag.b();
        int i6 = ((List)localObject1).size();
        int i7 = d(f(0));
        i4 = 0;
        int i5;
        if (i4 < i6)
        {
          localObject2 = (aao)((List)localObject1).get(i4);
          if (((aao)localObject2).m()) {
            break label1937;
          }
          if (((aao)localObject2).d() < i7)
          {
            bool = true;
            if (bool == l) {
              break label1777;
            }
            i5 = -1;
            if (i5 != -1) {
              break label1783;
            }
            i5 = k.c(a) + i;
            i = i1;
            i1 = i5;
          }
        }
        for (;;)
        {
          i5 = i4 + 1;
          i4 = i1;
          i1 = i;
          i = i4;
          i4 = i5;
          break label1665;
          bool = false;
          break label1707;
          i5 = 1;
          break label1719;
          i5 = k.c(a) + i1;
          i1 = i;
          i = i5;
          continue;
          a.k = ((List)localObject1);
          if (i > 0)
          {
            d(d(G()), i3);
            a.h = i;
            a.c = 0;
            a.a();
            a(paramaag, a, paramaam, false);
          }
          if (i1 > 0)
          {
            c(d(H()), i2);
            a.h = i1;
            a.c = 0;
            a.a();
            a(paramaag, a, paramaam, false);
          }
          a.k = null;
          break;
          i5 = i;
          i = i1;
          i1 = i5;
        }
        i2 = i;
        i3 = i1;
      }
    }
  }
  
  public int d(aam paramaam)
  {
    return i(paramaam);
  }
  
  public View d(int paramInt, aag paramaag, aam paramaam)
  {
    F();
    if (v() == 0) {}
    label75:
    View localView;
    label98:
    do
    {
      do
      {
        return null;
        switch (paramInt)
        {
        default: 
          paramInt = Integer.MIN_VALUE;
        }
      } while (paramInt == Integer.MIN_VALUE);
      m();
      if (paramInt != -1) {
        break;
      }
      localView = e(paramaag, paramaam);
    } while (localView == null);
    m();
    a(paramInt, (int)(0.33F * k.f()), false, paramaam);
    a.g = Integer.MIN_VALUE;
    a.a = false;
    a(paramaag, a, paramaam, true);
    if (paramInt == -1) {}
    for (paramaag = G(); (paramaag != localView) && (paramaag.isFocusable()); paramaag = H())
    {
      return paramaag;
      paramInt = -1;
      break label75;
      paramInt = 1;
      break label75;
      if (j == 1)
      {
        paramInt = -1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (j == 1)
      {
        paramInt = 1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (j == 0)
      {
        paramInt = -1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (j == 0)
      {
        paramInt = 1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      localView = d(paramaag, paramaam);
      break label98;
    }
  }
  
  public int e(aam paramaam)
  {
    return i(paramaam);
  }
  
  public int f(aam paramaam)
  {
    return j(paramaam);
  }
  
  public aac f()
  {
    return new aac(-2, -2);
  }
  
  public int g(aam paramaam)
  {
    return j(paramaam);
  }
  
  public boolean g()
  {
    return (o == null) && (b == d);
  }
  
  public Parcelable h()
  {
    if (o != null) {
      return new yy(o);
    }
    yy localyy = new yy();
    if (v() > 0)
    {
      m();
      boolean bool = b ^ l;
      c = bool;
      if (bool)
      {
        localView = H();
        b = (k.d() - k.b(localView));
        a = d(localView);
        return localyy;
      }
      View localView = G();
      a = d(localView);
      b = (k.a(localView) - k.c());
      return localyy;
    }
    localyy.b();
    return localyy;
  }
  
  public boolean i()
  {
    return j == 0;
  }
  
  public boolean j()
  {
    return j == 1;
  }
  
  public int k()
  {
    return j;
  }
  
  protected boolean l()
  {
    return u() == 1;
  }
  
  void m()
  {
    if (a == null) {
      a = n();
    }
    if (k == null) {
      switch (j)
      {
      default: 
        throw new IllegalArgumentException("invalid orientation");
      }
    }
    for (Object localObject = new zp(this);; localObject = new zq(this))
    {
      k = ((zo)localObject);
      return;
    }
  }
  
  yx n()
  {
    return new yx();
  }
  
  public void o()
  {
    e = true;
  }
  
  public int p()
  {
    View localView = a(0, v(), false, true);
    if (localView == null) {
      return -1;
    }
    return d(localView);
  }
  
  public int q()
  {
    View localView = a(v() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return d(localView);
  }
}

/* Location:
 * Qualified Name:     yu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */