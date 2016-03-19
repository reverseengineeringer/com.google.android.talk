import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;

public final class evm
  extends av
{
  eut a;
  int[] b;
  
  static void a(View paramView)
  {
    Button localButton = (Button)paramView.findViewById(aal.rg);
    if (b(paramView) != -1) {}
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
  
  private String[] a()
  {
    String[] arrayOfString = new String[b.length];
    int i = 0;
    while (i < b.length)
    {
      arrayOfString[i] = dvd.a(getActivity(), b[i]);
      i += 1;
    }
    return arrayOfString;
  }
  
  static int b(View paramView)
  {
    return ((ListView)paramView.findViewById(16908298)).getCheckedItemPosition();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = 0;
    a = eut.a(getActivity());
    b = eut.a();
    paramLayoutInflater = paramLayoutInflater.inflate(aal.rh, paramViewGroup, false);
    paramViewGroup = (ListView)paramLayoutInflater.findViewById(16908298);
    paramViewGroup.setAdapter(new ArrayAdapter(getActivity(), aal.rj, a()));
    int j = a.b();
    for (;;)
    {
      if (i < b.length)
      {
        if (b[i] == j) {
          paramViewGroup.setItemChecked(i, true);
        }
      }
      else
      {
        paramViewGroup.setOnItemClickListener(new evn(this));
        paramViewGroup = (Button)paramLayoutInflater.findViewById(aal.rg);
        paramViewGroup.setText(getActivity().getString(aal.rm));
        paramViewGroup.setOnClickListener(new evo(this));
        a(paramLayoutInflater);
        ((Button)paramLayoutInflater.findViewById(aal.rf)).setOnClickListener(new evp(this));
        return paramLayoutInflater;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     evm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */