import android.content.Context;
import android.os.Handler;
import com.google.android.gms.herrevad.PredictedNetworkQuality;

final class esq
  implements erb, etr, evi, fin<fzs>, Runnable
{
  private final Context a;
  private esr b;
  private fic c;
  private erc d;
  private boolean e;
  private eum f;
  private est g;
  private boolean h;
  private PredictedNetworkQuality i;
  private boolean j;
  private etq k;
  private boolean l;
  private long m;
  private boolean n;
  private boolean o;
  
  esq(Context paramContext, esr paramesr)
  {
    a = paramContext;
    b = paramesr;
  }
  
  private void b()
  {
    
    if ((e) && (h) && (j) && (n)) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((b != null) && ((i1 != 0) || (o)))
      {
        aal.y().removeCallbacks(this);
        esr localesr = b;
        b = null;
        if (k != null)
        {
          k.b();
          k = null;
        }
        localesr.a(new ess(d, f, g, i, l, m, o));
      }
      return;
    }
  }
  
  void a()
  {
    ezi.c("Babel_telephony", "TeleNetworkSelectionUtils.fetchState", new Object[0]);
    g = new est(a, etj.a(a));
    f = euh.a(a);
    era.a(a, this);
    Context localContext = a;
    ezi.c("Babel_telephony", "TeleTychoController.isOnHomeVoiceNetwork", new Object[0]);
    aal.a(localContext, new evh(localContext, this));
    c = new fid(a).a(fzp.b).b();
    c.b();
    fzp.c.a(c).a(this);
    k = new etq(a, this);
    k.a();
    aal.a(this, aal.a(a, "babel_network_selection_state_fetch_timeout_millis", 1000));
  }
  
  public void a(erc paramerc)
  {
    String str = String.valueOf(paramerc);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 50 + "TeleNetworkSelectionUtils.onCellState, cellState: " + str, new Object[0]);
    d = paramerc;
    e = true;
    b();
  }
  
  public void a(boolean paramBoolean, long paramLong)
  {
    ezi.c("Babel_telephony", 99 + "TeleNetworkSelectionUtils.onPingComplete, wasSuccessful: " + paramBoolean + ", latencyMillis: " + paramLong, new Object[0]);
    n = true;
    k = null;
    l = paramBoolean;
    m = paramLong;
    b();
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    ezi.c("Babel_telephony", 95 + "TeleNetworkSelectionUtils.onHomeVoiceNetworkResult, success: " + paramBoolean1 + ", isOnHomeVoiceNetwork: " + paramBoolean2, new Object[0]);
    int i1;
    if (paramBoolean1) {
      if (paramBoolean2) {
        i1 = 2;
      }
    }
    for (;;)
    {
      g = new est(a, i1);
      h = true;
      b();
      return;
      i1 = 1;
      continue;
      i1 = etj.a(a);
    }
  }
  
  public void run()
  {
    if (b != null)
    {
      ezi.c("Babel_telephony", "TeleNetworkSelectionUtils.run, fetching state timeout", new Object[0]);
      o = true;
      b();
    }
  }
}

/* Location:
 * Qualified Name:     esq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */