import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class csp
  implements hax
{
  private static final Set<Integer> c;
  private final cso a;
  private final kls b;
  
  static
  {
    Object[] arrayOfObject = new Object[12];
    arrayOfObject[0] = Integer.valueOf(2018);
    arrayOfObject[1] = Integer.valueOf(2019);
    arrayOfObject[2] = Integer.valueOf(1939);
    arrayOfObject[3] = Integer.valueOf(1934);
    arrayOfObject[4] = Integer.valueOf(2518);
    arrayOfObject[5] = Integer.valueOf(2519);
    System.arraycopy(new Integer[] { Integer.valueOf(2232), Integer.valueOf(2233), Integer.valueOf(2678), Integer.valueOf(2906), Integer.valueOf(2697), Integer.valueOf(1524) }, 0, arrayOfObject, 6, 6);
    c = kth.a(12, arrayOfObject);
  }
  
  csp(cso paramcso, int paramInt)
  {
    a = paramcso;
    b = new kls();
    Object localObject = b;
    paramcso = paramcso.c();
    if (e == null) {
      e = new mdx();
    }
    cgw localcgw = cfc.a().r();
    mdx localmdx = e;
    if ((localcgw == null) || (localcgw.k()))
    {
      i = 407;
      b = Integer.valueOf(i);
      e.c = Integer.valueOf(2);
      localObject = e;
      if (!aal.N(paramcso)) {
        break label195;
      }
    }
    label195:
    for (int i = 3;; i = 2)
    {
      a = Integer.valueOf(i);
      if (b.a == null) {
        b.a = new kli();
      }
      b.a.j = new klj();
      b.a.j.a = Integer.valueOf(paramInt);
      return;
      i = 408;
      break;
    }
  }
  
  private int e()
  {
    return aal.a(b.a.j.a, 0);
  }
  
  public hax a()
  {
    aal.w();
    Object localObject1 = b;
    Object localObject2 = cfc.a().r();
    if (localObject2 != null)
    {
      if (a == null) {
        a = new kli();
      }
      if (a.a == null) {
        a.a = new klh();
      }
      ((cgw)localObject2).a(a.a);
      localObject2 = cfc.a().d();
      if (localObject2 != null) {
        a.a.d = ((hkx)localObject2).a();
      }
      localObject1 = cfc.a().g();
      if (localObject1 != null) {
        e(((hkv)localObject1).f());
      }
    }
    return this;
  }
  
  public hax a(int paramInt)
  {
    if (b.a.j.c == null) {
      b.a.j.c = new klk();
    }
    if (b.a.j.c.d == null) {
      b.a.j.c.d = new kll();
    }
    b.a.j.c.d.a = Integer.valueOf(paramInt);
    return this;
  }
  
  public hax a(Integer paramInteger)
  {
    if (b.a.j.c == null) {
      b.a.j.c = new klk();
    }
    b.a.j.c.b = paramInteger;
    return this;
  }
  
  public hax a(String paramString)
  {
    if (c.contains(Integer.valueOf(e())))
    {
      if (b.a.j.c == null) {
        b.a.j.c = new klk();
      }
      b.a.j.c.a = paramString;
      return this;
    }
    int i = e();
    hbs.a(63 + "Impression " + i + " is not permitted to transmit extra data.");
    return this;
  }
  
  public hax a(klc paramklc)
  {
    b.a.j.d = paramklc;
    return this;
  }
  
  public hax a(kld paramkld)
  {
    b.a.j.f = paramkld;
    return this;
  }
  
  public hax a(kle paramkle)
  {
    b.a.j.e = paramkle;
    return this;
  }
  
  public hax a(klf paramklf)
  {
    b.a.j.h = paramklf;
    return this;
  }
  
  public hax a(kln paramkln)
  {
    b.a.j.g = paramkln;
    return this;
  }
  
  public void a(TimeUnit paramTimeUnit)
  {
    if (((ekh)ilh.a(a.c(), ekh.class)).a(a.b(), e(), paramTimeUnit.toSeconds(1L))) {
      d();
    }
  }
  
  public hax b()
  {
    kls localkls = b;
    long l = a.d();
    if (a == null) {
      a = new kli();
    }
    if (a.k == null) {
      a.k = new klg();
    }
    a.k.a = Long.valueOf(SystemClock.elapsedRealtime() - l);
    return this;
  }
  
  public hax b(int paramInt)
  {
    if (b.a.j.c == null) {
      b.a.j.c = new klk();
    }
    b.a.j.c.e = Integer.valueOf(paramInt);
    return this;
  }
  
  public hax b(String paramString)
  {
    if (b.a.a == null) {
      b.a.a = new klh();
    }
    b.a.a.i = paramString;
    return this;
  }
  
  public hax c()
  {
    if (a.b() == -1) {}
    String[] arrayOfString;
    do
    {
      return this;
      arrayOfString = dvp.c(a.b());
    } while (arrayOfString.length == 0);
    if (b.a == null) {
      b.a = new kli();
    }
    if (b.a.k == null) {
      b.a.k = new klg();
    }
    b.a.k.b = arrayOfString;
    return this;
  }
  
  public hax c(String paramString)
  {
    if (b.a.a == null) {
      b.a.a = new klh();
    }
    b.a.a.j = paramString;
    return this;
  }
  
  public hax d(String paramString)
  {
    if (b.a == null) {
      b.a = new kli();
    }
    if (b.a.a == null) {
      b.a.a = new klh();
    }
    b.a.a.h = paramString;
    return this;
  }
  
  public void d()
  {
    Object localObject = b.a.j;
    int i;
    switch (a.c().getResources().getConfiguration().orientation)
    {
    default: 
      i = 0;
    }
    for (;;)
    {
      if (i != 0)
      {
        if (c == null) {
          c = new klk();
        }
        c.c = Integer.valueOf(i);
      }
      a.a(b);
      if (ezi.a("Babel_RtcImpressions", 3))
      {
        ezi.a("Babel_RtcImpressions", b.toString(), new Object[0]);
        localObject = String.valueOf(b.a.j.a);
        ezi.a("Babel_RtcImpressions", String.valueOf(localObject).length() + 6 + "Type: " + (String)localObject, new Object[0]);
      }
      return;
      i = 1;
      continue;
      i = 2;
    }
  }
  
  public hax e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    if (b.a == null) {
      b.a = new kli();
    }
    if (b.a.a == null) {
      b.a.a = new klh();
    }
    b.a.a.e = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     csp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */