import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

public final class ehd
  extends eht
{
  public static final boolean a = false;
  public static final ConcurrentHashMap<Integer, ehd> c = new ConcurrentHashMap();
  final bfd b;
  private bfz d;
  private final Object f = new Object();
  
  static
  {
    imx localimx = ezi.q;
  }
  
  private ehd(bfd parambfd)
  {
    b = parambfd;
    d = null;
  }
  
  public static bet a(czb paramczb, bfd parambfd, ehg paramehg)
  {
    paramczb = aal.a(paramczb);
    if (!paramczb.a()) {
      ezi.d("Babel", "lookup spec for participantId invalid", new Throwable());
    }
    do
    {
      return null;
      paramczb = new bet(paramczb, paramehg);
    } while (a(parambfd).a(paramczb));
    return paramczb;
  }
  
  public static bet a(String paramString, boolean paramBoolean, bfd parambfd, ehh paramehh)
  {
    hbs.b("Expected non-null", paramehh);
    paramehh = new bip(paramString, paramBoolean, paramehh);
    paramString = paramehh;
    if (a(parambfd).a(paramehh)) {
      paramString = null;
    }
    return paramString;
  }
  
  public static ehd a(bfd parambfd)
  {
    int i = parambfd.g();
    if (i == -1) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.b("Invalid account ID specified", bool);
      ehd localehd2 = (ehd)c.get(Integer.valueOf(i));
      ehd localehd1 = localehd2;
      if (localehd2 == null)
      {
        if (a) {
          new StringBuilder(37).append("Adding contact loader for ").append(i);
        }
        parambfd = new ehd(parambfd);
        c.putIfAbsent(Integer.valueOf(i), parambfd);
        localehd1 = (ehd)c.get(Integer.valueOf(i));
      }
      return localehd1;
    }
  }
  
  public static void a(bfd parambfd, drb paramdrb)
  {
    int j = 1;
    ehd localehd = a(parambfd);
    HashSet localHashSet = new HashSet();
    parambfd = paramdrb.l();
    Object localObject;
    int i;
    if (parambfd != null)
    {
      localObject = localehd.b(parambfd);
      if (a)
      {
        Locale localLocale = Locale.US;
        if (localObject != null) {
          break label221;
        }
        i = 0;
        String.format(localLocale, "Clearing %d request from queue: %s", new Object[] { Integer.valueOf(i), parambfd });
      }
    }
    if ((parambfd == null) && (!paramdrb.n()))
    {
      i = j;
      label88:
      localehd.d();
      d.a();
    }
    for (;;)
    {
      try
      {
        paramdrb = paramdrb.k().iterator();
        if (!paramdrb.hasNext()) {
          break label257;
        }
        localObject = (eyu)paramdrb.next();
        if ((b == null) || (((cyx[])b).length <= 0)) {
          break label308;
        }
        parambfd = ((cyx[])b)[0];
        if (parambfd == null) {
          break label237;
        }
        if (d.a(parambfd, true)) {
          localHashSet.add(b);
        }
        if (i == 0) {
          continue;
        }
        localehd.a((dtt)a, parambfd);
        continue;
        i = ((List)localObject).size();
      }
      finally
      {
        d.c();
      }
      label221:
      break;
      i = 0;
      break label88;
      label237:
      if (i != 0)
      {
        localehd.a((dtt)a);
        continue;
        label257:
        d.b();
        d.c();
        if (!localHashSet.isEmpty())
        {
          d.a(localHashSet);
          bft.b(d);
          bft.d(d);
        }
        return;
        label308:
        parambfd = null;
      }
    }
  }
  
  public static void a(czb paramczb, bfd parambfd)
  {
    Object localObject = aal.a(paramczb);
    if (!((dtt)localObject).b())
    {
      ezi.d("Babel", "participantId not valid for DB lookup", new Throwable());
      return;
    }
    paramczb = new ArrayList();
    paramczb.add(localObject);
    localObject = String.valueOf(((dtt)localObject).c());
    paramczb = new bep(paramczb, String.valueOf(localObject).length() + 2 + "#" + (String)localObject + "#");
    a(parambfd).c(paramczb);
  }
  
  private void a(dtt paramdtt, cyx paramcyx)
  {
    if (a)
    {
      String str = String.valueOf(paramdtt);
      new StringBuilder(String.valueOf(str).length() + 20).append("Contact info ready: ").append(str);
    }
    if (!a(paramdtt.c())) {
      return;
    }
    a(new ehe(this, paramdtt, paramcyx));
  }
  
  public static void a(String paramString, bfd parambfd)
  {
    paramString = new bfa(paramString, parambfd);
    a(parambfd).c(paramString);
  }
  
  private void d()
  {
    synchronized (f)
    {
      if (d == null) {
        d = new bfz(aal.oJ, b.g());
      }
      return;
    }
  }
  
  protected String a()
  {
    return "ContactLoader";
  }
  
  public void a(dtt paramdtt)
  {
    if (ezi.a("Babel", 5))
    {
      String str = String.valueOf(paramdtt);
      ezi.d("Babel", String.valueOf(str).length() + 21 + "Contact info failed: " + str, new Object[0]);
    }
    if (!a(paramdtt.c())) {
      return;
    }
    a(new ehf(this, paramdtt));
  }
  
  protected void a(ArrayList<String> paramArrayList)
  {
    d();
    Iterator localIterator = paramArrayList.iterator();
    Object localObject1;
    Object localObject2;
    Object localObject3;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject1 = (String)localIterator.next();
        paramArrayList = new ArrayList();
        localObject2 = c((String)localObject1);
        if (localObject2 == null)
        {
          if (a)
          {
            paramArrayList = String.valueOf(localObject1);
            if (paramArrayList.length() != 0) {
              "No Contact Requests for key: ".concat(paramArrayList);
            } else {
              new String("No Contact Requests for key: ");
            }
          }
        }
        else if ((localObject2 instanceof bip))
        {
          hbs.b();
          localObject3 = (bip)localObject2;
          hbs.b();
          localObject2 = eie.a();
        }
      }
    }
    for (;;)
    {
      Object localObject4;
      try
      {
        localObject1 = bfz.a(((bip)localObject3).e(), (eie)localObject2);
        localObject4 = aal.oJ;
        String str = ((bip)localObject3).e();
        if (localObject1 == null)
        {
          paramArrayList = "";
          break label680;
          paramArrayList = aal.a((Context)localObject4, str, paramArrayList, (String)localObject1);
          a(((bip)localObject3).d(), paramArrayList);
          ((eie)localObject2).c();
          break;
        }
        paramArrayList = ((bzq)localObject1).c();
      }
      finally
      {
        ((eie)localObject2).c();
      }
      localObject1 = ((bzq)localObject1).d();
      continue;
      if ((localObject2 instanceof bfa))
      {
        paramArrayList = (bfa)localObject2;
        d.F(paramArrayList.a());
        break;
      }
      if ((localObject2 instanceof bep))
      {
        localObject1 = (bep)localObject2;
        d.a();
        for (;;)
        {
          try
          {
            localObject2 = ((bep)localObject1).a().iterator();
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            localObject3 = (dtt)((Iterator)localObject2).next();
            localObject4 = d.a((dtt)localObject3);
            if ((localObject4 != null) && (((cyx)localObject4).j() == null))
            {
              a((dtt)localObject3, (cyx)localObject4);
              continue;
            }
            if (!((dtt)localObject3).a()) {
              break label351;
            }
          }
          finally
          {
            d.c();
          }
          paramArrayList.add(localObject3);
          continue;
          label351:
          a((dtt)localObject3);
        }
        d.b();
        d.c();
        if (paramArrayList.size() <= 0) {
          break;
        }
        if (a)
        {
          localObject2 = String.valueOf(paramArrayList);
          new StringBuilder(String.valueOf(localObject2).length() + 33).append("Sending batch request to server: ").append((String)localObject2);
        }
        RealTimeChatService.a(b, paramArrayList, ((bep)localObject1).c(), false);
        break;
      }
      if (!(localObject2 instanceof bet)) {
        break;
      }
      localObject1 = ((bet)localObject2).d();
      localObject2 = d.a((dtt)localObject1);
      if ((localObject2 == null) || (((cyx)localObject2).j() != null))
      {
        if (a)
        {
          if (localObject2 != null) {
            break label547;
          }
          localObject2 = String.valueOf(localObject1);
          new StringBuilder(String.valueOf(localObject2).length() + 42).append("Contact info not in database, try server: ").append((String)localObject2);
        }
        for (;;)
        {
          paramArrayList.add(localObject1);
          RealTimeChatService.a(b, paramArrayList, null, false);
          break;
          label547:
          localObject3 = String.valueOf("Contact info is not in database: but we have already requested it: ");
          localObject2 = String.valueOf(((cyx)localObject2).j());
          if (((String)localObject2).length() != 0) {
            ((String)localObject3).concat((String)localObject2);
          } else {
            new String((String)localObject3);
          }
        }
      }
      if (a)
      {
        paramArrayList = String.valueOf(((dtt)localObject1).toString());
        localObject3 = String.valueOf(((cyx)localObject2).toString());
        new StringBuilder(String.valueOf(paramArrayList).length() + 42 + String.valueOf(localObject3).length()).append("Contact info is in the database: ").append(paramArrayList).append(" entity: ").append((String)localObject3);
      }
      a((dtt)localObject1, (cyx)localObject2);
      break;
      return;
      label680:
      if (localObject1 == null) {
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ehd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */