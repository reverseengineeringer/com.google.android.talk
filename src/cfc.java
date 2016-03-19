import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.gms.herrevad.PredictedNetworkQuality;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class cfc
{
  private static volatile cfc s;
  private static hde v;
  public final List<hku> a = new CopyOnWriteArrayList();
  Runnable b = new cfd(this);
  final Context c = aal.oJ;
  final fic d = new fid(c).a(fzp.b).b();
  hkw e;
  boolean f;
  hkt g;
  PredictedNetworkQuality h;
  hjz i;
  public final Map<String, hkx> j = new HashMap();
  hkx k;
  boolean l = true;
  boolean m = true;
  hkx n = null;
  cex o;
  Handler p = aal.y();
  cgw q;
  private final hlj r = new cfg(this);
  private hiy t;
  private boolean u;
  private PhoneStateListener w;
  
  private cfc()
  {
    aal.a(new cfi(this));
    hbw.a(new cfj(this));
  }
  
  public static cfc a()
  {
    if (s == null) {}
    try
    {
      if (s == null) {
        s = new cfc();
      }
      return s;
    }
    finally {}
  }
  
  static void a(List<cyx> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    int i1 = 0;
    if (i1 < paramList.size())
    {
      cyx localcyx = (cyx)paramList.get(i1);
      if (b.a != null) {
        localArrayList.add(b.a);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (a == czd.d) {
          hgd.a().a(s, ezm.k(localcyx.f()), ezm.c(localcyx.f()), ezm.c(ezm.k(localcyx.f()), ezm.i()), localcyx.d());
        }
      }
    }
    if (localArrayList.size() == 0)
    {
      ezi.a("Babel_calls", "Nobody to invite.", new Object[0]);
      return;
    }
    paramList = new String[localArrayList.size()];
    localArrayList.toArray(paramList);
    hgd.a().a(paramList);
  }
  
  public static boolean a(bfd parambfd, String paramString)
  {
    if ((s != null) && (sq != null))
    {
      cgs localcgs = sq.e();
      if ((TextUtils.equals(localcgs.e(), paramString)) && (TextUtils.equals(localcgs.a(), parambfd.a()))) {
        return true;
      }
    }
    return false;
  }
  
  private void y()
  {
    
    if (t == null) {
      t = new hiy(c);
    }
  }
  
  public hkx a(String paramString)
  {
    return (hkx)j.get(paramString);
  }
  
  public void a(int paramInt)
  {
    y();
    t.b().a(paramInt);
  }
  
  public void a(Intent paramIntent)
  {
    if (q != null) {
      q.U().post(new cfk(this, paramIntent));
    }
  }
  
  public void a(cgs paramcgs, boolean paramBoolean1, List<cyx> paramList, boolean paramBoolean2, cyx paramcyx, int paramInt1, int paramInt2, boolean paramBoolean3, long paramLong, lbz paramlbz, String paramString)
  {
    hbs.a("Expected null", q);
    q = new cgw(paramcgs, paramBoolean1, paramList, paramBoolean2, paramcyx, paramInt1, paramInt2, paramBoolean3, paramLong, paramlbz, paramString);
    paramList = c;
    paramcgs = q.m();
    paramList = paramList.getSharedPreferences(cfx.class.getName(), 0);
    if (!TextUtils.isEmpty(paramList.getString("ONGOING_CALL_SESSION", ""))) {
      aal.c(2723);
    }
    paramList.edit().putString("ONGOING_CALL_SESSION", paramcgs).apply();
    q.y();
    d.b();
    fzp.c.a(d).a(new cfe(this));
  }
  
  void a(hcs paramhcs)
  {
    ezi.c("Babel_calls", "CallServiceHost.handleHangoutExited", new Object[0]);
    if (q == null) {
      return;
    }
    x();
    if (q.k())
    {
      aal.w();
      if (w != null) {
        ((TelephonyManager)aal.oJ.getSystemService("phone")).listen(w, 0);
      }
    }
    q.a(paramhcs);
    paramhcs = a.iterator();
    while (paramhcs.hasNext()) {
      ((hku)paramhcs.next()).a(q);
    }
    q.e().s();
    if ((q.k()) && (!q.K())) {
      ezc.a(aal.hJ);
    }
    Object localObject = c;
    paramhcs = q.m();
    localObject = ((Context)localObject).getSharedPreferences(cfx.class.getName(), 0);
    if (!((SharedPreferences)localObject).getString("ONGOING_CALL_SESSION", "").equals(paramhcs)) {
      aal.c(2715);
    }
    ((SharedPreferences)localObject).edit().remove("ONGOING_CALL_SESSION").apply();
    q = null;
    d.d();
  }
  
  public void a(hkt paramhkt)
  {
    y();
    paramhkt = t.a(paramhkt);
    paramhkt.a(r);
    if (q.k())
    {
      localObject = c;
      if (q.g() == 3) {}
      for (boolean bool = true;; bool = false)
      {
        i = new hjz((Context)localObject, bool);
        i.a(new hki(this));
        i.a(false);
        i.c_(true);
        paramhkt.a(i);
        paramhkt.a(i);
        paramhkt = a.iterator();
        while (paramhkt.hasNext()) {
          ((hku)paramhkt.next()).a(i.c(), i.d());
        }
      }
      o = new cex(c);
      o.a(new cfa(this));
      o.a();
      return;
    }
    paramhkt.a(new hjy());
    Object localObject = new hix();
    ((hix)localObject).b();
    paramhkt.a((hkr)localObject);
  }
  
  public void a(hku paramhku)
  {
    r.a(paramhku);
    a.add(paramhku);
    if (e != null) {
      paramhku.a(e);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject;
    if (l != paramBoolean)
    {
      l = paramBoolean;
      y();
      localObject = t.b();
      if (localObject != null) {
        break label44;
      }
      ezi.d("Babel_calls", "Attempted to change audio mute state without an active call.", new Object[0]);
    }
    label44:
    do
    {
      return;
      localObject = ((hks)localObject).n();
    } while (localObject == null);
    if (!paramBoolean) {
      bool = true;
    }
    ((hkq)localObject).a(bool);
  }
  
  public void b()
  {
    if (!u)
    {
      a(new cjg(c));
      u = true;
    }
  }
  
  public void b(hkt paramhkt)
  {
    y();
    hks localhks = t.b();
    hbs.b("Expected condition to be false", localhks.k());
    g = paramhkt;
    localhks.a(paramhkt);
  }
  
  public void b(hku paramhku)
  {
    r.b(paramhku);
    hbs.a("Expected condition to be true", a.remove(paramhku));
  }
  
  public void b(String paramString)
  {
    y();
    hks localhks = t.b();
    if (!(localhks instanceof hcd))
    {
      ezi.d("Babel_calls", "Attempted to pin participant without an active call.", new Object[0]);
      return;
    }
    ((hcd)localhks).c(paramString);
  }
  
  public void b(List<cyx> paramList)
  {
    if ((q != null) && (q.A()))
    {
      a(paramList);
      q.a(paramList);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    boolean bool = false;
    if (m != paramBoolean)
    {
      m = paramBoolean;
      y();
      localObject = t.b();
      if (localObject == null) {
        ezi.d("Babel_calls", "Attempted to change audio playback mute state without an active call.", new Object[0]);
      }
    }
    else
    {
      return;
    }
    Object localObject = ((hks)localObject).o();
    paramBoolean = bool;
    if (!m) {
      paramBoolean = true;
    }
    ((hkr)localObject).c_(paramBoolean);
  }
  
  public void c(String paramString)
  {
    y();
    hks localhks = t.b();
    if (!(localhks instanceof hcd))
    {
      ezi.d("Babel_calls", "Attempted to mute remote participant without an active call.", new Object[0]);
      return;
    }
    ((hcd)localhks).a(paramString);
  }
  
  public boolean c()
  {
    if (v == null)
    {
      hde localhde = new hde();
      v = localhde;
      localhde.a(aal.oJ);
    }
    return v.a();
  }
  
  public hkx d()
  {
    return n;
  }
  
  public void d(String paramString)
  {
    y();
    hks localhks = t.b();
    if (!(localhks instanceof hcd))
    {
      ezi.d("Babel_calls", "Attempted to mute remote participant without an active call.", new Object[0]);
      return;
    }
    ((hcd)localhks).b(paramString);
  }
  
  public void e()
  {
    y();
    hks localhks = t.b();
    if (localhks == null) {
      return;
    }
    hbs.b("Expected condition to be false", localhks.k());
    localhks.a(30);
  }
  
  public hks f()
  {
    if (t == null) {
      return null;
    }
    return t.b();
  }
  
  public hkv g()
  {
    if (t == null) {}
    hks localhks;
    do
    {
      return null;
      localhks = f();
    } while (localhks == null);
    return localhks.l();
  }
  
  public boolean h()
  {
    return l;
  }
  
  public boolean i()
  {
    hjk localhjk = k();
    return (localhjk == null) || (!localhjk.g());
  }
  
  public hjz j()
  {
    return i;
  }
  
  public hjk k()
  {
    hks localhks = s.f();
    if (localhks == null) {
      return null;
    }
    return (hjk)localhks.m();
  }
  
  public boolean l()
  {
    return e != null;
  }
  
  public boolean m()
  {
    return q != null;
  }
  
  public boolean n()
  {
    return f;
  }
  
  public hbo o()
  {
    if (t == null)
    {
      ezi.d("Babel_calls", "Attempted to get mesi collections without an a call client.", new Object[0]);
      return null;
    }
    hks localhks = t.b();
    if (localhks == null)
    {
      ezi.d("Babel_calls", "Attempted to get mesi collections without an active call.", new Object[0]);
      return null;
    }
    return localhks.q();
  }
  
  public List<hkx> p()
  {
    return new ArrayList(j.values());
  }
  
  public hkx q()
  {
    Object localObject = p();
    int i1 = ((List)localObject).size();
    if (i1 == 1)
    {
      localObject = (hkx)((List)localObject).get(0);
      if ((((hkx)localObject).g()) || (!((hkx)localObject).m())) {}
    }
    else
    {
      hkx localhkx;
      do
      {
        return (hkx)localObject;
        if (i1 != 2) {
          break;
        }
        localhkx = (hkx)((List)localObject).get(0);
        localObject = (hkx)((List)localObject).get(1);
        if ((localhkx.g()) && (((hkx)localObject).m())) {
          return (hkx)localObject;
        }
        if (!((hkx)localObject).g()) {
          break;
        }
        localObject = localhkx;
      } while (localhkx.m());
    }
    return null;
  }
  
  public cgw r()
  {
    return q;
  }
  
  public boolean s()
  {
    return (q != null) && (q.H() != 0);
  }
  
  public boolean t()
  {
    return (q != null) && (q.K());
  }
  
  public void u()
  {
    q.z();
  }
  
  List<hku> v()
  {
    return a;
  }
  
  public void w()
  {
    
    if (w == null) {
      w = new cfl(this);
    }
    ((TelephonyManager)aal.oJ.getSystemService("phone")).listen(w, 32);
  }
  
  void x()
  {
    if (q == null) {
      return;
    }
    bft.a(dvd.a(q.e().a(), null).g());
  }
}

/* Location:
 * Qualified Name:     cfc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */