import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.Toast;
import com.google.android.apps.hangouts.phone.DebugActivity;
import java.util.Arrays;

public final class dfe
  implements View.OnLongClickListener
{
  dfe(DebugActivity paramDebugActivity, String[] paramArrayOfString) {}
  
  public boolean onLongClick(View paramView)
  {
    paramView = b;
    String str = Arrays.toString(a);
    ((ClipboardManager)paramView.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text", str));
    Toast.makeText(paramView, "Copied to clipboard", 0).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     dfe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */