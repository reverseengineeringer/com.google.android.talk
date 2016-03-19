import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public final class fae
  extends ezz
  implements DialogInterface.OnClickListener
{
  private faa aj;
  
  public static ezz a(String paramString, List<fac> paramList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localBundle.putSerializable("list", new ArrayList(paramList));
    paramString = new fae();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = getArguments();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(am);
    localBuilder.setTitle(paramBundle.getString("title"));
    localBuilder.setAdapter(new faf(this, am, (List)paramBundle.getSerializable("list")), this);
    return localBuilder.create();
  }
  
  public void a(faa paramfaa)
  {
    hbs.a("Listener should be set only once", aj);
    aj = paramfaa;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    aj.a();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aj.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     fae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */