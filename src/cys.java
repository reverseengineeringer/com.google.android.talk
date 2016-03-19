import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class cys
  extends dlv
{
  public static final List<String> b = new ArrayList(Arrays.asList(new String[] { "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS" }));
  int a;
  
  public cys()
  {
    super(aal.nP, new int[] { fkr.e, fkr.f });
  }
  
  protected String a()
  {
    return getString(aal.nS);
  }
  
  protected void a(int paramInt)
  {
    a = paramInt;
    PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("contacts_rationale_shown", true).apply();
    if (paramInt == fkr.f)
    {
      ((dck)binder.a(dck.class)).a(new dco(fkr.c, 2654), b);
      return;
    }
    super.a(paramInt);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((dck)binder.a(dck.class)).a(fkr.c, new cyt(this));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((Button)paramLayoutInflater.findViewById(fkr.e)).setText(aal.nT);
    ((Button)paramLayoutInflater.findViewById(fkr.f)).setText(aal.nR);
    aal.a((ImageView)paramLayoutInflater.findViewById(fkr.d), context.getResources(), aal.nQ);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     cys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */