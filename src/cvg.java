import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;

public final class cvg
  implements ilu, ior, ioz
{
  private final Activity a;
  private hpu b;
  
  public cvg(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((hpu)paramilh.a(hpu.class));
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      paramMenuItem = a;
      paramMenuItem = cn.a.a(paramMenuItem);
      paramMenuItem.putExtra("account_id", b.a());
      if (cn.a(a, paramMenuItem)) {
        eo.a(a).b(paramMenuItem).b();
      }
      for (;;)
      {
        return true;
        cn.b(a, paramMenuItem);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     cvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */