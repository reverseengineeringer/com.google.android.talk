import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.conversation.v2.TransportSpinner;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bru
  extends brx
  implements View.OnClickListener
{
  private final TransportSpinner a;
  
  public bru(TransportSpinner paramTransportSpinner)
  {
    a = paramTransportSpinner;
  }
  
  public String a()
  {
    return aal.oJ.getResources().getString(StressMode.gr);
  }
  
  public int b()
  {
    return R.drawable.bm;
  }
  
  public void onClick(View paramView)
  {
    a.a();
  }
}

/* Location:
 * Qualified Name:     bru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */