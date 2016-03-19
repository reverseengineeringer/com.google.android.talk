import android.content.Intent;
import android.text.TextUtils;
import android.widget.ArrayAdapter;
import com.google.android.apps.hangouts.phone.DebugActivity.RecordingService;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public final class dfm
  implements Runnable
{
  public dfm(eao parameao, Intent paramIntent) {}
  
  public void run()
  {
    Intent localIntent = (Intent)a.clone();
    localIntent.putExtra("___time", DebugActivity.RecordingService.d.format(new Date()));
    b.a.c.add(localIntent);
    if (((b.a.e == null) || (TextUtils.equals(localIntent.getStringExtra("conversation_id"), b.a.e))) && (b.a.b != null))
    {
      b.a.b.add(localIntent);
      b.a.b.notifyDataSetChanged();
    }
    while (b.a.c.size() > 1000)
    {
      localIntent = (Intent)b.a.c.remove(0);
      if (b.a.b != null) {
        b.a.b.remove(localIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */