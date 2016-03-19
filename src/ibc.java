import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ibc
  extends img
  implements hzx
{
  iad a;
  hpz b;
  
  public void a(iaj paramiaj)
  {
    paramiaj = new ArrayList();
    Object localObject1 = b.a().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      i = ((Integer)((Iterator)localObject1).next()).intValue();
      localObject2 = b.a(i);
      if ((!((hqb)localObject2).d("logged_in")) && (!((hqb)localObject2).d("is_managed_account"))) {
        paramiaj.add(Integer.valueOf(i));
      }
    }
    if (paramiaj.isEmpty())
    {
      a.b();
      return;
    }
    localObject1 = new int[paramiaj.size()];
    int i = 0;
    while (i < paramiaj.size())
    {
      localObject1[i] = ((Integer)paramiaj.get(i)).intValue();
      i += 1;
    }
    paramiaj = getArguments();
    if (paramiaj != null)
    {
      paramiaj = paramiaj.getString("dialog_title");
      localObject2 = getChildFragmentManager();
      if (paramiaj == null) {
        break label198;
      }
    }
    for (;;)
    {
      iaz.a((bg)localObject2, paramiaj, (int[])localObject1, true);
      return;
      paramiaj = null;
      break;
      label198:
      paramiaj = context.getString(aal.ur);
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((iad)binder.a(iad.class));
    b = ((hpz)binder.a(hpz.class));
  }
}

/* Location:
 * Qualified Name:     ibc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */