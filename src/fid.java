import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class fid
{
  ba a;
  private Account b;
  private final Set<Scope> c = new HashSet();
  private int d;
  private View e;
  private String f;
  private String g;
  private final Map<fhw<?>, fkr> h = new gcc();
  private final Context i;
  private final Map<fhw<?>, fhy> j = new gcc();
  private int k = -1;
  private int l = -1;
  private fih m;
  private Looper n;
  private fho o = fho.b;
  private fhx<? extends gra, gqd> p = gqw.c;
  private final ArrayList<fif> q = new ArrayList();
  private final ArrayList<fih> r = new ArrayList();
  private gqe s = new gqe();
  
  public fid(Context paramContext)
  {
    i = paramContext;
    n = paramContext.getMainLooper();
    f = paramContext.getPackageName();
    g = paramContext.getClass().getName();
  }
  
  public fid a(fhw<? extends fhy> paramfhw)
  {
    j.put(paramfhw, null);
    c.addAll(paramfhw.a().a());
    return this;
  }
  
  public <O extends fhy> fid a(fhw<O> paramfhw, O paramO)
  {
    aal.b(paramO, "Null options are not permitted for this Api");
    j.put(paramfhw, paramO);
    c.addAll(paramfhw.a().a());
    return this;
  }
  
  public fid a(fif paramfif)
  {
    q.add(paramfif);
    return this;
  }
  
  public fid a(fih paramfih)
  {
    r.add(paramfih);
    return this;
  }
  
  public fid a(String paramString)
  {
    if (paramString == null) {}
    for (paramString = null;; paramString = new Account(paramString, "com.google"))
    {
      b = paramString;
      return this;
    }
  }
  
  public fkq a()
  {
    return new fkq(b, c, h, d, e, f, g, s.a());
  }
  
  void a(fjz paramfjz, fic paramfic)
  {
    paramfjz.a(k, paramfic, m);
  }
  
  public fic b()
  {
    boolean bool;
    Object localObject1;
    Object localObject2;
    if (!j.isEmpty())
    {
      bool = true;
      aal.b(bool, "must call addApi() to add at least one API");
      if (k < 0) {
        break label130;
      }
      localObject1 = new fjj(i.getApplicationContext(), n, a(), o, p, j, q, r, k, -1);
      localObject2 = fjz.a(a);
      if (localObject2 != null) {
        break label121;
      }
      new Handler(i.getMainLooper()).post(new fie(this, (fic)localObject1));
    }
    for (;;)
    {
      return (fic)localObject1;
      bool = false;
      break;
      label121:
      a((fjz)localObject2, (fic)localObject1);
    }
    label130:
    if (l >= 0)
    {
      fkc localfkc = fkc.a(a);
      localObject2 = localfkc.a(l);
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new fjj(i.getApplicationContext(), n, a(), o, p, j, q, r, -1, l);
      }
      localfkc.a(l, (fic)localObject1, m);
      return (fic)localObject1;
    }
    return new fjj(i, n, a(), o, p, j, q, r, -1, -1);
  }
}

/* Location:
 * Qualified Name:     fid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */