import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;

public abstract class bxv
  extends cbp
  implements AbsListView.OnScrollListener, eir
{
  public static final boolean a = false;
  private ListView aj;
  private boolean ak;
  public fic b;
  public eim c;
  public fkg d;
  public abk e;
  public View f;
  public hpu g;
  public boolean h = false;
  private String i;
  
  static
  {
    imx localimx = ezi.f;
  }
  
  private void a(boolean paramBoolean)
  {
    int k = 8;
    Object localObject = aj;
    if (paramBoolean)
    {
      j = 0;
      ((ListView)localObject).setVisibility(j);
      localObject = f;
      if (!paramBoolean) {
        break label46;
      }
    }
    label46:
    for (int j = k;; j = 0)
    {
      ((View)localObject).setVisibility(j);
      return;
      j = 8;
      break;
    }
  }
  
  private void s()
  {
    if ((d != null) && (!d.c()))
    {
      d.b();
      d = null;
    }
  }
  
  private void t()
  {
    e = new abk(getActivity(), q());
    abl[] arrayOfabl = a();
    int k = arrayOfabl.length;
    int j = 0;
    while (j < k)
    {
      abl localabl = arrayOfabl[j];
      e.a(localabl);
      j += 1;
    }
    if (aj != null) {
      aj.setAdapter(e);
    }
  }
  
  protected void a(int paramInt, bzh parambzh)
  {
    if (e != null)
    {
      abl localabl = (abl)e.a(paramInt);
      e.a(paramInt, parambzh);
      localabl.a(i);
      if (f != null) {
        if (e.isEmpty()) {
          break label63;
        }
      }
    }
    label63:
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  public void a(bxz parambxz)
  {
    aj.setOnItemClickListener(new bxy(this, parambxz));
  }
  
  public void a(eim parameim, fkg paramfkg, gpx paramgpx)
  {
    if (parameim == c)
    {
      s();
      d = paramfkg;
      if (e == null) {
        t();
      }
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    
    CharSequence localCharSequence;
    if (e != null)
    {
      localCharSequence = paramCharSequence;
      if (paramCharSequence.length() > 70) {
        localCharSequence = paramCharSequence.subSequence(0, 70);
      }
      if (!localCharSequence.equals(i)) {
        if (!TextUtils.isEmpty(localCharSequence)) {
          break label67;
        }
      }
    }
    label67:
    for (paramCharSequence = null;; paramCharSequence = localCharSequence.toString())
    {
      i = paramCharSequence;
      b(i);
      return;
    }
  }
  
  protected abstract abl[] a();
  
  protected ListView b()
  {
    return aj;
  }
  
  protected void b(CharSequence paramCharSequence)
  {
    c();
  }
  
  public void c()
  {
    c = null;
    if ((b.e()) && (e()))
    {
      c = new eim(b, q(), this, i);
      c.b();
    }
  }
  
  protected String d()
  {
    return i;
  }
  
  protected boolean e()
  {
    return true;
  }
  
  public boolean f()
  {
    if (e != null) {
      return false;
    }
    t();
    if (e()) {
      c();
    }
    h = true;
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    paramActivity = new fid(paramActivity.getApplicationContext());
    paramActivity.a(glu.c, new glx().a(117).a());
    paramActivity.a(new bxw(this));
    paramActivity.a(new bxx(this));
    b = paramActivity.b();
    b.b();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    g = ((hpu)binder.a(hpu.class));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle, int paramInt)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle, paramInt);
    aj = ((ListView)paramLayoutInflater.findViewById(16908298));
    aj.setOnScrollListener(this);
    f = paramLayoutInflater.findViewById(aen.eu);
    if (e != null)
    {
      aj.setAdapter(e);
      if (e.isEmpty()) {
        break label92;
      }
    }
    label92:
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      if (ak) {
        r();
      }
      return paramLayoutInflater;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    s();
    c = null;
    e = null;
  }
  
  public void onDetach()
  {
    super.onDetach();
    if ((b.e()) || (b.f())) {
      b.d();
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    ((InputMethodManager)paramAbsListView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramAbsListView.getWindowToken(), 0);
  }
  
  protected bfd q()
  {
    return dvd.e(g.a());
  }
  
  public void r()
  {
    if (aj == null)
    {
      ak = true;
      return;
    }
    ak = false;
    aj.setSelectionAfterHeaderView();
  }
}

/* Location:
 * Qualified Name:     bxv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */