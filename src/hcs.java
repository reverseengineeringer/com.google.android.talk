import android.content.Context;
import android.os.Bundle;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class hcs
{
  String a;
  String b;
  final hkt c;
  String d;
  private final String e;
  private boolean f;
  private int g;
  private int h;
  private final Map<String, hil> i;
  private hip j;
  private long k;
  private int l;
  private int m;
  private String n;
  private boolean o;
  private final hcw p;
  
  public hcs(hkt paramhkt)
  {
    e = paramhkt.a();
    c = paramhkt;
    f = true;
    g = -1;
    k = 0L;
    l = 0;
    i = new HashMap();
    j = null;
    p = new hcw(new hct(this));
    h = 0;
    m = 0;
    n = null;
    o = false;
    d = paramhkt.f();
  }
  
  static String d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      hbs.a("Unknown type");
      return "Unknown state";
    case 0: 
      return "STATE_INIT";
    case 1: 
      return "STATE_SENTINITIATE";
    case 2: 
      return "STATE_INPROGRESS";
    case 3: 
      return "STATE_DEINIT";
    }
    return "STATE_INVALID";
  }
  
  String a()
  {
    return d;
  }
  
  public List<kju> a()
  {
    Object localObject2;
    hbs.b("localState is null - cannot report correct stats", localObject2);
    int i1;
    int i2;
    String str;
    Object localObject1 = p.a((Context)localObject1, i1, i2, k, e).a(c).a(d(), m, h).a(str, null, null);
    if (c.p() != null) {
      ((hcx)localObject1).a(c.p());
    }
    if (j != null)
    {
      localObject2 = d;
      str = String.valueOf(j.a());
      ((hcx)localObject1).b(String.valueOf(localObject2).length() + 22 + String.valueOf(str).length() + (String)localObject2 + "@groupchat.google.com/" + str);
    }
    return ((hcx)localObject1).a();
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  void a(int paramInt, String paramString)
  {
    hbs.a(paramInt, 1, 1019);
    if (m == 0)
    {
      m = paramInt;
      n = paramString;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if (a != null) {
      paramBundle.putString("call_state_remote_session_id", a);
    }
    paramBundle.putString("call_state_local_session_id", g());
    paramBundle.putString("is_pending_sign_in", String.valueOf(b()));
    String str;
    switch (l)
    {
    default: 
      str = "unk";
    }
    for (;;)
    {
      paramBundle.putString("media_network_type", str);
      paramBundle.putString("media_state", d(g));
      paramBundle.putString("p2p_mode", String.valueOf(s()));
      paramBundle.putString("participant_log_id", i());
      if (d != null) {
        paramBundle.putString("hangout_id", d);
      }
      paramBundle.putString("start_time_in_millis", String.valueOf(k));
      return;
      str = "mobile";
      continue;
      str = "mobile_2g";
      continue;
      str = "mobile_3g";
      continue;
      str = "mobile_lte";
      continue;
      str = "wifi";
      continue;
      str = "wimax";
      continue;
      str = "bt";
      continue;
      str = "eth";
    }
  }
  
  public void a(hil paramhil)
  {
    hbs.b("Expected condition to be false", paramhil.k());
    i.put(paramhil.a(), paramhil);
  }
  
  void a(hip paramhip)
  {
    hbs.a("Expected condition to be true", paramhip.k());
    j = paramhip;
    k = System.currentTimeMillis();
  }
  
  void a(String paramString)
  {
    d = paramString;
  }
  
  void a(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public hil b(String paramString)
  {
    if ((j != null) && (paramString.equals(j.a()))) {
      return j;
    }
    return c(paramString);
  }
  
  void b(int paramInt)
  {
    l = paramInt;
  }
  
  void b(hil paramhil)
  {
    hbs.b("Expected non-null", paramhil);
    hbs.b(paramhil, j);
    i.remove(paramhil.a());
  }
  
  boolean b()
  {
    return f;
  }
  
  public hil c(String paramString)
  {
    return (hil)i.get(paramString);
  }
  
  void c()
  {
    f = false;
  }
  
  void c(int paramInt)
  {
    a(paramInt, null);
  }
  
  void d(String paramString)
  {
    hlk.a(3, "vclib", "setRemoteSessionId = %s", new Object[] { paramString });
    a = paramString;
    if (b == null) {
      e(a);
    }
  }
  
  public boolean d()
  {
    return g != -1;
  }
  
  void e(String paramString)
  {
    hlk.a(3, "vclib", "setActiveSessionId = %s", new Object[] { paramString });
    b = paramString;
  }
  
  public boolean e()
  {
    return g == 2;
  }
  
  public boolean f()
  {
    return g == 2;
  }
  
  public String g()
  {
    return e;
  }
  
  public String h()
  {
    return a;
  }
  
  public String i()
  {
    return c.b();
  }
  
  hkt j()
  {
    return c;
  }
  
  public hcw k()
  {
    return p;
  }
  
  public Collection<hil> l()
  {
    return Collections.unmodifiableCollection(i.values());
  }
  
  public hip m()
  {
    return j;
  }
  
  int n()
  {
    return l;
  }
  
  void o()
  {
    h = 3;
  }
  
  public int p()
  {
    hbs.b(Integer.valueOf(m), Integer.valueOf(0));
    return m;
  }
  
  public String q()
  {
    hbs.b(Integer.valueOf(m), Integer.valueOf(0));
    return n;
  }
  
  public int r()
  {
    return hcw.d(m);
  }
  
  public boolean s()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     hcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */