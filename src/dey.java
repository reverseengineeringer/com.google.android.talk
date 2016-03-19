import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.Toast;
import com.google.android.apps.hangouts.phone.DebugActivity;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public final class dey
  implements AdapterView.OnItemClickListener
{
  dey(DebugActivity paramDebugActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = getItemAtPositionb;
    if ((localObject == null) || (localObject.getClass().isPrimitive()) || ((localObject instanceof CharSequence)))
    {
      if (localObject != null) {
        Toast.makeText(a, localObject.toString(), 0).show();
      }
      return;
    }
    paramAdapterView = a.getLayoutInflater().inflate(aal.fA, null);
    paramView = (ListView)paramAdapterView.findViewById(16908298);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    if ((localObject instanceof List))
    {
      localObject = (List)localObject;
      paramInt = 0;
      while (paramInt < ((List)localObject).size())
      {
        localArrayList1.add(String.valueOf(paramInt));
        localArrayList2.add(((List)localObject).get(paramInt));
        paramInt += 1;
      }
    }
    Field[] arrayOfField = localObject.getClass().getFields();
    int i = arrayOfField.length;
    paramInt = 0;
    for (;;)
    {
      if (paramInt < i)
      {
        Field localField = arrayOfField[paramInt];
        localArrayList1.add(localField.getName());
        try
        {
          localArrayList2.add(localField.get(localObject));
          paramInt += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localArrayList2.add("???");
          }
        }
      }
    }
    paramView.setAdapter(a.a(localArrayList1, localArrayList2));
    paramView.setOnItemClickListener(new dey(a));
    paramView.setOnItemLongClickListener(new dez(a));
    a.a(paramAdapterView, null, null);
  }
}

/* Location:
 * Qualified Name:     dey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */