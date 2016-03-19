import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class bpz
{
  private static final boolean f = false;
  public final bfd a;
  final bqi b;
  String c = null;
  bqf d;
  ezj e;
  private final Context g;
  private final int h;
  private final String i;
  private final boolean j;
  private final Handler k = new Handler(Looper.getMainLooper());
  private final Collection<bjb> l = new HashSet();
  private final boolean m;
  private final Comparator<bjb> n = new bqd(this);
  
  static
  {
    imx localimx = ezi.e;
  }
  
  public bpz(Context paramContext, bqi parambqi, bfd parambfd, String paramString, boolean paramBoolean)
  {
    g = paramContext;
    b = ((bqi)hbs.b("Expected non-null", parambqi));
    a = ((bfd)hbs.b("Expected non-null", parambfd));
    h = parambfd.g();
    i = paramString;
    j = paramBoolean;
    m = ((eot)ilh.a(paramContext, eot.class)).d();
    if ((f) || (aal.a(paramContext, "babel_cve_logging", false)))
    {
      e = new ezj("cve");
      e.a("created");
    }
  }
  
  private bjb a(Collection<bjb> paramCollection, bjb parambjb, int paramInt)
  {
    if (paramCollection.size() == 1) {
      paramCollection = (bjb)paramCollection.iterator().next();
    }
    do
    {
      return paramCollection;
      if ((j) || (b == 1)) {
        return parambjb;
      }
      String str1 = ezm.k(c);
      if (e != null) {
        e.a("getSelected:toLegacy");
      }
      Iterator localIterator = paramCollection.iterator();
      paramCollection = null;
      if (!localIterator.hasNext()) {
        break;
      }
      parambjb = (bjb)localIterator.next();
      String str2 = ezm.k(c);
      if (e != null) {
        e.a("getSelected:toLegacyLoop");
      }
      if (!TextUtils.equals(str1, str2)) {
        break label188;
      }
      paramCollection = parambjb;
    } while (b == paramInt);
    paramCollection = parambjb;
    label188:
    for (;;)
    {
      break;
      if (paramCollection != null) {
        return paramCollection;
      }
      ezi.d("Babel", 55 + "Could not find valid transport, preferred = " + paramInt, new Object[0]);
      return null;
    }
  }
  
  private static bjb a(Collection<bjb> paramCollection, String paramString)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      bjb localbjb = (bjb)paramCollection.next();
      if (TextUtils.equals(paramString, a)) {
        return localbjb;
      }
    }
    return null;
  }
  
  private bqg a(Collection<bpa> paramCollection)
  {
    boolean bool1 = false;
    Integer localInteger = null;
    long l1 = 0L;
    int i1 = 2;
    Iterator localIterator = paramCollection.iterator();
    long l3 = 0L;
    bpa localbpa;
    boolean bool2;
    long l2;
    if (localIterator.hasNext())
    {
      localbpa = (bpa)localIterator.next();
      if (!aal.f(b)) {
        break label197;
      }
      bool2 = true;
      l2 = l3;
      bool1 = bool2;
      if (g > l3)
      {
        i1 = b;
        l2 = g;
        bool1 = bool2;
      }
    }
    for (;;)
    {
      if (g > l1)
      {
        c = a;
        l1 = g;
        localInteger = Integer.valueOf(b);
      }
      for (;;)
      {
        l3 = l2;
        break;
        if (c == null) {
          c = iteratornexta;
        }
        if (l3 != 0L) {}
        for (bool2 = true;; bool2 = false) {
          return new bqg(this, bool1, bool2, i1, localInteger);
        }
      }
      label197:
      l2 = l3;
    }
  }
  
  private static cyx a(cyx paramcyx, bgd parambgd, boolean paramBoolean)
  {
    if (h != null)
    {
      Iterator localIterator = h.iterator();
      int i1 = 0;
      while (localIterator.hasNext())
      {
        cyx localcyx = (cyx)localIterator.next();
        parambgd = localcyx;
        if (i1 != 0) {
          return parambgd;
        }
        if (localcyx.equals(paramcyx))
        {
          i1 = 1;
        }
        else
        {
          parambgd = localcyx;
          if (!paramBoolean) {
            return parambgd;
          }
          parambgd = localcyx;
          if (TextUtils.isEmpty(c)) {
            return parambgd;
          }
          parambgd = localcyx;
          if (!c.equals(c)) {
            return parambgd;
          }
          i1 = 1;
        }
      }
    }
    parambgd = null;
    return parambgd;
  }
  
  private Collection<bjb> a(String paramString, Collection<bpa> paramCollection, eie parameie)
  {
    for (;;)
    {
      Object localObject1;
      hq localhq;
      bfz localbfz;
      bqe localbqe;
      Object localObject4;
      Object localObject3;
      Object localObject2;
      cyx localcyx2;
      try
      {
        if (e != null)
        {
          localObject1 = e;
          i1 = paramCollection.size();
          ((ezj)localObject1).a(28 + "computeInternal: " + i1);
        }
        localhq = new hq();
        cyx localcyx1 = aal.a(a.b(), ezm.f(), null, null, null, null, null, Boolean.valueOf(false));
        localbfz = new bfz(g, a.g());
        localbqe = new bqe(e);
        if (e != null) {
          e.a("cI:preloop");
        }
        Iterator localIterator = paramCollection.iterator();
        if (!localIterator.hasNext()) {
          break label980;
        }
        localObject4 = (bpa)localIterator.next();
        if (e != null) {
          e.a("cI:loopStart");
        }
        localObject3 = a;
        localObject1 = localbfz.f((String)localObject3);
        if (e != null) {
          e.a("getCI:getConvInfo");
        }
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = localObject1;
          if (bfz.a((String)localObject3))
          {
            localObject3 = RealTimeChatService.a((String)localObject3);
            localObject2 = localObject1;
            if (!TextUtils.isEmpty((CharSequence)localObject3))
            {
              localObject1 = localbfz.f((String)localObject3);
              localObject2 = localObject1;
              if (e != null)
              {
                e.a("getCI:getConvInfoServer");
                localObject2 = localObject1;
              }
            }
          }
        }
        if (e != null) {
          e.a("cI:convInfo");
        }
        if (localObject2 == null)
        {
          paramString = a;
          parameie = f;
          i1 = paramCollection.size();
          ezi.d("Babel", String.valueOf(paramString).length() + 66 + String.valueOf(parameie).length() + "Null conversationInfo for " + paramString + "; merge key = " + parameie + "; total count: " + i1, new Object[0]);
          return null;
        }
        localcyx2 = a(localcyx1, (bgd)localObject2, ((eot)ilh.a(g, eot.class)).a(h));
        if (e != null) {
          e.a("cI:getParticipant");
        }
        if (m)
        {
          if (localcyx2 != null) {
            break label720;
          }
          localObject1 = null;
          if (e != null) {
            e.a("cI:getContactDetails");
          }
          if (localObject1 != null)
          {
            a((bzq)localObject1, localhq);
            if (e != null) {
              e.a("cI:maintain");
            }
          }
        }
        if (localcyx2 == null) {
          continue;
        }
        if (!aal.f(b)) {
          break label856;
        }
        boolean bool = false;
        localObject1 = g.getResources().getString(StressMode.gp);
        if ((!TextUtils.isEmpty(c)) && (!((String)localObject1).equals(c))) {
          break label825;
        }
        localObject1 = g.getResources().getString(StressMode.si);
        bool = true;
        localObject3 = null;
        String str1 = a;
        int i1 = b;
        String str2 = c;
        if ((localObject3 == null) || (b == null)) {
          break label1040;
        }
        localObject4 = b.b();
        if (localObject3 == null) {
          break label1046;
        }
        localObject3 = a;
        localbqe.a(new bjb(str1, i1, localcyx2, (String)localObject1, null, str2, (String)localObject4, (bgd)localObject2, (bzq)localObject3, bool));
        if (e != null) {
          e.a("addVariantFromPandCI:smsMerge");
        }
        if (e == null) {
          continue;
        }
        e.a("cI:addFromPAndCI");
        continue;
        localObject1 = null;
      }
      catch (Exception paramString)
      {
        ezi.d("Babel", ">>>>>>>>>> got exception computing variants", paramString);
        return null;
      }
      label720:
      if (!TextUtils.isEmpty(c))
      {
        localObject3 = localbfz.b(c, parameie);
        localObject1 = localObject3;
        if (e != null)
        {
          e.a("getDetails:phone");
          localObject1 = localObject3;
        }
      }
      else if (!TextUtils.isEmpty(localcyx2.b()))
      {
        localObject3 = parameie.a(localcyx2.b());
        localObject1 = localObject3;
        if (e != null)
        {
          e.a("getDetails:gaia");
          localObject1 = localObject3;
          continue;
          label825:
          localObject1 = ezm.p(c);
          localObject3 = (bqh)localhq.get(ezm.k(c));
          continue;
          label856:
          if (!TextUtils.isEmpty(localcyx2.b()))
          {
            localbqe.a(new bjb(a, b, localcyx2, null, g, null, null, (bgd)localObject2, null, false));
            if (e != null) {
              e.a("addVariantFromPandCI:gaiaMerge");
            }
          }
          else
          {
            localObject1 = String.valueOf(a);
            if (((String)localObject1).length() != 0) {}
            for (localObject1 = "empty gaia id for non-SMS transport type, conversation id = ".concat((String)localObject1);; localObject1 = new String("empty gaia id for non-SMS transport type, conversation id = "))
            {
              ezi.d("Babel", (String)localObject1, new Object[0]);
              break;
            }
            label980:
            if (e != null) {
              e.a("cI:postLoop");
            }
            if (m)
            {
              a(localbqe, localhq, localbfz, paramString);
              if (e != null) {
                e.a("cI:addMising");
              }
            }
            paramString = localbqe.a();
            return paramString;
            label1040:
            localObject4 = null;
            continue;
            label1046:
            localObject3 = null;
          }
        }
      }
    }
  }
  
  private Collection<bjb> a(Collection<bjb> paramCollection, int paramInt)
  {
    if (!m) {}
    label72:
    StringBuilder localStringBuilder;
    label91:
    label138:
    label149:
    label161:
    label277:
    label289:
    label294:
    label300:
    label306:
    label407:
    label412:
    do
    {
      return paramCollection;
      boolean bool5 = a.x();
      boolean bool6 = a.K();
      boolean bool2 = a.J();
      boolean bool1;
      Iterator localIterator;
      if ((!bool2) && (bool5) && (paramInt == 2))
      {
        bool1 = true;
        if ((bool2) || (!bool6) || (paramInt != 3)) {
          break label277;
        }
        bool2 = true;
        localStringBuilder = new StringBuilder();
        localIterator = paramCollection.iterator();
        paramInt = 0;
      }
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label412;
        }
        bjb localbjb = (bjb)localIterator.next();
        boolean bool3;
        int i2;
        if ((!h.i()) && (!aal.a(h)))
        {
          bool3 = true;
          if (b != 2) {
            break label289;
          }
          i1 = 1;
          if (b != 3) {
            break label294;
          }
          i2 = 1;
          if (a == null) {
            break label300;
          }
        }
        for (boolean bool4 = true;; bool4 = false)
        {
          if (i1 == 0) {
            break label306;
          }
          if (((bool5) || (bool4)) && (bool3))
          {
            i1 = paramInt;
            if (!bool2) {
              break label407;
            }
          }
          localStringBuilder.append("gv/filtered ").append(a).append(bool5).append(";").append(bool4).append(";").append(bool3).append(";").append(bool2).append(";true;");
          localIterator.remove();
          paramInt = 1;
          break label91;
          bool1 = false;
          break;
          bool2 = false;
          break label72;
          bool3 = false;
          break label138;
          i1 = 0;
          break label149;
          i2 = 0;
          break label161;
        }
        int i1 = paramInt;
        if (i2 != 0) {
          if ((bool6) || (bool4))
          {
            i1 = paramInt;
            if (bool1)
            {
              i1 = paramInt;
              if (!bool3) {}
            }
          }
          else
          {
            localStringBuilder.append("carrier/filtered ").append(a).append(bool6).append(";").append(bool4).append(";true;").append(bool1).append(";").append(bool3).append(";");
            i1 = 1;
            localIterator.remove();
          }
        }
        paramInt = i1;
      }
    } while (paramInt == 0);
    ezi.c("Babel", localStringBuilder.toString(), new Object[0]);
    return paramCollection;
  }
  
  private void a(bqe parambqe, hq<String, bqh> paramhq, bfz parambfz, String paramString)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = parambqe.a().iterator();
    Object localObject1;
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject1 = (bjb)localIterator.next();
      if (e != null) {
        e.a("addMissing:loopStart");
      }
      if (aal.f(b))
      {
        localObject2 = ezm.k(c);
        if (e != null) {
          e.a("addMissing:toLegacy");
        }
        if (!localHashMap.containsKey(localObject2)) {
          localHashMap.put(localObject2, new HashSet());
        }
        ((HashSet)localHashMap.get(localObject2)).add(Integer.valueOf(b));
        if (!paramhq.containsKey(localObject2)) {
          paramhq.put(localObject2, new bqh(null, new bzv((String)localObject2, null)));
        }
      }
    }
    localIterator = paramhq.keySet().iterator();
    while (localIterator.hasNext())
    {
      localObject1 = (String)localIterator.next();
      if (e != null) {
        e.a("addMissing:loopStart2");
      }
      localObject2 = new HashSet();
      ((Set)localObject2).add(Integer.valueOf(2));
      ((Set)localObject2).add(Integer.valueOf(3));
      if (localHashMap.containsKey(localObject1)) {
        ((Set)localObject2).removeAll((Collection)localHashMap.get(localObject1));
      }
      if (!((Set)localObject2).isEmpty())
      {
        if (e != null) {
          e.a("addMissing:reqMedEmpty");
        }
        Object localObject3 = parambfz.a(null, (String)localObject1);
        if (e != null) {
          e.a("addMissing:mergeKey");
        }
        if (TextUtils.equals(paramString, (CharSequence)localObject3))
        {
          localObject2 = ((Set)localObject2).iterator();
          while (((Iterator)localObject2).hasNext())
          {
            localObject3 = (Integer)((Iterator)localObject2).next();
            cyx localcyx = aal.a(g, (String)localObject1, null, null);
            bqh localbqh = (bqh)paramhq.get(localObject1);
            parambqe.a(new bjb(null, aal.a((Integer)localObject3, 0), localcyx, (String)localObject1, null, (String)localObject1, b.b(), null, a, TextUtils.isEmpty((CharSequence)localObject1)));
            if (e != null) {
              e.a("addMissing:mergeVariant");
            }
          }
        }
      }
    }
  }
  
  private static void a(bzq parambzq, hq<String, bqh> paramhq)
  {
    Iterator localIterator = parambzq.f().iterator();
    while (localIterator.hasNext())
    {
      bzv localbzv = (bzv)localIterator.next();
      paramhq.put(ezm.k(a), new bqh(parambzq, localbzv));
    }
  }
  
  private void a(List<bjb> paramList, bjb parambjb)
  {
    if (paramList.isEmpty()) {
      return;
    }
    if (e != null) {
      e.a("finish bg");
    }
    k.post(new bqc(this, paramList, parambjb));
  }
  
  private boolean a()
  {
    Iterator localIterator = l.iterator();
    while (localIterator.hasNext()) {
      if (aal.f(nextb)) {
        return true;
      }
    }
    return false;
  }
  
  private void b()
  {
    Iterator localIterator = l.iterator();
    while (localIterator.hasNext())
    {
      bjb localbjb = (bjb)localIterator.next();
      String str = String.valueOf(a);
      int i1 = b;
      ezi.d("Babel", String.valueOf(str).length() + 47 + "skipping candidate variant: " + str + "; type: " + i1, new Object[0]);
    }
  }
  
  public void a(int paramInt)
  {
    if (l.size() == 1)
    {
      localObject1 = (bjb)l.iterator().next();
      if (localObject1 != null) {}
    }
    else
    {
      if (i != null)
      {
        localObject2 = a(l, i);
        if (localObject2 == null)
        {
          localObject1 = String.valueOf(i);
          if (((String)localObject1).length() == 0) {
            break label101;
          }
        }
        label101:
        for (localObject1 = "Unexpected null variant matching conversationIdHint=".concat((String)localObject1);; localObject1 = new String("Unexpected null variant matching conversationIdHint="))
        {
          ezi.d("Babel", (String)localObject1, new Object[0]);
          b();
          localObject1 = localObject2;
          break;
        }
      }
      localObject2 = a(l, c);
      if (localObject2 == null)
      {
        localObject1 = String.valueOf(c);
        if (((String)localObject1).length() == 0) {
          break label173;
        }
      }
      label173:
      for (localObject1 = "Unexpected null variant matching latestOrFirstConversationId=".concat((String)localObject1);; localObject1 = new String("Unexpected null variant matching latestOrFirstConversationId="))
      {
        ezi.d("Babel", (String)localObject1, new Object[0]);
        b();
        localObject1 = localObject2;
        break;
      }
    }
    Object localObject2 = a(l, paramInt);
    Object localObject1 = a((Collection)localObject2, (bjb)localObject1, paramInt);
    localObject2 = new ArrayList((Collection)localObject2);
    Collections.sort((List)localObject2, n);
    if (e != null) {
      e.a("sorted");
    }
    a((List)localObject2, (bjb)localObject1);
  }
  
  public void a(int paramInt, String paramString, Collection<bpa> paramCollection, bqf parambqf)
  {
    d = parambqf;
    if (e != null) {
      e.a("started");
    }
    hbw.a(new bqa(this, paramCollection, paramString, paramInt));
  }
  
  void a(Collection<bpa> paramCollection, String paramString, int paramInt)
  {
    int i2 = 1;
    int i1 = 0;
    Object localObject1 = null;
    if (paramInt == 2)
    {
      if (e != null) {
        e.a("compute group");
      }
      hbs.a(Integer.valueOf(1), Integer.valueOf(paramCollection.size()));
      paramCollection = (bpa)paramCollection.iterator().next();
      paramCollection = new bjb(a, b, null, null, null, null, null, null, null, false);
      paramString = new ArrayList(1);
      paramString.add(paramCollection);
      a(paramString, paramCollection);
      return;
    }
    if (m) {
      localObject1 = eie.a();
    }
    ezj localezj;
    if (e != null)
    {
      localezj = e;
      if (localObject1 != null) {
        break label342;
      }
    }
    for (Object localObject2 = "refnull";; localObject2 = "ref")
    {
      localezj.a((String)localObject2);
      try
      {
        localObject2 = a(paramString, paramCollection, (eie)localObject1);
        if (e != null) {
          e.a("computeInternal");
        }
        if (localObject2 != null) {
          l.addAll((Collection)localObject2);
        }
        if (localObject1 != null)
        {
          ((eie)localObject1).c();
          if (e != null) {
            e.a("release");
          }
        }
        if (e != null)
        {
          localObject1 = e;
          paramInt = l.size();
          ((ezj)localObject1).a(28 + "computeAll done: " + paramInt);
        }
        if (!l.isEmpty()) {
          break label380;
        }
        paramInt = paramCollection.size();
        ezi.d("Babel", String.valueOf(paramString).length() + 54 + "No variants! mergeKey=" + paramString + "; conversation count=" + paramInt, new Object[0]);
        return;
      }
      finally
      {
        label342:
        if (localObject1 == null) {
          break;
        }
        ((eie)localObject1).c();
        if (e == null) {
          break;
        }
        e.a("release");
      }
    }
    label380:
    paramCollection = a(paramCollection);
    if (e != null) {
      e.a("messageHistory");
    }
    paramInt = i2;
    if (m)
    {
      if (i == null) {
        break label520;
      }
      paramString = a(l, i);
      if (paramString == null) {
        break label568;
      }
      paramInt = i1;
      if (aal.f(b))
      {
        paramInt = i1;
        if (!j) {
          paramInt = 1;
        }
      }
    }
    for (;;)
    {
      if ((paramInt != 0) && (m) && ((a) || (a())) && (!b) && (a.J()))
      {
        k.post(new bqb(this));
        return;
        label520:
        paramInt = i2;
        if (d != null)
        {
          paramInt = i2;
          if (aal.g(aal.a(d, 0))) {
            paramInt = 0;
          }
        }
      }
      else
      {
        a(a.a(c));
        return;
        label568:
        paramInt = 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bpz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */