import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.maps.GoogleMapOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class fxs<T extends fxr>
{
  T a;
  Bundle b;
  LinkedList<fxw> c;
  public final ViewGroup d;
  public final Context e;
  public fyb<fxr> f;
  public final GoogleMapOptions g;
  public final List<gfm> h;
  private final fyb<T> i = new fyb(this);
  
  public fxs() {}
  
  public fxs(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    this();
    h = new ArrayList();
    d = paramViewGroup;
    e = paramContext;
    g = paramGoogleMapOptions;
  }
  
  private void a(int paramInt)
  {
    while ((!c.isEmpty()) && (((fxw)c.getLast()).a() >= paramInt)) {
      c.removeLast();
    }
  }
  
  private void a(Bundle paramBundle, fxw paramfxw)
  {
    if (a != null)
    {
      paramfxw.b();
      return;
    }
    if (c == null) {
      c = new LinkedList();
    }
    c.add(paramfxw);
    if (paramBundle != null)
    {
      if (b != null) {
        break label72;
      }
      b = ((Bundle)paramBundle.clone());
    }
    for (;;)
    {
      a(i);
      return;
      label72:
      b.putAll(paramBundle);
    }
  }
  
  public T a()
  {
    return a;
  }
  
  public void a(Bundle paramBundle)
  {
    a(null, new fxt(this, null));
  }
  
  public void a(fyb<fxr> paramfyb)
  {
    f = paramfyb;
    e();
  }
  
  public void a(gfm paramgfm)
  {
    if (a() != null)
    {
      ((fxr)a()).a(paramgfm);
      return;
    }
    h.add(paramgfm);
  }
  
  public void b()
  {
    a(null, new fxv(this));
  }
  
  public void c()
  {
    if (a != null)
    {
      a.b();
      return;
    }
    a(5);
  }
  
  public void d()
  {
    if (a != null)
    {
      a.c();
      return;
    }
    a(1);
  }
  
  public void e()
  {
    if ((f != null) && (a() == null)) {
      try
      {
        gfl.a(e);
        Object localObject = gjf.a(e).a(fya.a(e), g);
        if (localObject == null) {
          return;
        }
        f.a(new fxr(d, (gfz)localObject));
        localObject = h.iterator();
        while (((Iterator)localObject).hasNext())
        {
          gfm localgfm = (gfm)((Iterator)localObject).next();
          ((fxr)a()).a(localgfm);
        }
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new ax(localRemoteException);
        h.clear();
        return;
      }
      catch (fhp localfhp) {}
    }
  }
}

/* Location:
 * Qualified Name:     fxs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */