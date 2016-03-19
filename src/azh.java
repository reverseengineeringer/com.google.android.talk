import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public final class azh
  extends dlv
{
  public azh()
  {
    super(aal.ik, new int[] { aal.ih, aal.ii });
  }
  
  protected String a()
  {
    return ((hpu)binder.a(hpu.class)).c().b("display_name");
  }
  
  protected void a(int paramInt)
  {
    bfd localbfd = dvd.e(((hpu)binder.a(hpu.class)).a());
    if (localbfd == null)
    {
      ezi.d("Babel", "[BusinessFeaturesPromo.setBusinessPromo] Account changed?", new Object[0]);
      super.a(paramInt);
      return;
    }
    Context localContext = getContext();
    if (paramInt == aal.ii) {}
    for (boolean bool = true;; bool = false)
    {
      bff.c(localContext, localbfd, bool);
      bff.c(getContext(), localbfd);
      break;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    aen.a(paramLayoutInflater);
    paramViewGroup = ((hpu)binder.a(hpu.class)).c().b("display_name");
    ((TextView)paramLayoutInflater.findViewById(aal.ig)).setText(Html.fromHtml(context.getString(aen.hs, new Object[] { paramViewGroup })));
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(aal.if);
    paramBundle = aal.e("https://support.google.com/business/?hl=%locale%", "hangouts_business");
    paramBundle = context.getString(aen.hq, new Object[] { paramBundle.toString() });
    aal.a(paramViewGroup, context, paramBundle);
    ((Button)paramLayoutInflater.findViewById(aal.ih)).setText(aen.hr);
    ((Button)paramLayoutInflater.findViewById(aal.ii)).setText(aen.hp);
    aal.a((ImageView)paramLayoutInflater.findViewById(aal.ij), context.getResources(), aal.il);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     azh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */