import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class got
  extends flc<gom>
{
  private static volatile Bundle i;
  private static volatile Bundle j;
  public final String e;
  public final String f;
  public final Context g;
  private final HashMap<glt, gpc> h = new HashMap();
  private Long k = null;
  
  public got(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, String paramString, fkq paramfkq)
  {
    super(paramContext.getApplicationContext(), paramLooper, 5, paramfkq, paramfif, paramfih);
    g = paramContext;
    e = paramString;
    f = paramfkq.g();
  }
  
  private gpc a(fic paramfic, glt paramglt)
  {
    synchronized (h)
    {
      if (h.containsKey(paramglt))
      {
        paramfic = (gpc)h.get(paramglt);
        return paramfic;
      }
      paramfic = new gpc(paramfic.a(paramglt));
      h.put(paramglt, paramfic);
      return paramfic;
    }
  }
  
  private void a(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    for (;;)
    {
      return;
      try
      {
        gny.n = paramBundle.getBoolean("use_contactables_api", true);
        gos.a.a(paramBundle);
        i = paramBundle.getBundle("config.email_type_map");
        j = paramBundle.getBundle("config.phone_type_map");
      }
      finally {}
    }
  }
  
  private static PendingIntent b(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    return (PendingIntent)paramBundle.getParcelable("pendingIntent");
  }
  
  public flu a(fis<glp> paramfis, long paramLong)
  {
    super.k();
    paramfis = new gow(paramfis);
    try
    {
      flu localflu = ((gom)super.m()).b(paramfis, paramLong, true);
      return localflu;
    }
    catch (RemoteException localRemoteException)
    {
      paramfis.a(8, null, null, null);
    }
    return null;
  }
  
  public flu a()
  {
    Object localObject1 = new gow((fis)localObject1);
    try
    {
      String str;
      Object localObject2 = ((gom)super.m()).c((goj)localObject1, (String)localObject2, str, 0);
      return (flu)localObject2;
    }
    catch (RemoteException localRemoteException)
    {
      ((gow)localObject1).a(8, null, null, null);
    }
    return null;
  }
  
  public flu a(fis<glp> paramfis, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    paramfis = new gow(paramfis);
    try
    {
      paramString1 = ((gom)super.m()).b(paramfis, paramString1, paramString2, paramInt1, paramInt2);
      return paramString1;
    }
    catch (RemoteException paramString1)
    {
      paramfis.a(8, null, null, null);
    }
    return null;
  }
  
  protected String a()
  {
    return "com.google.android.gms.people.service.START";
  }
  
  protected void a(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramBundle != null)) {
      a(paramBundle.getBundle("post_init_configuration"));
    }
    if (paramBundle == null) {}
    for (paramBundle = null;; paramBundle = paramBundle.getBundle("post_init_resolution"))
    {
      super.a(paramInt1, paramIBinder, paramBundle, paramInt2);
      return;
    }
  }
  
  public void a(fic paramfic, glt paramglt, String paramString1, String paramString2, int paramInt)
  {
    super.k();
    synchronized (h)
    {
      paramfic = a(paramfic, paramglt);
      ((gom)super.m()).a(paramfic, true, paramString1, paramString2, paramInt);
      return;
    }
  }
  
  public void a(fis<glm> paramfis, String paramString1, String paramString2, gll paramgll)
  {
    Object localObject = paramgll;
    if (paramgll == null) {
      localObject = gll.a;
    }
    paramgll = ((gll)localObject).b();
    Collection localCollection = ((gll)localObject).c();
    int m = ((gll)localObject).d();
    boolean bool = ((gll)localObject).e();
    long l = ((gll)localObject).f();
    String str = ((gll)localObject).g();
    int n = ((gll)localObject).h();
    int i1 = ((gll)localObject).i();
    int i2 = ((gll)localObject).j();
    super.k();
    localObject = new gox(paramfis);
    try
    {
      gom localgom = (gom)super.m();
      if (localCollection == null) {}
      for (paramfis = null;; paramfis = new ArrayList(localCollection))
      {
        localgom.a((goj)localObject, paramString1, paramString2, paramgll, paramfis, m, bool, l, str, n, i1, i2);
        return;
      }
      return;
    }
    catch (RemoteException paramfis)
    {
      ((gox)localObject).a(8, null, null);
    }
  }
  
  public void a(fis<gli> paramfis, String paramString1, String paramString2, boolean paramBoolean1, String paramString3, boolean paramBoolean2, int paramInt1, int paramInt2, String paramString4, boolean paramBoolean3, int paramInt3)
  {
    super.k();
    if ((paramInt3 != 0) && (TextUtils.isEmpty(paramString3)))
    {
      aal.q(5);
      paramInt3 = 0;
    }
    for (;;)
    {
      Object localObject = a;
      paramfis = new goc(paramfis);
      Bundle localBundle1 = i;
      Bundle localBundle2 = j;
      if (TextUtils.isEmpty(paramString3)) {
        paramfis = new god((Context)localObject, paramfis, paramBoolean1, paramInt2, localBundle1, localBundle2, paramString4);
      }
      for (;;)
      {
        localObject = new gpb(paramfis);
        try
        {
          ((gom)super.m()).a((goj)localObject, paramString1, paramString2, paramString3, 7, paramBoolean2, paramInt1, paramInt2, paramString4, paramBoolean3, paramInt3, 3);
          paramfis.b();
          return;
          if (!TextUtils.isEmpty(paramString4)) {
            throw new IllegalArgumentException("Search aggregation doesn't support filtering by gaia-id");
          }
          paramfis = new goe((Context)localObject, paramfis, paramBoolean1, paramInt2, localBundle1, localBundle2, paramString3);
        }
        catch (RemoteException paramString1)
        {
          for (;;)
          {
            ((gpb)localObject).a(8, null, null);
          }
        }
      }
    }
  }
  
  public void a(boolean paramBoolean, String paramString, int paramInt)
  {
    super.k();
    paramBoolean = new gov(paramBoolean);
    try
    {
      ((gom)super.m()).a(paramBoolean, false, paramString, null, null, paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      paramBoolean.a(8, null, null);
    }
  }
  
  public void a(glt paramglt)
  {
    HashMap localHashMap = h;
    try
    {
      super.k();
      boolean bool = h.containsKey(paramglt);
      if (!bool) {}
      try
      {
        return;
      }
      finally {}
      gpc localgpc = (gpc)h.get(paramglt);
      localgpc.a();
      ((gom)super.m()).a(localgpc, false, null, null, 0);
      h.remove(paramglt);
      return;
    }
    finally
    {
      h.remove(paramglt);
    }
  }
  
  public void a(String paramString1, String paramString2, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.k();
    ((gom)super.m()).a(paramString1, paramString2, paramLong, paramBoolean1, paramBoolean2);
  }
  
  protected String b()
  {
    return "com.google.android.gms.people.internal.IPeopleService";
  }
  
  public void c()
  {
    for (;;)
    {
      gpc localgpc;
      synchronized (h)
      {
        if (!d()) {
          break;
        }
        Iterator localIterator = h.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localgpc = (gpc)localIterator.next();
        localgpc.a();
      }
      try
      {
        ((gom)super.m()).a(localgpc, false, null, null, 0);
      }
      catch (RemoteException localRemoteException)
      {
        aal.q(5);
        continue;
        localObject = finally;
        throw ((Throwable)localObject);
      }
      catch (IllegalStateException localIllegalStateException)
      {
        aal.q(5);
      }
    }
    h.clear();
    super.c();
  }
  
  protected Bundle j()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("social_client_application_id", e);
    localBundle.putString("real_client_package_name", f);
    localBundle.putBoolean("support_new_image_callback", true);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     got
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */