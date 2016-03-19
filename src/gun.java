import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.PutDataRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public final class gun
  extends flc<gts>
{
  private final ExecutorService e = Executors.newCachedThreadPool();
  private final gtv<avb> f = new gtv();
  private final gtv<avb> g = new gtv();
  private final gtv<avb> h = new gtv();
  private final gtv<gri> i = new gtv();
  private final gtv<grs> j = new gtv();
  private final gtv<avb> k = new gtv();
  private final gtv<avb> l = new gtv();
  private final Map<String, gtv<avb>> m = new HashMap();
  
  public gun(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, fkq paramfkq)
  {
    super(paramContext, paramLooper, 14, paramfkq, paramfif, paramfih);
  }
  
  protected String a()
  {
    return "com.google.android.gms.wearable.BIND";
  }
  
  protected void a(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2)
  {
    if ((!Log.isLoggable("WearableClient", 2)) || (paramInt1 == 0))
    {
      f.a(paramIBinder);
      g.a(paramIBinder);
      i.a(paramIBinder);
      j.a(paramIBinder);
      k.a(paramIBinder);
      l.a(paramIBinder);
      synchronized (m)
      {
        Iterator localIterator = m.values().iterator();
        if (localIterator.hasNext()) {
          ((gtv)localIterator.next()).a(paramIBinder);
        }
      }
    }
    super.a(paramInt1, paramIBinder, paramBundle, paramInt2);
  }
  
  public void a(fis<gro> paramfis)
  {
    ((gts)m()).b(new guj(paramfis));
  }
  
  public void a(fis<gro> paramfis, Uri paramUri, int paramInt)
  {
    ((gts)m()).a(new guj(paramfis), paramUri, paramInt);
  }
  
  public void a(fis<grh> paramfis, PutDataRequest paramPutDataRequest)
  {
    Object localObject1 = paramPutDataRequest.c().entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Asset)((Map.Entry)((Iterator)localObject1).next()).getValue();
      if ((((Asset)localObject2).a() == null) && (((Asset)localObject2).b() == null) && (((Asset)localObject2).c() == null) && (((Asset)localObject2).d() == null)) {
        throw new IllegalArgumentException("Put for " + paramPutDataRequest.a() + " contains invalid asset: " + localObject2);
      }
    }
    localObject1 = PutDataRequest.a(paramPutDataRequest.a());
    ((PutDataRequest)localObject1).a(paramPutDataRequest.b());
    Object localObject2 = new ArrayList();
    Iterator localIterator = paramPutDataRequest.c().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject3 = (Map.Entry)localIterator.next();
      Asset localAsset = (Asset)((Map.Entry)localObject3).getValue();
      if (localAsset.a() == null) {
        ((PutDataRequest)localObject1).a((String)((Map.Entry)localObject3).getKey(), (Asset)((Map.Entry)localObject3).getValue());
      } else {
        try
        {
          ParcelFileDescriptor[] arrayOfParcelFileDescriptor = ParcelFileDescriptor.createPipe();
          if (Log.isLoggable("WearableClient", 3)) {
            new StringBuilder("processAssets: replacing data with FD in asset: ").append(localAsset).append(" read:").append(arrayOfParcelFileDescriptor[0]).append(" write:").append(arrayOfParcelFileDescriptor[1]);
          }
          ((PutDataRequest)localObject1).a((String)((Map.Entry)localObject3).getKey(), Asset.a(arrayOfParcelFileDescriptor[0]));
          localObject3 = new FutureTask(new guo(this, arrayOfParcelFileDescriptor[1], localAsset.a()));
          ((List)localObject2).add(localObject3);
          e.submit((Runnable)localObject3);
        }
        catch (IOException paramfis)
        {
          throw new IllegalStateException("Unable to create ParcelFileDescriptor for asset in request: " + paramPutDataRequest, paramfis);
        }
      }
    }
    ((gts)m()).a(new gul(paramfis, (List)localObject2), (PutDataRequest)localObject1);
  }
  
  public void a(fis<grt> paramfis, String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    ((gts)m()).a(new gum(paramfis), paramString1, paramString2, paramArrayOfByte);
  }
  
  protected String b()
  {
    return "com.google.android.gms.wearable.internal.IWearableService";
  }
  
  public void b(fis<grj> paramfis, Uri paramUri, int paramInt)
  {
    ((gts)m()).b(new gui(paramfis), paramUri, paramInt);
  }
  
  public void c()
  {
    f.a(this);
    g.a(this);
    i.a(this);
    j.a(this);
    k.a(this);
    l.a(this);
    synchronized (m)
    {
      Iterator localIterator = m.values().iterator();
      if (localIterator.hasNext()) {
        ((gtv)localIterator.next()).a(this);
      }
    }
    super.c();
  }
}

/* Location:
 * Qualified Name:     gun
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */