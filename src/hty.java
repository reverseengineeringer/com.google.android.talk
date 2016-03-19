import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;

public class hty
  implements inu, ioo, ioq, ios, iov, iow, ioz
{
  private static final huo a = new hua();
  private final ArrayList<htx> b = new ArrayList();
  private final if<String, ArrayList<hur>> c = new if();
  private final String d;
  private Activity e;
  private hum f;
  private hub g;
  private huo h = a;
  private boolean i;
  
  public hty(Activity paramActivity, iog paramiog)
  {
    e = paramActivity;
    d = paramActivity.getClass().getSimpleName();
    paramiog.a(this);
  }
  
  public hty(av paramav, iog paramiog)
  {
    d = paramav.getClass().getSimpleName();
    paramiog.a(this);
  }
  
  public void X_()
  {
    f.a(this);
  }
  
  @Deprecated
  public hty a(htx paramhtx)
  {
    b.add(paramhtx);
    return this;
  }
  
  public hty a(String paramString, hur paramhur)
  {
    ArrayList localArrayList2 = (ArrayList)c.get(paramString);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList1 = new ArrayList();
      c.put(paramString, localArrayList1);
    }
    localArrayList1.add(paramhur);
    return this;
  }
  
  public void a()
  {
    f.b(this);
  }
  
  public void a(Activity paramActivity)
  {
    e = paramActivity;
  }
  
  public void a(Bundle paramBundle)
  {
    f = ((hum)ilh.a(e, hum.class));
    if (paramBundle != null) {}
    for (g = ((hub)paramBundle.getParcelable("boc_background_tasks"));; g = new hub(f))
    {
      if (!i)
      {
        paramBundle = (hup)ilh.b(e, hup.class);
        if ((paramBundle != null) && ((e instanceof ba)))
        {
          bg localbg = ((ba)e).C_();
          h = paramBundle.a(e, localbg);
        }
      }
      return;
    }
  }
  
  public void a(htu paramhtu)
  {
    g.a(paramhtu);
    paramhtu.c(e.getApplicationContext());
    f.a(paramhtu, this);
  }
  
  void a(String paramString, hus paramhus)
  {
    g.b(paramString);
    h.a(paramString);
    h.a(true);
    ArrayList localArrayList = (ArrayList)c.get(paramString);
    if (localArrayList != null)
    {
      j = localArrayList.size() - 1;
      while (j >= 0)
      {
        localArrayList.get(j);
        h.a(false);
        j -= 1;
      }
    }
    int j = b.size() - 1;
    while (j >= 0)
    {
      ((htx)b.get(j)).a(paramString, paramhus, h);
      j -= 1;
    }
    if (h.a()) {
      h.a(paramhus);
    }
  }
  
  public boolean a(String paramString)
  {
    if (g == null) {
      return false;
    }
    return f.a(this, paramString);
  }
  
  @Deprecated
  public hty b(htx paramhtx)
  {
    b.remove(paramhtx);
    return this;
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putParcelable("boc_background_tasks", g);
  }
  
  public void b(htu paramhtu)
  {
    h.a(paramhtu);
    a(paramhtu);
  }
  
  public void b(String paramString)
  {
    f.c(this, paramString);
  }
  
  int c()
  {
    return g.a();
  }
  
  void c(String paramString)
  {
    g.b(paramString);
  }
  
  int d(String paramString)
  {
    return g.a(paramString);
  }
  
  String[] d()
  {
    return g.b();
  }
  
  public void h_()
  {
    if (e.isFinishing()) {
      f.c(this);
    }
  }
}

/* Location:
 * Qualified Name:     hty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */