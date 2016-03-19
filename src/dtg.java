import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class dtg
  extends dqf
{
  private static final boolean g = false;
  private static final long serialVersionUID = 1L;
  private final boolean h;
  private final long i;
  private final long j;
  private final List<byte[]> k = new ArrayList();
  private final boolean l;
  private final cyx[] m;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  private dtg(kfn paramkfn)
  {
    super(responseHeader, f);
    if (a != null)
    {
      h = true;
      i = aal.a(a, 0L);
      if (c == null) {
        break label124;
      }
    }
    label124:
    for (j = aal.a(c, 0L);; j = -2L)
    {
      jyc[] arrayOfjyc = b;
      int i1 = arrayOfjyc.length;
      while (n < i1)
      {
        jyc localjyc = arrayOfjyc[n];
        k.add(jyc.a(localjyc));
        n += 1;
      }
      h = false;
      i = 0L;
      break;
    }
    m = dqf.a(e, b);
    l = k();
    if (g)
    {
      paramkfn = String.valueOf(paramkfn);
      new StringBuilder(String.valueOf(paramkfn).length() + 37).append("SyncRecentConversationsResponse from:").append(paramkfn);
    }
  }
  
  private List<dmp> d(long paramLong)
  {
    boolean bool;
    if (b != null)
    {
      bool = b).d;
      if (g) {
        new StringBuilder(55).append("SRCResp.buildConversationStateList: suppressNotif=").append(bool);
      }
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext())
      {
        dmp localdmp = dmp.a((byte[])localIterator.next(), bool, paramLong);
        if (localdmp != null) {
          localArrayList.add(localdmp);
        }
      }
      return localArrayList;
      bool = false;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kfn)lyi.b(new kfn(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dtg(paramArrayOfByte);
  }
  
  public void a(bfd parambfd)
  {
    if (parambfd != null) {
      dqf.a(parambfd.g(), this);
    }
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    int n;
    boolean bool1;
    long l1;
    if (ezi.a("Babel_SyncRC", 3))
    {
      localObject1 = String.valueOf("processSyncRecentConversationsResponse count: ");
      n = d(0L).size();
      bool1 = h;
      l1 = i;
      boolean bool2 = l;
      ezi.b("Babel_SyncRC", String.valueOf(localObject1).length() + 105 + (String)localObject1 + n + " has_sync_timestamp: " + bool1 + " sync_timestamp: " + l1 + " requestWasForScrollback: " + bool2, new Object[0]);
    }
    if (exo.b)
    {
      localObject1 = new exr().a("src_response").a(parambfz.g());
      bool1 = l;
      ((exr)localObject1).b(19 + "forScrollback=" + bool1).b();
    }
    HashSet localHashSet = new HashSet();
    Object localObject1 = new HashSet();
    int i1 = 0;
    long l2;
    long l3;
    if (bft.a)
    {
      l2 = SystemClock.elapsedRealtime();
      if (j() != null) {
        j().a("sync_recent_conversations_response");
      }
      parambfz.a();
      l3 = SystemClock.elapsedRealtime();
    }
    for (;;)
    {
      int i2;
      Object localObject3;
      try
      {
        l1 = SystemClock.elapsedRealtime();
        if (m != null)
        {
          localObject2 = m;
          i2 = localObject2.length;
          n = 0;
          if (n < i2)
          {
            localObject3 = localObject2[n];
            if (localObject3 == null) {
              break label1098;
            }
            parambfz.a((cyx)localObject3, true);
            break label1098;
          }
        }
        Object localObject2 = d(c.d).iterator();
        n = i1;
        if (!((Iterator)localObject2).hasNext()) {
          break label789;
        }
        localObject3 = (dmp)((Iterator)localObject2).next();
        if (!bft.a(parambfz.g(), b))
        {
          aal.a(parambfz.g(), 1839);
          continue;
        }
        if (SystemClock.elapsedRealtime() - l1 < g()) {
          break label1089;
        }
      }
      finally
      {
        parambfz.c();
        if (j() != null) {
          j().a(parambfz.g().g(), "sync_recent_conversations_response", SystemClock.elapsedRealtime(), 2);
        }
      }
      parambfz.d();
      l1 = SystemClock.elapsedRealtime();
      label789:
      label1078:
      label1089:
      for (;;)
      {
        Object localObject4 = a;
        List localList = c;
        if (ezi.a("Babel_SyncRC", 3))
        {
          i1 = localList.size();
          ezi.b("Babel_SyncRC", String.valueOf(localObject4).length() + 44 + "processing conversation " + (String)localObject4 + " events: " + i1, new Object[0]);
        }
        i2 = n;
        if (b != null)
        {
          i2 = n;
          if (bft.a(parambfz, b, h, null, paramdyy, null, false)) {
            i2 = 1;
          }
        }
        if (localList.size() > 0)
        {
          bft.a(parambfz, a, e, f);
          bft.a(parambfz, a, 0L, paramdyy, null);
          localObject4 = new ArrayList();
          n = 0;
          int i3 = 0;
          i1 = 0;
          if (i3 < localList.size())
          {
            egf localegf = (egf)localList.get(i3);
            if (localegf.f() != null) {
              ((List)localObject4).addAll(localegf.f());
            }
            if ((localegf instanceof egj)) {
              n = 1;
            }
            for (;;)
            {
              bft.a(parambfz, localegf, paramdyy, h(), i(), l3 * 1000L);
              i3 += 1;
              break;
              if (!(localegf instanceof efr)) {
                break label1078;
              }
              if (k())
              {
                ((efr)localegf).a(4);
                i1 = 1;
              }
              else
              {
                ((efr)localegf).a(3);
                i1 = 1;
              }
            }
          }
          paramdyy.a(aal.oJ, parambfz, a, (List)localObject4);
        }
        for (;;)
        {
          if (i1 != 0) {
            localHashSet.add(a);
          }
          if (n == 0) {
            break label1105;
          }
          ((HashSet)localObject1).add(a);
          break label1105;
          i1 = ((dpz)b).o();
          if ((h) && (!l) && (i1 == 5)) {
            bff.b(aal.oJ, parambfz.g().g(), "last_successful_sync_time", i);
          }
          parambfz.a(j, i1);
          if (i1 == 5) {
            parambfz.a(j, 1);
          }
          for (;;)
          {
            parambfz.l();
            parambfz.b();
            parambfz.c();
            if (j() != null) {
              j().a(parambfz.g().g(), "sync_recent_conversations_response", SystemClock.elapsedRealtime(), 2);
            }
            paramdyy = ((dpz)b).q();
            if (!TextUtils.isEmpty(paramdyy)) {
              ebo.b(parambfz.g().g()).c(paramdyy);
            }
            if (bft.a)
            {
              l1 = SystemClock.elapsedRealtime();
              new StringBuilder(59).append("processSyncRecentConversations took ").append(l1 - l2).append(" ms");
            }
            if (n != 0)
            {
              bft.d(parambfz);
              bfz.a(parambfz, null);
            }
            paramdyy = localHashSet.iterator();
            while (paramdyy.hasNext()) {
              bft.d(parambfz, (String)paramdyy.next());
            }
            if (i1 == 6) {
              parambfz.a(j, 3);
            }
          }
          paramdyy = ((HashSet)localObject1).iterator();
          while (paramdyy.hasNext()) {
            bft.c(parambfz, (String)paramdyy.next());
          }
          return;
          break;
          i1 = 0;
          n = 0;
        }
      }
      l2 = 0L;
      break;
      label1098:
      n += 1;
      continue;
      label1105:
      n = i2;
    }
  }
  
  public boolean k()
  {
    if (b != null) {
      return ((dpz)b).p();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     dtg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */