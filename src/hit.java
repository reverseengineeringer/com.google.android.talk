import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;

public final class hit
  implements Runnable
{
  final hkt a;
  final hbp<kia> b;
  final Handler c;
  long d;
  boolean e;
  private final hbl f;
  
  public hit(Context paramContext, hbl paramhbl, hkt paramhkt, hbp<kia> paramhbp)
  {
    this(paramhbl, paramhkt, new Handler(paramContext.getMainLooper()), paramhbp);
  }
  
  private hit(hbl paramhbl)
  {
    f = paramhbl;
    hkt localhkt;
    a = localhkt;
    Handler localHandler;
    c = localHandler;
    hbp localhbp;
    b = localhbp;
    d = -1L;
    e = false;
  }
  
  public static boolean a(hkt paramhkt)
  {
    if (paramhkt.f() != null) {}
    while ((paramhkt.m() == null) && (paramhkt.g() == null) && (!b(paramhkt))) {
      return false;
    }
    return true;
  }
  
  static boolean b(hkt paramhkt)
  {
    return (paramhkt.i() != null) || (paramhkt.k() != null) || (paramhkt.l() != null);
  }
  
  private khz c()
  {
    khz localkhz = new khz();
    if ("conversation".equals(a.g())) {
      if (!a.t()) {
        break label53;
      }
    }
    label53:
    for (int i = 1;; i = 2)
    {
      e = Integer.valueOf(i);
      d = Boolean.valueOf(true);
      return localkhz;
    }
  }
  
  public void a()
  {
    e = true;
  }
  
  public void b()
  {
    hbs.a("Nothing to resolve.", a(a));
    if (e)
    {
      hlk.a(4, "vclib", "Resolve flow canceled");
      return;
    }
    Object localObject;
    khz localkhz;
    if (b(a))
    {
      localObject = new kib();
      b = a.i();
      a = a.j();
      if ((!TextUtils.isEmpty(a.k())) && (!TextUtils.isEmpty(a.l())))
      {
        c = a.k();
        d = a.l();
      }
      localkhz = c();
      c = ((kib)localObject);
    }
    for (;;)
    {
      hlk.a("vclib", "Issuing resolve request (%s)", new Object[] { localkhz });
      f.a("hangouts/resolve", localkhz, kia.class, new hiu(this));
      return;
      if (a.g() != null)
      {
        localObject = new khe();
        a = a.g();
        b = a.h();
        localkhz = c();
        a = ((khe)localObject);
      }
      else
      {
        if (a.m() == null) {
          break;
        }
        localkhz = c();
        f = a.m().toString();
      }
    }
    throw new IllegalArgumentException("CreateResolve request is not external key, named room or sharing url.");
  }
  
  public void run()
  {
    b();
  }
}

/* Location:
 * Qualified Name:     hit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */