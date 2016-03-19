import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v7.widget.ShareActionProvider;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

public final class aav
  implements MenuItem.OnMenuItemClickListener
{
  public aav(ShareActionProvider paramShareActionProvider) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = uq.a(a.a, a.b).b(paramMenuItem.getItemId());
    if (paramMenuItem != null)
    {
      String str = paramMenuItem.getAction();
      if (("android.intent.action.SEND".equals(str)) || ("android.intent.action.SEND_MULTIPLE".equals(str)))
      {
        if (Build.VERSION.SDK_INT < 21) {
          break label82;
        }
        paramMenuItem.addFlags(134742016);
      }
    }
    for (;;)
    {
      a.a.startActivity(paramMenuItem);
      return true;
      label82:
      paramMenuItem.addFlags(524288);
    }
  }
}

/* Location:
 * Qualified Name:     aav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */