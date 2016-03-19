import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class hrr
  implements hrq
{
  private final hpz a;
  private final hql b;
  
  hrr(Context paramContext)
  {
    a = ((hpz)ilh.a(paramContext, hpz.class));
    b = ((hql)ilh.a(paramContext, hql.class));
  }
  
  private void a(int paramInt, List<Integer> paramList)
  {
    Object localObject = a.a(paramInt);
    if (((hqb)localObject).d("is_managed_account")) {}
    for (;;)
    {
      return;
      localObject = ((hqb)localObject).b("account_name");
      List localList = a.a();
      int i = localList.size();
      paramInt = 0;
      while (paramInt < i)
      {
        Integer localInteger = (Integer)localList.get(paramInt);
        hqb localhqb = a.a(localInteger.intValue());
        if ((localhqb.d("is_managed_account")) && (localhqb.b("account_name").equals(localObject))) {
          paramList.add(localInteger);
        }
        paramInt += 1;
      }
    }
  }
  
  public void a()
  {
    Object localObject2;
    int i;
    for (;;)
    {
      try
      {
        HashMap localHashMap = new HashMap();
        localObject2 = b.a();
        int j = localObject2.length;
        i = 0;
        if (i < j)
        {
          localIterator2 = localObject2[i];
          localHashMap.put(localIterator2.a(), Integer.valueOf(localIterator2.b()));
          i += 1;
          continue;
        }
        localObject2 = new ArrayList();
        Iterator localIterator2 = a.a().iterator();
        if (!localIterator2.hasNext()) {
          break;
        }
        i = ((Integer)localIterator2.next()).intValue();
        hqb localhqb = a.a(i);
        if (localhqb.b("effective_gaia_id") != null) {
          continue;
        }
        String str = localhqb.b("account_name");
        if (localHashMap.containsKey(str))
        {
          if (((Integer)localHashMap.get(str)).intValue() == localhqb.a("device_index", -1)) {
            continue;
          }
          a.b(i).b("device_index", ((Integer)localHashMap.get(str)).intValue()).d();
          continue;
        }
        ((List)localObject2).add(Integer.valueOf(i));
      }
      finally {}
      a(i, (List)localObject2);
    }
    Iterator localIterator1 = ((List)localObject2).iterator();
    while (localIterator1.hasNext())
    {
      i = ((Integer)localIterator1.next()).intValue();
      a.f(i);
    }
  }
}

/* Location:
 * Qualified Name:     hrr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */