import android.content.Intent;
import android.util.SparseArray;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class dcs
  implements hsb
{
  dcs(dcr paramdcr) {}
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    Object localObject1 = new dcz(paramIntent.getIntExtra("original_request_code", 0), (ArrayList)paramIntent.getSerializableExtra("permission_results"));
    Object localObject2 = (dco)a.c.get(a);
    paramIntent = a;
    int i = a;
    localObject2 = b;
    if (paramInt == -1) {}
    for (boolean bool = true;; bool = false)
    {
      dcr.a(paramIntent, i, (List)localObject2, true, bool);
      paramIntent = a;
      paramInt = a;
      localObject1 = b;
      localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        if (!nextb) {
          Toast.makeText(a, aal.oH, 0).show();
        }
      }
      localObject2 = (dcl)b.get(paramInt);
      dco localdco = (dco)c.get(paramInt);
      c.remove(paramInt);
      ((dcl)localObject2).a((List)localObject1, b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */