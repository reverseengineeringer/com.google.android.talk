import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.widget.EditText;
import android.widget.TextView;

@Deprecated
public class bxq
  extends ime
  implements DialogInterface.OnClickListener
{
  public EditText aj;
  private bxr ak;
  
  public static bxq a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Bundle localBundle = new Bundle();
    if (paramString1 != null) {
      localBundle.putString("title", paramString1);
    }
    localBundle.putString("message", paramString2);
    if (paramString3 != null) {
      localBundle.putString("positive", paramString3);
    }
    if (paramString4 != null) {
      localBundle.putString("negative", paramString4);
    }
    paramString1 = new bxq();
    paramString1.setArguments(localBundle);
    return paramString1;
  }
  
  private bxr q()
  {
    if (ak != null) {
      return ak;
    }
    Object localObject = getTargetFragment();
    if ((localObject != null) && ((localObject instanceof bxr))) {
      return (bxr)localObject;
    }
    localObject = getActivity();
    if ((localObject != null) && ((localObject instanceof bxr))) {
      return (bxr)localObject;
    }
    return null;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = getArguments();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    if (paramBundle.containsKey("title")) {
      localBuilder.setTitle(paramBundle.getString("title"));
    }
    localBuilder.setMessage(Html.fromHtml(paramBundle.getString("message")));
    if (paramBundle.containsKey("positive")) {
      localBuilder.setPositiveButton(paramBundle.getString("positive"), this);
    }
    if (paramBundle.containsKey("negative")) {
      localBuilder.setNegativeButton(paramBundle.getString("negative"), this);
    }
    if (paramBundle.containsKey("neutral")) {
      localBuilder.setNeutralButton(paramBundle.getString("neutral"), this);
    }
    if (paramBundle.containsKey("edit_text"))
    {
      aj = new EditText(getActivity());
      aj.setText(paramBundle.getString("edit_text"));
      localBuilder.setView(aj);
    }
    return localBuilder.create();
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = q();
    if (paramDialogInterface != null)
    {
      getArguments();
      paramDialogInterface.c(getTag());
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = q();
    if (paramDialogInterface == null) {
      return;
    }
    Bundle localBundle = getArguments();
    if ((localBundle.containsKey("edit_text")) && (aj != null)) {
      localBundle.putString("edit_text", aj.getText().toString());
    }
    switch (paramInt)
    {
    default: 
      return;
    case -3: 
      getArguments();
      getTag();
      return;
    case -1: 
      paramDialogInterface.a(getArguments(), getTag());
      return;
    }
    getArguments();
    paramDialogInterface.b(getTag());
  }
  
  public void onStart()
  {
    super.onStart();
    ((TextView)c().findViewById(16908299)).setMovementMethod(LinkMovementMethod.getInstance());
  }
}

/* Location:
 * Qualified Name:     bxq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */