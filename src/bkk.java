import android.content.Context;
import android.os.Bundle;

final class bkk
  implements bjs, htx, ilu, ioo, ioq, iow, ioz, ipa
{
  private final Context a;
  private final int b;
  private final ilh c;
  private hty d;
  private boolean e;
  
  bkk(Context paramContext, iog paramiog, int paramInt)
  {
    a = paramContext;
    b = paramInt;
    c = ilh.b(paramContext);
    paramiog.a(this);
  }
  
  public String a()
  {
    String str = String.valueOf(getClass().getName());
    int i = b;
    return String.valueOf(str).length() + 11 + str + i;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    d = ((hty)paramilh.a(hty.class));
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      ezi.a("Babel_ConvCreator", "Gaia ID resolver restored from saved state", new Object[0]);
      if (paramBundle.getBoolean("listener_registered"))
      {
        d.a(this);
        e = true;
      }
    }
  }
  
  public void a(bdy parambdy, bkw parambkw)
  {
    switch (bkl.a[parambkw.ordinal()])
    {
    default: 
      parambdy = String.valueOf(parambkw);
      throw new IllegalArgumentException(String.valueOf(parambdy).length() + 27 + "Unknown conversation type: " + parambdy);
    }
    for (boolean bool = parambdy.g(); bool; bool = false)
    {
      int i = b;
      ezi.a("Babel_ConvCreator", 50 + "Gaia ID resolution needed; request ID: " + i, new Object[0]);
      parambkw = (hpu)c.a(hpu.class);
      ctq localctq = (ctq)c.a(ctq.class);
      String str = String.valueOf("gaia_id_resolution");
      i = b;
      parambdy = localctq.a(String.valueOf(str).length() + 11 + str + i, parambkw.a(), parambdy);
      if (!e)
      {
        d.a(this);
        e = true;
      }
      d.b(parambdy);
      return;
    }
    ezi.a("Babel_ConvCreator", "No Gaia ID resolution needed", new Object[0]);
    ((bjt)c.a(bjt.class)).a(true, parambdy);
  }
  
  public void a(String paramString, hus paramhus, huo paramhuo)
  {
    paramhuo = String.valueOf("gaia_id_resolution");
    int i = b;
    if (paramString.equals(String.valueOf(paramhuo).length() + 11 + paramhuo + i))
    {
      i = b;
      ezi.a("Babel_ConvCreator", 70 + "Gaia ID resolution background task finished for request ID " + i, new Object[0]);
      if (paramhus == null) {
        break label162;
      }
    }
    label162:
    for (paramString = (bdy)paramhus.d().getSerializable("hangouts_contact");; paramString = null)
    {
      paramhuo = (bjt)ilh.b(a).a(bjt.class);
      if ((paramhus != null) && (!paramhus.f())) {}
      for (boolean bool = true;; bool = false)
      {
        paramhuo.a(bool, paramString);
        d.b(this);
        e = false;
        return;
      }
    }
  }
  
  public void b(Bundle paramBundle)
  {
    ezi.a("Babel_ConvCreator", "Saving state of gaia ID resolver", new Object[0]);
    paramBundle.putBoolean("listener_registered", e);
  }
  
  public void h_()
  {
    d.b(this);
  }
}

/* Location:
 * Qualified Name:     bkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */