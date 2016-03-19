import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

public abstract class hpj<T extends ListAdapter>
  extends au
{
  private T aj;
  
  public static int a(Context paramContext)
  {
    paramContext = (WindowManager)paramContext.getSystemService("window");
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getDefaultDisplay().getMetrics(localDisplayMetrics);
    return (int)(widthPixels / density);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(0);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    aj = t();
    switch (q())
    {
    default: 
      int i = q();
      throw new IllegalStateException(36 + "Unsupported layout type: " + i);
    case 0: 
      paramLayoutInflater = paramLayoutInflater.inflate(aal.tm, paramViewGroup, false);
      paramViewGroup = (ListView)paramLayoutInflater.findViewById(aen.ke);
      paramViewGroup.setAdapter(aj);
      paramViewGroup.setOnItemClickListener(s());
    }
    for (;;)
    {
      paramViewGroup = r();
      paramBundle = (TextView)paramLayoutInflater.findViewById(aen.kg);
      if (!TextUtils.isEmpty(paramViewGroup)) {
        break;
      }
      paramBundle.setVisibility(8);
      return paramLayoutInflater;
      paramLayoutInflater = paramLayoutInflater.inflate(aal.tl, paramViewGroup, false);
      paramViewGroup = (GridView)paramLayoutInflater.findViewById(aen.kd);
      paramViewGroup.setAdapter(aj);
      paramViewGroup.setOnItemClickListener(s());
      continue;
      paramLayoutInflater = paramLayoutInflater.inflate(aal.tk, paramViewGroup, false);
    }
    paramBundle.setText(paramViewGroup);
    paramBundle.setVisibility(0);
    return paramLayoutInflater;
  }
  
  public void onStart()
  {
    super.onStart();
    Window localWindow = c().getWindow();
    if ((q() == 2) && (a(getActivity()) > 600)) {}
    for (int i = -2;; i = -1)
    {
      localWindow.setLayout(i, -2);
      c().getWindow().setBackgroundDrawableResource(17170443);
      c().getWindow().setGravity(81);
      c().getWindow().setWindowAnimations(aal.tp);
      return;
    }
  }
  
  public abstract int q();
  
  public abstract String r();
  
  public abstract AdapterView.OnItemClickListener s();
  
  public abstract T t();
  
  public T u()
  {
    return aj;
  }
}

/* Location:
 * Qualified Name:     hpj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */