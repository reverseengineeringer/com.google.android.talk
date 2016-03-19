import android.content.Context;
import android.os.Bundle;
import com.google.android.libraries.social.settings.PreferenceScreen;

public final class iiz
  implements ilu, iox, ioz
{
  private ija a;
  private final kog b;
  private ika c = null;
  private PreferenceScreen d;
  private boolean e = false;
  
  public iiz(ija paramija, iog paramiog)
  {
    a = paramija;
    b = null;
    paramiog.a(this);
  }
  
  public ijc a(ijc paramijc)
  {
    d.c(paramijc);
    return paramijc;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    c = ((ika)paramilh.a(ika.class));
  }
  
  public void s_()
  {
    if (c != null) {}
    for (PreferenceScreen localPreferenceScreen = c.b();; localPreferenceScreen = (PreferenceScreen)b.a())
    {
      d = localPreferenceScreen;
      if (!e) {
        a.a();
      }
      e = true;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     iiz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */