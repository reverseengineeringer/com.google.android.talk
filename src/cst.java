import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cst
  extends ikt
{
  private iad aj;
  
  static void a(Context paramContext, bg parambg, int paramInt1, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramContext.getString(paramInt1));
    localBundle.putString("message", paramContext.getString(paramInt2));
    localBundle.putString("positive", paramContext.getString(StressMode.he));
    localBundle.putString("negative", paramContext.getString(StressMode.hf));
    paramContext = new cst();
    paramContext.setArguments(localBundle);
    paramContext.a(parambg, "error");
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((iad)an.a(iad.class));
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    aj.c();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case -1: 
      aj.b();
      return;
    }
    aj.c();
  }
}

/* Location:
 * Qualified Name:     cst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */