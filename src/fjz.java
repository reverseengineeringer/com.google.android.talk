import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public final class fjz
  extends av
  implements DialogInterface.OnCancelListener
{
  private boolean a;
  private boolean b;
  private int c = -1;
  private ConnectionResult d;
  private final Handler e = new Handler(Looper.getMainLooper());
  private final SparseArray<fka> f = new SparseArray();
  
  public static fjz a(ba paramba)
  {
    aal.w("Must be called from main thread of process");
    paramba = paramba.C_();
    try
    {
      fjz localfjz = (fjz)paramba.a("GmsSupportLifecycleFragment");
      if (localfjz != null)
      {
        paramba = localfjz;
        if (!localfjz.isRemoving()) {}
      }
      else
      {
        paramba = null;
      }
      return paramba;
    }
    catch (ClassCastException paramba)
    {
      throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", paramba);
    }
  }
  
  private void a()
  {
    b = false;
    c = -1;
    d = null;
    int i = 0;
    while (i < f.size())
    {
      f.valueAt(i)).b.b();
      i += 1;
    }
  }
  
  private void a(int paramInt, ConnectionResult paramConnectionResult)
  {
    Object localObject = (fka)f.get(paramInt);
    if (localObject != null)
    {
      fka localfka = (fka)f.get(paramInt);
      f.remove(paramInt);
      if (localfka != null) {
        localfka.a();
      }
      localObject = c;
      if (localObject != null) {
        ((fih)localObject).a(paramConnectionResult);
      }
    }
    a();
  }
  
  public static fjz b(ba paramba)
  {
    fjz localfjz = a(paramba);
    bg localbg = paramba.C_();
    paramba = localfjz;
    if (localfjz == null)
    {
      paramba = new fjz();
      localbg.a().a(paramba, "GmsSupportLifecycleFragment").c();
      localbg.b();
    }
    return paramba;
  }
  
  public void a(int paramInt, fic paramfic, fih paramfih)
  {
    aal.b(paramfic, "GoogleApiClient instance cannot be null");
    if (f.indexOfKey(paramInt) < 0) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "Already managing a GoogleApiClient with id " + paramInt);
      paramfih = new fka(this, paramInt, paramfic, paramfih);
      f.put(paramInt, paramfih);
      if ((a) && (!b)) {
        paramfic.b();
      }
      return;
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    int i = 0;
    while (i < f.size())
    {
      ((fka)f.valueAt(i)).a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      i += 1;
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
    a(c, d);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a(c, new ConnectionResult(13, null));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      b = paramBundle.getBoolean("resolving_error", false);
      c = paramBundle.getInt("failed_client_id", -1);
      if (c >= 0) {
        d = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", b);
    if (c >= 0)
    {
      paramBundle.putInt("failed_client_id", c);
      paramBundle.putInt("failed_status", d.c());
      paramBundle.putParcelable("failed_resolution", d.d());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    a = true;
    if (!b)
    {
      int i = 0;
      while (i < f.size())
      {
        f.valueAt(i)).b.b();
        i += 1;
      }
    }
  }
  
  public void onStop()
  {
    super.onStop();
    a = false;
    int i = 0;
    while (i < f.size())
    {
      f.valueAt(i)).b.d();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     fjz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */