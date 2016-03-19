import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import com.google.android.apps.hangouts.quickreply.impl.QuickReplyActivity;

public final class duh
  implements View.OnClickListener
{
  public duh(QuickReplyActivity paramQuickReplyActivity, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    paramView = a.getText().toString().trim();
    b.a(paramView);
    ((InputMethodManager)b.getSystemService("input_method")).hideSoftInputFromWindow(b.m.getWindowToken(), 0);
    b.finish();
    paramView = b;
    if (q == 1)
    {
      j.b(k.a(o));
      j.a(k.a(paramView, n, o, 3));
    }
  }
}

/* Location:
 * Qualified Name:     duh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */