import android.content.Context;
import android.support.v7.internal.view.menu.ExpandedMenuView;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public final class tj
  implements AdapterView.OnItemClickListener, tz
{
  Context a;
  LayoutInflater b;
  tl c;
  ExpandedMenuView d;
  int e;
  int f;
  int g;
  tk h;
  private ua i;
  
  private tj(int paramInt)
  {
    g = paramInt;
    f = 0;
  }
  
  public tj(Context paramContext, int paramInt)
  {
    this(paramInt);
    a = paramContext;
    b = LayoutInflater.from(a);
  }
  
  public ListAdapter a()
  {
    if (h == null) {
      h = new tk(this);
    }
    return h;
  }
  
  public ub a(ViewGroup paramViewGroup)
  {
    if (d == null)
    {
      d = ((ExpandedMenuView)b.inflate(aal.bh, paramViewGroup, false));
      if (h == null) {
        h = new tk(this);
      }
      d.setAdapter(h);
      d.setOnItemClickListener(this);
    }
    return d;
  }
  
  public void a(Context paramContext, tl paramtl)
  {
    if (f != 0)
    {
      a = new ContextThemeWrapper(paramContext, f);
      b = LayoutInflater.from(a);
    }
    for (;;)
    {
      c = paramtl;
      if (h != null) {
        h.notifyDataSetChanged();
      }
      return;
      if (a != null)
      {
        a = paramContext;
        if (b == null) {
          b = LayoutInflater.from(a);
        }
      }
    }
  }
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    if (i != null) {
      i.a(paramtl, paramBoolean);
    }
  }
  
  public void a(ua paramua)
  {
    i = paramua;
  }
  
  public boolean a(ue paramue)
  {
    if (!paramue.hasVisibleItems()) {
      return false;
    }
    new to(paramue).a();
    if (i != null) {
      i.a(paramue);
    }
    return true;
  }
  
  public void b(boolean paramBoolean)
  {
    if (h != null) {
      h.notifyDataSetChanged();
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(tp paramtp)
  {
    return false;
  }
  
  public boolean c(tp paramtp)
  {
    return false;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c.a(h.a(paramInt), this, 0);
  }
}

/* Location:
 * Qualified Name:     tj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */