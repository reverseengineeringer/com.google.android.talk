import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.google.android.libraries.quantum.snackbar.Snackbar;

public final class dke
  extends dlv
{
  dkj a;
  private boolean aj;
  private String ak;
  private bfd al;
  dkr b;
  dkp c;
  private int d;
  private View e;
  private Button f;
  private Button g;
  private boolean h;
  private String i;
  
  public dke()
  {
    super(aal.oM, new int[] { gbi.f, gbi.g });
  }
  
  private void b()
  {
    bz localbz = getActivity().C_().a();
    boolean bool1;
    Object localObject1;
    Object localObject2;
    if (d == 1)
    {
      bool1 = h;
      boolean bool2 = aj;
      localObject1 = new dkj();
      localObject2 = new Bundle();
      ((Bundle)localObject2).putBoolean("from_settings", bool1);
      ((Bundle)localObject2).putBoolean("set_discoverability", bool2);
      ((dkj)localObject1).setArguments((Bundle)localObject2);
      a = ((dkj)localObject1);
      localbz.b(gbi.j, a);
    }
    for (;;)
    {
      localbz.b();
      c();
      return;
      Bundle localBundle;
      if (d == 2)
      {
        localObject1 = i;
        bool1 = aj;
        localObject2 = new dkr();
        localBundle = new Bundle();
        localBundle.putBoolean("set_discoverability", bool1);
        localBundle.putString("phone_number", (String)localObject1);
        ((dkr)localObject2).setArguments(localBundle);
        b = ((dkr)localObject2);
        localbz.b(gbi.j, b);
      }
      else if (d == 3)
      {
        localObject1 = i;
        localObject2 = new dkp();
        localBundle = new Bundle();
        localBundle.putString("phone_number", (String)localObject1);
        ((dkp)localObject2).setArguments(localBundle);
        c = ((dkp)localObject2);
        localbz.b(gbi.j, c);
      }
    }
  }
  
  private void c()
  {
    Snackbar localSnackbar = (Snackbar)e.findViewById(gbi.h);
    localSnackbar.setVisibility(8);
    if (d == 1)
    {
      localSnackbar.a(Html.fromHtml(getActivity().getString(aal.pb, new Object[] { ak })));
      localSnackbar.setVisibility(0);
      if (h)
      {
        g.setText(aal.oS);
        f.setText(aal.oU);
      }
    }
    do
    {
      return;
      g.setText(aal.pc);
      break;
      if (d == 2)
      {
        g.setText(aal.oS);
        f.setText(aal.pf);
        return;
      }
    } while (d != 3);
    f.setText(aal.oX);
  }
  
  protected String a()
  {
    if (d == 1) {
      return getString(aal.oY);
    }
    if (d == 2) {
      return getString(aal.oT);
    }
    if (d == 3) {
      return getString(aal.pg);
    }
    return "";
  }
  
  protected void a(int paramInt)
  {
    if (d == 1) {
      if (paramInt == gbi.g)
      {
        if (a.a(paramInt))
        {
          i = a.a();
          d = 2;
        }
        b();
      }
    }
    label46:
    label170:
    do
    {
      do
      {
        do
        {
          do
          {
            break label46;
            break label46;
            do
            {
              return;
            } while (paramInt != gbi.f);
            bff.d(getContext(), al);
            if (h)
            {
              getActivity().finish();
              return;
            }
            aal.a(al, 2684);
            super.a(paramInt);
            return;
            if (d != 2) {
              break label170;
            }
            if (paramInt != gbi.g) {
              break;
            }
          } while (!b.a(paramInt));
          bff.d(getContext(), al);
          d = 3;
          b();
          return;
        } while (paramInt != gbi.f);
        aal.a(al, 2407);
        d = 1;
        b();
        return;
      } while (d != 3);
      if (paramInt == gbi.g)
      {
        c.a(paramInt);
        d = 1;
        if (h)
        {
          getActivity().finish();
          return;
        }
        super.a(paramInt);
        return;
      }
    } while (paramInt != gbi.f);
    d = 2;
    b();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramBundle != null) {}
    for (Object localObject = paramBundle;; localObject = getArguments())
    {
      d = ((Bundle)localObject).getInt("current_step");
      i = ((Bundle)localObject).getString("phone_number");
      h = ((Bundle)localObject).getBoolean("from_settings");
      aj = ((Bundle)localObject).getBoolean("set_discoverability");
      localObject = (hpu)binder.a(hpu.class);
      al = dvd.e(((hpu)localObject).a());
      ak = ((hpu)localObject).c().b("account_name");
      localObject = (djw)binder.b(djw.class);
      if ((localObject != null) && (((djw)localObject).b() == 101) && (paramBundle == null))
      {
        d = 2;
        i = ((djw)localObject).c();
      }
      e = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
      g = ((Button)e.findViewById(gbi.f));
      f = ((Button)e.findViewById(gbi.g));
      if (paramBundle != null) {
        break;
      }
      b();
      return e;
    }
    paramLayoutInflater = getActivity().C_();
    if (d == 1) {
      a = ((dkj)paramLayoutInflater.a(gbi.j));
    }
    for (;;)
    {
      c();
      break;
      if (d == 2) {
        b = ((dkr)paramLayoutInflater.a(gbi.j));
      } else if (d == 3) {
        c = ((dkp)paramLayoutInflater.a(gbi.j));
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("current_step", d);
    paramBundle.putString("phone_number", i);
    paramBundle.putBoolean("from_settings", h);
    paramBundle.putBoolean("set_discoverability", aj);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     dke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */