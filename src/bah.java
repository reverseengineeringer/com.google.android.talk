import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.libraries.social.settings.PreferenceCategory;
import java.util.Iterator;

public final class bah
  implements azm, ioq, ioz
{
  String a;
  Context b;
  int c;
  azr d;
  baz e;
  BroadcastReceiver f;
  ProgressDialog g;
  NetworkInfo h;
  bba i;
  
  public void a(ba paramba, iog paramiog, PreferenceCategory paramPreferenceCategory, int paramInt)
  {
    if (!aal.a(paramba, paramInt)) {
      return;
    }
    b = paramba;
    e = new baz(b);
    e.c(b.getString(aal.iP));
    paramPreferenceCategory.c(e);
    h = ((ConnectivityManager)paramba.getSystemService("connectivity")).getActiveNetworkInfo();
    i = new bba(b, paramInt);
    a = ezm.f();
    c = paramInt;
    d = new bai(this, paramba);
    paramba.f().b(1, null, new bao(this)).u();
    paramiog.a(this);
  }
  
  void a(String paramString)
  {
    i.a(2246);
    g = ProgressDialog.show(b, "", b.getString(aal.iB), true);
    f = new ban(this);
    fi.a(b).a(f, new IntentFilter("set_callerid_outcome"));
    ((azk)ilh.b(b, azk.class)).a(c, false, paramString);
  }
  
  void a(kth<String> paramkth)
  {
    String[] arrayOfString = new String[paramkth.size()];
    paramkth = paramkth.a();
    int j = 0;
    while (paramkth.hasNext())
    {
      arrayOfString[j] = ezm.p((String)paramkth.next());
      j += 1;
    }
    new AlertDialog.Builder(b).setTitle(aal.iC).setItems(arrayOfString, new bal(this, arrayOfString)).setNegativeButton(17039360, null).show();
  }
  
  public void h_()
  {
    azq.a(c, d);
    if (f != null) {
      fi.a(b).a(f);
    }
  }
}

/* Location:
 * Qualified Name:     bah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */