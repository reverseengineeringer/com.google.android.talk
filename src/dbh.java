import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class dbh
  extends cbp
{
  long a;
  dbt aj = new dbt(this);
  SparseArray<String> ak;
  bdy al;
  boolean am;
  final dbn an = new dbn(this);
  final dbp ao = new dbp(this);
  cqr ap;
  Parcelable aq;
  private final hwp ar = new hwp(lifecycle);
  private RecyclerView as;
  private dbq at = new dbq(this);
  private dbu au = new dbu(this);
  private dbs av = new dbs(this);
  private dbm aw = new dbm(this);
  private dbl ax = new dbl(this);
  private View.OnClickListener ay = new dbo(this);
  long b;
  hpu c;
  das d;
  boolean e;
  bfd f;
  axq g;
  bkw h;
  boolean i;
  
  public dbh()
  {
    new exm(this, lifecycle);
  }
  
  private bfd a()
  {
    return dvd.e(c.a());
  }
  
  private void a(bdy parambdy, int paramInt)
  {
    aal.a(f, paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("action_sheet_hangouts_contact", parambdy);
    parambdy = new czt();
    parambdy.setArguments(localBundle);
    parambdy.a(getFragmentManager(), null);
  }
  
  void a(View paramView)
  {
    if (paramView == null) {
      return;
    }
    View localView1 = paramView.findViewById(aen.ga);
    View localView2 = paramView.findViewById(StressMode.tH);
    localView2.setVisibility(8);
    if (am)
    {
      as.setVisibility(8);
      localView1.setVisibility(0);
      ar.a(hws.b);
      return;
    }
    if ((d == null) || (!d.b(false))) {}
    for (int j = 1; j != 0; j = 0)
    {
      as.setVisibility(8);
      localView1.setVisibility(8);
      ar.a(hws.a);
      return;
    }
    if (isEmpty())
    {
      localView2.setVisibility(0);
      as.setVisibility(8);
      localView1.setVisibility(8);
      setupEmptyView(paramView, aen.jI, aen.jH);
      ar.a(hws.c);
      aal.a(f, 2138);
      return;
    }
    as.setVisibility(0);
    if (aq != null)
    {
      as.d().a(aq);
      aq = null;
    }
    localView1.setVisibility(8);
    ar.a(hws.b);
  }
  
  public void a(axq paramaxq)
  {
    g = paramaxq;
    paramaxq.a(aw);
  }
  
  void a(boolean paramBoolean)
  {
    ar.a(hws.a);
    cj localcj = getLoaderManager();
    if (paramBoolean)
    {
      if (i) {
        localcj.b(0, null, av);
      }
      localcj.b(1, null, av);
      return;
    }
    if (i) {
      localcj.a(0, null, av);
    }
    localcj.a(1, null, av);
  }
  
  public void b(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  protected boolean isEmpty()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (TextUtils.isEmpty(g.g()))
    {
      bool1 = bool2;
      if (d.c(false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    c = ((hpu)binder.a(hpu.class));
    ((dck)binder.a(dck.class)).a(StressMode.tW, new dbi(this));
    ap = ((cqs)binder.a(cqs.class)).a(17);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    int j = paramMenuItem.getItemId();
    if (ax != null) {}
    switch (j)
    {
    default: 
      return false;
    case 201: 
      a(al, 2769);
      return true;
    }
    paramMenuItem = al.e();
    RealTimeChatService.a(aj);
    j = RealTimeChatService.j(a(), al.i());
    ak.append(j, paramMenuItem);
    return true;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramBundle != null) {
      aq = paramBundle.getParcelable("scroll_state");
    }
    f = a();
    h = ((bkw)getActivity().getIntent().getSerializableExtra("conversation_type"));
    if (h == null) {
      h = bkw.a;
    }
    if (h != bkw.b) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      ak = new SparseArray();
      if (ezc.a(context)) {
        getActivity().getWindow().setSoftInputMode(2);
      }
      paramLayoutInflater = onCreateView(paramLayoutInflater, paramViewGroup, paramBundle, aal.ot);
      as = ((RecyclerView)paramLayoutInflater.findViewById(16908298));
      as.n();
      as.b();
      paramViewGroup.getContext();
      paramViewGroup = new yu((byte)0);
      paramViewGroup.o();
      as.a(paramViewGroup);
      as.setFocusable(true);
      registerForContextMenu(as);
      as.a(au);
      if (g == null) {
        g = new axq();
      }
      d = new das(getActivity(), a(), g, ax, at, ay, i);
      if (as != null) {
        as.a(d);
      }
      a(false);
      paramViewGroup = (dcj)ilh.a(context, dcj.class);
      if ((!bff.h(context, f.g())) && ((!paramViewGroup.a("android.permission.READ_CONTACTS")) || (!paramViewGroup.a("android.permission.WRITE_CONTACTS")))) {
        break;
      }
      return paramLayoutInflater;
    }
    ezi.c("Babel", "contact permission banner shown", new Object[0]);
    aal.a(f, 2671);
    paramViewGroup = paramLayoutInflater.findViewById(StressMode.tW);
    paramViewGroup.setVisibility(0);
    ((Button)paramLayoutInflater.findViewById(StressMode.tX)).setOnClickListener(new dbj(this, paramViewGroup));
    ((Button)paramLayoutInflater.findViewById(StressMode.tV)).setOnClickListener(new dbk(this, paramViewGroup));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    an.a(-1);
    ao.a(-1);
    ak = null;
    RealTimeChatService.b(aj);
  }
  
  public void onPause()
  {
    super.onPause();
    if ((getActivity().isFinishing()) && (!TextUtils.isEmpty(g.g())) && (d.c(true))) {
      aal.a(f, 2289);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (a() != null) {
      a(getView());
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    aq = as.d().h();
    paramBundle.putParcelable("scroll_state", aq);
  }
}

/* Location:
 * Qualified Name:     dbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */