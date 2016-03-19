import android.content.Context;
import android.text.TextUtils;

final class eqj
  implements ebb, iaw
{
  private final hpz a;
  private final fak b;
  private final eat c;
  
  eqj(Context paramContext)
  {
    a = ((hpz)ilh.a(paramContext, hpz.class));
    b = ((fak)ilh.a(paramContext, fak.class));
    c = ((eat)ilh.a(paramContext, eat.class));
  }
  
  public void a(int paramInt)
  {
    if (a.a(paramInt).d("logged_out")) {
      a.b(paramInt).f("SyncManager.reg_build_version").d();
    }
  }
  
  public void a(hqe paramhqe, drz paramdrz)
  {
    String str1;
    String str2;
    int i;
    if (paramdrz.k() == 1)
    {
      paramdrz = paramhqe.b("SyncManager.reg_build_version");
      str1 = b.c();
      if (!TextUtils.equals(paramdrz, str1))
      {
        paramdrz = paramhqe.b("account_name");
        str2 = paramhqe.b("effective_gaia_id");
        i = a.b(paramdrz, str2);
        str2 = String.valueOf("Perform warm sync in case there are messages missed before the device is registered for account ");
        paramdrz = String.valueOf(ezi.b(paramdrz));
        if (paramdrz.length() == 0) {
          break label132;
        }
      }
    }
    label132:
    for (paramdrz = str2.concat(paramdrz);; paramdrz = new String(str2))
    {
      ezi.c("Babel_SyncManager", paramdrz, new Object[0]);
      c.a(i, false, ebq.a);
      paramhqe.c("SyncManager.reg_build_version", str1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     eqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */