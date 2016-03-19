import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class hyg
  extends igt
  implements hwi, hye
{
  hyq b;
  private final hzj d;
  private final int e;
  private final HashMap<igq, igp> f = new HashMap();
  private final HashSet<hya> g = new HashSet();
  private final hv<igq, hya> h;
  private final hyw i;
  private long j;
  private final hxm k;
  private final hxm l;
  private final int m;
  private final hxy[] n;
  private final ifn o;
  private float p;
  private int q;
  private int r;
  private int s;
  private int t;
  
  protected hyg(Context paramContext, hzh paramhzh)
  {
    super(paramContext);
    m = aal.O(paramContext);
    Object localObject = paramhzh.b();
    k = new hxm(paramContext, a, b, c, d, e);
    localObject = paramhzh.c();
    l = new hxm(paramContext, a, b, c, d, e);
    d = paramhzh.a();
    e = ((int)(d.a * 0.75D));
    h = new hyi(this, d.a);
    paramhzh = aal.M(paramContext);
    p = Math.min(240.0F / xdpi, 1.0F);
    q = Math.max(heightPixels, widthPixels);
    if (q == 0) {
      q = 640;
    }
    r = ((int)(q * 0.2F * p));
    s = ((int)(q * 0.5F));
    if (Build.VERSION.SDK_INT < 11) {
      paramhzh = null;
    }
    for (;;)
    {
      i = paramhzh;
      paramhzh = ilh.c(paramContext, hxy.class);
      n = ((hxy[])paramhzh.toArray(new hxy[paramhzh.size()]));
      Arrays.sort(n, new hyh(this));
      int i1 = paramContext.getApplicationContext().getResources().getInteger(aal.uc);
      if (m >= 256) {
        i1 = 16777216;
      }
      t = i1;
      o = ((ifn)ilh.b(paramContext, ifn.class));
      if (Log.isLoggable("ImageResourceManager", 3))
      {
        paramhzh = new hyk(this, new StringWriter());
        a(paramhzh);
        aal.a(4, "ImageResourceManager", paramhzh.toString());
      }
      paramhzh = ilh.b(paramContext);
      paramhzh.b(hwi.class, this);
      if (i != null) {
        paramhzh.b(hwi.class, i);
      }
      paramhzh = new IntentFilter();
      paramhzh.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      localObject = new hxw();
      paramContext.getApplicationContext().registerReceiver((BroadcastReceiver)localObject, paramhzh);
      paramContext.registerComponentCallbacks(new hyf(paramContext));
      return;
      localObject = new hyw(d.c);
      paramhzh = (hzh)localObject;
      if (d.f)
      {
        b = new hyq(d, (hyw)localObject, f(), e());
        aal.a(new hyj(this));
        paramhzh = (hzh)localObject;
      }
    }
  }
  
  public int a()
  {
    return t;
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    Bitmap localBitmap1 = null;
    if (i != null) {
      localBitmap1 = i.a(paramInt1, paramInt2);
    }
    Bitmap localBitmap2 = localBitmap1;
    if (localBitmap1 == null) {
      localBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    }
    return localBitmap2;
  }
  
  public igp a(igq paramigq)
  {
    hya localhya = (hya)f.get(paramigq);
    if (localhya != null) {
      return localhya;
    }
    return (igp)h.a(paramigq);
  }
  
  public Object a(hya paramhya, ByteBuffer paramByteBuffer)
  {
    int i1 = 0;
    while (i1 < n.length)
    {
      Object localObject = n[i1].a(paramhya, paramByteBuffer);
      if (localObject != null) {
        return localObject;
      }
      i1 += 1;
    }
    return null;
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return;
    }
    if (i != null)
    {
      if (b != null) {
        b.a();
      }
      i.a(paramBitmap);
      return;
    }
    paramBitmap.recycle();
  }
  
  public void a(hya paramhya)
  {
    synchronized (g)
    {
      g.add(paramhya);
      return;
    }
  }
  
  public void a(igp paramigp)
  {
    if (!f.containsKey(paramigp.l()))
    {
      paramigp = String.valueOf(paramigp.l());
      throw new IllegalStateException(String.valueOf(paramigp).length() + 24 + "Resource is not active: " + paramigp);
    }
    hya localhya = (hya)paramigp;
    switch (localhya.m())
    {
    case 2: 
    default: 
      paramigp = String.valueOf(paramigp.n());
      if (paramigp.length() == 0) {
        break;
      }
    }
    for (paramigp = "Illegal resource state: ".concat(paramigp);; paramigp = new String("Illegal resource state: "))
    {
      throw new IllegalStateException(paramigp);
      if (localhya.p())
      {
        String str = String.valueOf(localhya.l());
        new StringBuilder(String.valueOf(str).length() + 23).append("Requesting image load: ").append(str);
      }
      localhya.c(2);
      c(paramigp);
      return;
    }
  }
  
  public void a(igp paramigp, int paramInt1, int paramInt2)
  {
    if ((!(paramigp instanceof hya)) || (paramInt1 != 4))
    {
      super.a(paramigp, paramInt1, paramInt2);
      return;
    }
    if (b.a())
    {
      if (paramigp.p())
      {
        String str = String.valueOf(paramigp.l());
        new StringBuilder(String.valueOf(str).length() + 21).append("Retrying image load: ").append(str);
      }
      paramigp.c(2);
      c(paramigp);
      return;
    }
    paramigp.c(5);
    super.a(paramigp, 5, paramInt2);
  }
  
  public void a(igp paramigp, igr paramigr)
  {
    aal.w();
    Object localObject1 = paramigp.l();
    Object localObject2 = (igp)f.get(localObject1);
    if (localObject2 != null)
    {
      if (localObject2 != paramigp)
      {
        paramigp = String.valueOf(localObject1);
        throw new IllegalStateException(String.valueOf(paramigp).length() + 80 + "Duplicate resource: " + paramigp + ". Check getManagedResource() prior to calling loadResource. ");
      }
      if (paramigp.p())
      {
        localObject1 = String.valueOf(localObject1);
        new StringBuilder(String.valueOf(localObject1).length() + 25).append("Adding another consumer: ").append((String)localObject1);
      }
      paramigp.a(paramigr);
      return;
    }
    localObject2 = (igp)h.a(localObject1);
    if (localObject2 != null)
    {
      if (localObject2 != paramigp)
      {
        paramigp = String.valueOf(localObject1);
        throw new IllegalStateException(String.valueOf(paramigp).length() + 80 + "Duplicate resource: " + paramigp + ". Check getManagedResource() prior to calling loadResource. ");
      }
      if (paramigp.p())
      {
        localObject2 = String.valueOf(localObject1);
        new StringBuilder(String.valueOf(localObject2).length() + 12).append("Activating: ").append((String)localObject2);
      }
      h.b(localObject1);
      f.put(localObject1, paramigp);
      paramigp.a(paramigr);
      return;
    }
    f.put(localObject1, paramigp);
    if (paramigp.p())
    {
      localObject1 = String.valueOf(localObject1);
      new StringBuilder(String.valueOf(localObject1).length() + 14).append("loadResource: ").append((String)localObject1);
    }
    paramigp.a(paramigr);
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    ??? = h.g();
    int i1 = d.a;
    int i2 = h.a();
    int i3 = ((Map)???).size();
    int i4 = h.e();
    int i5 = h.c();
    int i6 = h.d();
    int i7 = h.f();
    paramPrintWriter.println(186 + "Image cache size: " + i1 + "; cached size: " + i2 + "; cached bitmaps: " + i3 + "; put count: " + i4 + "; hit count: " + i5 + "; miss count: " + i6 + "; eviction count: " + i7);
    if (((Map)???).isEmpty()) {
      paramPrintWriter.println("Image cache is empty");
    }
    for (;;)
    {
      Object localObject2;
      synchronized (g)
      {
        if (g.isEmpty()) {
          break;
        }
        localIterator = g.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = String.valueOf((hya)localIterator.next());
        paramPrintWriter.println(String.valueOf(localObject2).length() + 13 + "Downloading: " + (String)localObject2);
      }
      Iterator localIterator = ((Map)???).keySet().iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (igq)localIterator.next();
        i1 = ((hya)((Map)???).get(localObject2)).j();
        localObject2 = String.valueOf(localObject2);
        paramPrintWriter.println(String.valueOf(localObject2).length() + 27 + "Cached: " + i1 + " bytes, " + (String)localObject2);
      }
    }
    if (f.isEmpty()) {
      paramPrintWriter.println("No active resources");
    }
    while (aal.v())
    {
      new hyl(this).execute(new Void[0]);
      return;
      paramPrintWriter.println("Active resources");
      ??? = f.values().iterator();
      while (((Iterator)???).hasNext()) {
        aal.a(4, "ImageResourceManager", ((igp)((Iterator)???).next()).toString());
      }
    }
    b(paramPrintWriter);
  }
  
  public hxm b()
  {
    return k;
  }
  
  public void b(hya paramhya)
  {
    synchronized (g)
    {
      g.remove(paramhya);
      return;
    }
  }
  
  public void b(igp paramigp)
  {
    paramigp = (hya)paramigp;
    igq localigq = (igq)paramigp.l();
    if (paramigp.p())
    {
      String str = String.valueOf(localigq);
      new StringBuilder(String.valueOf(str).length() + 29).append("Deactivating image resource: ").append(str);
    }
    if (paramigp.m() == 2)
    {
      paramigp.c(7);
      b.e();
    }
    f.remove(localigq);
    b(paramigp);
    int i1;
    if (i == 5) {
      i1 = 0;
    }
    while ((i1 != 0) && (paramigp.j() < e))
    {
      if ((j == 0L) || (j < System.currentTimeMillis()))
      {
        j = 0L;
        h.a(localigq, paramigp);
      }
      return;
      if ((g).i & 0xA) != 0) {
        i1 = 0;
      } else {
        i1 = 1;
      }
    }
    paramigp.i();
  }
  
  void b(PrintWriter paramPrintWriter)
  {
    long l1 = k.a();
    long l2 = k.c();
    long l3 = Math.max(0L, l1 - l2);
    String str1 = String.valueOf(ipr.a(l1));
    String str2 = String.valueOf(ipr.a(l2));
    String str3 = String.valueOf(ipr.a(l3));
    paramPrintWriter.println(String.valueOf(str1).length() + 39 + String.valueOf(str2).length() + String.valueOf(str3).length() + "Disk cache total size: " + str1 + "; used: " + str2 + "; free: " + str3);
    l1 = l.b();
    l2 = l.c();
    l3 = Math.max(0L, l1 - l2);
    str1 = String.valueOf(ipr.a(l1));
    str2 = String.valueOf(ipr.a(l2));
    str3 = String.valueOf(ipr.a(l3));
    paramPrintWriter.println(String.valueOf(str1).length() + 44 + String.valueOf(str2).length() + String.valueOf(str3).length() + "Long-term cache total size: " + str1 + "; used: " + str2 + "; free: " + str3);
  }
  
  public hxm c()
  {
    return l;
  }
  
  public int d()
  {
    return q;
  }
  
  public int e()
  {
    return r;
  }
  
  public int f()
  {
    return s;
  }
  
  public long g()
  {
    return d.d;
  }
  
  public long h()
  {
    return d.e;
  }
  
  public void i()
  {
    if (f.isEmpty()) {}
    label102:
    for (;;)
    {
      return;
      Object localObject = ((ConnectivityManager)l().getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localObject != null) && (((NetworkInfo)localObject).isConnected())) {}
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          break label102;
        }
        localObject = f.values().iterator();
        while (((Iterator)localObject).hasNext())
        {
          igp localigp = (igp)((Iterator)localObject).next();
          if (localigp.m() == 4)
          {
            a(localigp, 2);
            c(localigp);
          }
        }
        break;
      }
    }
  }
  
  public float j()
  {
    return p;
  }
  
  public void k()
  {
    h.a(-1);
    j = (System.currentTimeMillis() + 2000L);
    if (i != null) {
      i.a();
    }
  }
}

/* Location:
 * Qualified Name:     hyg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */