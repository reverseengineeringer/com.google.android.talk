import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;

final class clu
  implements cln
{
  static final boolean a = false;
  static final long b = TimeUnit.SECONDS.toMillis(30L);
  final cfc c = cfc.a();
  final clp d;
  final cly e;
  final clz f;
  final Map<String, khk> g;
  final List<clm> h;
  final Handler i;
  hbh j;
  khk k;
  khk l;
  int m;
  boolean n;
  boolean o;
  private final clx p;
  
  static
  {
    imx localimx = ezi.g;
  }
  
  public clu(Context paramContext)
  {
    d = ((clp)ilh.a(paramContext, clp.class));
    p = new clx(this);
    e = new cly(this);
    f = new clz(this);
    g = new LinkedHashMap();
    h = new CopyOnWriteArrayList();
    i = new Handler(Looper.getMainLooper());
    c.a(p);
  }
  
  private boolean d()
  {
    return (j != null) && (c.l()) && (d.a() == clq.d) && (b());
  }
  
  public khk a()
  {
    return k;
  }
  
  public void a(clm paramclm)
  {
    h.add(paramclm);
  }
  
  public void a(khk paramkhk)
  {
    ezi.c("Babel", String.format("Accepting knock (%s)", new Object[] { b }), new Object[0]);
    a(paramkhk, true);
  }
  
  void a(khk paramkhk, boolean paramBoolean)
  {
    if ((!d()) || (!g.containsKey(b))) {
      return;
    }
    khk localkhk = new khk();
    a = a;
    b = b;
    if (paramBoolean) {}
    for (int i1 = 12;; i1 = 11)
    {
      q = Integer.valueOf(i1);
      khp localkhp = new khp();
      c = new khk[] { localkhk };
      j.b(localkhp, new clv(this, paramkhk, paramBoolean));
      return;
    }
  }
  
  public void b(clm paramclm)
  {
    h.remove(paramclm);
  }
  
  public void b(khk paramkhk)
  {
    int i1 = 1;
    ezi.c("Babel", String.format("Rejecting knock (%s)", new Object[] { b }), new Object[0]);
    a(paramkhk, false);
    int i2 = m + 1;
    m = i2;
    if (i2 % 3L == 0L) {}
    while ((d.b()) && (i1 != 0))
    {
      paramkhk = h.iterator();
      while (paramkhk.hasNext()) {
        ((clm)paramkhk.next()).b();
      }
      i1 = 0;
    }
  }
  
  public boolean b()
  {
    return o;
  }
  
  void c()
  {
    Object localObject3 = null;
    if (!d())
    {
      if (k != null)
      {
        k = null;
        c(null);
      }
      return;
    }
    label37:
    khk localkhk;
    label51:
    Object localObject2;
    if (k == null)
    {
      localObject1 = null;
      if (!g.isEmpty()) {
        break label119;
      }
      localkhk = null;
      if (localkhk != null) {
        break label145;
      }
      localObject2 = null;
      label57:
      if (TextUtils.equals((CharSequence)localObject1, (CharSequence)localObject2)) {
        break label151;
      }
      if (localkhk != null) {
        break label153;
      }
    }
    label119:
    label145:
    label151:
    label153:
    for (Object localObject1 = localObject3;; localObject1 = b)
    {
      ezi.c("Babel", String.format("New head of knocking queue (%s)", new Object[] { localObject1 }), new Object[0]);
      k = localkhk;
      c(k);
      return;
      localObject1 = k.b;
      break label37;
      localkhk = (khk)g.values().iterator().next();
      break label51;
      localObject2 = b;
      break label57;
      break;
    }
  }
  
  void c(khk paramkhk)
  {
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((clm)localIterator.next()).a(paramkhk);
    }
  }
}

/* Location:
 * Qualified Name:     clu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */