import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

public class btk
  extends img
  implements bmv
{
  public boolean a()
  {
    if (!aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), bhh.f))
    {
      Toast.makeText(context, aal.kl, 0).show();
      return false;
    }
    return true;
  }
  
  public boolean b()
  {
    return false;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(aal.kP, paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     btk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */