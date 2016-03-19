import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public final class ewa
  extends av
{
  public void a(String paramString)
  {
    getArguments().putString("android.intent.extra.TITLE", paramString);
    if (getView() != null) {
      ((TextView)getView().findViewById(16908310)).setText(paramString);
    }
  }
  
  public void b(String paramString)
  {
    getArguments().putString("android.intent.extra.TEXT", paramString);
    if (getView() != null) {
      ((TextView)getView().findViewById(16908299)).setText(paramString);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.ri, paramViewGroup, false);
    ((TextView)paramLayoutInflater.findViewById(16908310)).setText(getArguments().getString("android.intent.extra.TITLE"));
    ((TextView)paramLayoutInflater.findViewById(16908299)).setText(getArguments().getString("android.intent.extra.TEXT"));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     ewa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */