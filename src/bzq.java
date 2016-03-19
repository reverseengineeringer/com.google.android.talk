import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Patterns;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bzq
  implements Serializable
{
  private static boolean a = false;
  private String b;
  private String c;
  private String d;
  private final List<Long> e = new ArrayList();
  private List<bzs> f = new ArrayList();
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public bzq() {}
  
  public bzq(bzv parambzv)
  {
    this(null, null, null, Arrays.asList(new bzv[] { parambzv }), null, null);
  }
  
  public bzq(String paramString1, String paramString2, String paramString3, Iterable<bzv> paramIterable, Iterable<bzt> paramIterable1, Iterable<Long> paramIterable2)
  {
    b = paramString1;
    c = paramString2;
    if (!TextUtils.isEmpty(c))
    {
      paramString1 = c;
      f.add(new bzu(paramString1));
    }
    d = paramString3;
    if (paramIterable2 != null)
    {
      paramString1 = paramIterable2.iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (Long)paramString1.next();
        e.add(paramString2);
      }
    }
    if (paramIterable1 != null)
    {
      paramString1 = paramIterable1.iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (bzt)paramString1.next();
        f.add(paramString2);
      }
    }
    if (paramIterable != null)
    {
      paramString1 = paramIterable.iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (bzv)paramString1.next();
        f.add(paramString2);
      }
    }
  }
  
  public static bzq a(gpr paramgpr)
  {
    return a(paramgpr, null);
  }
  
  public static bzq a(gpr paramgpr, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramgpr);
    return a(localArrayList, paramString);
  }
  
  public static bzq a(List<gpr> paramList)
  {
    return a(paramList, null);
  }
  
  private static bzq a(List<gpr> paramList, String paramString)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    Object localObject2 = (gpr)paramList.get(0);
    Object localObject1 = ((gpr)localObject2).a();
    String str = ((gpr)localObject2).e();
    Object localObject3 = ((gpr)localObject2).h();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    HashSet localHashSet;
    int i;
    label111:
    Object localObject5;
    Object localObject4;
    if (paramString == null)
    {
      localObject2 = null;
      localHashSet = new HashSet();
      Iterator localIterator = paramList.iterator();
      paramList = (List<gpr>)localObject1;
      i = 0;
      localObject1 = localObject3;
      if (!localIterator.hasNext()) {
        break label628;
      }
      localObject5 = (gpr)localIterator.next();
      if (a)
      {
        localObject3 = String.valueOf(((gpr)localObject5).a());
        localObject4 = String.valueOf(((gpr)localObject5).e());
        new StringBuilder(String.valueOf(localObject3).length() + 37 + String.valueOf(localObject4).length() + String.valueOf(paramString).length()).append("Aggregated contact:").append((String)localObject3).append(" Gaia:").append((String)localObject4).append(" Only phone:").append(paramString);
      }
      if (!((gpr)localObject5).f()) {
        break label697;
      }
      localObject3 = ((gpr)localObject5).a();
      localObject4 = ((gpr)localObject5).h();
      paramList = (List<gpr>)localObject3;
      if (!TextUtils.isEmpty((CharSequence)localObject4))
      {
        localObject1 = localObject4;
        paramList = (List<gpr>)localObject3;
      }
    }
    label453:
    label628:
    label684:
    label697:
    for (;;)
    {
      localObject4 = ((gpr)localObject5).b().iterator();
      Object localObject6;
      for (;;)
      {
        if (((Iterator)localObject4).hasNext())
        {
          localObject6 = (Long)((Iterator)localObject4).next();
          localObject3 = localObject1;
          if (TextUtils.isEmpty((CharSequence)localObject1)) {
            localObject3 = eia.a((Long)localObject6);
          }
          localArrayList1.add(localObject6);
          localObject1 = localObject3;
          continue;
          localObject2 = ezm.k(paramString);
          break;
        }
      }
      localObject3 = ((gpr)localObject5).P_().iterator();
      if (((Iterator)localObject3).hasNext())
      {
        localObject4 = (gps)((Iterator)localObject3).next();
        if (a)
        {
          localObject6 = String.valueOf(((gps)localObject4).b());
          if (((String)localObject6).length() == 0) {
            break label453;
          }
          "Email:".concat((String)localObject6);
        }
        for (;;)
        {
          localArrayList3.add(new bzt(((gps)localObject4).b(), ((gps)localObject4).a()));
          break;
          new String("Email:");
        }
      }
      localObject3 = ((gpr)localObject5).d().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (gpy)((Iterator)localObject3).next();
        localObject5 = ((gpy)localObject4).b();
        localObject6 = ezm.k((String)localObject5);
        if (localHashSet.contains(localObject6))
        {
          if (a)
          {
            localObject4 = String.valueOf(localObject5);
            if (((String)localObject4).length() != 0) {
              "Skip duplicate phone:".concat((String)localObject4);
            } else {
              new String("Skip duplicate phone:");
            }
          }
        }
        else
        {
          localHashSet.add(localObject6);
          if ((localObject2 == null) || (((String)localObject2).equals(localObject6)))
          {
            localArrayList2.add(new bzv((String)localObject5, ((gpy)localObject4).a()));
            i = 1;
          }
        }
      }
      break label111;
      if ((localObject2 != null) && (i == 0))
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {
          break label684;
        }
      }
      for (paramString = "Only phone number to include not found:".concat(paramString);; paramString = new String("Only phone number to include not found:"))
      {
        ezi.e("Babel", paramString, new Object[0]);
        return new bzq(paramList, str, (String)localObject1, localArrayList2, localArrayList3, localArrayList1);
      }
    }
  }
  
  public static boolean a(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (Patterns.EMAIL_ADDRESS.matcher(paramString).matches());
  }
  
  public static String b(String paramString)
  {
    return ezm.k(paramString);
  }
  
  public static boolean b(gpr paramgpr)
  {
    paramgpr = paramgpr.d();
    boolean bool;
    if ((paramgpr instanceof Collection)) {
      bool = ((Collection)paramgpr).isEmpty();
    }
    while (!bool)
    {
      return true;
      if (!paramgpr.iterator().hasNext()) {
        bool = true;
      } else {
        bool = false;
      }
    }
    return false;
  }
  
  public static String c(gpr paramgpr)
  {
    Iterator localIterator = paramgpr.P_().iterator();
    if (localIterator.hasNext()) {
      return ((gps)localIterator.next()).b();
    }
    paramgpr = paramgpr.d().iterator();
    if (paramgpr.hasNext()) {
      return ((gpy)paramgpr.next()).b();
    }
    return null;
  }
  
  public static boolean c(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (!PhoneNumberUtils.isWellFormedSmsAddress(paramString))) {}
    do
    {
      do
      {
        return true;
      } while (emy.a().a(paramString));
      paramString = PhoneNumberUtils.extractNetworkPortion(paramString);
    } while ((TextUtils.isEmpty(paramString)) || (paramString.length() < 3));
    return false;
  }
  
  public long a()
  {
    if (!e.isEmpty()) {
      return aal.a((Long)e.get(0), 0L);
    }
    return -1L;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return b;
  }
  
  public String d()
  {
    return d;
  }
  
  public bzv e()
  {
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      bzs localbzs = (bzs)localIterator.next();
      if ((localbzs instanceof bzv)) {
        return (bzv)localbzs;
      }
    }
    return null;
  }
  
  public List<bzv> f()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      bzs localbzs = (bzs)localIterator.next();
      if ((localbzs instanceof bzv)) {
        localArrayList.add((bzv)localbzs);
      }
    }
    return localArrayList;
  }
  
  public List<bzt> g()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      bzs localbzs = (bzs)localIterator.next();
      if ((localbzs instanceof bzt)) {
        localArrayList.add((bzt)localbzs);
      }
    }
    return localArrayList;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Number of details ").append(f.size()).append("\n");
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append((bzs)localIterator.next()).append("\n");
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     bzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */