import android.animation.Animator;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.HashMap;
import java.util.Map;

public final class ikv
  extends au
{
  public View aj;
  public Animator ak;
  public boolean al;
  
  public static ikv a(String paramString1, String paramString2, av paramav)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString1);
    if (paramString2 != null) {
      localBundle.putString("submessage", paramString2);
    }
    localBundle.putBoolean("is_animated", true);
    paramString1 = new ikv();
    paramString1.setArguments(localBundle);
    paramString1.b(false);
    paramString1.setTargetFragment(paramav, 0);
    return paramString1;
  }
  
  private void q()
  {
    if (ak == null)
    {
      HashMap localHashMap = new HashMap(3);
      localHashMap.put("LEFT 1", aj.findViewById(StressMode.ua));
      localHashMap.put("CENTER 1", aj.findViewById(StressMode.ub));
      localHashMap.put("RIGHT 1", aj.findViewById(StressMode.uc));
      if (hti.a == null) {
        hti.a = new hti();
      }
      ak = hti.a.a(getActivity(), aal.uX, localHashMap);
      ak.addListener(new ikw(this));
    }
    if (ak.isStarted()) {
      ak.cancel();
    }
    ak.start();
  }
  
  private boolean r()
  {
    getActivity();
    if (Build.VERSION.SDK_INT >= 14) {}
    for (int i = 1; (i != 0) && (getArguments().getBoolean("is_animated")); i = 0) {
      return true;
    }
    return false;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    Bundle localBundle = getArguments();
    if (r()) {
      return super.a(paramBundle);
    }
    paramBundle = new ProgressDialog(getActivity());
    if (localBundle.containsKey("title")) {
      paramBundle.setTitle(localBundle.getString("title"));
    }
    paramBundle.setMessage(localBundle.getString("message"));
    paramBundle.setCanceledOnTouchOutside(e());
    paramBundle.setProgressStyle(0);
    return paramBundle;
  }
  
  public void a(bg parambg, String paramString)
  {
    try
    {
      super.a(parambg, paramString);
      return;
    }
    catch (IllegalStateException parambg) {}
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    if ((getTargetFragment() instanceof ikx)) {
      getArguments();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (r()) {
      a(d());
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (!r()) {
      return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    }
    aj = paramLayoutInflater.inflate(aal.uV, null);
    paramLayoutInflater = (TextView)aj.findViewById(StressMode.ud);
    paramViewGroup = getArguments().getString("message");
    paramLayoutInflater.setText(paramViewGroup);
    paramLayoutInflater.setContentDescription(paramViewGroup);
    paramLayoutInflater = (TextView)aj.findViewById(StressMode.ue);
    paramViewGroup = getArguments().getString("submessage");
    if (!TextUtils.isEmpty(paramViewGroup))
    {
      paramLayoutInflater.setText(paramViewGroup);
      paramLayoutInflater.setContentDescription(paramViewGroup);
      paramLayoutInflater.setVisibility(0);
    }
    q();
    return aj;
  }
  
  public void onPause()
  {
    super.onPause();
    al = true;
    if ((ak != null) && (ak.isStarted())) {
      ak.cancel();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    al = false;
    if ((ak != null) && (!ak.isStarted())) {
      q();
    }
  }
}

/* Location:
 * Qualified Name:     ikv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */