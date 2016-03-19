import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ibw
  implements hpx, iaf
{
  final SparseArray<Intent> b = new SparseArray();
  final hvq c;
  final hpz d;
  final ihg e;
  final ibd f;
  iar g;
  private final Context h;
  private final List<iag> i = new ArrayList();
  private final Object j = new Object();
  private final hrq k;
  private final ExecutorService l;
  private hql m;
  private List<ias> n;
  
  public ibw(Context paramContext)
  {
    this(paramContext, Executors.newCachedThreadPool(new ibx()));
  }
  
  private ibw(Context paramContext, ExecutorService paramExecutorService)
  {
    h = paramContext;
    l = paramExecutorService;
    c = ((hvq)ilh.a(paramContext, hvq.class));
    m = ((hql)ilh.a(paramContext, hql.class));
    k = ((hrq)ilh.a(paramContext, hrq.class));
    d = ((hpz)ilh.a(paramContext, hpz.class));
    e = ((ihg)ilh.a(paramContext, ihg.class));
    n = ilh.c(paramContext, ias.class);
    g = ((iar)ilh.b(paramContext, iar.class));
    f = ((ibd)ilh.a(paramContext, ibd.class));
  }
  
  static IOException a(ihi paramihi)
  {
    Exception localException = m;
    if (localException != null) {
      return new IOException("Rpc failed", localException);
    }
    if (paramihi.m())
    {
      int i1 = k;
      return new IOException(32 + "RPC failed with code " + i1);
    }
    return null;
  }
  
  private boolean a(int paramInt, iah paramiah)
  {
    long l1;
    if (paramInt != -1)
    {
      hqb localhqb = d.a(paramInt);
      l1 = localhqb.a("LoginManager.last_updated", 0L);
      if (localhqb.d("logged_out")) {
        break label76;
      }
      if (!d(paramInt)) {
        break label50;
      }
    }
    label50:
    while ((!paramiah.a()) && (c.a() - l1 >= paramiah.b())) {
      return true;
    }
    label76:
    return false;
  }
  
  static boolean a(hqc paramhqc, List<ial> paramList)
  {
    boolean bool = paramhqc.d("logged_in");
    int i2;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      int i1 = 1;
      i2 = i1;
      if (paramList.hasNext())
      {
        ial localial = (ial)paramList.next();
        if ((i1 != 0) && (localial.e(paramhqc))) {}
        for (i1 = 1;; i1 = 0) {
          break;
        }
      }
    }
    else
    {
      i2 = 1;
    }
    if (i2 == 0) {
      return false;
    }
    if (!bool)
    {
      if ((paramhqc.d("logged_out")) && (!paramhqc.d("has_irrecoverable_error"))) {
        paramhqc.c();
      }
      paramhqc.b("logged_in", true).b("logged_out", false);
    }
    return true;
  }
  
  private iba b(iah paramiah)
  {
    k.a();
    for (;;)
    {
      int i1;
      synchronized (j)
      {
        aal.x();
        hqi[] arrayOfhqi = m.a();
        Object localObject2 = new ArrayList(arrayOfhqi.length);
        int i2 = arrayOfhqi.length;
        i1 = 0;
        boolean bool;
        if (i1 < i2)
        {
          hqi localhqi = arrayOfhqi[i1];
          String str = localhqi.a();
          int i3 = d.b(str);
          bool = a(i3, paramiah);
          new StringBuilder(40).append("Account ").append(i3).append(" needs refresh: ").append(bool);
          if (!bool) {
            break label260;
          }
          ((List)localObject2).add(new ibz(this, localhqi, null, null, paramiah.c()));
          break label260;
        }
        paramiah = new iba();
        b((List)localObject2);
        a = true;
        localObject2 = ((List)localObject2).iterator();
        if (((Iterator)localObject2).hasNext())
        {
          ((ibz)((Iterator)localObject2).next()).a(paramiah);
          i1 = d;
          bool = a;
          new StringBuilder(45).append("Account update for ").append(i1).append(" success: ").append(bool);
        }
      }
      return paramiah;
      label260:
      i1 += 1;
    }
  }
  
  private void b(iaj paramiaj, String paramString, int paramInt)
  {
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext()) {
      ((iag)localIterator.next()).a(paramiaj, paramString, paramInt);
    }
  }
  
  private void b(List<ibz> paramList)
  {
    aal.x();
    b.clear();
    for (;;)
    {
      int i2;
      int i1;
      Object localObject4;
      synchronized (j)
      {
        int i4 = iav.a;
        int i5 = iav.b;
        i2 = 0;
        i1 = 0;
        if (i2 >= 2) {
          break label312;
        }
        i3 = new int[] { i4, i5 }[i2];
        localObject1 = new ArrayList();
        localObject2 = n.iterator();
        if (((Iterator)localObject2).hasNext())
        {
          localObject4 = (ias)((Iterator)localObject2).next();
          if (((ias)localObject4).a() != i3) {
            continue;
          }
          ((List)localObject1).add(localObject4);
        }
      }
      Object localObject2 = paramList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((ibz)((Iterator)localObject2).next()).a((List)localObject1);
      }
      Object localObject1 = new ArrayList(paramList);
      int i3 = 0;
      if ((i3 < 3) && (!((List)localObject1).isEmpty()))
      {
        localObject2 = new ArrayList();
        localObject4 = ((List)localObject1).iterator();
        while (((Iterator)localObject4).hasNext()) {
          ((ibz)((Iterator)localObject4).next()).b((List)localObject2);
        }
        try
        {
          l.invokeAll((Collection)localObject2);
          localObject2 = new ArrayList();
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject4 = (ibz)((Iterator)localObject1).next();
            if (!((ibz)localObject4).a())
            {
              ((List)localObject2).add(localObject4);
              continue;
              label312:
              if (i1 != 0) {
                Thread.currentThread().interrupt();
              }
              c(paramList);
              return;
            }
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          i1 = 1;
        }
        for (;;)
        {
          i3 += 1;
          break;
          localObject1 = localInterruptedException;
        }
      }
      i2 += 1;
    }
  }
  
  private static iah c()
  {
    return new iai().a(true).a().b().c();
  }
  
  private void c(List<ibz> paramList)
  {
    int i3 = 0;
    int i2 = 0;
    int i1 = 0;
    if (i3 < 3)
    {
      localArrayList = new ArrayList(paramList.size());
      localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(new iby(this, (ibz)localIterator.next()));
      }
      try
      {
        l.invokeAll(localArrayList);
        i1 = i2;
        i2 = 1;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          i4 = 1;
          i2 = i1;
          i1 = i4;
        }
        i4 = i3 + 1;
        i3 = i2;
        i2 = i1;
        i1 = i3;
        i3 = i4;
      }
      if (i2 == 0) {}
    }
    while (i2 == 0)
    {
      ArrayList localArrayList;
      Iterator localIterator;
      return;
      int i4;
      break;
    }
    Thread.currentThread().interrupt();
  }
  
  iba a(String paramString1, String paramString2, iaj paramiaj, boolean paramBoolean)
  {
    iba localiba = new iba();
    try
    {
      paramString1 = m.a(paramString1);
      if (paramString1 != null)
      {
        paramString1 = new ibz(this, paramString1, paramString2, paramiaj, paramBoolean);
        b(Collections.singletonList(paramString1));
        a = true;
        paramString1.a(localiba);
      }
      return localiba;
    }
    catch (hqn paramString1)
    {
      e = Collections.singletonList(paramString1);
    }
    return localiba;
  }
  
  List<ial> a(List<Class<? extends ial>> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Class localClass = (Class)paramList.next();
      localArrayList.add((ial)ilh.a(h, localClass));
    }
    return localArrayList;
  }
  
  public void a(int paramInt)
  {
    if (!d.d(paramInt)) {
      return;
    }
    synchronized (j)
    {
      f(paramInt);
      return;
    }
  }
  
  public void a(bg parambg, iaj paramiaj, String paramString)
  {
    ibp.a(parambg).a(paramiaj, paramString);
  }
  
  public void a(iag paramiag)
  {
    i.add(paramiag);
  }
  
  public void a(iah paramiah)
  {
    b(paramiah);
  }
  
  void a(iaj paramiaj, String paramString)
  {
    b(paramiaj, paramString, -1);
  }
  
  void a(iaj paramiaj, String paramString, int paramInt)
  {
    b(paramiaj, paramString, paramInt);
  }
  
  public void a(String paramString, iah paramiah)
  {
    int i1 = d.b(paramString);
    if ((i1 != -1) && (d.a(i1).d("logged_out"))) {
      throw new hzr("refreshAccount called for a logged out account");
    }
    if (a(i1, paramiah)) {
      a(paramString, null, null, paramiah.c());
    }
  }
  
  boolean a()
  {
    Object localObject = c();
    HashSet localHashSet = new HashSet();
    int i1;
    for (;;)
    {
      try
      {
        hqi[] arrayOfhqi = m.a();
        int i2 = arrayOfhqi.length;
        i1 = 0;
        if (i1 >= i2) {
          break;
        }
        String str = arrayOfhqi[i1].a();
        localHashSet.add(str);
        int i3 = d.b(str);
        if (a(i3, (iah)localObject))
        {
          new StringBuilder(68).append("Account ").append(i3).append(" is not ready for login because it needs refresh.");
          return false;
        }
      }
      catch (hqn localhqn)
      {
        if (Log.isLoggable("LoginManager", 6)) {
          Log.e("LoginManager", "Failed to obtain device accounts when checking if accounts are ready for login", localhqn);
        }
        return false;
      }
      i1 += 1;
    }
    localObject = d.a().iterator();
    while (((Iterator)localObject).hasNext())
    {
      i1 = ((Integer)((Iterator)localObject).next()).intValue();
      if (!localhqn.contains(d.a(i1).b("account_name")))
      {
        new StringBuilder(87).append("Account ").append(i1).append(" is not ready for login because account store has a removed account.");
        return false;
      }
    }
    return true;
  }
  
  public boolean a(iaj paramiaj, int paramInt)
  {
    boolean bool = d;
    if (!d.c(paramInt)) {}
    while ((b(paramiaj, paramInt) != null) || ((bool) && (!d.a(paramInt).d("logged_in")))) {
      return false;
    }
    return true;
  }
  
  ial b(iaj paramiaj, int paramInt)
  {
    Object localObject = new ArrayList();
    hqb localhqb = d.a(paramInt);
    if (g != null)
    {
      iar localiar = g;
      localhqb.b("account_name");
      localiar.a((List)localObject);
    }
    ((List)localObject).addAll(u);
    paramiaj = a((List)localObject).iterator();
    while (paramiaj.hasNext())
    {
      localObject = (ial)paramiaj.next();
      if (!((ial)localObject).e(localhqb)) {
        return (ial)localObject;
      }
    }
    return null;
  }
  
  iba b()
  {
    return b(c());
  }
  
  public void b(int paramInt) {}
  
  public void b(iag paramiag)
  {
    i.remove(paramiag);
  }
  
  public void c(int paramInt)
  {
    a(paramInt);
  }
  
  boolean d(int paramInt)
  {
    if (paramInt == -1) {}
    hqb localhqb;
    do
    {
      return true;
      localhqb = d.a(paramInt);
    } while (!TextUtils.equals(f.a(), localhqb.b("LoginManager.build_version")));
    return false;
  }
  
  void e(int paramInt)
  {
    List localList = ilh.c(h, iaw.class);
    int i2 = localList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((iaw)localList.get(i1)).a(paramInt);
      i1 += 1;
    }
  }
  
  void f(int paramInt)
  {
    if ((!d.d(paramInt)) && (d.e(paramInt))) {
      return;
    }
    Object localObject = d.a(paramInt);
    if (!((hqb)localObject).d("is_managed_account"))
    {
      localObject = ((hqb)localObject).b("account_name");
      List localList = d.a();
      int i2 = localList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        Integer localInteger = (Integer)localList.get(i1);
        hqb localhqb = d.a(localInteger.intValue());
        if ((localhqb.a()) && (localhqb.d("is_managed_account")) && (localhqb.b("account_name").equals(localObject))) {
          f(localInteger.intValue());
        }
        i1 += 1;
      }
    }
    d.b(paramInt).b("logged_out", true).b("logged_in", false).d();
    e(paramInt);
  }
  
  public Intent g(int paramInt)
  {
    return (Intent)b.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     ibw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */