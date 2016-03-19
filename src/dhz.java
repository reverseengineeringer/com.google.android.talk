import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;

public final class dhz
  extends au
{
  private Dialog aj;
  
  public static dhz a(int paramInt1, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("error_code", paramInt1);
    localBundle.putInt("request_code", 1001);
    dhz localdhz = new dhz();
    localdhz.setArguments(localBundle);
    return localdhz;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    int i = getArguments().getInt("error_code");
    int j = getArguments().getInt("request_code");
    aj = fhr.a(i, getActivity(), j);
    return aj;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (aj == null) {
      f();
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a();
    getActivity().finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     dhz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */