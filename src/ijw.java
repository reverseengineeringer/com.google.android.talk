import android.os.Bundle;
import android.view.View;
import com.google.android.libraries.social.settings.PreferenceScreen;

public final class ijw
  implements ika, inw, iny, iow, ioz
{
  private final iiq a;
  private bz b;
  private ijx c;
  private PreferenceScreen d;
  
  private ijw(iiq paramiiq, ijx paramijx, iog paramiog)
  {
    a = paramiiq;
    c = ((ijx)aen.a(paramijx));
    paramiog.a(this);
  }
  
  public <T extends iiq,  extends ijx> ijw(T paramT, iog paramiog)
  {
    this(paramT, (ijx)paramT, paramiog);
  }
  
  public void a()
  {
    PreferenceScreen localPreferenceScreen = a.b().a(a.a);
    a.a(localPreferenceScreen);
    d = localPreferenceScreen;
  }
  
  public void a(View paramView, Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      b = a.getChildFragmentManager().a();
      c.a();
      b.b();
      b = null;
    }
  }
  
  public void a(av paramav)
  {
    b.a(paramav, null);
  }
  
  public PreferenceScreen b()
  {
    if (d == null) {
      throw new IllegalStateException("PreferenceScreen cannot be accessed before OnCreateView");
    }
    return d;
  }
  
  public void b(Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     ijw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */