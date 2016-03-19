import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class cmj
  implements AdapterView.OnItemClickListener
{
  cmj(cmi paramcmi) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (hpk)((hpl)a.u()).getItem(paramInt);
    if (!(paramAdapterView instanceof hpn)) {
      return;
    }
    paramAdapterView = (hpn)paramAdapterView;
    switch (paramAdapterView.c())
    {
    }
    for (;;)
    {
      a.a();
      return;
      ezi.c("Babel", "Disabling knocking per user request.", new Object[0]);
      aal.c(2241);
      a.aj.a(false);
      a.a(paramAdapterView, (hpn)a.al.getItem(1), clq.c);
      a.al.notifyDataSetChanged();
      continue;
      ezi.c("Babel", "Enabling knocking per user request.", new Object[0]);
      aal.c(1501);
      a.aj.a(true);
      a.a((hpn)a.al.getItem(0), paramAdapterView, clq.d);
      a.al.notifyDataSetChanged();
      continue;
      aal.c(2242);
      paramAdapterView = a;
      paramView = (cmu)ilh.a(paramAdapterView.getActivity(), cmu.class);
      Resources localResources = paramAdapterView.getActivity().getResources();
      String str1 = cfc.a().r().f();
      String str2 = localResources.getString(aen.il, new Object[] { str1 });
      ((ClipboardManager)paramAdapterView.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(localResources.getString(aen.ik), str1));
      ak.postDelayed(new cmk(paramAdapterView, paramView, str2), 100L);
    }
  }
}

/* Location:
 * Qualified Name:     cmj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */