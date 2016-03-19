import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class czw
  implements AdapterView.OnItemClickListener
{
  czw(czt paramczt) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (hpn)((czq)a.u()).getItem(paramInt);
    switch (czx.b[(czy.a()[paramAdapterView.c()] - 1)])
    {
    default: 
      paramInt = paramAdapterView.c();
      throw new IllegalStateException(37 + "Unknown action sheet item " + paramInt);
    case 1: 
      a.aq = bkw.a;
      paramInt = 2506;
    }
    for (;;)
    {
      aal.a(a.am, paramInt);
      a.ao = new axq();
      a.an = ((bjr)a.ak.a(bjr.class)).a(a.aj, a.al, 0, a, a.ao, a.aq);
      a.an.a(a.ap);
      return;
      a.aq = bkw.b;
      paramInt = 2507;
      continue;
      a.aq = bkw.c;
      paramInt = 2508;
      continue;
      a.aq = bkw.d;
      paramInt = 2509;
    }
  }
}

/* Location:
 * Qualified Name:     czw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */