import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class dfg
  implements CompoundButton.OnCheckedChangeListener
{
  dfg(DebugActivity paramDebugActivity) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = a.getApplicationContext();
    int i = a.g.g();
    if (paramBoolean) {}
    for (long l = 1L;; l = 0L)
    {
      bff.b(paramCompoundButton, i, "DEBUG_RTCS", l);
      a.h = paramBoolean;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dfg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */