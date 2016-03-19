import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class bau
  implements azn
{
  public dlv a()
  {
    return bap.a(true, ezm.f());
  }
  
  public boolean a(Context paramContext)
  {
    int i = ((hpu)ilh.a(paramContext, hpu.class)).a();
    if (i == -1) {
      return false;
    }
    if ((((hpz)ilh.a(paramContext, hpz.class)).a(i).a("callerid_promo_shown", false)) || (!aal.a(i, ezm.f()))) {
      return false;
    }
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (!aal.a(paramContext, "babel_dialer_disable_promos_for_callerid", false)) && (aal.a(paramContext, i));
  }
  
  public int b()
  {
    return aen.hu;
  }
}

/* Location:
 * Qualified Name:     bau
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */