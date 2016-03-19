import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class icc
  extends img
  implements hzx
{
  iad a;
  hpz b;
  iaf c;
  
  public void a(iaj paramiaj)
  {
    boolean bool = true;
    int i = 0;
    Object localObject2 = getArguments();
    if (localObject2 != null) {}
    ArrayList localArrayList;
    Object localObject3;
    int j;
    for (Object localObject1 = (hzq)((Bundle)localObject2).getParcelable("account_filter");; localObject1 = null)
    {
      localArrayList = new ArrayList();
      localObject3 = b.a().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        j = ((Integer)((Iterator)localObject3).next()).intValue();
        hqb localhqb = b.a(j);
        if ((c.a(paramiaj, j)) && ((localObject1 == null) || (((hzq)localObject1).a(localhqb)))) {
          localArrayList.add(Integer.valueOf(j));
        }
      }
    }
    if (localArrayList.isEmpty())
    {
      paramiaj = b.a().iterator();
      while (paramiaj.hasNext())
      {
        j = ((Integer)paramiaj.next()).intValue();
        localObject3 = b.a(j);
        if (((localObject1 == null) || (((hzq)localObject1).a((hqb)localObject3))) && (!((hqb)localObject3).d("is_managed_account"))) {
          localArrayList.add(Integer.valueOf(j));
        }
      }
    }
    if (localArrayList.isEmpty())
    {
      if ((localObject2 == null) || (((Bundle)localObject2).getBoolean("add_account"))) {
        i = 1;
      }
      if (i != 0)
      {
        a.b();
        return;
      }
      a.c();
      return;
    }
    if ((localObject2 == null) || (!((Bundle)localObject2).getBoolean("never_auto_select_single_account")))
    {
      i = 1;
      if ((localArrayList.size() != 1) || (i == 0)) {
        break label421;
      }
      paramiaj = (Integer)localArrayList.get(0);
      paramiaj = b.a(paramiaj.intValue());
      if ((localObject2 != null) && (!((Bundle)localObject2).getBoolean("auto_select_single_logged_out_account"))) {
        break label416;
      }
    }
    label416:
    for (i = 1;; i = 0)
    {
      if ((paramiaj.d("logged_out")) && (i == 0)) {
        break label421;
      }
      a.a(paramiaj.b("account_name"), paramiaj.b("effective_gaia_id"));
      return;
      i = 0;
      break;
    }
    label421:
    localObject1 = new int[localArrayList.size()];
    i = 0;
    while (i < localArrayList.size())
    {
      localObject1[i] = ((Integer)localArrayList.get(i)).intValue();
      i += 1;
    }
    if (localObject2 != null)
    {
      paramiaj = ((Bundle)localObject2).getString("dialog_title");
      if ((localObject2 == null) || (!((Bundle)localObject2).getBoolean("add_account_button_shown"))) {
        break label524;
      }
      label498:
      localObject2 = getChildFragmentManager();
      if (paramiaj == null) {
        break label530;
      }
    }
    for (;;)
    {
      iaz.a((bg)localObject2, paramiaj, (int[])localObject1, bool);
      return;
      paramiaj = null;
      break;
      label524:
      bool = false;
      break label498;
      label530:
      paramiaj = context.getString(aal.ur);
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((iad)binder.a(iad.class));
    b = ((hpz)binder.a(hpz.class));
    c = ((iaf)binder.a(iaf.class));
  }
}

/* Location:
 * Qualified Name:     icc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */