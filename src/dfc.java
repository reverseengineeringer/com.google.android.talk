import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Toast;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dfc
  implements AdapterView.OnItemLongClickListener
{
  dfc(DebugActivity paramDebugActivity) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (Intent)paramAdapterView.getItemAtPosition(paramInt);
    paramAdapterView = a;
    paramView = RealTimeChatService.a(paramView, a.g);
    ((ClipboardManager)paramAdapterView.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text", paramView));
    Toast.makeText(paramAdapterView, "Copied to clipboard", 0).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     dfc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */