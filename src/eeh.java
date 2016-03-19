import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.realtimechat.wakelock.impl.DebugWakelocksActivity;
import java.util.List;

public final class eeh
  extends ArrayAdapter<knr<Intent, Long>>
{
  eeh(DebugWakelocksActivity paramDebugWakelocksActivity, Context paramContext, int paramInt1, int paramInt2, List paramList)
  {
    super(paramContext, paramInt1, paramInt2, paramList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = (TextView)paramView.findViewById(aal.pW);
    paramViewGroup.setTextColor(a.getResources().getColor(aal.pV));
    int i = ((Intent)getItema).getIntExtra("android.support.content.wakelockid", -1);
    paramViewGroup.setText(11 + i);
    paramViewGroup = (TextView)paramView.findViewById(aal.pX);
    paramViewGroup.setTextColor(a.getResources().getColor(aal.pV));
    paramViewGroup.setText(String.format("%.02fs", new Object[] { Double.valueOf((SystemClock.elapsedRealtime() - aal.a((Long)getItemb, 0L)) / 1000.0D) }));
    return paramView;
  }
}

/* Location:
 * Qualified Name:     eeh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */