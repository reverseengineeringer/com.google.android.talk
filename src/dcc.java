import android.app.Activity;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class dcc
  extends img
{
  axq a;
  EditText b;
  private dbh c;
  private final TextWatcher d = new dce(this);
  
  public void a(LayoutInflater paramLayoutInflater, Toolbar paramToolbar)
  {
    paramToolbar.b("");
    paramToolbar.setPadding(paramToolbar.getPaddingLeft(), 0, paramToolbar.getPaddingRight(), 0);
    paramToolbar.setBackgroundResource(aal.of);
    paramLayoutInflater = (FrameLayout)paramLayoutInflater.inflate(aal.oz, paramToolbar, false);
    paramToolbar.addView(paramLayoutInflater);
    b = ((EditText)paramLayoutInflater.findViewById(StressMode.tS));
    b.addTextChangedListener(d);
    b.setOnFocusChangeListener(new dcd(this));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (Build.VERSION.SDK_INT >= 21) {
      paramActivity.getWindow().setStatusBarColor(getResources().getColor(aal.oe));
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    setHasOptionsMenu(true);
    paramLayoutInflater = paramLayoutInflater.inflate(aal.oy, paramViewGroup, false);
    c = ((dbh)getChildFragmentManager().a(dbh.class.getName()));
    if (c == null)
    {
      c = new dbh();
      getChildFragmentManager().a().a(StressMode.tN, c, dbh.class.getName()).b();
    }
    a = new axq();
    c.a(a);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     dcc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */