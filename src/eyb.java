import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;

public final class eyb
  extends ClickableSpan
{
  public eyb(URLSpan paramURLSpan, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.VIEW");
    paramView.setData(Uri.parse(a.getURL()));
    b.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     eyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */