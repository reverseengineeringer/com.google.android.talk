import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class cji
  extends eap
  implements ehh
{
  private static final boolean a = false;
  private final cgw b;
  private final Map<cyx, bet> c = new HashMap();
  private final Map<bet, cyx> d = new HashMap();
  private final Map<hil, bet> e = new HashMap();
  private final Map<bet, hil> f = new HashMap();
  private final ArrayList<cyx> g = new ArrayList();
  private final Map<Integer, String> h = new HashMap();
  private final Map<String, Integer> i = new HashMap();
  private final ArrayList<chb> j = new ArrayList();
  private final cyx k;
  
  static
  {
    imx localimx = ezi.n;
  }
  
  cji(cgw paramcgw, cyx paramcyx)
  {
    b = paramcgw;
    k = paramcyx;
    a(k);
  }
  
  private void a(int paramInt)
  {
    String str2 = (String)h.remove(Integer.valueOf(paramInt));
    i.remove(str2);
    if (a) {
      if (!h.isEmpty()) {
        break label114;
      }
    }
    label114:
    for (String str1 = ", list empty, stop listening";; str1 = "")
    {
      new StringBuilder(String.valueOf(str2).length() + 39 + String.valueOf(str1).length()).append("removed request, id=").append(paramInt).append(" for ph=").append(str2).append(str1);
      if (h.isEmpty()) {
        RealTimeChatService.b(this);
      }
      return;
    }
  }
  
  private void a(cyx paramcyx)
  {
    if ((paramcyx != null) && (a == czd.d) && (!TextUtils.isEmpty(c)))
    {
      if (t) {
        break label116;
      }
      bet localbet = ehd.a(c, false, b.l(), this);
      if (localbet != null)
      {
        c.put(paramcyx, localbet);
        d.put(localbet, paramcyx);
        if (a)
        {
          paramcyx = String.valueOf(c);
          if (paramcyx.length() == 0) {
            break label105;
          }
          "sending participant request for ph=".concat(paramcyx);
        }
      }
    }
    label105:
    label116:
    do
    {
      return;
      new String("sending participant request for ph=");
      return;
      g.add(paramcyx);
    } while (!a);
    paramcyx = String.valueOf(c);
    if (paramcyx.length() != 0)
    {
      "participant is resolved, ph=".concat(paramcyx);
      return;
    }
    new String("participant is resolved, ph=");
  }
  
  private static void a(String paramString)
  {
    Iterator localIterator = cfc.a().v().iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).b(paramString);
    }
  }
  
  private cyx c(hil paramhil)
  {
    if ((paramhil instanceof hir))
    {
      hir localhir = (hir)paramhil;
      Iterator localIterator = c.keySet().iterator();
      while (localIterator.hasNext())
      {
        cyx localcyx = (cyx)localIterator.next();
        if (aal.f(s, localhir.u()))
        {
          if (a)
          {
            paramhil = String.valueOf(paramhil.b());
            if (paramhil.length() != 0) {
              "found participant request for endpoint, name=".concat(paramhil);
            }
          }
          else
          {
            return localcyx;
          }
          new String("found participant request for endpoint, name=");
          return localcyx;
        }
      }
      if (a)
      {
        paramhil = String.valueOf(paramhil.b());
        if (paramhil.length() == 0) {
          break label135;
        }
        "didn't find participant request for endpoint, name=".concat(paramhil);
      }
    }
    for (;;)
    {
      return null;
      label135:
      new String("didn't find participant request for endpoint, name=");
    }
  }
  
  private cyx d(hil paramhil)
  {
    if ((paramhil instanceof hir))
    {
      hir localhir = (hir)paramhil;
      Iterator localIterator = g.iterator();
      while (localIterator.hasNext())
      {
        cyx localcyx = (cyx)localIterator.next();
        if (aal.f(s, localhir.u()))
        {
          if (a)
          {
            paramhil = String.valueOf(paramhil.b());
            if (paramhil.length() != 0) {
              "found resolved participant for endpoint, name=".concat(paramhil);
            }
          }
          else
          {
            return localcyx;
          }
          new String("found resolved participant for endpoint, name=");
          return localcyx;
        }
      }
      if (a)
      {
        paramhil = String.valueOf(paramhil.b());
        if (paramhil.length() == 0) {
          break label128;
        }
        "didn't find resolved participant for endpoint, name=".concat(paramhil);
      }
    }
    for (;;)
    {
      return null;
      label128:
      new String("didn't find resolved participant for endpoint, name=");
    }
  }
  
  private static void f()
  {
    hbs.a();
    Iterator localIterator = cfc.a().v().iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).f();
    }
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    
    if (a)
    {
      boolean bool = h.containsKey(Integer.valueOf(paramInt));
      new StringBuilder(54).append("received response for ").append(paramInt).append(", was_requested=").append(bool);
    }
    String str;
    if (h.containsKey(Integer.valueOf(paramInt)))
    {
      str = (String)h.get(Integer.valueOf(paramInt));
      a(paramInt);
      if ((b != null) && (parambfd.equals(b.l())))
      {
        parambfd = parameau.c();
        hbs.a("Expected condition to be true", parambfd instanceof dqx);
        parambfd = (dqx)parambfd;
        if (!parambfd.l()) {
          break label218;
        }
      }
    }
    label218:
    for (parambfd = null;; parambfd = parambfd.k())
    {
      j.add(new chb(str, parambfd));
      if (a) {
        new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(parambfd).length()).append("valid response for ph=").append(str).append(", rate=").append(parambfd);
      }
      f();
      return;
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if (a) {
      if (!h.containsKey(Integer.valueOf(paramInt))) {
        break label91;
      }
    }
    label91:
    for (parambfd = "";; parambfd = " not")
    {
      new StringBuilder(String.valueOf(parambfd).length() + 52).append("request failed, id=").append(paramInt).append(", will").append(parambfd).append(" remove request.");
      if (h.containsKey(Integer.valueOf(paramInt))) {
        a(paramInt);
      }
      return;
    }
  }
  
  public void a(bet parambet)
  {
    if (a)
    {
      String str = String.valueOf(parambet.c());
      if (str.length() != 0) {
        "contact info failed for request=".concat(str);
      }
    }
    else
    {
      if (!d.containsKey(parambet)) {
        break label123;
      }
      parambet = (cyx)d.remove(parambet);
      c.remove(parambet);
      if (a)
      {
        parambet = String.valueOf(e);
        if (parambet.length() == 0) {
          break label111;
        }
        "removed waiting entity, name=".concat(parambet);
      }
    }
    label111:
    label123:
    do
    {
      do
      {
        return;
        new String("contact info failed for request=");
        break;
        new String("removed waiting entity, name=");
        return;
      } while (!f.containsKey(parambet));
      parambet = (hil)f.remove(parambet);
      e.remove(parambet);
    } while (!a);
    parambet = String.valueOf(parambet.b());
    if (parambet.length() != 0)
    {
      "removed waiting endpoint, name=".concat(parambet);
      return;
    }
    new String("removed waiting endpoint, name=");
  }
  
  void a(hil paramhil)
  {
    Object localObject1 = c(paramhil);
    if (localObject1 != null)
    {
      if (a)
      {
        localObject2 = String.valueOf(paramhil.b());
        if (((String)localObject2).length() == 0) {
          break label89;
        }
        "Pending entity not null, moving participant request to endpoint ep=".concat((String)localObject2);
      }
      for (;;)
      {
        localObject1 = (bet)c.remove(localObject1);
        d.remove(localObject1);
        e.put(paramhil, localObject1);
        f.put(localObject1, paramhil);
        return;
        label89:
        new String("Pending entity not null, moving participant request to endpoint ep=");
      }
    }
    Object localObject2 = d(paramhil);
    String str;
    if (a)
    {
      str = String.valueOf(paramhil.b());
      if (localObject2 != null) {
        break label223;
      }
    }
    label223:
    for (localObject1 = " and no resolved request";; localObject1 = " now attaching data")
    {
      new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(localObject1).length()).append("no pending request for ep=").append(str).append((String)localObject1);
      if (localObject2 == null) {
        break;
      }
      hbs.a("Expected condition to be true", ((cyx)localObject2).g());
      paramhil.a(new cjh(e, c, h, w));
      a(s);
      return;
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt, bip parambip, bfd parambfd)
  {
    if (a)
    {
      parambfd = String.valueOf(paramString1);
      if (parambfd.length() != 0) {
        "set PSTN contact info for name=".concat(parambfd);
      }
    }
    else
    {
      if (!d.containsKey(parambip)) {
        break label168;
      }
      parambip = (cyx)d.remove(parambip);
      c.remove(parambip);
      e = paramString1;
      h = paramString2;
      t = true;
      w = paramInt;
      if (a)
      {
        paramString1 = String.valueOf(paramString1);
        if (paramString1.length() == 0) {
          break label154;
        }
        "resolved participant, but no endpoint yet. name=".concat(paramString1);
      }
      g.add(parambip);
      a(s);
    }
    label154:
    label168:
    while (!f.containsKey(parambip)) {
      for (;;)
      {
        return;
        new String("set PSTN contact info for name=");
        break;
        new String("resolved participant, but no endpoint yet. name=");
      }
    }
    hir localhir = (hir)f.remove(parambip);
    e.remove(localhir);
    parambfd = parambip.e();
    parambip = parambfd;
    if (k != null)
    {
      parambip = parambfd;
      if (aal.f(k.s, localhir.u())) {
        parambip = k.f();
      }
    }
    if (a)
    {
      parambfd = String.valueOf(localhir.b());
      new StringBuilder(String.valueOf(paramString1).length() + 51 + String.valueOf(parambfd).length() + String.valueOf(parambip).length()).append("resolved participant, has endpoint. name=").append(paramString1).append(", ep=").append(parambfd).append(", ph=").append(parambip);
    }
    localhir.a(new cjh(paramString1, parambip, paramString2, paramInt));
    a(localhir.u());
  }
  
  public void a(String paramString1, String paramString2, bet parambet, String paramString3, bfd parambfd)
  {
    ezi.e("Babel_PSTN_META", "didn't request non-PSTN contact info!", new Object[0]);
  }
  
  void a(List<cyx> paramList)
  {
    hbs.a();
    bfd localbfd = b.l();
    if (localbfd == null) {
      ezi.e("Babel_PSTN_META", "Unexpected null account in handleOutgoingInvite", new Object[0]);
    }
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = (cyx)paramList.next();
        if ((localObject != null) && (a == czd.d) && (!TextUtils.isEmpty(c)))
        {
          a((cyx)localObject);
          localObject = ezm.g(c);
          if (localObject != null)
          {
            RealTimeChatService.a(this);
            int m = RealTimeChatService.c(localbfd.g(), (String)localObject);
            h.put(Integer.valueOf(m), localObject);
            i.put(localObject, Integer.valueOf(m));
            if (a) {
              new StringBuilder(String.valueOf(localObject).length() + 43).append("requesting rate for ").append((String)localObject).append(" request id=").append(m);
            }
          }
        }
      }
    }
  }
  
  void b(hil paramhil)
  {
    hbs.a();
    Object localObject2 = null;
    Object localObject1 = null;
    Object localObject3;
    if (e.containsKey(paramhil))
    {
      localObject2 = (bet)e.get(paramhil);
      localObject3 = ((bet)localObject2).d();
      if (localObject3 != null) {
        localObject1 = d;
      }
      if (a)
      {
        localObject3 = String.valueOf(((bet)localObject2).c());
        new StringBuilder(String.valueOf(localObject3).length() + 43 + String.valueOf(localObject1).length()).append("Endpoint exits, cancelling request id=").append((String)localObject3).append(", ph=").append((String)localObject1);
      }
      ((bet)localObject2).b();
      e.remove(paramhil);
      f.remove(localObject2);
      paramhil = (hil)localObject1;
      if (paramhil != null)
      {
        localObject2 = ezm.g(paramhil);
        if (!i.containsKey(localObject2)) {
          break label467;
        }
        localObject1 = (Integer)i.remove(localObject2);
        if (a)
        {
          localObject2 = String.valueOf(localObject1);
          new StringBuilder(String.valueOf(localObject2).length() + 62 + String.valueOf(paramhil).length()).append("Endpoint exits, removing pending rate request, requestId=").append((String)localObject2).append(", ph=").append(paramhil);
        }
        h.remove(localObject1);
        if (h.isEmpty()) {
          RealTimeChatService.b(this);
        }
      }
    }
    label467:
    do
    {
      return;
      while (!((Iterator)localObject3).hasNext())
      {
        do
        {
          localObject1 = c(paramhil);
          if (localObject1 != null)
          {
            paramhil = c;
            localObject1 = (bet)c.remove(localObject1);
            if (a)
            {
              localObject2 = String.valueOf("Endpoint exits, has pending participant, cancelling request id=");
              localObject3 = String.valueOf(((bet)localObject1).c());
              new StringBuilder(String.valueOf(localObject2).length() + 5 + String.valueOf(localObject3).length() + String.valueOf(paramhil).length()).append((String)localObject2).append((String)localObject3).append(", ph=").append(paramhil);
            }
            d.remove(localObject1);
            ((bet)localObject1).b();
            break;
          }
          localObject3 = d(paramhil);
          paramhil = (hil)localObject2;
          if (localObject3 == null) {
            break;
          }
          localObject1 = c;
          g.remove(localObject3);
          paramhil = (hil)localObject1;
          if (!a) {
            break;
          }
          paramhil = String.valueOf("Endpoint exits, removing resolved participant, ph=");
          localObject2 = String.valueOf(localObject1);
          if (((String)localObject2).length() != 0)
          {
            paramhil.concat((String)localObject2);
            paramhil = (hil)localObject1;
            break;
          }
          new String(paramhil);
          paramhil = (hil)localObject1;
          break;
        } while (localObject2 == null);
        localObject3 = j.iterator();
      }
      localObject1 = (chb)((Iterator)localObject3).next();
    } while (!((String)localObject2).equals(((chb)localObject1).a()));
    if (a)
    {
      localObject2 = String.valueOf("Endpoint exits, removing resolved rate request, ph=");
      paramhil = String.valueOf(paramhil);
      if (paramhil.length() == 0) {
        break label556;
      }
      ((String)localObject2).concat(paramhil);
    }
    for (;;)
    {
      j.remove(localObject1);
      f();
      return;
      label556:
      new String((String)localObject2);
    }
  }
  
  void d()
  {
    if (a)
    {
      int m = c.size();
      int n = e.size();
      int i1 = g.size();
      int i2 = h.size();
      int i3 = j.size();
      new StringBuilder(148).append("Hangout ended, sizes for pending reqPart=").append(m).append(", pending reqEP=").append(n).append(", resolvedPart=").append(i1).append(", rateReq=").append(i2).append(", callinfo=").append(i3);
    }
    Iterator localIterator = c.values().iterator();
    while (localIterator.hasNext()) {
      ((bet)localIterator.next()).b();
    }
    localIterator = e.values().iterator();
    while (localIterator.hasNext()) {
      ((bet)localIterator.next()).b();
    }
    c.clear();
    d.clear();
    e.clear();
    f.clear();
    g.clear();
    h.clear();
    i.clear();
    j.clear();
    f();
    RealTimeChatService.b(this);
  }
  
  List<chb> e()
  {
    hbs.a();
    return j;
  }
}

/* Location:
 * Qualified Name:     cji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */