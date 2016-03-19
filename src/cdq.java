import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

final class cdq
  implements View.OnClickListener
{
  cdq(cdp paramcdp, int paramInt) {}
  
  public void onClick(View paramView)
  {
    b.a.a();
    paramView = (cdn)b.a.getTargetFragment();
    int i = a;
    bz localbz = paramView.getFragmentManager().a();
    cdr localcdr = new cdr();
    Bundle localBundle = new Bundle();
    localBundle.putInt("action_index", i);
    localcdr.setArguments(localBundle);
    localcdr.setTargetFragment(paramView, 0);
    localcdr.a(localbz, null);
  }
}

/* Location:
 * Qualified Name:     cdq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */