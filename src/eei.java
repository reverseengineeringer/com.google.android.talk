import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.realtimechat.wakelock.impl.DebugWakelocksActivity;
import java.util.LinkedHashMap;

public final class eei
  implements AdapterView.OnItemClickListener
{
  eei(DebugWakelocksActivity paramDebugWakelocksActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new eej(this, (Intent)getItemAtPositiona);
    paramView = a.getLayoutInflater().inflate(aen.jS, null);
    ((ListView)paramView.findViewById(16908298)).setAdapter(new eek(a, aen.b(paramAdapterView.keySet()), aen.b(paramAdapterView.values())));
    new AlertDialog.Builder(a).setView(paramView).show();
  }
}

/* Location:
 * Qualified Name:     eei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */