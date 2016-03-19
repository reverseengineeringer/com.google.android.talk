import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Toast;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class dez
  implements AdapterView.OnItemLongClickListener
{
  dez(DebugActivity paramDebugActivity) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (dfl)paramAdapterView.getItemAtPosition(paramInt);
    paramAdapterView = DebugActivity.a(a, b);
    paramView = a;
    ((ClipboardManager)paramView.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text", paramAdapterView));
    Toast.makeText(paramView, "Copied to clipboard", 0).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     dez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */