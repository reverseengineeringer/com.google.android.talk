import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import com.google.android.apps.hangouts.promo.AnnouncingRelativeLayout;

public abstract class dlv
  extends img
{
  private int a;
  private int[] b;
  private View.OnClickListener c = new dlx(this);
  
  public dlv(int paramInt, int[] paramArrayOfInt)
  {
    a = paramInt;
    b = paramArrayOfInt;
  }
  
  public abstract String a();
  
  public void a(int paramInt)
  {
    ((dly)getActivity()).g();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = 0;
    paramLayoutInflater = paramLayoutInflater.inflate(aal.pk, paramViewGroup, false);
    ((AnnouncingRelativeLayout)paramLayoutInflater.findViewById(aal.pj)).a(a());
    paramViewGroup = (ViewStub)paramLayoutInflater.findViewById(aal.pi);
    paramViewGroup.setLayoutResource(a);
    paramViewGroup.inflate();
    if (b != null)
    {
      paramViewGroup = (ViewStub)paramLayoutInflater.findViewById(aal.ph);
      if (b.length == 1) {
        paramViewGroup.setLayoutResource(aal.pl);
      }
      for (;;)
      {
        paramViewGroup = paramViewGroup.inflate();
        paramBundle = b;
        int j = paramBundle.length;
        while (i < j)
        {
          Button localButton = (Button)paramViewGroup.findViewById(paramBundle[i]);
          localButton.setOnClickListener(c);
          localButton.setAllCaps(true);
          i += 1;
        }
        paramViewGroup.setLayoutResource(aal.pm);
      }
    }
    ks.c(paramLayoutInflater, 1);
    paramLayoutInflater.addOnAttachStateChangeListener(new dlw(this));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     dlv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */