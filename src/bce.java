import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bce
  extends dlv
{
  public bce()
  {
    super(aal.iT, new int[] { StressMode.ts, StressMode.tt });
  }
  
  protected String a()
  {
    return getString(aal.jc);
  }
  
  protected void a(int paramInt)
  {
    bfd localbfd = dvd.e(((hpu)binder.a(hpu.class)).a());
    if (localbfd == null)
    {
      ezi.d("Babel", "[CallPromo.buttonClicked] Account changed?", new Object[0]);
      super.a(paramInt);
      return;
    }
    ill localill = context;
    if (paramInt == StressMode.tt) {}
    for (boolean bool = true;; bool = false)
    {
      bff.a(localill, localbfd, bool);
      break;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    aen.a(paramLayoutInflater);
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(StressMode.tq);
    paramBundle = aal.e("https://www.google.com/support/hangouts/?hl=%locale%", "android_sms");
    paramBundle = getActivity().getString(aal.jb, new Object[] { paramBundle.toString() });
    aal.a(paramViewGroup, context, paramBundle);
    ((Button)paramLayoutInflater.findViewById(StressMode.ts)).setText(aal.ja);
    ((Button)paramLayoutInflater.findViewById(StressMode.tt)).setText(aal.jd);
    aal.a((ImageView)paramLayoutInflater.findViewById(StressMode.tp), context.getResources(), aen.hE);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     bce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */