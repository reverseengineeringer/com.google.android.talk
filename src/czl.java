import android.content.Context;
import android.os.Bundle;

public final class czl
  implements cjq
{
  private final Context a;
  
  public czl(Context paramContext)
  {
    a = paramContext;
  }
  
  public jug a(jug paramjug, Bundle paramBundle)
  {
    boolean bool1 = true;
    int j = paramBundle.getInt("account_id");
    boolean bool2 = dvp.a.b(j);
    String.format("%s experiment enabled? %s, (def=%s srv=%s)", new Object[] { "648d1162", Boolean.valueOf(bool2), dvp.a.d(), dvp.a.a(j) });
    boolean bool3 = dvp.b.b(j);
    String.format("%s experiment enabled? %s, (def=%s srv=%s)", new Object[] { "4ad97016", Boolean.valueOf(bool3), dvp.b.d(), dvp.b.a(j) });
    int i;
    if ((bool2) || (bool3))
    {
      i = 1;
      if (i == 0) {
        break label199;
      }
      paramBundle = "enabled";
      label136:
      ezi.a("Babel", "P2P is %s, experiment=%b, googler experiment: %b, ", new Object[] { paramBundle, Boolean.valueOf(bool2), Boolean.valueOf(bool3) });
      if ((i == 0) || (czi.a(a, j))) {
        break label205;
      }
    }
    for (;;)
    {
      a = Boolean.valueOf(bool1);
      return paramjug;
      i = 0;
      break;
      label199:
      paramBundle = "disabled";
      break label136;
      label205:
      bool1 = false;
    }
  }
}

/* Location:
 * Qualified Name:     czl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */