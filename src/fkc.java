import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;

public final class fkc
  extends av
  implements DialogInterface.OnCancelListener, ck<ConnectionResult>
{
  private boolean a;
  private int b = -1;
  private ConnectionResult c;
  private final Handler d = new Handler(Looper.getMainLooper());
  private final SparseArray<fke> e = new SparseArray();
  
  public static fkc a(ba paramba)
  {
    aal.w("Must be called from main thread of process");
    bg localbg = paramba.C_();
    try
    {
      fkc localfkc = (fkc)localbg.a("GmsSupportLoaderLifecycleFragment");
      if (localfkc != null)
      {
        paramba = localfkc;
        if (!localfkc.isRemoving()) {}
      }
      else
      {
        paramba = new fkc();
        localbg.a().a(paramba, "GmsSupportLoaderLifecycleFragment").b();
        localbg.b();
      }
      return paramba;
    }
    catch (ClassCastException paramba)
    {
      throw new IllegalStateException("Fragment with tag GmsSupportLoaderLifecycleFragment is not a SupportLoaderLifecycleFragment", paramba);
    }
  }
  
  private void a()
  {
    int i = 0;
    a = false;
    b = -1;
    c = null;
    cj localcj = getLoaderManager();
    while (i < e.size())
    {
      int j = e.keyAt(i);
      fkd localfkd = b(j);
      if ((localfkd != null) && (localfkd.c()))
      {
        localcj.a(j);
        localcj.a(j, null, this);
      }
      i += 1;
    }
  }
  
  private void a(int paramInt, ConnectionResult paramConnectionResult)
  {
    Object localObject = (fke)e.get(paramInt);
    if (localObject != null)
    {
      e.remove(paramInt);
      getLoaderManager().a(paramInt);
      localObject = b;
      if (localObject != null) {
        ((fih)localObject).a(paramConnectionResult);
      }
    }
    a();
  }
  
  private fkd b(int paramInt)
  {
    try
    {
      fkd localfkd = (fkd)getLoaderManager().b(paramInt);
      return localfkd;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new IllegalStateException("Unknown loader in SupportLoaderLifecycleFragment", localClassCastException);
    }
  }
  
  public fic a(int paramInt)
  {
    if (getActivity() != null)
    {
      fkd localfkd = b(paramInt);
      if (localfkd != null) {
        return a;
      }
    }
    return null;
  }
  
  public void a(int paramInt, fic paramfic, fih paramfih)
  {
    aal.b(paramfic, "GoogleApiClient instance cannot be null");
    if (e.indexOfKey(paramInt) < 0) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "Already managing a GoogleApiClient with id " + paramInt);
      paramfic = new fke(paramfic, paramfih);
      e.put(paramInt, paramfic);
      if (getActivity() != null)
      {
        cl.a = false;
        getLoaderManager().a(paramInt, null, this);
      }
      return;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 == 0) {
        break label66;
      }
      a();
      return;
      if (fhr.a(getActivity()) != 0) {
        break;
      }
      paramInt1 = i;
      continue;
      if (paramInt2 != -1) {
        break;
      }
      paramInt1 = i;
    }
    label66:
    a(b, c);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    int i = 0;
    if (i < e.size())
    {
      int j = e.keyAt(i);
      paramActivity = b(j);
      if ((paramActivity != null) && (e.valueAt(i)).a != a)) {
        getLoaderManager().b(j, null, this);
      }
      for (;;)
      {
        i += 1;
        break;
        getLoaderManager().a(j, null, this);
      }
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a(b, new ConnectionResult(13, null));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      a = paramBundle.getBoolean("resolving_error", false);
      b = paramBundle.getInt("failed_client_id", -1);
      if (b >= 0) {
        c = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      }
    }
  }
  
  public fe<ConnectionResult> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new fkd(getActivity(), e.get(paramInt)).a);
  }
  
  public void onLoaderReset(fe<ConnectionResult> paramfe) {}
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", a);
    if (b >= 0)
    {
      paramBundle.putInt("failed_client_id", b);
      paramBundle.putInt("failed_status", c.c());
      paramBundle.putParcelable("failed_resolution", c.d());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!a)
    {
      int i = 0;
      while (i < e.size())
      {
        getLoaderManager().a(e.keyAt(i), null, this);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     fkc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */