import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;

public final class bwf
  extends dlv
{
  private View a;
  
  public bwf()
  {
    super(aal.lh, new int[] { aal.lg });
  }
  
  protected String a()
  {
    return getString(aal.li);
  }
  
  protected void a(int paramInt)
  {
    int i = ((hpu)binder.a(hpu.class)).a();
    bfd localbfd = dvd.e(i);
    bff.a(getContext(), localbfd);
    if (((CheckBox)a.findViewById(aal.lf)).isChecked()) {
      ((ekh)binder.a(ekh.class)).b(i);
    }
    super.a(paramInt);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((Button)a.findViewById(aal.lg)).setText(17039370);
    return a;
  }
}

/* Location:
 * Qualified Name:     bwf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */