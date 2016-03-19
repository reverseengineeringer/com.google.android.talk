import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class bkm
  implements bju, ioo, ioz
{
  final Context a;
  ezz b;
  private final bg c;
  private final String d = getClass().getName();
  private faa e = new bkn(this);
  
  public bkm(Context paramContext, iog paramiog, bg parambg)
  {
    a = paramContext;
    c = parambg;
    paramiog.a(this);
  }
  
  private void a(boolean paramBoolean)
  {
    Object localObject = c.a(d);
    bz localbz = c.a();
    String str;
    bfd localbfd;
    ArrayList localArrayList;
    Resources localResources;
    if (localObject != null)
    {
      localbz.a((av)localObject);
      localObject = (fab)ilh.a(a, fab.class);
      str = a.getResources().getString(aal.jo);
      localbfd = dvd.e(((hpu)ilh.a(a, hpu.class)).a());
      localArrayList = new ArrayList();
      localArrayList.add(new fac(a.getResources().getString(aal.jh), bfd.F(), aal.jg));
      localResources = a.getResources();
      if (!localbfd.R()) {
        break label222;
      }
    }
    label222:
    for (int i = aal.jj;; i = aal.ji)
    {
      localArrayList.add(new fac(localResources.getString(i), localbfd.u(), aal.jg));
      b = ((fab)localObject).a(str, localArrayList);
      b.a(e);
      b.a(localbz, d);
      return;
      if (paramBoolean) {
        break;
      }
      return;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    a(false);
  }
  
  public void a(bkw parambkw, Collection<axt> paramCollection)
  {
    bjv localbjv = (bjv)ilh.a(a, bjv.class);
    switch (bko.a[parambkw.ordinal()])
    {
    default: 
      parambkw = String.valueOf(parambkw);
      throw new IllegalArgumentException(String.valueOf(parambkw).length() + 27 + "Unknown conversation type: " + parambkw);
    case 1: 
    case 2: 
    case 3: 
      localbjv.a(1);
      return;
    }
    parambkw = dvd.e(((hpu)ilh.a(a, hpu.class)).a());
    if (parambkw.K())
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext()) {
        if (ezm.j(nextbd))
        {
          localbjv.a(3);
          return;
        }
      }
    }
    if (paramCollection.size() > 1)
    {
      i = parambkw.g();
      if (!dvp.C.b(i))
      {
        hbs.a("Account is not carrier SMS capable", parambkw.n());
        localbjv.a(3);
        return;
      }
    }
    int j = parambkw.L();
    if (j == 0) {}
    for (int i = 1; i != 0; i = 0)
    {
      aal.a(parambkw, 2511);
      a(true);
      return;
    }
    localbjv.a(j);
  }
}

/* Location:
 * Qualified Name:     bkm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */