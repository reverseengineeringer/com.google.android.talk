import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;

public final class ddp
  extends dlj
{
  public ddp(BabelHomeActivity paramBabelHomeActivity, Context paramContext, iog paramiog, int paramInt1, int paramInt2)
  {
    super(paramContext, paramiog, paramInt1, paramInt2);
  }
  
  public void a(dns paramdns)
  {
    if (!TextUtils.isEmpty(paramdns.a())) {}
    for (paramdns = Html.fromHtml(paramdns.a()).toString();; paramdns = null)
    {
      a.b(paramdns);
      return;
    }
  }
  
  protected void c() {}
}

/* Location:
 * Qualified Name:     ddp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */