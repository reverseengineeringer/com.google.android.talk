import com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsActivityPeer;
import com.google.apps.tiktok.inject.processor.AccountAndActivityComponentCreator;

public class ept
  implements AccountAndActivityComponentCreator, jsl
{
  public final jse a;
  public kog b;
  public kog c;
  public kog d;
  public kog e;
  public kog f;
  public kog g;
  public kog h;
  public kog i;
  public kog j;
  public kog k;
  public kog l;
  public kog m;
  public kog n;
  public kog o;
  
  public ept(djj paramdjj, jse paramjse)
  {
    if (paramjse == null) {
      throw new NullPointerException();
    }
    a = paramjse;
    b = mhi.a(new jsf(a));
    c = mhi.a(jsm.a);
    d = mhj.a(new kog[] { c, jsv.a });
    e = mhg.a(1).a("ignored", jsu.a).a();
    f = mhi.a(new jss(b, d, p.H, e));
    g = new epu(b);
    h = new eps(g);
    i = mhi.a(new jsn(b));
    j = jso.a;
    k = new jsp(i, j);
    l = mhi.a(new hsn(k));
    m = mhi.a(new hsm(b, k));
    n = mhi.a(new jrb(b, p.I, p.J));
    o = mhi.a(new jqs(b, k, p.H, p.I, p.z, n));
  }
  
  public StatusMessageSettingsActivityPeer a()
  {
    return (StatusMessageSettingsActivityPeer)h.a();
  }
  
  public jsr b()
  {
    return (jsr)f.a();
  }
  
  public dda c()
  {
    return new dda(this);
  }
}

/* Location:
 * Qualified Name:     ept
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */