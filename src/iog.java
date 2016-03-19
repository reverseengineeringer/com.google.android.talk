import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class iog
{
  private static final Bundle d = new Bundle();
  public final List<ioz> a = new ArrayList();
  public final List<iol> b = new ArrayList();
  private HashSet<String> c = new HashSet();
  private iol e;
  private iol f;
  private iol g;
  private iol h;
  
  static String b(ioz paramioz)
  {
    String str = null;
    if ((paramioz instanceof iow))
    {
      if ((paramioz instanceof ipa)) {
        str = ((ipa)paramioz).a();
      }
    }
    else {
      return str;
    }
    return paramioz.getClass().getName();
  }
  
  public Bundle a(ioz paramioz, Bundle paramBundle)
  {
    Bundle localBundle = null;
    if (paramBundle != null)
    {
      paramioz = b(paramioz);
      if (paramioz != null) {
        localBundle = paramBundle.getBundle(paramioz);
      }
    }
    else
    {
      return localBundle;
    }
    return d;
  }
  
  public iol a(iol paramiol)
  {
    int i = 0;
    while (i < a.size())
    {
      paramiol.a((ioz)a.get(i));
      i += 1;
    }
    b.add(paramiol);
    return paramiol;
  }
  
  public <T extends ioz> T a(T paramT)
  {
    aal.w();
    String str = b(paramT);
    if (str != null)
    {
      if (c.contains(str)) {
        throw new IllegalStateException(String.format("Duplicate observer tag: '%s'. Implement LifecycleObserverTag to provide unique tags.", new Object[] { str }));
      }
      c.add(str);
    }
    a.add(paramT);
    int i = 0;
    while (i < b.size())
    {
      ((iol)b.get(i)).a(paramT);
      i += 1;
    }
    return paramT;
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 0;
    while (i < a.size())
    {
      ioz localioz = (ioz)a.get(i);
      if ((localioz instanceof iom)) {
        ((iom)localioz).a(paramInt1, paramInt2, paramIntent);
      }
      i += 1;
    }
  }
  
  public void a(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < a.size())
    {
      ioz localioz = (ioz)a.get(i);
      if ((localioz instanceof iou)) {
        ((iou)localioz).a(paramInt, paramArrayOfString, paramArrayOfInt);
      }
      i += 1;
    }
  }
  
  public boolean a(Menu paramMenu)
  {
    Iterator localIterator = a.iterator();
    boolean bool = false;
    if (localIterator.hasNext())
    {
      ioz localioz = (ioz)localIterator.next();
      if (!(localioz instanceof iop)) {
        break label59;
      }
      bool = ((iop)localioz).a(paramMenu) | bool;
    }
    label59:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ioz localioz = (ioz)localIterator.next();
      if (((localioz instanceof ior)) && (((ior)localioz).a(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  public void b()
  {
    b(g);
    int i = 0;
    while (i < a.size())
    {
      ioz localioz = (ioz)a.get(i);
      if ((localioz instanceof ios)) {
        ((ios)localioz).a();
      }
      i += 1;
    }
  }
  
  public void b(iol paramiol)
  {
    b.remove(paramiol);
  }
  
  public boolean b(Menu paramMenu)
  {
    Iterator localIterator = a.iterator();
    boolean bool = false;
    if (localIterator.hasNext())
    {
      ioz localioz = (ioz)localIterator.next();
      if (!(localioz instanceof iot)) {
        break label59;
      }
      bool = ((iot)localioz).b(paramMenu) | bool;
    }
    label59:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  public void c()
  {
    b(h);
    b(e);
    int i = 0;
    while (i < a.size())
    {
      ioz localioz = (ioz)a.get(i);
      if ((localioz instanceof ioq)) {
        ((ioq)localioz).h_();
      }
      i += 1;
    }
  }
  
  public void c(Bundle paramBundle)
  {
    e = a(new ioh(this, paramBundle));
  }
  
  public void d(Bundle paramBundle)
  {
    h = a(new iok(this, paramBundle));
  }
  
  public void o()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
  
  public boolean p()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ioz localioz = (ioz)localIterator.next();
      if (((localioz instanceof ion)) && (((ion)localioz).a())) {
        return true;
      }
    }
    return false;
  }
  
  public void q()
  {
    f = a(new ioi(this));
  }
  
  public void r()
  {
    g = a(new ioj(this));
  }
  
  public void s()
  {
    b(f);
    int i = 0;
    while (i < a.size())
    {
      ioz localioz = (ioz)a.get(i);
      if ((localioz instanceof ioy)) {
        ((ioy)localioz).t_();
      }
      i += 1;
    }
  }
  
  public void t()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
}

/* Location:
 * Qualified Name:     iog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */