import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

final class bar
  extends BroadcastReceiver
{
  bar(bap parambap) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a.e.setVisibility(8);
    if (paramIntent.getIntExtra("set_callerid_result", -1) == 0)
    {
      a.i.a(2256);
      a.f.setText(paramContext.getString(aal.iO));
      a.g.setText(paramContext.getString(aal.iM, new Object[] { ezm.o(a.d) }));
      a.b.setVisibility(8);
      a.a.setText(paramContext.getString(aal.iJ));
      a.a.setOnClickListener(new bas(this));
      a.f.sendAccessibilityEvent(32);
      return;
    }
    Toast.makeText(paramContext, paramContext.getString(aal.iI), 0).show();
    a.b.setText(paramContext.getString(aal.iK));
    a.a.setText(paramContext.getString(aal.iG));
  }
}

/* Location:
 * Qualified Name:     bar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */