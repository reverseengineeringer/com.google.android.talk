import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import java.util.List;

final class dkn
  implements AdapterView.OnItemSelectedListener
{
  dkn(dkj paramdkj, List paramList, EditText paramEditText) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = c.a.b;
    c.a = ((eho)a.get(paramInt));
    paramView = c.a.b;
    if (!TextUtils.equals(paramAdapterView, paramView)) {
      c.b.a(paramView);
    }
    paramView = b;
    paramAdapterView = String.valueOf(c.a.c);
    if (paramAdapterView.length() != 0) {}
    for (paramAdapterView = "+".concat(paramAdapterView);; paramAdapterView = new String("+"))
    {
      paramView.setText(paramAdapterView);
      return;
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView)
  {
    c.a = ((eho)a.get(0));
    EditText localEditText = b;
    paramAdapterView = String.valueOf(c.a.c);
    if (paramAdapterView.length() != 0) {}
    for (paramAdapterView = "+".concat(paramAdapterView);; paramAdapterView = new String("+"))
    {
      localEditText.setText(paramAdapterView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dkn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */