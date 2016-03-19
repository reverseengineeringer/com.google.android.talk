import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public final class dkj
  extends img
{
  eho a;
  private boolean aj;
  private djw ak;
  private boolean al;
  awk b;
  String c;
  boolean d;
  haw e;
  private EditText f;
  private bfd g;
  private View h = null;
  private boolean i;
  
  public String a()
  {
    String str = ezm.b(f.getText().toString(), a.b);
    if (str != null) {
      c = str;
    }
    return c;
  }
  
  void a(boolean paramBoolean)
  {
    f = ((EditText)h.findViewById(gbi.q));
    Object localObject1;
    if (!TextUtils.isEmpty(c))
    {
      localObject1 = ezm.a(c);
      ??? = ezm.a(c, ezp.c);
      ??? = ((String)???).substring(((String)???).indexOf(' ') + 1);
      f.setText((CharSequence)???);
    }
    for (;;)
    {
      synchronized (ehn.a)
      {
        if (TextUtils.equals((CharSequence)localObject1, ehn.b))
        {
          a = ehn.a((String)localObject1);
          ??? = ehn.b();
          b = new awk((String)localObject1);
          f.addTextChangedListener(b);
          Object localObject4 = (EditText)h.findViewById(gbi.k);
          localObject1 = String.valueOf(a.c);
          if (((String)localObject1).length() == 0) {
            break label312;
          }
          localObject1 = "+".concat((String)localObject1);
          ((EditText)localObject4).setText((CharSequence)localObject1);
          localObject1 = new dko(this, getActivity(), (List)???);
          Spinner localSpinner = (Spinner)h.findViewById(gbi.l);
          localSpinner.setAdapter((SpinnerAdapter)localObject1);
          localSpinner.setPrompt(getActivity().getString(aal.oV));
          ((EditText)localObject4).setOnClickListener(new dkm(this, localSpinner));
          localSpinner.setOnItemSelectedListener(new dkn(this, (List)???, (EditText)localObject4));
          return;
          localObject4 = Locale.getDefault().getCountry();
          localSpinner = null;
          ??? = localSpinner;
          localObject1 = localObject4;
          if (!paramBoolean) {
            break;
          }
          e.a(1979).d();
          ??? = localSpinner;
          localObject1 = localObject4;
          break;
        }
        ehn.b = (String)localObject1;
        ehn.a();
      }
      label312:
      String str = new String("+");
    }
  }
  
  protected boolean a(int paramInt)
  {
    if (paramInt == gbi.g)
    {
      localObject = ezm.b(f.getText().toString(), a.b);
      if (localObject == null)
      {
        localObject = getActivity().getString(aal.oZ);
        localObject = Toast.makeText(getActivity(), (CharSequence)localObject, 0);
        ((Toast)localObject).setGravity(49, 0, 0);
        ((Toast)localObject).show();
      }
    }
    label180:
    while ((paramInt != gbi.f) || (i))
    {
      Object localObject;
      return false;
      if (!((String)localObject).equals(c))
      {
        c = ((String)localObject);
        e.a(1980).d();
      }
      e.a(2195).d();
      if (al)
      {
        if (!d) {
          break label180;
        }
        e.a(2632).d();
      }
      for (;;)
      {
        if (ak != null) {
          ak.a(c, g.a(), aj);
        }
        return true;
        e.a(2633).d();
      }
    }
    e.a(2683).d();
    return false;
  }
  
  String b()
  {
    Object localObject;
    if (ak == null) {
      localObject = "";
    }
    String str;
    do
    {
      do
      {
        return (String)localObject;
        str = ak.c();
        localObject = str;
      } while (!TextUtils.isEmpty(str));
      str = ezm.f();
      localObject = str;
    } while (!TextUtils.isEmpty(str));
    return ak.d();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((dck)binder.a(dck.class)).a(gbi.e, new dkk(this, paramBundle));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    i = getArguments().getBoolean("from_settings", false);
    aj = getArguments().getBoolean("set_discoverability", true);
    int j = ((hpu)binder.a(hpu.class)).a();
    g = dvd.e(j);
    ak = ((djw)binder.b(djw.class));
    e = ((hba)binder.a(hba.class)).a(j);
    label248:
    boolean bool;
    if (paramBundle == null)
    {
      e.a(2685).d();
      if (i)
      {
        e.a(1977).d();
        bff.d(context, g);
      }
    }
    else
    {
      h = paramLayoutInflater.inflate(aal.oP, paramViewGroup, false);
      paramLayoutInflater = (TextView)h.findViewById(gbi.m);
      if (!aj) {
        break label300;
      }
      paramLayoutInflater.setVisibility(0);
      paramViewGroup = aal.e("https://support.google.com/hangouts/answer/3116671?hl=%locale%", "phone_verification");
      paramViewGroup = getActivity().getString(aal.oW, new Object[] { paramViewGroup.toString() });
      aal.a(paramLayoutInflater, context, paramViewGroup);
      paramLayoutInflater.setOnClickListener(new dkl(this));
      if (!ezm.h()) {
        break label315;
      }
      c = b();
      if (paramBundle != null) {
        break label309;
      }
      bool = true;
      label269:
      a(bool);
    }
    for (;;)
    {
      return h;
      e.a(1596).d();
      break;
      label300:
      paramLayoutInflater.setVisibility(8);
      break label248;
      label309:
      bool = false;
      break label269;
      label315:
      if (paramBundle == null)
      {
        ((dck)binder.a(dck.class)).a(new dco(gbi.e, 2655), Collections.singletonList("android.permission.READ_PHONE_STATE"));
        al = true;
        e.a(2634).d();
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (f != null)
    {
      String str = ezm.b(f.getText().toString(), a.b);
      if ((str != null) && (ak != null)) {
        ak.b(str);
      }
    }
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     dkj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */