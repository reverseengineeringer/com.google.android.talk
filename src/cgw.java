import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;

public final class cgw
  extends eap
{
  private static final int[] J = { 1, 2 };
  private static final int[] K = { 1, 3 };
  private static final boolean c;
  private boolean A;
  private boolean B;
  private int C = 0;
  private String D;
  private String E;
  private boolean F;
  private final Random G = new Random();
  private lbz H;
  private int I = 0;
  private final cyx L;
  private final cji M;
  private String N;
  private boolean O;
  private hkt P;
  private final Runnable Q = new cgx(this);
  private final Runnable R = new cgy(this);
  private final Runnable S = new cgz(this);
  private final Runnable T = new cha(this);
  public final cfc a = cfc.a();
  boolean b;
  private final boolean d;
  private boolean e;
  private int f = -1;
  private final Handler g = new Handler();
  private final cgs h;
  private cgs i;
  private final String j;
  private final String k;
  private final int l;
  private final int m;
  private final boolean n;
  private boolean o;
  private String p;
  private boolean q;
  private boolean r;
  private final ArrayList<cii> s = new ArrayList();
  private final boolean t;
  private final ezf u;
  private int v;
  private boolean w;
  private boolean x;
  private boolean y;
  private int z;
  
  static
  {
    imx localimx = ezi.g;
    c = false;
  }
  
  cgw(cgs paramcgs, boolean paramBoolean1, List<cyx> paramList, boolean paramBoolean2, cyx paramcyx, int paramInt1, int paramInt2, boolean paramBoolean3, long paramLong, lbz paramlbz, String paramString)
  {
    h = paramcgs.r();
    i = paramcgs;
    l = paramInt1;
    m = paramInt2;
    d = paramBoolean1;
    n = paramBoolean3;
    t = paramBoolean2;
    int i1;
    if (paramlbz == null)
    {
      H = new lbz();
      k = paramString;
      L = paramcyx;
      M = new cji(this, paramcyx);
      N = "";
      if ((paramList == null) || (paramList.size() <= 0)) {
        break label476;
      }
      i1 = 1;
      label213:
      if (i1 != 0)
      {
        hbs.b("Expected condition to be false", paramBoolean2);
        paramcyx = new cii(this, true, paramList);
        s.add(paramcyx);
        M.a(paramList);
      }
      b = false;
      if (paramcgs.l() != 2) {
        break label482;
      }
      paramBoolean1 = true;
      label270:
      c(paramBoolean1);
      new hlo();
      j = hlo.a();
      O = false;
      paramcgs = "type_null";
      switch (paramInt2)
      {
      default: 
        ezi.e("Babel", 77 + "HangoutState initialized with a CallType outside the known range: " + paramInt2, new Object[0]);
        label363:
        paramcyx = 18 + "source_" + paramInt1;
        paramlbz = aal.oJ;
        if (i1 == 0) {
          break;
        }
      }
    }
    for (paramList = K;; paramList = J)
    {
      ezi.a("Babel_CallMarkReporter", "Creating startup reporter", new Object[0]);
      paramString = new ArrayList();
      Collections.addAll(paramString, new String[] { paramcyx, paramcgs });
      u = new ezf(paramlbz, paramList, paramString);
      u.a(1, paramLong);
      return;
      H = paramlbz;
      break;
      label476:
      i1 = 0;
      break label213;
      label482:
      paramBoolean1 = false;
      break label270;
      paramcgs = "type_video";
      break label363;
      paramcgs = "type_audio";
      break label363;
      if (n)
      {
        paramcgs = "type_pstn";
        break label363;
      }
      paramcgs = "type_tycho";
      break label363;
      paramcgs = "type_unk";
      break label363;
    }
  }
  
  static long D()
  {
    return aal.a(aal.oJ, "babel_hangout_outgoing_invite_max_duration_ms", 30000L);
  }
  
  public static final long E()
  {
    return aal.a(aal.oJ, "babel_hangout_enter_step_timeout", 12000L);
  }
  
  public static int L()
  {
    return aal.a(aal.oJ, "babel_dtmf_code_duration_ms", 350);
  }
  
  private ArrayList<cii> Z()
  {
    return (ArrayList)s.clone();
  }
  
  private cii aa()
  {
    if ((s.size() == 0) || (!((cii)s.get(0)).a())) {
      return null;
    }
    return (cii)s.get(0);
  }
  
  private void ab()
  {
    if ((i.q()) || (i.c()) || (i.h() != null) || (i.i() != null) || (i.k() != null)) {
      P.g(i.g()).f(i.f()).h(i.h()).i(i.i()).d(i.b()).e(i.d()).a(i.k());
    }
    for (;;)
    {
      if (n) {
        P.a(new cgr(aal.oJ, this).a());
      }
      a.b(P);
      A = true;
      return;
      P.c(i.g());
    }
  }
  
  private void ac()
  {
    if (!x)
    {
      x = true;
      u.a(new int[] { 8 });
    }
  }
  
  private void ad()
  {
    Object localObject = q();
    if ((localObject == null) || (((hcs)localObject).l().size() == 0)) {
      return;
    }
    localObject = ((hcs)localObject).l().iterator();
    int i2 = 0;
    int i3 = 0;
    label41:
    hil localhil;
    int i1;
    if (((Iterator)localObject).hasNext())
    {
      localhil = (hil)((Iterator)localObject).next();
      if ((localhil instanceof hir))
      {
        i1 = i3 | 0x1;
        label75:
        if (!localhil.j()) {
          break label172;
        }
        i2 += 1;
      }
    }
    label172:
    for (;;)
    {
      i3 = i1;
      break label41;
      i1 = i3;
      if (!(localhil instanceof hip)) {
        break label75;
      }
      i1 = i3 | 0x2;
      break label75;
      if (i2 > 1) {
        x();
      }
      if (I == i3) {
        break;
      }
      I = i3;
      localObject = a.v().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((hku)((Iterator)localObject).next()).b(i3);
      }
      break;
    }
  }
  
  private void b(int paramInt, String paramString)
  {
    if (C == 0)
    {
      C = paramInt;
      D = paramString;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (b != paramBoolean)
    {
      b = paramBoolean;
      T.run();
    }
  }
  
  private jug d(boolean paramBoolean)
  {
    Object localObject = ilh.c(aal.oJ, cjq.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("account_id", l().g());
    localBundle.putBoolean("enable_one_rpc", paramBoolean);
    if (!n) {}
    jug localjug;
    for (paramBoolean = true;; paramBoolean = false)
    {
      localBundle.putBoolean("is_pstn_only", paramBoolean);
      localjug = new jug();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localjug = ((cjq)((Iterator)localObject).next()).a(localjug, localBundle);
      }
    }
    return localjug;
  }
  
  private void g(String paramString)
  {
    RealTimeChatService.b(this);
    i.a(paramString);
    ab();
  }
  
  boolean A()
  {
    hcs localhcs = q();
    hkx localhkx = a.d();
    return (localhcs != null) && (localhcs.f()) && (localhkx != null) && (localhkx.o());
  }
  
  void B()
  {
    aa().e();
  }
  
  public boolean C()
  {
    return s.size() != 0;
  }
  
  public List<cyx> F()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(((cii)localIterator.next()).d());
    }
    return localArrayList;
  }
  
  public boolean G()
  {
    return t;
  }
  
  public int H()
  {
    return v;
  }
  
  void I()
  {
    Iterator localIterator = Z().iterator();
    while (localIterator.hasNext()) {
      ((cii)localIterator.next()).h();
    }
    ac();
  }
  
  public int J()
  {
    return I;
  }
  
  public boolean K()
  {
    return b;
  }
  
  public String M()
  {
    return N;
  }
  
  public boolean N()
  {
    return B;
  }
  
  public int O()
  {
    hbs.b(Integer.valueOf(C), Integer.valueOf(0));
    return C;
  }
  
  String P()
  {
    hbs.b(Integer.valueOf(C), Integer.valueOf(0));
    return D;
  }
  
  public boolean Q()
  {
    return F;
  }
  
  public String R()
  {
    return E;
  }
  
  public cyx S()
  {
    return L;
  }
  
  public List<chb> T()
  {
    return M.e();
  }
  
  Handler U()
  {
    return g;
  }
  
  public void a(char paramChar)
  {
    if (q() != null)
    {
      Object localObject = q().l().iterator();
      while (((Iterator)localObject).hasNext())
      {
        hil localhil = (hil)((Iterator)localObject).next();
        if ((localhil instanceof hir))
        {
          if (c)
          {
            String str = String.valueOf(localhil);
            new StringBuilder(String.valueOf(str).length() + 35).append("HangoutState - sending dtmf: ").append(paramChar).append(" to: ").append(str);
          }
          hgd.a().a(paramChar, L(), localhil.a());
        }
      }
      localObject = String.valueOf(N);
      N = (String.valueOf(localObject).length() + 1 + (String)localObject + paramChar);
    }
  }
  
  public void a(int paramInt)
  {
    I = paramInt;
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if (paramInt == z)
    {
      ezi.e("Babel", "Create hangout id request failed", new Object[0]);
      z = 0;
      d(null);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putString("allow_on_air", String.valueOf(d));
    String str;
    if (n())
    {
      str = "STARTED";
      paramBundle.putString("broadcast_session_state", str);
      switch (f)
      {
      case 2: 
      default: 
        str = "";
      }
    }
    for (;;)
    {
      paramBundle.putString("broadcast_use_case", str);
      paramBundle.putString("connected_remote_endpoint_count", String.valueOf(H()));
      paramBundle.putString("is_audio_only_mode", String.valueOf(K()));
      paramBundle.putString("is_awaiting", String.valueOf(C()));
      paramBundle.putString("is_broadcast", String.valueOf(o));
      paramBundle.putString("is_exiting", String.valueOf(N()));
      paramBundle.putString("is_initial_outgoing_invite_pending", String.valueOf(u()));
      paramBundle.putString("is_recordable", String.valueOf(q));
      paramBundle.putString("is_recording", String.valueOf(p()));
      paramBundle.putString("local_session_id", m());
      paramBundle.putString("participant_composition", String.valueOf(J()));
      paramBundle.putString("should_upload_log", String.valueOf(Q()));
      return;
      str = "STOPPED";
      break;
      str = "HANGOUTS_ON_AIR";
      continue;
      str = "ENTERPRISE_RECORDING";
      continue;
      str = "CONSUMER_RECORDING";
    }
  }
  
  void a(hcs paramhcs)
  {
    g.removeCallbacks(Q);
    if (paramhcs != null) {
      b(paramhcs.p(), paramhcs.q());
    }
    for (;;)
    {
      paramhcs = s.iterator();
      while (paramhcs.hasNext()) {
        ((cii)paramhcs.next()).g();
      }
      b(30, null);
    }
    M.d();
  }
  
  void a(hil paramhil)
  {
    if ((paramhil.k()) || (paramhil.e())) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.b("Expected condition to be false", bool);
      v += 1;
      if (!w)
      {
        w = true;
        u.a(new int[] { 9 });
      }
      Iterator localIterator = Z().iterator();
      while (localIterator.hasNext()) {
        ((cii)localIterator.next()).b(paramhil);
      }
    }
    M.a(paramhil);
    ad();
  }
  
  void a(hil paramhil, Integer paramInteger)
  {
    hbs.b("Expected condition to be false", paramhil.k());
    int i2;
    label57:
    int i3;
    if (paramhil.f())
    {
      i1 = 0;
      localIterator = s.iterator();
      for (;;)
      {
        if (localIterator.hasNext()) {
          if (((cii)localIterator.next()).a(paramhil))
          {
            i2 = 1;
            if (s.size() != 0) {
              break label321;
            }
            i3 = i1;
            if (v == 0)
            {
              i3 = i1;
              if (!o) {
                if ((!(paramhil instanceof hir)) || (aal.a(paramInteger, 0) != 7)) {
                  break label314;
                }
              }
            }
          }
        }
      }
    }
    label314:
    for (int i1 = 1014;; i1 = 1005)
    {
      b(i1);
      i3 = 0;
      if ((i3 != 0) && (n)) {
        ezc.a(aal.hJ);
      }
      M.b(paramhil);
      ad();
      boolean bool1;
      if ((paramInteger != null) && (i2 != 0) && ((paramhil instanceof hir)))
      {
        paramhil = (hir)paramhil;
        i1 = aal.a(paramInteger, 0);
        paramInteger = a.v().iterator();
        bool1 = false;
        while (paramInteger.hasNext())
        {
          boolean bool2 = ((hku)paramInteger.next()).c(i1);
          bool1 = bool2;
          if (bool2) {
            bool1 = bool2;
          }
        }
        if (!bool1) {
          paramInteger = aal.oJ;
        }
      }
      switch (i1)
      {
      case 9: 
      default: 
        return;
        if (v > 0) {}
        for (bool1 = true;; bool1 = false)
        {
          hbs.a("Expected condition to be true", bool1);
          v -= 1;
          i1 = 1;
          break;
        }
        i2 = 0;
        break label57;
      }
    }
    label321:
    Iterator localIterator = Z().iterator();
    for (;;)
    {
      i3 = i1;
      if (!localIterator.hasNext()) {
        break;
      }
      ((cii)localIterator.next()).a(paramhil, paramInteger);
    }
    Toast.makeText(paramInteger, StressMode.da, 0).show();
    return;
    Toast.makeText(paramInteger, StressMode.cY, 0).show();
    return;
    Toast.makeText(paramInteger, paramInteger.getString(StressMode.cZ, new Object[] { paramhil.b() }), 0).show();
  }
  
  public void a(String paramString)
  {
    i = i.d(paramString);
    if (c)
    {
      paramString = String.valueOf(i);
      new StringBuilder(String.valueOf(paramString).length() + 11).append("Updated to ").append(paramString);
    }
  }
  
  public void a(String paramString, char paramChar)
  {
    if (c) {
      new StringBuilder(String.valueOf(paramString).length() + 35).append("HangoutState - sending dtmf: ").append(paramChar).append(" to: ").append(paramString);
    }
    hgd.a().a(paramChar, L(), paramString);
    paramString = String.valueOf(N);
    N = (String.valueOf(paramString).length() + 1 + paramString + paramChar);
  }
  
  public void a(String paramString1, String paramString2)
  {
    g.removeCallbacks(R);
    String str;
    if (!B)
    {
      hbs.b("Expected condition to be false", B);
      str = i.d();
      if (("conversation".equals(i.b())) && (bfz.a(str))) {
        break label72;
      }
      hbs.a("Expected condition to be true", i.p());
    }
    label72:
    while (!str.equals(paramString1)) {
      return;
    }
    g(paramString2);
    a.x();
  }
  
  void a(List<cyx> paramList)
  {
    cii localcii = new cii(this, false, paramList);
    s.add(localcii);
    localcii.e();
    M.a(paramList);
  }
  
  public void a(kgd paramkgd)
  {
    boolean bool1 = true;
    int i1 = aal.a(m, -1);
    label60:
    boolean bool3;
    if (i1 == 0)
    {
      if ((k == null) || (k.a == null))
      {
        ezi.d("Babel", "No live stream status, ignore the update.", new Object[0]);
        return;
      }
      if (aal.a(k.a, 0) == 4)
      {
        boolean bool2 = a(e, f);
        bool3 = a(bool1, i1);
        e = bool1;
        f = i1;
        if (bool2 != bool3)
        {
          if (!p()) {
            break label235;
          }
          paramkgd = aal.oJ;
          if (!bool3) {
            break label228;
          }
        }
      }
    }
    label228:
    for (i1 = StressMode.ev;; i1 = StressMode.ee)
    {
      paramkgd = paramkgd.getString(i1);
      Toast.makeText(aal.oJ, paramkgd, 0).show();
      paramkgd = a.v().iterator();
      while (paramkgd.hasNext()) {
        ((hku)paramkgd.next()).a();
      }
      break;
      bool1 = false;
      break label60;
      if ((l == null) || (l.a == null))
      {
        ezi.d("Babel", "No recording status, ignore the update.", new Object[0]);
        return;
      }
      if (aal.a(l.a, 0) == 2) {
        break label60;
      }
      bool1 = false;
      break label60;
    }
    label235:
    paramkgd = aal.oJ;
    if (bool3) {}
    for (i1 = StressMode.ep;; i1 = StressMode.eq)
    {
      paramkgd = paramkgd.getString(i1);
      break;
    }
  }
  
  public void a(klh paramklh)
  {
    a = ((awm)ilh.a(aal.oJ, awm.class)).e(l().g());
    k = m();
    if (i != null)
    {
      c = i.g();
      f = new kmd();
      f.a = i.e();
    }
    String str2 = k;
    hcs localhcs = q();
    String str1 = str2;
    if (localhcs != null)
    {
      b = localhcs.h();
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = localhcs.i();
      }
    }
    if (!TextUtils.isEmpty(str1)) {
      e = str1;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public boolean a(HangoutActivity paramHangoutActivity)
  {
    cgs localcgs = paramHangoutActivity.m();
    if (paramHangoutActivity.j()) {
      return (h.equals(localcgs)) || (i.equals(localcgs));
    }
    return i.equals(localcgs);
  }
  
  public boolean a(boolean paramBoolean, int paramInt)
  {
    if (paramInt == -1) {
      if ((q) || (d)) {
        paramInt = 1;
      }
    }
    while ((paramInt != 0) && (paramBoolean))
    {
      return true;
      paramInt = 0;
      continue;
      if ((paramInt == 0) || (paramInt == 1) || (paramInt == 3)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
    }
    return false;
  }
  
  public void b(int paramInt)
  {
    ezi.c("Babel", String.format("HangoutState exiting due to reason %d; exiting: %s; callJoined: %s", new Object[] { Integer.valueOf(paramInt), Boolean.valueOf(B), Boolean.valueOf(A) }), new Object[0]);
    if (B) {
      return;
    }
    B = true;
    O = false;
    b(paramInt, null);
    u.a();
    g.removeCallbacks(Q);
    g.removeCallbacks(R);
    g.removeCallbacks(S);
    z = 0;
    RealTimeChatService.b(this);
    Iterator localIterator = Z().iterator();
    while (localIterator.hasNext()) {
      ((cii)localIterator.next()).f();
    }
    localIterator = a.v().iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).e();
    }
    if (A) {
      a.a(paramInt);
    }
    if ((v == 0) && (i.e() != null)) {}
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt != 0) {
        RealTimeChatService.i(l(), i.e());
      }
      if (A) {
        break;
      }
      a.e();
      return;
    }
  }
  
  void b(hil paramhil)
  {
    Iterator localIterator = Z().iterator();
    while (localIterator.hasNext()) {
      ((cii)localIterator.next()).i();
    }
    if (v == 0)
    {
      localIterator = a.v().iterator();
      while (localIterator.hasNext()) {
        ((hku)localIterator.next()).a(paramhil);
      }
    }
    ac();
  }
  
  public void b(String paramString)
  {
    i = i.e(paramString);
    if (c)
    {
      paramString = String.valueOf(i);
      new StringBuilder(String.valueOf(paramString).length() + 11).append("Updated to ").append(paramString);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    q = paramBoolean;
    if ((!o) || (!q)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      hbs.a("Expected condition to be true", paramBoolean);
      return;
    }
  }
  
  public void c(String paramString)
  {
    p = paramString;
  }
  
  public cgs d()
  {
    return h;
  }
  
  public void d(String paramString)
  {
    hbs.a("Expected condition to be true", i.p());
    if (z == 0) {
      return;
    }
    g.removeCallbacks(S);
    RealTimeChatService.b(this);
    z = 0;
    if (paramString == null)
    {
      b(15);
      return;
    }
    a(paramString);
    a.x();
    ab();
  }
  
  public cgs e()
  {
    return i;
  }
  
  public void e(String paramString)
  {
    if (E != null)
    {
      hgd.b(paramString);
      F = true;
    }
  }
  
  public String f()
  {
    if (h.q()) {
      return String.format("%s/%s/%s", new Object[] { aal.a(aal.oJ, "babel_hangout_named_shortlink_base_url", "http://g.co/hangouts"), h.f(), h.g() });
    }
    String str2 = aal.a(aal.oJ, "babel_hangout_base_url", "https://plus.google.com/hangouts");
    boolean bool = aal.a(aal.oJ, "babel_hangout_underscore_after_base_url", true);
    String str3 = i.g();
    hbs.b("Expected non-null", str3);
    if (bool) {}
    for (String str1 = "%s/_/%s";; str1 = "%s/%s") {
      return String.format(str1, new Object[] { str2, str3 });
    }
  }
  
  public void f(String paramString)
  {
    u.a(paramString);
  }
  
  int g()
  {
    return m;
  }
  
  public boolean h()
  {
    return r;
  }
  
  public void i()
  {
    boolean bool2 = true;
    o = true;
    boolean bool1 = bool2;
    if (o) {
      if (q) {
        break label33;
      }
    }
    label33:
    for (bool1 = bool2;; bool1 = false)
    {
      hbs.a("Expected condition to be true", bool1);
      return;
    }
  }
  
  public boolean j()
  {
    return (!o) && (!q);
  }
  
  public boolean k()
  {
    return n;
  }
  
  public bfd l()
  {
    return dvd.a(i.a(), null);
  }
  
  public String m()
  {
    return j;
  }
  
  public boolean n()
  {
    return e;
  }
  
  public int o()
  {
    return f;
  }
  
  public boolean p()
  {
    if (f == -1) {
      return q;
    }
    return f != 0;
  }
  
  public hcs q()
  {
    hcs localhcs = hgd.a().b();
    if ((localhcs == null) || (localhcs.g().equals(j))) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      return localhcs;
    }
  }
  
  public void r()
  {
    u.a(new int[] { 3 });
    F = false;
    if (E != null)
    {
      if (Math.abs(G.nextInt() % 10000) < aal.a(aal.oJ, "babel_hangout_upload_rate_2", 10))
      {
        hgd.b("Triggering sampled debug log");
        F = true;
      }
      if (aal.a(aal.oJ, "babel_hangout_upload_logs_2", false))
      {
        hgd.b("Triggering log upload for auto_plugin_log_upload experiment");
        F = true;
      }
    }
  }
  
  List<cii> s()
  {
    return s;
  }
  
  List<cyx> t()
  {
    cii localcii = aa();
    if (localcii == null) {
      return null;
    }
    return localcii.b();
  }
  
  public boolean u()
  {
    cii localcii = aa();
    return (localcii != null) && (localcii.c() == 0L);
  }
  
  void v()
  {
    g.removeCallbacks(Q);
    u.a(new int[] { 5 });
  }
  
  public void w()
  {
    if (!y)
    {
      u.a(new int[] { 6 });
      y = true;
    }
    x();
  }
  
  public void x()
  {
    if (b)
    {
      if (!a.i())
      {
        hjz localhjz = a.j();
        if ((localhjz.c().equals(hke.b)) && (localhjz.d().contains(hkd.a))) {
          localhjz.a(hkd.a);
        }
      }
      c(false);
    }
  }
  
  void y()
  {
    hbs.b("Expected condition to be false", O);
    Context localContext = aal.oJ;
    Object localObject3 = i.a();
    int i1 = ((hpz)ilh.a(localContext, hpz.class)).b((String)localObject3);
    String str = ((awm)ilh.a(localContext, awm.class)).e(i1);
    Object localObject2 = "";
    Object localObject1 = localObject2;
    if (aal.a(localContext, "babel_hangout_write_logs_2", true))
    {
      localObject1 = localObject2;
      if (aal.c(l()))
      {
        localObject1 = aal.j((String)localObject3);
        localObject2 = new File(aal.j((String)localObject3));
        if (!((File)localObject2).exists()) {
          ((File)localObject2).mkdirs();
        }
        localObject2 = new File(aal.e());
        if (!((File)localObject2).exists()) {
          ((File)localObject2).mkdirs();
        }
        aal.a(i.a(), 6, 7);
        localObject2 = j;
        localObject1 = String.valueOf(localObject1).length() + 5 + String.valueOf(localObject2).length() + (String)localObject1 + "/" + (String)localObject2 + ".log";
        E = String.valueOf(localObject1).concat(".bz2");
      }
    }
    boolean bool1;
    label268:
    label293:
    boolean bool2;
    if (n)
    {
      bool1 = dvp.E.b(i1);
      if (!bool1) {
        break label604;
      }
      localObject2 = "On";
      localObject2 = String.valueOf(localObject2);
      if (((String)localObject2).length() == 0) {
        break label612;
      }
      localObject2 = "oneRpc".concat((String)localObject2);
      f((String)localObject2);
      if (m != 3) {
        break label627;
      }
      bool2 = true;
      label309:
      localObject2 = new hkt();
      mdx localmdx = new mdx();
      b = Integer.valueOf(407);
      P = ((hkt)localObject2).a(localmdx).a(j).j((String)localObject3).k(Long.toString(dwt.a().b())).l(str).a(d(bool1)).m(E).b(k).b(m).a(l).a(bool2).b(n).c(l().h()).d(d).a(lbz.a(H)).e(dvp.W.b(i1));
      if ((!TextUtils.isEmpty(i.g())) && (!i.q())) {
        P.c(i.g());
      }
      localObject3 = a;
      if (!bool1) {
        break label632;
      }
    }
    label604:
    label612:
    label627:
    label632:
    for (localObject2 = P;; localObject2 = null)
    {
      ((cfc)localObject3).a((hkt)localObject2);
      ((ekh)ilh.a(localContext, ekh.class)).a(i1, j, (String)localObject1, System.currentTimeMillis());
      a.a(false);
      a.b(false);
      O = true;
      A = false;
      return;
      if ((dvp.F.b(i1)) || (dvp.G.b(i1)))
      {
        bool1 = true;
        break;
      }
      bool1 = false;
      break;
      localObject2 = "Off";
      break label268;
      localObject2 = new String("oneRpc");
      break label293;
      bool2 = false;
      break label309;
    }
  }
  
  void z()
  {
    u.a(new int[] { 2 });
    g.postDelayed(Q, aal.a(aal.oJ, "babel_hangout_enter_master_timeout", 60000L));
    String str = i.d();
    long l1 = E();
    if (i.p())
    {
      g.postDelayed(S, l1);
      RealTimeChatService.a(this);
      z = RealTimeChatService.a(l(), i.m(), i.l());
    }
    for (;;)
    {
      a.x();
      return;
      if (("conversation" == i.b()) && (bfz.a(str)))
      {
        RealTimeChatService.a(this);
        str = RealTimeChatService.a(i.d());
        if (str != null) {
          g(str);
        } else {
          g.postDelayed(R, l1);
        }
      }
      else
      {
        if ("conversation" == i.b()) {
          RealTimeChatService.l(l(), str);
        }
        ab();
      }
    }
  }
}

/* Location:
 * Qualified Name:     cgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */