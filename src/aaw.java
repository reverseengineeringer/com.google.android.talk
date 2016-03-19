import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aaw
  extends zx
{
  boolean a = true;
  ArrayList<aao> b;
  ArrayList<aao> c;
  ArrayList<ym> d;
  ArrayList<yl> e;
  ArrayList<ArrayList<aao>> f;
  ArrayList<ArrayList<ym>> g;
  ArrayList<ArrayList<yl>> h;
  ArrayList<aao> i;
  ArrayList<aao> j;
  ArrayList<aao> k;
  ArrayList<aao> l;
  
  public aaw() {}
  
  public aaw(byte paramByte)
  {
    this();
    b = new ArrayList();
    c = new ArrayList();
    d = new ArrayList();
    e = new ArrayList();
    f = new ArrayList();
    g = new ArrayList();
    h = new ArrayList();
    i = new ArrayList();
    j = new ArrayList();
    k = new ArrayList();
    l = new ArrayList();
  }
  
  static void a(List<aao> paramList)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      View localView = geta;
      ks.a.k(localView).b();
      m -= 1;
    }
  }
  
  void a(List<yl> paramList, aao paramaao)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      yl localyl = (yl)paramList.get(m);
      if ((a(localyl, paramaao)) && (a == null) && (b == null)) {
        paramList.remove(localyl);
      }
      m -= 1;
    }
  }
  
  void a(yl paramyl)
  {
    if (a != null) {
      a(paramyl, a);
    }
    if (b != null) {
      a(paramyl, b);
    }
  }
  
  public boolean a(aao paramaao, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView1 = a;
    float f1 = paramInt1;
    View localView2 = a;
    paramInt1 = (int)(f1 + ks.a.f(localView2));
    f1 = paramInt2;
    localView2 = a;
    paramInt2 = (int)(f1 + ks.a.g(localView2));
    i(paramaao);
    int m = paramInt3 - paramInt1;
    int n = paramInt4 - paramInt2;
    if ((m == 0) && (n == 0))
    {
      e(paramaao);
      return false;
    }
    if (m != 0) {
      ks.a(localView1, -m);
    }
    if (n != 0) {
      ks.b(localView1, -n);
    }
    d.add(new ym(paramaao, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public boolean a(aao paramaao1, aao paramaao2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramaao1 == paramaao2) {
      return a(paramaao1, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    View localView = a;
    float f1 = ks.a.f(localView);
    localView = a;
    float f2 = ks.a.g(localView);
    localView = a;
    float f3 = ks.a.b(localView);
    i(paramaao1);
    int m = (int)(paramInt3 - paramInt1 - f1);
    int n = (int)(paramInt4 - paramInt2 - f2);
    ks.a(a, f1);
    ks.b(a, f2);
    ks.c(a, f3);
    if (paramaao2 != null)
    {
      i(paramaao2);
      ks.a(a, -m);
      ks.b(a, -n);
      ks.c(a, 0.0F);
    }
    e.add(new yl(paramaao1, paramaao2, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public boolean a(aao paramaao1, aao paramaao2, zz paramzz1, zz paramzz2)
  {
    int i1 = a;
    int i2 = b;
    int m;
    if (paramaao2.c()) {
      m = a;
    }
    for (int n = b;; n = b)
    {
      return a(paramaao1, paramaao2, i1, i2, m, n);
      m = a;
    }
  }
  
  public boolean a(aao paramaao, zz paramzz1, zz paramzz2)
  {
    int i1 = a;
    int i2 = b;
    paramzz1 = a;
    int m;
    if (paramzz2 == null)
    {
      m = paramzz1.getLeft();
      if (paramzz2 != null) {
        break label103;
      }
    }
    label103:
    for (int n = paramzz1.getTop();; n = b)
    {
      if ((paramaao.m()) || ((i1 == m) && (i2 == n))) {
        break label112;
      }
      paramzz1.layout(m, n, paramzz1.getWidth() + m, paramzz1.getHeight() + n);
      return a(paramaao, i1, i2, m, n);
      m = a;
      break;
    }
    label112:
    return g(paramaao);
  }
  
  boolean a(yl paramyl, aao paramaao)
  {
    if (b == paramaao) {
      b = null;
    }
    for (;;)
    {
      ks.c(a, 1.0F);
      ks.a(a, 0.0F);
      ks.b(a, 0.0F);
      e(paramaao);
      return true;
      if (a != paramaao) {
        break;
      }
      a = null;
    }
    return false;
  }
  
  public boolean b(aao paramaao, zz paramzz1, zz paramzz2)
  {
    if ((paramzz1 != null) && ((a != a) || (b != b))) {
      return a(paramaao, a, b, a, b);
    }
    return h(paramaao);
  }
  
  public boolean c(aao paramaao, zz paramzz1, zz paramzz2)
  {
    if ((a != a) || (b != b)) {
      return a(paramaao, a, b, a, b);
    }
    e(paramaao);
    return false;
  }
  
  public void d(aao paramaao)
  {
    View localView = a;
    ks.a.k(localView).b();
    int m = d.size() - 1;
    while (m >= 0)
    {
      if (d.get(m)).a == paramaao)
      {
        ks.b(localView, 0.0F);
        ks.a(localView, 0.0F);
        e(paramaao);
        d.remove(m);
      }
      m -= 1;
    }
    a(e, paramaao);
    if (b.remove(paramaao))
    {
      ks.c(localView, 1.0F);
      e(paramaao);
    }
    if (c.remove(paramaao))
    {
      ks.c(localView, 1.0F);
      e(paramaao);
    }
    m = h.size() - 1;
    ArrayList localArrayList;
    while (m >= 0)
    {
      localArrayList = (ArrayList)h.get(m);
      a(localArrayList, paramaao);
      if (localArrayList.isEmpty()) {
        h.remove(m);
      }
      m -= 1;
    }
    m = g.size() - 1;
    if (m >= 0)
    {
      localArrayList = (ArrayList)g.get(m);
      int n = localArrayList.size() - 1;
      for (;;)
      {
        if (n >= 0)
        {
          if (geta != paramaao) {
            break label296;
          }
          ks.b(localView, 0.0F);
          ks.a(localView, 0.0F);
          e(paramaao);
          localArrayList.remove(n);
          if (localArrayList.isEmpty()) {
            g.remove(m);
          }
        }
        m -= 1;
        break;
        label296:
        n -= 1;
      }
    }
    m = f.size() - 1;
    while (m >= 0)
    {
      localArrayList = (ArrayList)f.get(m);
      if (localArrayList.remove(paramaao))
      {
        ks.c(localView, 1.0F);
        e(paramaao);
        if (localArrayList.isEmpty()) {
          f.remove(m);
        }
      }
      m -= 1;
    }
    k.remove(paramaao);
    i.remove(paramaao);
    l.remove(paramaao);
    j.remove(paramaao);
    j();
  }
  
  public void e()
  {
    int m;
    int n;
    label24:
    int i1;
    if (!b.isEmpty())
    {
      m = 1;
      if (d.isEmpty()) {
        break label72;
      }
      n = 1;
      if (e.isEmpty()) {
        break label77;
      }
      i1 = 1;
      label36:
      if (c.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int i2 = 1;; i2 = 0)
    {
      if ((m != 0) || (n != 0) || (i2 != 0) || (i1 != 0)) {
        break label88;
      }
      return;
      m = 0;
      break;
      n = 0;
      break label24;
      i1 = 0;
      break label36;
    }
    label88:
    Object localObject1 = b.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (aao)((Iterator)localObject1).next();
      Object localObject3 = a;
      localObject3 = ks.a.k((View)localObject3);
      k.add(localObject2);
      ((md)localObject3).a(c()).a(0.0F).a(new yg(this, (aao)localObject2, (md)localObject3)).c();
    }
    b.clear();
    label267:
    label347:
    long l1;
    label422:
    long l2;
    if (n != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(d);
      g.add(localObject1);
      d.clear();
      localObject2 = new yd(this, (ArrayList)localObject1);
      if (m != 0) {
        ks.a(get0a.a, (Runnable)localObject2, c());
      }
    }
    else
    {
      if (i1 != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(e);
        h.add(localObject1);
        e.clear();
        localObject2 = new ye(this, (ArrayList)localObject1);
        if (m == 0) {
          break label484;
        }
        ks.a(get0a.a, (Runnable)localObject2, c());
      }
      if (i2 == 0) {
        break label492;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(c);
      f.add(localObject1);
      c.clear();
      localObject2 = new yf(this, (ArrayList)localObject1);
      if ((m == 0) && (n == 0) && (i1 == 0)) {
        break label512;
      }
      if (m == 0) {
        break label494;
      }
      l1 = c();
      if (n == 0) {
        break label500;
      }
      l2 = a();
      label432:
      if (i1 == 0) {
        break label506;
      }
    }
    label484:
    label492:
    label494:
    label500:
    label506:
    for (long l3 = d();; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      ks.a(get0a, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label267;
      ((Runnable)localObject2).run();
      break label347;
      break;
      l1 = 0L;
      break label422;
      l2 = 0L;
      break label432;
    }
    label512:
    ((Runnable)localObject2).run();
  }
  
  public void f()
  {
    int m = d.size() - 1;
    Object localObject1;
    Object localObject2;
    while (m >= 0)
    {
      localObject1 = (ym)d.get(m);
      localObject2 = a.a;
      ks.b((View)localObject2, 0.0F);
      ks.a((View)localObject2, 0.0F);
      e(a);
      d.remove(m);
      m -= 1;
    }
    m = b.size() - 1;
    while (m >= 0)
    {
      e((aao)b.get(m));
      b.remove(m);
      m -= 1;
    }
    m = c.size() - 1;
    while (m >= 0)
    {
      localObject1 = (aao)c.get(m);
      ks.c(a, 1.0F);
      e((aao)localObject1);
      c.remove(m);
      m -= 1;
    }
    m = e.size() - 1;
    while (m >= 0)
    {
      a((yl)e.get(m));
      m -= 1;
    }
    e.clear();
    if (!g()) {
      return;
    }
    m = g.size() - 1;
    int n;
    while (m >= 0)
    {
      localObject1 = (ArrayList)g.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        localObject2 = (ym)((ArrayList)localObject1).get(n);
        View localView = a.a;
        ks.b(localView, 0.0F);
        ks.a(localView, 0.0F);
        e(a);
        ((ArrayList)localObject1).remove(n);
        if (((ArrayList)localObject1).isEmpty()) {
          g.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    m = f.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ArrayList)f.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        localObject2 = (aao)((ArrayList)localObject1).get(n);
        ks.c(a, 1.0F);
        e((aao)localObject2);
        ((ArrayList)localObject1).remove(n);
        if (((ArrayList)localObject1).isEmpty()) {
          f.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    m = h.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ArrayList)h.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        a((yl)((ArrayList)localObject1).get(n));
        if (((ArrayList)localObject1).isEmpty()) {
          h.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    a(k);
    a(j);
    a(i);
    a(l);
    h();
  }
  
  public boolean f(aao paramaao)
  {
    return (!a) || (paramaao.j());
  }
  
  public boolean g()
  {
    return (!c.isEmpty()) || (!e.isEmpty()) || (!d.isEmpty()) || (!b.isEmpty()) || (!j.isEmpty()) || (!k.isEmpty()) || (!i.isEmpty()) || (!l.isEmpty()) || (!g.isEmpty()) || (!f.isEmpty()) || (!h.isEmpty());
  }
  
  public boolean g(aao paramaao)
  {
    i(paramaao);
    b.add(paramaao);
    return true;
  }
  
  public boolean h(aao paramaao)
  {
    i(paramaao);
    ks.c(a, 0.0F);
    c.add(paramaao);
    return true;
  }
  
  void i(aao paramaao)
  {
    View localView = a;
    ah.a.a(localView);
    d(paramaao);
  }
  
  void j()
  {
    if (!g()) {
      h();
    }
  }
}

/* Location:
 * Qualified Name:     aaw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */