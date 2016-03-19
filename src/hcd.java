import android.content.Context;
import android.graphics.SurfaceTexture;
import android.text.TextUtils;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import com.google.android.libraries.hangouts.video.internal.RendererManager;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.webrtc.voiceengine.WebRtcAudioTrack;

public final class hcd
  implements hks
{
  final Context a;
  final hci b;
  final hlj c = new hlj();
  final hee d;
  final hfo e;
  final RendererManager f;
  final EncoderManager g;
  final DecoderManager h;
  final hgo i;
  final hiv j;
  hkt k;
  boolean l = false;
  int m = 0;
  boolean n = true;
  boolean o;
  hkw p = null;
  private final hch q;
  private final hge r;
  private hlb s;
  private hkq t;
  private hkr u;
  
  public hcd(Context paramContext, hkt paramhkt)
  {
    a = paramContext;
    k = paramhkt;
    j = new hiv(paramContext, this);
    if (hdf.a == null) {
      hdf.a = new hdf();
    }
    b = new hci(this);
    d = new hee();
    q = new hch(this);
    e = new hfo(this);
    g = new EncoderManager(paramContext);
    h = new DecoderManager(paramContext);
    f = new RendererManager(this);
    i = new hgo(this);
    r = i.b();
    WebRtcAudioTrack.setAudioMute(false);
    b.a(q);
    hgd.a().a(b);
    if (k != null)
    {
      a(paramContext, k);
      b.b(k);
    }
  }
  
  private static void a(Context paramContext, hkt paramhkt)
  {
    hbs.b("accountName not specified in CallInfo!", TextUtils.isEmpty(paramhkt.n()));
    new hlo();
    if (TextUtils.isEmpty(paramhkt.a())) {
      paramhkt.a(hlo.a());
    }
    if (TextUtils.isEmpty(paramhkt.b())) {
      paramhkt.b(hlo.a());
    }
    if (paramhkt.o() == null) {
      paramhkt.k(paramContext.getPackageName());
    }
    if (paramhkt.p() == null) {
      paramhkt.l(hlo.a());
    }
    paramhkt = paramhkt.d();
    hbs.b("RtcClient must be specified for all calls.", paramhkt);
    if (a == null) {
      if (!aal.N(paramContext)) {
        break label132;
      }
    }
    label132:
    for (int i1 = 3;; i1 = 2)
    {
      a = Integer.valueOf(i1);
      c = Integer.valueOf(2);
      return;
    }
  }
  
  private static void a(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    if (paramString1 == null)
    {
      if (!paramBoolean)
      {
        paramString1 = String.valueOf(paramString3);
        if (paramString1.length() == 0) {
          break label33;
        }
      }
      label33:
      for (paramString1 = "Field cannot be set after initCall: ".concat(paramString1);; paramString1 = new String("Field cannot be set after initCall: "))
      {
        hbs.a(paramString1, paramString2);
        return;
      }
    }
    paramString3 = String.valueOf(paramString3);
    if (paramString3.length() != 0) {}
    for (paramString3 = "Field cannot be changed after initCall: ".concat(paramString3);; paramString3 = new String("Field cannot be changed after initCall: "))
    {
      hbs.a(paramString3, paramString1, paramString2);
      return;
    }
  }
  
  public Context a()
  {
    return a;
  }
  
  public hlh a(SurfaceTexture paramSurfaceTexture)
  {
    String str = String.valueOf(paramSurfaceTexture);
    hlk.a(4, "vclib", String.valueOf(str).length() + 43 + "Creating video renderer for surfaceTexture " + str);
    return new hlh(this, paramSurfaceTexture);
  }
  
  public void a(int paramInt)
  {
    hlk.a("vclib", "Leaving call, callStateCode=%d.", new Object[] { Integer.valueOf(m) });
    if ((m == 4) || (m == 3)) {
      return;
    }
    m = 3;
    aal.a(new hcf(this, paramInt));
  }
  
  void a(hcs paramhcs)
  {
    if ((m == 0) || (paramhcs == null) || (k == null)) {}
    for (;;)
    {
      return;
      Object localObject = paramhcs.a(a, k.c(), k.e(), b.b(), k.r());
      paramhcs = new hel(a);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        kju localkju = (kju)((Iterator)localObject).next();
        c.a(localkju);
        if (k.y()) {
          paramhcs.a(k, localkju);
        }
      }
    }
  }
  
  public void a(hkq paramhkq)
  {
    if (t != null) {
      t.a();
    }
    t = paramhkq;
    if (t == null)
    {
      a(true);
      return;
    }
    t.a(this);
  }
  
  public void a(hkr paramhkr)
  {
    if (u != null) {
      u.a();
    }
    u = paramhkr;
    if (u != null) {
      u.a(this);
    }
  }
  
  public void a(hkt paramhkt)
  {
    boolean bool2 = false;
    if (m != 0)
    {
      hlk.a(5, "vclib", "Attempted to join a call that has already been joined.");
      return;
    }
    if (k == null) {
      a(a, paramhkt);
    }
    do
    {
      k = paramhkt;
      hlk.a(4, "vclib", paramhkt.toString());
      j.a(2689);
      m = 1;
      aal.a(new hce(this, paramhkt));
      return;
      localObject = k;
      a(((hkt)localObject).n(), paramhkt.n(), false, "accountName");
      a(((hkt)localObject).a(), paramhkt.a(), false, "sessionId");
      a(((hkt)localObject).b(), paramhkt.b(), false, "participantLogId");
      a(((hkt)localObject).o(), paramhkt.o(), false, "clientId");
      a(((hkt)localObject).p(), paramhkt.p(), false, "gcmRegistration");
      a(((hkt)localObject).q(), paramhkt.q(), false, "compressedLogFile");
      a(((hkt)localObject).f(), paramhkt.f(), true, "resolvedHangoutId");
    } while (((hkt)localObject).z() == null);
    Object localObject = ((hkt)localObject).z();
    jug localjug = paramhkt.z();
    boolean bool1;
    if (localObject == localjug) {
      bool1 = true;
    }
    for (;;)
    {
      hbs.a("VideoCallOptions can not be modified after initCall.", bool1);
      break;
      bool1 = bool2;
      if (localObject != null)
      {
        bool1 = bool2;
        if (localjug != null)
        {
          bool1 = bool2;
          if (localObject.getClass() == localjug.getClass())
          {
            int i1 = ((lyi)localObject).c();
            bool1 = bool2;
            if (localjug.c() == i1)
            {
              byte[] arrayOfByte1 = new byte[i1];
              byte[] arrayOfByte2 = new byte[i1];
              lyi.a((lyi)localObject, arrayOfByte1, i1);
              lyi.a(localjug, arrayOfByte2, i1);
              bool1 = Arrays.equals(arrayOfByte1, arrayOfByte2);
            }
          }
        }
      }
    }
  }
  
  public void a(hku paramhku)
  {
    c.a(paramhku);
    if (m == 2)
    {
      paramhku.a(p);
      hfn localhfn = e.c();
      if (localhfn != null) {
        paramhku.d(localhfn.b());
      }
    }
  }
  
  public void a(hlb paramhlb)
  {
    if (s != null) {
      s.a(this);
    }
    s = paramhlb;
    if (s == null)
    {
      r.b(true);
      return;
    }
    r.g();
    s.a(this, r);
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println(String.valueOf(l()));
    boolean bool = k();
    paramPrintWriter.println(24 + "Call is connected: " + bool);
    b.a(paramPrintWriter);
  }
  
  public void a(String paramString)
  {
    if (m != 2)
    {
      hlk.a(5, "vclib", "Attempted to mute participant while not in a call.");
      return;
    }
    b.a(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    n = paramBoolean;
    r();
    hfn localhfn = e.d();
    hil localhil = localhfn.c();
    if (localhil != null) {
      localhil.a(paramBoolean);
    }
    localhfn.e();
  }
  
  public hiv b()
  {
    return j;
  }
  
  public void b(hku paramhku)
  {
    c.b(paramhku);
  }
  
  public void b(String paramString)
  {
    if (m != 2)
    {
      hlk.a(5, "vclib", "Attempted to kick participant while not in a call.");
      return;
    }
    b.b(paramString);
  }
  
  public hfo c()
  {
    return e;
  }
  
  public void c(String paramString)
  {
    e.b(paramString);
  }
  
  public hci d()
  {
    return b;
  }
  
  public hee e()
  {
    return d;
  }
  
  public RendererManager f()
  {
    return f;
  }
  
  public EncoderManager g()
  {
    return g;
  }
  
  public DecoderManager h()
  {
    return h;
  }
  
  public hgo i()
  {
    return i;
  }
  
  public hku j()
  {
    return c;
  }
  
  public boolean k()
  {
    return m == 2;
  }
  
  public hkv l()
  {
    Object localObject2 = null;
    hcs localhcs = b.a();
    hkv localhkv = new hkv().a(k).a(p);
    Object localObject1;
    if (k == null)
    {
      localObject1 = null;
      localhkv = localhkv.c((String)localObject1);
      if (localhcs != null) {
        break label125;
      }
      localObject1 = null;
      label58:
      localhkv = localhkv.a((String)localObject1);
      if (localhcs != null) {
        break label134;
      }
      localObject1 = localObject2;
      label73:
      localObject1 = localhkv.b((String)localObject1);
      if ((localhcs != null) && (localhcs.s())) {
        break label143;
      }
      i1 = 1;
      label95:
      localObject1 = ((hkv)localObject1).a(i1);
      if (localhcs != null) {
        break label148;
      }
    }
    label125:
    label134:
    label143:
    label148:
    for (int i1 = 0;; i1 = localhcs.n())
    {
      return ((hkv)localObject1).b(i1);
      localObject1 = k.b();
      break;
      localObject1 = localhcs.g();
      break label58;
      localObject1 = localhcs.h();
      break label73;
      i1 = 2;
      break label95;
    }
  }
  
  public hlb m()
  {
    return s;
  }
  
  public hkq n()
  {
    return t;
  }
  
  public hkr o()
  {
    return u;
  }
  
  public Map<String, hkx> p()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = e.b().iterator();
    while (localIterator.hasNext())
    {
      hfn localhfn = (hfn)localIterator.next();
      localHashMap.put(localhfn.a(), localhfn.b());
    }
    return localHashMap;
  }
  
  public hbo q()
  {
    return b.d();
  }
  
  void r()
  {
    if (!l) {
      return;
    }
    hfn localhfn = e.d();
    if (localhfn.c() != null)
    {
      b.b(n);
      return;
    }
    e.a(new hcg(this, localhfn));
  }
}

/* Location:
 * Qualified Name:     hcd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */