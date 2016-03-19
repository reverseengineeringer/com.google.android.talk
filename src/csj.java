import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import java.util.Locale;

public final class csj
  extends dlv
{
  public csj()
  {
    super(aal.nH, new int[] { fii.b, fii.c });
  }
  
  protected String a()
  {
    return getString(aal.nL);
  }
  
  protected void a(int paramInt)
  {
    if (paramInt == fii.c) {
      bff.c(getContext());
    }
    for (;;)
    {
      super.a(paramInt);
      return;
      System.exit(0);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = Locale.getDefault().getLanguage();
    if ((paramLayoutInflater == null) || (paramLayoutInflater.length() != 2)) {
      paramLayoutInflater = "ko";
    }
    for (;;)
    {
      paramBundle = (TextView)paramViewGroup.findViewById(fii.a);
      Resources localResources = paramViewGroup.getResources();
      int i = aal.nJ;
      String str = String.valueOf(paramLayoutInflater).length() + 44 + "https://www.google.com/intl/" + paramLayoutInflater + "/policies/terms/";
      paramLayoutInflater = String.valueOf(paramLayoutInflater);
      if (paramLayoutInflater.length() != 0) {}
      for (paramLayoutInflater = "https://www.google.com/policies/privacy/?hl=".concat(paramLayoutInflater);; paramLayoutInflater = new String("https://www.google.com/policies/privacy/?hl="))
      {
        paramBundle.setText(Html.fromHtml(localResources.getString(i, new Object[] { "https://www.google.co.kr/intl/ko/policies/terms/location/", str, paramLayoutInflater })));
        paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
        ((Button)paramViewGroup.findViewById(fii.b)).setText(aal.nK);
        ((Button)paramViewGroup.findViewById(fii.c)).setText(aal.nI);
        return paramViewGroup;
      }
    }
  }
}

/* Location:
 * Qualified Name:     csj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */