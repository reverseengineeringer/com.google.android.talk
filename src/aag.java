import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class aag
{
  final ArrayList<aao> a = new ArrayList();
  public ArrayList<aao> b = null;
  final ArrayList<aao> c = new ArrayList();
  private final List<aao> e = Collections.unmodifiableList(a);
  private int f = 2;
  private aaf g;
  private aak h;
  
  public aag(RecyclerView paramRecyclerView) {}
  
  private aao a(int paramInt, boolean paramBoolean)
  {
    int j = 0;
    int k = a.size();
    int i = 0;
    while (i < k)
    {
      localObject = (aao)a.get(i);
      if ((!((aao)localObject).g()) && (((aao)localObject).d() == paramInt) && (!((aao)localObject).j()) && ((d.u.f) || (!((aao)localObject).m())))
      {
        ((aao)localObject).b(32);
        return (aao)localObject;
      }
      i += 1;
    }
    Object localObject = d.d.a(paramInt, -1);
    if (localObject != null)
    {
      aao localaao = RecyclerView.b((View)localObject);
      d.d.f((View)localObject);
      paramInt = d.d.c((View)localObject);
      if (paramInt == -1) {
        throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + localaao);
      }
      d.d.d(paramInt);
      c((View)localObject);
      localaao.b(8224);
      return localaao;
    }
    k = c.size();
    i = j;
    while (i < k)
    {
      localObject = (aao)c.get(i);
      if ((!((aao)localObject).j()) && (((aao)localObject).d() == paramInt))
      {
        c.remove(i);
        return (aao)localObject;
      }
      i += 1;
    }
    return null;
  }
  
  private aao a(long paramLong, int paramInt, boolean paramBoolean)
  {
    int i = a.size() - 1;
    aao localaao;
    while (i >= 0)
    {
      localaao = (aao)a.get(i);
      if ((d == paramLong) && (!localaao.g()))
      {
        if (paramInt == e)
        {
          localaao.b(32);
          if ((localaao.m()) && (!d.u.a())) {
            localaao.a(2, 14);
          }
          return localaao;
        }
        a.remove(i);
        d.removeDetachedView(a, false);
        b(a);
      }
      i -= 1;
    }
    i = c.size() - 1;
    while (i >= 0)
    {
      localaao = (aao)c.get(i);
      if (d == paramLong)
      {
        if (paramInt == e)
        {
          c.remove(i);
          return localaao;
        }
        d(i);
      }
      i -= 1;
    }
    return null;
  }
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup)) {
        a((ViewGroup)localView, true);
      }
      i -= 1;
    }
    if (!paramBoolean) {
      return;
    }
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }
  
  private void c(aao paramaao)
  {
    ks.a(a, null);
    if (RecyclerView.b(d) != null) {
      RecyclerView.b(d);
    }
    if (d.g != null) {
      zu localzu = d.g;
    }
    if (d.u != null) {
      d.e.e(paramaao);
    }
    o = null;
    i().a(paramaao);
  }
  
  private void d(int paramInt)
  {
    c((aao)c.get(paramInt));
    c.remove(paramInt);
  }
  
  private aao e(int paramInt)
  {
    int j = 0;
    int k;
    if (b != null)
    {
      k = b.size();
      if (k != 0) {}
    }
    else
    {
      return null;
    }
    int i = 0;
    aao localaao;
    while (i < k)
    {
      localaao = (aao)b.get(i);
      if ((!localaao.g()) && (localaao.d() == paramInt))
      {
        localaao.b(32);
        return localaao;
      }
      i += 1;
    }
    if (d.g.b)
    {
      paramInt = d.c.b(paramInt);
      if ((paramInt > 0) && (paramInt < d.g.a()))
      {
        long l = d.g.b(paramInt);
        paramInt = j;
        while (paramInt < k)
        {
          localaao = (aao)b.get(paramInt);
          if ((!localaao.g()) && (d == l))
          {
            localaao.b(32);
            return localaao;
          }
          paramInt += 1;
        }
      }
    }
    return null;
  }
  
  private void h()
  {
    int i = c.size() - 1;
    while (i >= 0)
    {
      d(i);
      i -= 1;
    }
    c.clear();
  }
  
  private aaf i()
  {
    if (g == null) {
      g = new aaf();
    }
    return g;
  }
  
  public int a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= d.u.d())) {
      throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + d.u.d());
    }
    if (!d.u.a()) {
      return paramInt;
    }
    return d.c.b(paramInt);
  }
  
  public void a()
  {
    a.clear();
    h();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i;
    int j;
    int k;
    int m;
    label25:
    aao localaao;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
      k = paramInt1;
      int n = c.size();
      m = 0;
      if (m >= n) {
        return;
      }
      localaao = (aao)c.get(m);
      if ((localaao != null) && (b >= k) && (b <= j))
      {
        if (b != paramInt1) {
          break label109;
        }
        localaao.a(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      m += 1;
      break label25;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label109:
      localaao.a(i, false);
    }
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = c.size() - 1;
    if (i >= 0)
    {
      aao localaao = (aao)c.get(i);
      if (localaao != null)
      {
        if (localaao.d() < paramInt1 + paramInt2) {
          break label63;
        }
        localaao.a(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i -= 1;
        break;
        label63:
        if (localaao.d() >= paramInt1)
        {
          localaao.b(8);
          d(i);
        }
      }
    }
  }
  
  void a(aao paramaao)
  {
    boolean bool = true;
    int k = 0;
    Object localObject;
    if ((paramaao.e()) || (a.getParent() != null))
    {
      localObject = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramaao.e()).append(" isAttached:");
      if (a.getParent() != null) {}
      for (;;)
      {
        throw new IllegalArgumentException(bool);
        bool = false;
      }
    }
    if (paramaao.n()) {
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramaao);
    }
    if (paramaao.c()) {
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    int j;
    int i;
    if ((i & 0x10) == 0)
    {
      localObject = a;
      if (ks.a.l((View)localObject))
      {
        j = 1;
        if ((d.g != null) && (j != 0)) {
          localObject = d.g;
        }
        if (!paramaao.s()) {
          break label298;
        }
        if (paramaao.a(14)) {
          break label293;
        }
        i = c.size();
        if ((i == f) && (i > 0)) {
          d(0);
        }
        if (i >= f) {
          break label293;
        }
        c.add(paramaao);
        i = 1;
        label243:
        if (i != 0) {
          break label290;
        }
        c(paramaao);
        k = 1;
      }
    }
    for (;;)
    {
      d.e.e(paramaao);
      if ((i == 0) && (k == 0) && (j != 0)) {
        o = null;
      }
      return;
      j = 0;
      break;
      label290:
      continue;
      label293:
      i = 0;
      break label243;
      label298:
      i = 0;
    }
  }
  
  public void a(View paramView)
  {
    aao localaao = RecyclerView.b(paramView);
    if (localaao.n()) {
      d.removeDetachedView(paramView, false);
    }
    if (localaao.e()) {
      localaao.f();
    }
    for (;;)
    {
      a(localaao);
      return;
      if (localaao.g()) {
        localaao.h();
      }
    }
  }
  
  public void a(zu paramzu1, zu paramzu2, boolean paramBoolean)
  {
    a();
    i().a(paramzu1, paramzu2, false);
  }
  
  public View b(int paramInt)
  {
    boolean bool2 = true;
    if ((paramInt < 0) || (paramInt >= d.u.d())) {
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + d.u.d());
    }
    Object localObject2;
    int i;
    if (d.u.a())
    {
      localObject2 = e(paramInt);
      if (localObject2 != null) {
        i = 1;
      }
    }
    for (;;)
    {
      Object localObject1 = localObject2;
      boolean bool1;
      if (localObject2 == null)
      {
        localObject2 = a(paramInt, false);
        localObject1 = localObject2;
        if (localObject2 != null) {
          if (((aao)localObject2).m())
          {
            bool1 = d.u.a();
            label148:
            if (bool1) {
              break label458;
            }
            ((aao)localObject2).b(4);
            if (!((aao)localObject2).e()) {
              break label442;
            }
            d.removeDetachedView(a, false);
            ((aao)localObject2).f();
            label185:
            a((aao)localObject2);
            localObject1 = null;
          }
        }
      }
      for (;;)
      {
        Object localObject3 = localObject1;
        int k = i;
        label442:
        label458:
        int j;
        if (localObject1 == null)
        {
          k = d.c.b(paramInt);
          if ((k < 0) || (k >= d.g.a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + k + ").state:" + d.u.d());
            i = 0;
            break;
            if ((b < 0) || (b >= d.g.a())) {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2);
            }
            if ((!d.u.a()) && (d.g.a(b) != e))
            {
              bool1 = false;
              break label148;
            }
            if ((d.g.b) && (d != d.g.b(b)))
            {
              bool1 = false;
              break label148;
            }
            bool1 = true;
            break label148;
            if (!((aao)localObject2).g()) {
              break label185;
            }
            ((aao)localObject2).h();
            break label185;
            i = 1;
            localObject1 = localObject2;
            continue;
          }
          int m = d.g.a(k);
          localObject2 = localObject1;
          j = i;
          if (d.g.b)
          {
            localObject1 = a(d.g.b(k), m, false);
            localObject2 = localObject1;
            j = i;
            if (localObject1 != null)
            {
              b = k;
              j = 1;
              localObject2 = localObject1;
            }
          }
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = localObject2;
            if (h != null)
            {
              localObject3 = h.e();
              localObject1 = localObject2;
              if (localObject3 != null)
              {
                localObject2 = d.a((View)localObject3);
                if (localObject2 == null) {
                  throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                }
                localObject1 = localObject2;
                if (((aao)localObject2).c()) {
                  throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                }
              }
            }
          }
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = i().a(m);
            if (localObject2 != null)
            {
              ((aao)localObject2).r();
              if ((RecyclerView.a) && ((a instanceof ViewGroup))) {
                a((ViewGroup)a, false);
              }
            }
          }
          localObject3 = localObject2;
          k = j;
          if (localObject2 == null)
          {
            localObject1 = d.g;
            localObject2 = d;
            aal.a("RV CreateView");
            localObject2 = ((zu)localObject1).a((ViewGroup)localObject2, m);
            e = m;
            aal.b();
          }
        }
        for (i = j;; i = k)
        {
          if ((i != 0) && (!d.u.a()) && (((aao)localObject2).a(8192)))
          {
            ((aao)localObject2).a(0, 8192);
            if (d.u.g)
            {
              zx.c((aao)localObject2);
              localObject1 = d.s;
              localObject3 = d.u;
              ((aao)localObject2).q();
              localObject1 = ((zx)localObject1).a((aao)localObject2);
              d.a((aao)localObject2, (zz)localObject1);
            }
          }
          if ((d.u.a()) && (((aao)localObject2).l()))
          {
            f = paramInt;
            paramInt = 0;
          }
          for (;;)
          {
            localObject1 = a.getLayoutParams();
            if (localObject1 == null)
            {
              localObject1 = (aac)d.generateDefaultLayoutParams();
              a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              label915:
              c = ((aao)localObject2);
              if ((i == 0) || (paramInt == 0)) {
                break label1196;
              }
            }
            label1196:
            for (bool1 = bool2;; bool1 = false)
            {
              f = bool1;
              return a;
              if ((((aao)localObject2).l()) && (!((aao)localObject2).k()) && (!((aao)localObject2).j())) {
                break label1202;
              }
              j = d.c.b(paramInt);
              o = d;
              localObject1 = d.g;
              b = j;
              if (b) {
                d = ((zu)localObject1).b(j);
              }
              ((aao)localObject2).a(1, 519);
              aal.a("RV OnBindView");
              ((aao)localObject2).q();
              ((zu)localObject1).b((aao)localObject2, j);
              ((aao)localObject2).p();
              aal.b();
              localObject1 = a;
              if (d.q())
              {
                if (ks.a.n((View)localObject1) == 0) {
                  ks.c((View)localObject1, 1);
                }
                if (!ks.a.j((View)localObject1)) {
                  ks.a((View)localObject1, d.y.b());
                }
              }
              if (d.u.a()) {
                f = paramInt;
              }
              paramInt = 1;
              break;
              if (!d.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
              {
                localObject1 = (aac)d.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
                a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                break label915;
              }
              localObject1 = (aac)localObject1;
              break label915;
            }
            label1202:
            paramInt = 0;
          }
          localObject2 = localObject3;
        }
      }
      localObject2 = null;
      i = 0;
    }
  }
  
  public List<aao> b()
  {
    return e;
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      aao localaao = (aao)c.get(i);
      if ((localaao != null) && (localaao.d() >= paramInt1)) {
        localaao.a(paramInt2, true);
      }
      i += 1;
    }
  }
  
  public void b(aao paramaao)
  {
    if (m) {
      b.remove(paramaao);
    }
    for (;;)
    {
      l = null;
      m = false;
      paramaao.h();
      return;
      a.remove(paramaao);
    }
  }
  
  void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    l = null;
    m = false;
    paramView.h();
    a(paramView);
  }
  
  int c()
  {
    return a.size();
  }
  
  View c(int paramInt)
  {
    return a.get(paramInt)).a;
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    int i = c.size() - 1;
    while (i >= 0)
    {
      aao localaao = (aao)c.get(i);
      if (localaao != null)
      {
        int j = localaao.d();
        if ((j >= paramInt1) && (j < paramInt1 + paramInt2))
        {
          localaao.b(2);
          d(i);
        }
      }
      i -= 1;
    }
  }
  
  void c(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    int i;
    if ((!paramView.a(12)) && (paramView.t()))
    {
      RecyclerView localRecyclerView = d;
      if ((s != null) && (!s.f(paramView))) {
        break label88;
      }
      i = 1;
    }
    while (i != 0) {
      if ((paramView.j()) && (!paramView.m()) && (!d.g.b))
      {
        throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
        label88:
        i = 0;
      }
      else
      {
        paramView.a(this, false);
        a.add(paramView);
        return;
      }
    }
    if (b == null) {
      b = new ArrayList();
    }
    paramView.a(this, true);
    b.add(paramView);
  }
  
  void d()
  {
    a.clear();
    if (b != null) {
      b.clear();
    }
  }
  
  public void e()
  {
    int j;
    int i;
    if ((d.g != null) && (d.g.b))
    {
      j = c.size();
      i = 0;
    }
    while (i < j)
    {
      aao localaao = (aao)c.get(i);
      if (localaao != null)
      {
        localaao.b(6);
        localaao.a(null);
      }
      i += 1;
      continue;
      h();
    }
  }
  
  public void f()
  {
    int j = 0;
    int k = c.size();
    int i = 0;
    while (i < k)
    {
      ((aao)c.get(i)).a();
      i += 1;
    }
    k = a.size();
    i = 0;
    while (i < k)
    {
      ((aao)a.get(i)).a();
      i += 1;
    }
    if (b != null)
    {
      k = b.size();
      i = j;
      while (i < k)
      {
        ((aao)b.get(i)).a();
        i += 1;
      }
    }
  }
  
  public void g()
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      aac localaac = (aac)c.get(i)).a.getLayoutParams();
      if (localaac != null) {
        e = true;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     aag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */