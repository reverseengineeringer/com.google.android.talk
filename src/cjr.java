import android.content.Context;
import android.os.Bundle;

public final class cjr
  implements cjq
{
  private final Context a;
  
  public cjr(Context paramContext)
  {
    a = paramContext;
  }
  
  public jug a(jug paramjug, Bundle paramBundle)
  {
    boolean bool2 = false;
    int i = paramBundle.getInt("account_id");
    b = Boolean.valueOf(paramBundle.getBoolean("is_pstn_only"));
    c = Boolean.valueOf(dvp.j.b(i));
    r = Integer.valueOf((int)dvp.l.c(i));
    w = Integer.valueOf((int)dvp.m.c(i));
    x = Integer.valueOf((int)dvp.n.c(i));
    if ((aal.a(a, "babel_hangout_allow_singlecast", true)) && (dvp.s.b(i)))
    {
      bool1 = true;
      d = Boolean.valueOf(bool1);
      s = Boolean.valueOf(dvp.t.b(i));
      f = Boolean.valueOf(dvp.u.b(i));
      if ((!dvp.q.b(i)) && (!dvp.r.b(i))) {
        break label291;
      }
    }
    label291:
    for (boolean bool1 = true;; bool1 = false)
    {
      g = Boolean.valueOf(bool1);
      m = Boolean.valueOf(dvp.D.b(i));
      q = Boolean.valueOf(paramBundle.getBoolean("enable_one_rpc"));
      t = Float.valueOf(dvp.O.d(i));
      u = Integer.valueOf((int)dvp.J.c(i));
      if (!dvp.H.b(i))
      {
        bool1 = bool2;
        if (!dvp.I.b(i)) {}
      }
      else
      {
        bool1 = true;
      }
      v = Boolean.valueOf(bool1);
      z = Boolean.valueOf(dvp.X.b(i));
      return paramjug;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     cjr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */