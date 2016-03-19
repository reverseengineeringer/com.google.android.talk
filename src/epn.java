import android.content.Context;
import android.text.Html;
import android.view.View;

final class epn
  extends dlj
{
  public epn(epl paramepl, Context paramContext, iog paramiog, int paramInt)
  {
    super(paramContext, paramiog, paramInt, epl.a);
  }
  
  public void a(dns paramdns)
  {
    epl localepl = a;
    paramdns = paramdns.a();
    if (paramdns != null)
    {
      c = ezc.a(Html.fromHtml(paramdns));
      if (d != null)
      {
        ezc.a(d, true);
        d.setOnClickListener(e);
      }
    }
    for (;;)
    {
      localepl.b();
      return;
      c = null;
      if (d != null)
      {
        ezc.a(d, false);
        d.setOnClickListener(null);
      }
    }
  }
  
  protected void c()
  {
    epl localepl = a;
    c = null;
    if (d != null)
    {
      ezc.a(d, false);
      d.setOnClickListener(null);
    }
    localepl.b();
  }
}

/* Location:
 * Qualified Name:     epn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */