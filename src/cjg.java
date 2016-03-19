import android.content.Context;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import java.util.Set;

public final class cjg
  extends hku
{
  private Context a;
  private PowerManager.WakeLock b;
  private hke c;
  
  public cjg(Context paramContext)
  {
    super((byte)0);
    a = paramContext;
    ezi.a("Babel_Proximity", "Created", new Object[0]);
  }
  
  public static boolean a(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Build.VERSION.SDK_INT >= 21)
    {
      bool1 = bool2;
      if (!aal.a(paramContext, "babel_proximity_wakelock_blacklist", false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private void j()
  {
    if ((a(a)) && ((c == null) || (c == hke.b)))
    {
      if (b != null)
      {
        ezi.a("Babel_Proximity", "WakeLock already held.", new Object[0]);
        return;
      }
      PowerManager localPowerManager = (PowerManager)a.getApplicationContext().getSystemService("power");
      if ((!aal.oK) && (!localPowerManager.isWakeLockLevelSupported(32)))
      {
        ezi.a("Babel_Proximity", "Proximity WakeLock not supported.", new Object[0]);
        return;
      }
      b = localPowerManager.newWakeLock(32, "Babel_Proximity");
      b.acquire();
      ezi.a("Babel_Proximity", "WakeLock acquired", new Object[0]);
      return;
    }
    k();
  }
  
  private void k()
  {
    if (b != null)
    {
      ezi.a("Babel_Proximity", "WakeLock released", new Object[0]);
      b.release();
      b = null;
    }
  }
  
  public void a(int paramInt)
  {
    ezi.a("Babel_Proximity", "onCallEnd", new Object[0]);
    k();
  }
  
  public void a(hke paramhke, Set<hkd> paramSet)
  {
    paramSet = String.valueOf(paramhke);
    ezi.a("Babel_Proximity", String.valueOf(paramSet).length() + 17 + "audioDeviceState:" + paramSet, new Object[0]);
    c = paramhke;
    j();
  }
  
  public void a(hkw paramhkw)
  {
    ezi.a("Babel_Proximity", "onCallJoin", new Object[0]);
    j();
  }
  
  protected void finalize()
  {
    super.finalize();
    if (b != null)
    {
      k();
      hbs.a("Leak found.");
    }
  }
}

/* Location:
 * Qualified Name:     cjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */