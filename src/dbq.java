import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;

final class dbq
  implements View.OnClickListener
{
  dbq(dbh paramdbh) {}
  
  public void onClick(View paramView)
  {
    a.ap.a("click_contact_list");
    Object localObject = (fck)a.getBinder().b(fck.class);
    fce localfce = (fce)paramView;
    bdy localbdy = localfce.a();
    int j = localbdy.r();
    int i;
    if (j != bdz.a)
    {
      i = 2572;
      if (j == bdz.c)
      {
        i = 2571;
        aal.a(a.f, i);
      }
    }
    else
    {
      if (localObject == null) {
        break label112;
      }
      ((fck)localObject).a(localfce);
    }
    for (;;)
    {
      return;
      if (j != bdz.d) {
        break;
      }
      i = 2570;
      break;
      label112:
      localObject = (InputMethodManager)a.getContext().getSystemService("input_method");
      if (((InputMethodManager)localObject).isActive()) {}
      for (boolean bool = ((InputMethodManager)localObject).hideSoftInputFromWindow(paramView.getWindowToken(), 0, new dbr(this, new Handler(), localbdy)); !bool; bool = false)
      {
        dbh.a(a, localbdy);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     dbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */