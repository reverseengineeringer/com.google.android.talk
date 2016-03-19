import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.style.URLSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.accessibility.AccessibilityManager;

public final class eyc
  implements View.OnClickListener
{
  public eyc(Context paramContext, URLSpan paramURLSpan) {}
  
  public void onClick(View paramView)
  {
    if (((AccessibilityManager)a.getSystemService("accessibility")).isEnabled())
    {
      paramView = new Intent("android.intent.action.VIEW");
      paramView.setData(Uri.parse(b.getURL()));
      a.startActivity(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     eyc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */