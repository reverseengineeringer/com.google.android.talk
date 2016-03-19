import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.phone.DebugActivity.RecordingService;

public final class dfk
  implements ServiceConnection
{
  public dfk(DebugActivity paramDebugActivity) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = (dfn)paramIBinder;
    a.e = paramComponentName.a();
    a.d.setOnItemClickListener(new dfb(a));
    a.d.setOnItemLongClickListener(new dfc(a));
    a.f = a.b();
    a.e.a(a.f, null);
    a.d.setAdapter(a.f);
    a.d.setSelection(a.f.getCount() - 1);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    a.e.a(null, null);
    a.e = null;
  }
}

/* Location:
 * Qualified Name:     dfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */