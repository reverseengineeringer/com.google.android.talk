import android.content.Context;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class dkf
  implements djy
{
  private boolean a;
  
  public dkf(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public dlv a()
  {
    boolean bool = a;
    dke localdke = new dke();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("from_settings", bool);
    localBundle.putBoolean("set_discoverability", true);
    localBundle.putInt("current_step", 1);
    localdke.setArguments(localBundle);
    return localdke;
  }
  
  public boolean a(Context paramContext)
  {
    bfd localbfd = dvd.e(((hpu)ilh.a(paramContext, hpu.class)).a());
    paramContext = (djw)ilh.b(paramContext, djw.class);
    return (paramContext != null) && (paramContext.b(localbfd));
  }
  
  public int b()
  {
    return StressMode.tY;
  }
}

/* Location:
 * Qualified Name:     dkf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */