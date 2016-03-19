import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import com.google.android.apps.hangouts.hangout.StressMode;

final class ekm
  implements ijg
{
  ekm(ekk paramekk) {}
  
  public boolean a(ijc paramijc, Object paramObject)
  {
    ekk localekk = a;
    boolean bool = aal.a((Boolean)paramObject, false);
    if (a.R())
    {
      paramObject = new AlertDialog.Builder(localekk.getActivity());
      if (bool) {
        ((AlertDialog.Builder)paramObject).setTitle(localekk.getString(StressMode.sa)).setMessage(localekk.getString(StressMode.rZ));
      }
      for (paramijc = localekk.getString(StressMode.rY);; paramijc = localekk.getString(StressMode.rV))
      {
        ((AlertDialog.Builder)paramObject).setCancelable(false).setNegativeButton(StressMode.U, null);
        ((AlertDialog.Builder)paramObject).setPositiveButton(paramijc, new ekn(localekk, bool));
        ((AlertDialog.Builder)paramObject).create().show();
        return false;
        ((AlertDialog.Builder)paramObject).setTitle(localekk.getString(StressMode.rX)).setMessage(localekk.getString(StressMode.rW));
      }
    }
    bff.b(localekk.getContext(), a, bool);
    return true;
  }
}

/* Location:
 * Qualified Name:     ekm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */