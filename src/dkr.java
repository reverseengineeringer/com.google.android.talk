import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public final class dkr
  extends img
{
  String a;
  TextView b;
  Button c;
  bfd d;
  boolean e;
  djw f;
  haw g;
  private View h = null;
  private EditText i;
  
  protected boolean a(int paramInt)
  {
    String str;
    if (paramInt == gbi.g)
    {
      str = i.getText().toString();
      if (str.length() < 4)
      {
        c.setVisibility(8);
        b.setVisibility(0);
      }
    }
    else
    {
      return false;
    }
    g.a(2196).d();
    if (f != null) {
      f.a(str);
    }
    return true;
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    int j = ((hpu)binder.a(hpu.class)).a();
    d = dvd.e(j);
    g = ((hba)binder.a(hba.class)).a(j);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e = getArguments().getBoolean("set_discoverability", true);
    a = getArguments().getString("phone_number", "");
    f = ((djw)binder.b(djw.class));
    h = paramLayoutInflater.inflate(aal.oR, paramViewGroup, false);
    i = ((EditText)h.findViewById(gbi.r));
    b = ((TextView)h.findViewById(gbi.p));
    c = ((Button)h.findViewById(gbi.t));
    c.getCompoundDrawables()[0].setAlpha(128);
    c.setOnClickListener(new dks(this));
    i.addTextChangedListener(new dkt(this));
    i.setOnFocusChangeListener(new dku(this));
    return h;
  }
  
  public void onResume()
  {
    i.requestFocus();
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     dkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */