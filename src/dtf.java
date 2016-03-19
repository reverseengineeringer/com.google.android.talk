import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class dtf
  extends dqf
{
  private static final boolean g = false;
  private static final long serialVersionUID = 1L;
  private final long h;
  private final boolean i;
  private final boolean j;
  private final ArrayList<byte[]> k = new ArrayList();
  
  static
  {
    imx localimx = ezi.l;
  }
  
  private dtf(kfk paramkfk)
  {
    super(responseHeader, g);
    h = aal.a(b, 0L);
    i = aal.a(a, false);
    j = aal.a(d, false);
    jyc[] arrayOfjyc = c;
    int n = arrayOfjyc.length;
    while (m < n)
    {
      jyc localjyc = arrayOfjyc[m];
      k.add(jyc.a(localjyc));
      m += 1;
    }
    if (g)
    {
      paramkfk = String.valueOf(paramkfk);
      new StringBuilder(String.valueOf(paramkfk).length() + 30).append("SyncAllNewEventsResponse from:").append(paramkfk);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kfk)lyi.b(new kfk(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dtf(paramArrayOfByte);
  }
  
  public void a(bfd parambfd)
  {
    if (parambfd != null) {
      dqf.a(parambfd.g(), this);
    }
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    boolean bool = false;
    int m = 0;
    Object localObject1 = null;
    if (exo.b) {
      new exr().a("sane_response").a(parambfz.g()).b();
    }
    if (i)
    {
      super.a(parambfz, paramdyy);
      paramdyy = String.valueOf(ezi.b(parambfz.g().a()));
      if (paramdyy.length() != 0) {}
      for (paramdyy = "Force clear cache and resync for account:".concat(paramdyy);; paramdyy = new String("Force clear cache and resync for account:"))
      {
        ezi.d("Babel_SANE", paramdyy, new Object[0]);
        parambfz.a();
        try
        {
          parambfz.t();
          bff.b(parambfz.f(), parambfz.g().g(), "last_successful_sync_time", 0L);
          parambfz.w();
          parambfz.b();
          parambfz.c();
          paramdyy = parambfz.g();
          ebo.b(paramdyy.g()).c(((dpy)b).p());
          RealTimeChatService.a(paramdyy.g(), false, ebq.a);
          if (paramdyy.n()) {
            bff.b(parambfz.f(), parambfz.g().g(), "sms_last_sync_time_millis");
          }
          return;
        }
        finally
        {
          parambfz.c();
        }
      }
    }
    bool = b).c;
    localObject1 = ((dpy)b).p();
    Object localObject3 = dmp.a(k, bool, c.d);
    super.a(parambfz, paramdyy);
    long l2;
    label275:
    int n;
    Object localObject2;
    label476:
    ebo localebo;
    label620:
    dmp localdmp;
    label730:
    long l3;
    int i2;
    int i1;
    if (bft.a)
    {
      l2 = SystemClock.elapsedRealtime();
      if (ezi.a("Babel_SANE", 3))
      {
        n = ((List)localObject3).size();
        ezi.b("Babel_SANE", 50 + "processSyncAllNewEventsResponse: count " + n, new Object[0]);
      }
      HashSet localHashSet = new HashSet();
      localObject2 = new HashSet();
      if (j() != null) {
        j().a("sync_all_new_events_response");
      }
      parambfz.a();
      long l5 = SystemClock.elapsedRealtime();
      long l6;
      long l1;
      for (;;)
      {
        try
        {
          l6 = bff.a(parambfz.f(), parambfz.g().g(), "last_successful_sync_time", 0L);
          n = 1;
          if ((j) && (((List)localObject3).size() > aal.a(parambfz.f(), "babel_separate_gcr_threshold", 5)))
          {
            paramdyy.a(new dpz(5, (String)localObject1));
            paramdyy.a(new dpz(6, null));
            parambfz.t();
            parambfz.o();
            bff.b(parambfz.f(), parambfz.g().g(), "last_successful_sync_time", 0L);
            m = 1;
            parambfz.b();
            parambfz.c();
            if (j() != null) {
              j().a(parambfz.g().g(), "sync_all_new_events_response", SystemClock.elapsedRealtime(), 3);
            }
            if (bft.a)
            {
              l1 = SystemClock.elapsedRealtime();
              new StringBuilder(40).append("processSANE took ").append(l1 - l2).append(" ms");
            }
            if (m != 0) {
              bft.d(parambfz);
            }
            paramdyy = localHashSet.iterator();
            if (!paramdyy.hasNext()) {
              break label1751;
            }
            bft.d(parambfz, (String)paramdyy.next());
            continue;
          }
          l1 = SystemClock.elapsedRealtime();
          localebo = ebo.b(parambfz.g().g());
          Iterator localIterator = ((List)localObject3).iterator();
          if (!localIterator.hasNext()) {
            break label1681;
          }
          localdmp = (dmp)localIterator.next();
          if (!bft.a(parambfz.g(), b))
          {
            aal.a(parambfz.g(), 1839);
            continue;
          }
          if (SystemClock.elapsedRealtime() - l1 < g()) {
            break label1797;
          }
        }
        finally
        {
          parambfz.c();
          if (j() != null) {
            j().a(parambfz.g().g(), "sync_all_new_events_response", SystemClock.elapsedRealtime(), 3);
          }
        }
        parambfz.d();
        l1 = SystemClock.elapsedRealtime();
        localObject3 = a;
        if ((g < l6) || (g > h)) {
          break;
        }
        if (g)
        {
          l3 = g;
          new StringBuilder(String.valueOf(localObject3).length() + 53).append("Conversation ").append((String)localObject3).append(" has leaveTimestamp ").append(l3);
        }
        parambfz.j((String)localObject3);
      }
      i2 = m;
      if (!j)
      {
        List localList = c;
        if (localList == null) {
          break label1791;
        }
        i1 = localList.size();
        label855:
        if ((aal.a(parambfz.f(), "babel_crashifmissedpush", false)) && (i1 > 0) && (b != null) && (((dpy)b).o()))
        {
          l1 = b.w();
          ezi.e("Babel_SANE", String.valueOf(localObject3).length() + 67 + "Got unexpected missed events in SANE " + (String)localObject3 + " sorttime " + l1, new Object[0]);
          paramdyy = localList.iterator();
          while (paramdyy.hasNext())
          {
            localObject1 = (egf)paramdyy.next();
            localObject2 = String.valueOf(((egf)localObject1).j());
            l1 = ((egf)localObject1).c();
            ezi.e("Babel_SANE", String.valueOf(localObject2).length() + 28 + "  " + (String)localObject2 + " time " + l1, new Object[0]);
          }
          paramdyy = String.valueOf(localObject3);
          if (paramdyy.length() != 0) {}
          for (paramdyy = "Got unexpected missed events in SANE ".concat(paramdyy);; paramdyy = new String("Got unexpected missed events in SANE ")) {
            throw new IllegalStateException(paramdyy);
          }
        }
        label1190:
        ArrayList localArrayList;
        int i3;
        label1286:
        egf localegf;
        if (bft.a)
        {
          new StringBuilder(String.valueOf(localObject3).length() + 40).append("syncing conversation ").append((String)localObject3).append(" events ").append(i1);
          i1 = m;
          if (b != null)
          {
            long l4 = h;
            if (l4 < l6) {
              break label1806;
            }
            l3 = l4;
            if (l4 > h) {
              break label1806;
            }
            if (bft.a(parambfz, b, l3, null, paramdyy, null, false)) {
              m = 1;
            }
            i1 = m;
            if (!b.m())
            {
              parambfz.a(0, h, a);
              i1 = m;
            }
          }
          if ((localList == null) || (localList.size() <= 0)) {
            break label1520;
          }
          bft.a(parambfz, a, 0L, paramdyy, null);
          localArrayList = new ArrayList();
          m = 0;
          i2 = 0;
          i3 = 0;
          if (i2 >= localList.size()) {
            break label1479;
          }
          localegf = (egf)localList.get(i2);
          if (localegf.f() != null) {
            localArrayList.addAll(localegf.f());
          }
          if (!(localegf instanceof egj)) {
            break label1442;
          }
          m = 1;
        }
        for (;;)
        {
          label1343:
          bft.a(parambfz, localegf, paramdyy, h(), i(), l5 * 1000L);
          i2 += 1;
          break label1286;
          if ((i1 <= 0) || (!ezi.a("Babel_SANE", 3))) {
            break;
          }
          ezi.b("Babel_SANE", String.valueOf(localObject3).length() + 40 + "syncing conversation " + (String)localObject3 + " events " + i1, new Object[0]);
          break;
          label1442:
          if (!(localegf instanceof efr)) {
            break label1788;
          }
          a(parambfz.g(), (String)localObject1, (efr)localegf);
          ((efr)localegf).a(2);
          i3 = 1;
        }
        label1479:
        paramdyy.a(parambfz.f(), parambfz, a, localArrayList);
        if (i3 != 0) {
          localHashSet.add(localObject3);
        }
        if (m != 0) {
          ((HashSet)localObject2).add(localObject3);
        }
        label1520:
        i2 = i1;
        if (bft.a)
        {
          bool = d;
          new StringBuilder(26).append("mustQuerySeparately: ").append(bool);
          i2 = i1;
        }
      }
      if (b != null) {
        break label1812;
      }
      if (!parambfz.o(a)) {
        break label1826;
      }
      break label1812;
    }
    for (;;)
    {
      if ((j) || (m == 0))
      {
        m = 0;
        if (bft.a)
        {
          localObject3 = String.valueOf(a);
          if (((String)localObject3).length() == 0) {
            break label1667;
          }
          "requesting more events for ".concat((String)localObject3);
        }
        for (;;)
        {
          paramdyy.a(new doz(a, true, true, false, null, 0L, (String)localObject1, 0L, null));
          localebo.a((String)localObject1);
          break;
          label1667:
          new String("requesting more events for ");
        }
        label1681:
        if (n != 0)
        {
          bool = bft.a;
          bff.b(parambfz.f(), parambfz.g().g(), "last_successful_sync_time", h);
          localebo.c((String)localObject1);
          break label476;
        }
        bool = bft.a;
        bff.b(parambfz.f(), parambfz.g().g(), "in_progress_sync_time", h);
        break label476;
        label1751:
        paramdyy = ((HashSet)localObject2).iterator();
        while (paramdyy.hasNext()) {
          bft.c(parambfz, (String)paramdyy.next());
        }
        break;
      }
      m = n;
      break label1817;
      label1788:
      break label1343;
      label1791:
      i1 = 0;
      break label855;
      label1797:
      break label730;
      l2 = 0L;
      break label275;
      label1806:
      l3 = 0L;
      break label1190;
      label1812:
      m = 1;
      continue;
      label1817:
      n = m;
      m = i2;
      break label620;
      label1826:
      m = 0;
    }
  }
}

/* Location:
 * Qualified Name:     dtf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */