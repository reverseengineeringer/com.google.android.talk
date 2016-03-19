import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsFragment;

final class epw
  implements View.OnClickListener
{
  epw(epv paramepv) {}
  
  public void onClick(View paramView)
  {
    paramView = a.e.getText().toString();
    int i = paramView.codePointCount(0, paramView.length());
    if (i > 140)
    {
      String str = String.valueOf("The status message cannot exceed the maximum character count of 140. Was ");
      hbs.a(String.valueOf(str).length() + 11 + str + i);
    }
    paramView = paramView.replace('\n', ' ').replace('\r', ' ');
    if (paramView.isEmpty()) {}
    for (i = 1936;; i = 1935)
    {
      aal.a(a.c, i);
      byi.a(new epz(a, a.a, paramView), new byk(a.b.getFragmentManager())).a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     epw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */