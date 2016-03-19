import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class iaz
  extends ime
  implements DialogInterface.OnClickListener
{
  private iad aj;
  private hpz ak;
  private jto al;
  
  public static void a(bg parambg, String paramString, int[] paramArrayOfInt, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localBundle.putIntArray("account_ids", paramArrayOfInt);
    localBundle.putBoolean("add_account_enabled", paramBoolean);
    paramString = new iaz();
    paramString.setArguments(localBundle);
    paramString.a(parambg, "account.selector");
  }
  
  public Dialog a(Bundle paramBundle)
  {
    ContextThemeWrapper localContextThemeWrapper = new ContextThemeWrapper(getActivity(), aal.uv);
    paramBundle = getArguments();
    String str = paramBundle.getString("title");
    int[] arrayOfInt = paramBundle.getIntArray("account_ids");
    boolean bool = paramBundle.getBoolean("add_account_enabled");
    paramBundle = this;
    if (al != null) {
      paramBundle = al.a(this, "AccountSelection");
    }
    return new AlertDialog.Builder(localContextThemeWrapper).setTitle(str).setAdapter(new iay(localContextThemeWrapper, arrayOfInt, bool), paramBundle).setCancelable(false).create();
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((iad)an.a(iad.class));
    ak = ((hpz)an.a(hpz.class));
    al = ((jto)an.b(jto.class));
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    aj.c();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = getArguments().getIntArray("account_ids");
    boolean bool = getArguments().getBoolean("add_account_enabled");
    paramDialogInterface = (iad)an.a(iad.class);
    int i;
    if ((bool) && (paramInt == localObject.length)) {
      i = 1;
    }
    while (i == 0)
    {
      paramInt = localObject[paramInt];
      if (!ak.c(paramInt))
      {
        paramDialogInterface.c();
        return;
        i = 0;
      }
      else
      {
        localObject = ak.a(paramInt);
        paramDialogInterface.a(((hqb)localObject).b("account_name"), ((hqb)localObject).b("effective_gaia_id"));
        return;
      }
    }
    paramDialogInterface.b();
  }
  
  public void onStart()
  {
    super.onStart();
    Object localObject2 = c();
    if (localObject2 == null) {
      return;
    }
    Object localObject1 = getResources();
    ((AlertDialog)localObject2).getListView().setDivider(null);
    Object localObject3 = ((Dialog)localObject2).findViewById(((Resources)localObject1).getIdentifier("titleDivider", "id", "android"));
    if (localObject3 != null) {
      ((View)localObject3).setVisibility(8);
    }
    localObject2 = ((Dialog)localObject2).findViewById(((Resources)localObject1).getIdentifier("title_template", "id", "android"));
    int j;
    int i;
    if (localObject2 != null)
    {
      ((View)localObject2).setBackgroundColor(((Resources)localObject1).getColor(StressMode.tZ));
      localObject3 = (LinearLayout.LayoutParams)((View)localObject2).getLayoutParams();
      if (Build.VERSION.SDK_INT < 17) {
        break label197;
      }
      j = ((LinearLayout.LayoutParams)localObject3).getMarginStart();
      i = ((LinearLayout.LayoutParams)localObject3).getMarginEnd();
      ((LinearLayout.LayoutParams)localObject3).setMarginStart(0);
      ((LinearLayout.LayoutParams)localObject3).setMarginEnd(0);
    }
    for (;;)
    {
      ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      ((View)localObject2).setPadding(j, ((View)localObject2).getPaddingTop(), i, ((View)localObject2).getPaddingBottom());
      i = ((Resources)localObject1).getIdentifier("alertTitle", "id", "android");
      localObject1 = (TextView)c().findViewById(i);
      if (localObject1 == null) {
        break;
      }
      ((TextView)localObject1).setTypeface(null, 1);
      return;
      label197:
      j = leftMargin;
      i = rightMargin;
      ((LinearLayout.LayoutParams)localObject3).setMargins(0, topMargin, 0, bottomMargin);
    }
  }
}

/* Location:
 * Qualified Name:     iaz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */