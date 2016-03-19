import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Html;
import android.text.Spannable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public class ikt
  extends ime
  implements DialogInterface.OnClickListener, DialogInterface.OnMultiChoiceClickListener
{
  private iku aj;
  
  public static ikt a(String paramString1, CharSequence paramCharSequence, String paramString2, String paramString3, int paramInt)
  {
    return new ikt().a(paramString1, paramCharSequence, paramString2, paramString3, 0, 0, paramInt);
  }
  
  private iku r()
  {
    if (aj != null) {
      return aj;
    }
    if ((getTargetFragment() instanceof iku)) {
      return (iku)getTargetFragment();
    }
    if ((getActivity() instanceof iku)) {
      return (iku)getActivity();
    }
    return null;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    localObject1 = getArguments();
    Object localObject3 = q();
    if (((Bundle)localObject1).containsKey("theme"))
    {
      paramBundle = new re((Context)localObject3, ((Bundle)localObject1).getInt("theme"));
      if (((Bundle)localObject1).containsKey("title")) {
        paramBundle.a(((Bundle)localObject1).getString("title"));
      }
      if (((Bundle)localObject1).containsKey("message")) {
        localObject2 = ((Bundle)localObject1).getCharSequence("message");
      }
    }
    for (;;)
    {
      try
      {
        localObject3 = LayoutInflater.from((Context)localObject3).inflate(aal.uW, null);
        localTextView = (TextView)((View)localObject3).findViewById(StressMode.uf);
        if (localTextView != null)
        {
          if (!(localObject2 instanceof String)) {
            continue;
          }
          aal.a(localTextView, (Spannable)Html.fromHtml((String)localObject2));
        }
        paramBundle.b((View)localObject3);
      }
      catch (Exception localException)
      {
        TextView localTextView;
        Log.e("AlertFragmentDialog", "Cannot inflated view", localException);
        paramBundle.b((CharSequence)localObject2);
        continue;
        if (!((Bundle)localObject1).containsKey("icon")) {
          continue;
        }
        paramBundle.a(((Bundle)localObject1).getInt("icon"));
        continue;
        localObject1 = new boolean[localObject2.length];
        continue;
      }
      if (((Bundle)localObject1).containsKey("positive")) {
        paramBundle.a(((Bundle)localObject1).getString("positive"), this);
      }
      if (((Bundle)localObject1).containsKey("negative")) {
        paramBundle.b(((Bundle)localObject1).getString("negative"), this);
      }
      if ((!((Bundle)localObject1).containsKey("icon_attribute")) || (Build.VERSION.SDK_INT < 11)) {
        continue;
      }
      paramBundle.b(((Bundle)localObject1).getInt("icon_attribute"));
      if (((Bundle)localObject1).containsKey("list")) {
        paramBundle.a(((Bundle)localObject1).getStringArray("list"), this);
      }
      if (((Bundle)localObject1).containsKey("multi_choice_list"))
      {
        localObject2 = ((Bundle)localObject1).getStringArray("multi_choice_list");
        if (!((Bundle)localObject1).containsKey("multi_choice_list_states")) {
          continue;
        }
        localObject1 = ((Bundle)localObject1).getBooleanArray("multi_choice_list_states");
        paramBundle.a((CharSequence[])localObject2, (boolean[])localObject1, this);
      }
      return paramBundle.b();
      paramBundle = new re((Context)localObject3);
      break;
      if ((localObject2 instanceof Spannable)) {
        aal.a(localTextView, (Spannable)localObject2);
      }
    }
  }
  
  protected ikt a(String paramString1, CharSequence paramCharSequence, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3)
  {
    Bundle localBundle = new Bundle();
    if (paramString1 != null) {
      localBundle.putString("title", paramString1);
    }
    if (paramCharSequence != null) {
      localBundle.putCharSequence("message", paramCharSequence);
    }
    if (paramString2 != null) {
      localBundle.putString("positive", paramString2);
    }
    if (paramString3 != null) {
      localBundle.putString("negative", paramString3);
    }
    if (paramInt3 != 0) {
      localBundle.putInt("theme", paramInt3);
    }
    setArguments(localBundle);
    return this;
  }
  
  @Deprecated
  public void a(iku paramiku)
  {
    aj = paramiku;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = r();
    if (paramDialogInterface != null)
    {
      getArguments();
      getTag();
      paramDialogInterface.q();
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = r();
    if (paramDialogInterface != null) {}
    switch (paramInt)
    {
    default: 
      if ((getArguments().containsKey("list")) && (paramInt >= 0))
      {
        getTag();
        paramDialogInterface.r();
      }
      return;
    case -1: 
      getArguments();
      paramDialogInterface.b(getTag());
      return;
    }
    getArguments();
    getTag();
    paramDialogInterface.f();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt, boolean paramBoolean)
  {
    paramDialogInterface = r();
    if ((paramDialogInterface != null) && (getArguments().containsKey("multi_choice_list")) && (paramInt >= 0))
    {
      getTag();
      paramDialogInterface.s();
    }
  }
  
  public Context q()
  {
    return getActivity();
  }
}

/* Location:
 * Qualified Name:     ikt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */