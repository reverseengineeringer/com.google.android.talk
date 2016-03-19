import android.content.Context;
import android.graphics.RectF;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.GlRemoteRenderer;
import com.google.android.libraries.hangouts.video.internal.GlRemoteRenderer.RendererFrameOutputData;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;
import com.google.android.libraries.hangouts.video.internal.Renderer;
import com.google.android.libraries.hangouts.video.internal.RendererManager;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class hfu
  extends hgn
  implements hev
{
  final hci a;
  final MediaCodecDecoder b;
  final hff c;
  final GlRemoteRenderer d;
  Renderer e;
  int f;
  volatile boolean g;
  int h;
  Surface i;
  private final hee j;
  private final RendererManager k;
  private final hfz q = new hfz(this);
  private final hga r = new hga(this);
  private final GlRemoteRenderer.RendererFrameOutputData s = new GlRemoteRenderer.RendererFrameOutputData();
  private final boolean t;
  
  public hfu(hcd paramhcd, hfn paramhfn)
  {
    super(paramhcd.e(), paramhfn);
    a = paramhcd.d();
    j = paramhcd.e();
    k = paramhcd.f();
    hkt localhkt = paramhcd.l().a();
    int m;
    boolean bool;
    if ((localhkt != null) && (aal.a(zz, false)))
    {
      m = 1;
      if ((!gvj.a(paramhcd.a().getContentResolver(), "babel_hangout_hardware_decode_use_gl", false)) && (m != 0)) {
        break label288;
      }
      bool = true;
      label122:
      t = bool;
      o = paramhfn.c().o();
      if (!paramhfn.c().m().isEmpty()) {
        break label294;
      }
      m = 0;
      label156:
      f = m;
      b = paramhcd.h().a(this);
      if ((t) || (b == null)) {
        break label317;
      }
      hlk.a("vclib", "%s: Decoding video directly to surface is supported.", new Object[] { c() });
    }
    for (c = new hff(k, b);; c = null)
    {
      d = new GlRemoteRenderer(k, b, j, this);
      e = d;
      j.a(new hfv(this));
      if (f != 0) {
        i();
      }
      return;
      m = 0;
      break;
      label288:
      bool = false;
      break label122;
      label294:
      m = ((Integer)paramhfn.c().m().get(0)).intValue();
      break label156;
      label317:
      hlk.a("vclib", "%s: Decoding video directly to surface is not supported.", new Object[] { c() });
    }
  }
  
  public static void a(MediaFormat paramMediaFormat, hlc paramhlc)
  {
    int i3 = 0;
    int i4 = paramMediaFormat.getInteger("width");
    int i5 = paramMediaFormat.getInteger("height");
    paramhlc.a(i4, i5);
    int i1;
    int m;
    label61:
    int n;
    if (paramMediaFormat.containsKey("crop-left"))
    {
      i1 = paramMediaFormat.getInteger("crop-left");
      if (!paramMediaFormat.containsKey("crop-top")) {
        break label277;
      }
      m = paramMediaFormat.getInteger("crop-top");
      if (!paramMediaFormat.containsKey("crop-right")) {
        break label282;
      }
      n = paramMediaFormat.getInteger("crop-right");
      label77:
      if (!paramMediaFormat.containsKey("crop-bottom")) {
        break label290;
      }
      i2 = paramMediaFormat.getInteger("crop-bottom");
      label94:
      if ((i1 >= 0) && (i1 < i4) && (m >= 0) && (m < i5) && (n >= 0) && (n < i4) && (i2 >= 0) && (i2 < i5)) {
        break label312;
      }
      hlk.c("vclib", "Unexpected crop values: width: %d height: %d crop-left: %d crop-top: %d crop-right: %d crop-bottom: %d", new Object[] { Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i1), Integer.valueOf(m), Integer.valueOf(n), Integer.valueOf(i2) });
      n = i4 - 1;
      i1 = i5 - 1;
      m = 0;
    }
    for (int i2 = i3;; i2 = i3)
    {
      if ((n > 0) || (i1 > 0))
      {
        paramhlc.b(new RectF(i2 / i4, m / i5, (i4 - 1 - n) / i4, (i5 - 1 - i1) / i5));
        return;
        i1 = 0;
        break;
        label277:
        m = 0;
        break label61;
        label282:
        n = i4 - 1;
        break label77;
        label290:
        i2 = i5 - 1;
        break label94;
      }
      paramhlc.b(new RectF());
      return;
      label312:
      i3 = i1;
      i1 = i2;
    }
  }
  
  public void a()
  {
    if (d != null) {
      d.e();
    }
    if (c != null) {
      c.b();
    }
    if (b != null) {
      b.l();
    }
    p = null;
  }
  
  public void a(int paramInt)
  {
    hlk.a("vclib", "%s: Codec type switched to: %s", new Object[] { c(), Integer.valueOf(paramInt) });
    i();
    if (!t)
    {
      hga localhga = r;
      aal.y().removeCallbacks(localhga);
      aal.a(r, 10L);
    }
  }
  
  public void a(MediaFormat paramMediaFormat)
  {
    hlc localhlc = ((hlc)n.get()).a();
    a(paramMediaFormat, localhlc);
    n.set(localhlc);
  }
  
  public void a(hla paramhla)
  {
    hbs.b("Cannot bind to a null surface", paramhla);
    if ((e instanceof GlRemoteRenderer))
    {
      j.a(paramhla, this);
      super.a(paramhla);
      i();
      return;
    }
    b.e().post(new hfw(this, paramhla));
  }
  
  public void a(hla paramhla, Runnable paramRunnable)
  {
    hbs.b("Cannot unbind from a null surface", paramhla);
    if (!paramhla.equals(p))
    {
      hlk.a(3, "vclib", "This source was bound to a different surface, ignoring.");
      paramRunnable.run();
      return;
    }
    if ((e instanceof hff))
    {
      b.e().post(new hfx(this, paramhla, paramRunnable));
      return;
    }
    j.a(paramhla);
    super.a(paramhla, paramRunnable);
    i();
  }
  
  void a(kja paramkja)
  {
    float f1 = 0.0F;
    hlc localhlc = ((hlc)this.n.get()).a();
    if ((g == null) || (g.c == null) || (g.c.length == 0))
    {
      localhlc.a(new RectF());
      localhlc.a(false);
      this.n.set(localhlc);
      return;
    }
    kjf[] arrayOfkjf = g.c;
    int n = arrayOfkjf.length;
    int m = 0;
    float f3 = 1.0F;
    float f4 = 1.0F;
    float f2 = 0.0F;
    while (m < n)
    {
      kjf localkjf = arrayOfkjf[m];
      f4 = Math.min(a.floatValue(), f4);
      f3 = Math.min(b.floatValue(), f3);
      f2 = Math.max(c.floatValue(), f2);
      f1 = Math.max(d.floatValue(), f1);
      m += 1;
    }
    localhlc.a(new RectF(f4, f3, f2, f1));
    if (aal.a(g.a, 0) == 2) {}
    for (boolean bool = true;; bool = false)
    {
      localhlc.a(bool);
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    i();
  }
  
  void b(int paramInt)
  {
    if (paramInt == f) {
      return;
    }
    j.a(new hfy(this, paramInt));
  }
  
  void b(boolean paramBoolean)
  {
    if (paramBoolean != g)
    {
      g = paramBoolean;
      i();
    }
  }
  
  boolean b()
  {
    hbs.a("Expected condition to be true", e instanceof GlRemoteRenderer);
    Object localObject = (GlRemoteRenderer)e;
    if (f == 0) {
      return false;
    }
    boolean bool = ((GlRemoteRenderer)localObject).a(s);
    if ((bool) && (s.frameWidth > 0) && (s.frameHeight > 0))
    {
      localObject = (hlc)n.get();
      float f1 = s.frameWidth;
      float f2 = s.frameHeight;
      if ((((hlc)localObject).b() != f1) || (((hlc)localObject).c() != f2))
      {
        localObject = ((hlc)localObject).a();
        ((hlc)localObject).a(s.frameWidth, s.frameHeight);
        if ((s.cropRight <= 0) && (s.cropBottom <= 0)) {
          break label236;
        }
        ((hlc)localObject).b(new RectF(s.cropLeft / f1, s.cropTop / f2, (f1 - 1.0F - s.cropRight) / f1, (f2 - 1.0F - s.cropBottom) / f2));
      }
    }
    for (;;)
    {
      n.set(localObject);
      return bool;
      label236:
      ((hlc)localObject).b(new RectF());
    }
  }
  
  String c()
  {
    String str = String.valueOf(m.a());
    if (str.length() != 0) {
      return "Remote:".concat(str);
    }
    return new String("Remote:");
  }
  
  public void c(int paramInt)
  {
    h = paramInt;
    i();
  }
  
  int d()
  {
    if ((e instanceof GlRemoteRenderer)) {
      return ((GlRemoteRenderer)e).c();
    }
    return -1;
  }
  
  boolean e()
  {
    return false;
  }
  
  boolean f()
  {
    if ((e instanceof GlRemoteRenderer)) {
      return ((GlRemoteRenderer)e).d();
    }
    return false;
  }
  
  public void g()
  {
    if ((e instanceof hff))
    {
      ((hff)e).a();
      return;
    }
    j.a(this);
  }
  
  int h()
  {
    if (b != null)
    {
      int m = b.g();
      if (m != -1) {
        return m;
      }
    }
    return 0;
  }
  
  public void i()
  {
    hfz localhfz = q;
    aal.y().removeCallbacks(localhfz);
    aal.a(q, 100L);
  }
}

/* Location:
 * Qualified Name:     hfu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */