import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ahk
  implements ComponentCallbacks2
{
  private static volatile ahk a;
  private final alh b;
  private final amd c;
  private final ane d;
  private final ant e;
  private final ahm f;
  private final aht g;
  private final aly h;
  private final amg i;
  private final ati j;
  private final List<ahw> k = new ArrayList();
  
  ahk(Context paramContext, alh paramalh, ane paramane, amd paramamd, aly paramaly, ati paramati, int paramInt, auk paramauk)
  {
    b = paramalh;
    c = paramamd;
    h = paramaly;
    d = paramane;
    j = paramati;
    i = new amg();
    e = new ant(paramane, paramamd, (ais)q.a(arm.a));
    paramane = paramContext.getResources();
    paramati = new arm(paramane.getDisplayMetrics(), paramamd, i);
    paramaly = new ask(paramContext, paramamd, paramaly);
    g = new aht(paramContext).a(ByteBuffer.class, new aof()).a(InputStream.class, new apv(i)).a(ByteBuffer.class, Bitmap.class, new ara(paramati)).a(InputStream.class, Bitmap.class, new arx(paramati, i)).a(ParcelFileDescriptor.class, Bitmap.class, new asb(paramamd)).a(Bitmap.class, new aqx()).a(ByteBuffer.class, BitmapDrawable.class, new aqu(paramane, paramamd, new ara(paramati))).a(InputStream.class, BitmapDrawable.class, new aqu(paramane, paramamd, new arx(paramati, i))).a(ParcelFileDescriptor.class, BitmapDrawable.class, new aqu(paramane, paramamd, new asb(paramamd))).a(BitmapDrawable.class, new aqv(paramamd, new aqx())).b(InputStream.class, asn.class, new asx(paramaly, i)).b(ByteBuffer.class, asn.class, paramaly).a(asn.class, new asp()).a(aik.class, aik.class, new aqa()).a(aik.class, Bitmap.class, new asw(paramamd)).a(new asg()).a(File.class, ByteBuffer.class, new aoi()).a(File.class, InputStream.class, new aoo((byte)0)).a(File.class, File.class, new asj()).a(File.class, ParcelFileDescriptor.class, new aoo()).a(File.class, File.class, new aqa()).a(new ajs(i)).a(Integer.TYPE, InputStream.class, new apu()).a(Integer.TYPE, ParcelFileDescriptor.class, new apt()).a(Integer.class, InputStream.class, new apu()).a(Integer.class, ParcelFileDescriptor.class, new apt()).a(String.class, InputStream.class, new aom()).a(String.class, InputStream.class, new apy()).a(String.class, ParcelFileDescriptor.class, new apx()).a(Uri.class, InputStream.class, new aql()).a(Uri.class, InputStream.class, new anx()).a(Uri.class, ParcelFileDescriptor.class, new anw()).a(Uri.class, InputStream.class, new aqn()).a(Uri.class, InputStream.class, new aqp()).a(Uri.class, InputStream.class, new aqf()).a(Uri.class, ParcelFileDescriptor.class, new aqd()).a(Uri.class, InputStream.class, new aqh()).a(URL.class, InputStream.class, new aqr()).a(Uri.class, File.class, new apb()).a(aot.class, InputStream.class, new aqj()).a(byte[].class, ByteBuffer.class, new anz()).a(byte[].class, InputStream.class, new aod()).a(Bitmap.class, BitmapDrawable.class, new asz(paramane, paramamd)).a(Bitmap.class, byte[].class, new asy()).a(asn.class, byte[].class, new ata());
    paramane = new aut();
    f = new ahm(paramContext, g, paramane, paramauk, paramalh, this, paramInt);
  }
  
  public static ahk a(Context paramContext)
  {
    if (a == null)
    {
      try
      {
        if (a != null) {
          break label127;
        }
        Object localObject = paramContext.getApplicationContext();
        paramContext = new atx((Context)localObject).a();
        localObject = new ahl((Context)localObject);
        Iterator localIterator = paramContext.iterator();
        while (localIterator.hasNext()) {
          ((atw)localIterator.next()).a((ahl)localObject);
        }
        a = ((ahl)localObject).a();
      }
      finally {}
      paramContext = paramContext.iterator();
      while (paramContext.hasNext()) {
        ((atw)paramContext.next()).a(ag);
      }
    }
    label127:
    return a;
  }
  
  public amd a()
  {
    return c;
  }
  
  public void a(int paramInt)
  {
    avq.a();
    d.a(paramInt);
    c.a(paramInt);
    h.a(paramInt);
  }
  
  void a(ahw paramahw)
  {
    synchronized (k)
    {
      if (k.contains(paramahw)) {
        throw new IllegalStateException("Cannot register already registered manager");
      }
    }
    k.add(paramahw);
  }
  
  void a(auw<?> paramauw)
  {
    synchronized (k)
    {
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext()) {
        if (((ahw)localIterator.next()).b(paramauw)) {
          return;
        }
      }
      throw new IllegalStateException("Failed to remove target from managers");
    }
  }
  
  public amg b()
  {
    return i;
  }
  
  void b(ahw paramahw)
  {
    synchronized (k)
    {
      if (!k.contains(paramahw)) {
        throw new IllegalStateException("Cannot register not yet registered manager");
      }
    }
    k.remove(paramahw);
  }
  
  ati c()
  {
    return j;
  }
  
  ahm d()
  {
    return f;
  }
  
  public void e()
  {
    avq.a();
    d.a();
    c.a();
    h.a();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    e();
  }
  
  public void onTrimMemory(int paramInt)
  {
    a(paramInt);
  }
}

/* Location:
 * Qualified Name:     ahk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */