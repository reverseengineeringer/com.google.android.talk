import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class hzy
  implements hpu, hqg, iag, ilu, ioo, ioq, iov, iow, iox, ioz
{
  final ba a;
  iaf b;
  String c;
  iaa d;
  private hpz e;
  private String f;
  private hpv g = hpv.a;
  private int h = -1;
  private iaj i;
  private iaj j;
  private int k;
  private boolean l;
  private final List<hpw> m = new ArrayList();
  private final hwj n;
  
  public hzy(ba paramba, iog paramiog)
  {
    a = paramba;
    paramiog.a(this);
    n = new hwj(paramiog);
  }
  
  public hzy(ba paramba, iog paramiog, hpz paramhpz, iaf paramiaf, ian paramian)
  {
    aen.a(paramian);
    n = new hwj(paramiog);
    a = paramba;
    e = paramhpz;
    b = paramiaf;
    paramiog.a(this);
  }
  
  private void a(iaj paramiaj, hpv paramhpv, int paramInt, boolean paramBoolean)
  {
    hpv localhpv = g;
    int i1 = h;
    i = paramiaj;
    g = paramhpv;
    h = paramInt;
    if ((paramBoolean) || (paramhpv != localhpv) || (paramInt != i1)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      paramiaj = m.iterator();
      while (paramiaj.hasNext()) {
        ((hpw)paramiaj.next()).a(paramBoolean, localhpv, paramhpv, i1, paramInt);
      }
    }
  }
  
  private boolean a(iaj paramiaj, int paramInt)
  {
    return (e.c(paramInt)) && (b.a(paramiaj, paramInt));
  }
  
  private void i()
  {
    int i1;
    Object localObject1;
    iaj localiaj;
    Object localObject2;
    boolean bool;
    if ((l) && (j != null))
    {
      i1 = k;
      if (i1 == -1) {
        break label108;
      }
      localObject1 = hpv.c;
      localiaj = j;
      if ((i1 != -1) || (h == -1)) {
        break label134;
      }
      if (!a(localiaj, h)) {
        break label120;
      }
      i1 = h;
      localObject2 = hpv.c;
      localObject1 = i;
      if (j.c == -1) {
        break label115;
      }
      bool = true;
    }
    for (;;)
    {
      k = -1;
      j = null;
      a((iaj)localObject1, (hpv)localObject2, i1, bool);
      return;
      label108:
      localObject1 = hpv.b;
      break;
      label115:
      bool = false;
      continue;
      label120:
      localObject2 = hpv.a;
      bool = false;
      i1 = -1;
      localObject1 = null;
      continue;
      label134:
      bool = false;
      localObject2 = localObject1;
      localObject1 = localiaj;
    }
  }
  
  private void j()
  {
    if ((!g()) && (h != -1) && (!a(i, h))) {
      a(null, hpv.a, -1, false);
    }
  }
  
  public void X_()
  {
    l = true;
    h();
  }
  
  public void Y_()
  {
    if (l) {
      j();
    }
  }
  
  public int a()
  {
    aal.w();
    return h;
  }
  
  public hzy a(ilh paramilh)
  {
    paramilh.a(hpu.class, this);
    paramilh.a(hzy.class, this);
    return this;
  }
  
  public hzy a(String paramString)
  {
    f = paramString;
    return this;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    if ((e == null) && (b == null))
    {
      e = ((hpz)paramilh.a(hpz.class));
      b = ((iaf)paramilh.a(iaf.class));
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      f = paramBundle.getString("account_key");
      h = paramBundle.getInt("account_id");
      g = hpv.values()[paramBundle.getInt("account_handler_state")];
      i = ((iaj)paramBundle.getParcelable("completed_login_request"));
      localObject = (iaj)paramBundle.getParcelable("queued_login_request");
      if (localObject != null) {
        break label131;
      }
    }
    label131:
    for (Object localObject = null;; localObject = new iaa(this, (iaj)localObject))
    {
      d = ((iaa)localObject);
      j = ((iaj)paramBundle.getParcelable("pending_login_request"));
      k = paramBundle.getInt("pending_id");
      c = paramBundle.getString("tag");
      l = true;
      e.a(this);
      b.a(this);
      return;
    }
  }
  
  public void a(iaj paramiaj)
  {
    if (e == null) {
      e = f;
    }
    if (e == null) {
      e = ilh.a(a, "LoginAccountHandler.account_key");
    }
    if (h)
    {
      paramiaj.a(a, a.getIntent());
      if (!e.c(k)) {
        k = -1;
      }
    }
    c = UUID.randomUUID().toString();
    d = new iaa(this, paramiaj);
    n.a(jua.a(new hzz(this)));
  }
  
  public void a(iaj paramiaj, String paramString, int paramInt)
  {
    if (TextUtils.equals(paramString, c))
    {
      c = null;
      j = paramiaj;
      k = paramInt;
      i();
    }
  }
  
  public hzy b(hpw paramhpw)
  {
    m.add(paramhpw);
    return this;
  }
  
  public void b(Bundle paramBundle)
  {
    l = false;
    paramBundle.putString("account_key", f);
    paramBundle.putInt("account_id", h);
    paramBundle.putInt("account_handler_state", g.ordinal());
    paramBundle.putParcelable("completed_login_request", i);
    if (d == null) {}
    for (Object localObject = null;; localObject = d.a)
    {
      paramBundle.putParcelable("queued_login_request", (Parcelable)localObject);
      paramBundle.putParcelable("pending_login_request", j);
      paramBundle.putInt("pending_id", k);
      paramBundle.putString("tag", c);
      return;
    }
  }
  
  public boolean b()
  {
    aal.w();
    return h != -1;
  }
  
  public hqb c()
  {
    aal.w();
    return e.a(h);
  }
  
  public boolean e()
  {
    aal.w();
    return (e.c(h)) && (e.a(h).a());
  }
  
  public boolean g()
  {
    return (d != null) || (c != null) || (j != null);
  }
  
  void h()
  {
    j();
    if (a.isFinishing()) {
      return;
    }
    if ((l) && (d != null)) {
      d.b.run();
    }
    i();
  }
  
  public void h_()
  {
    e.b(this);
    b.b(this);
  }
  
  public void s_()
  {
    l = true;
    h();
  }
}

/* Location:
 * Qualified Name:     hzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */