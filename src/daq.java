import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.google.android.apps.hangouts.peoplelistv2.impl.DeleteOnEmptyEditText;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;
import com.google.android.apps.hangouts.peoplelistv2.impl.ScrollViewCustom;

public final class daq
  implements View.OnClickListener
{
  public daq(EditParticipantsView paramEditParticipantsView) {}
  
  public void onClick(View paramView)
  {
    int i = a.d.indexOfChild(paramView);
    Object localObject = paramView.getTag();
    if (i == -1)
    {
      a.g = null;
      localObject = a;
      e.post(new dan((EditParticipantsView)localObject));
    }
    for (;;)
    {
      a.a();
      ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      if (a.g != null) {
        a.c.requestChildFocus(a.g, a.g);
      }
      return;
      if (localObject != null) {
        a.g = paramView;
      }
    }
  }
}

/* Location:
 * Qualified Name:     daq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */