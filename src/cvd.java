import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class cvd
  extends BaseAdapter
{
  private final List<cve> a = new ArrayList();
  private boolean b;
  private final hpu c;
  private final ilh d;
  private final Activity e;
  
  public cvd(img paramimg)
  {
    e = paramimg.getActivity();
    d = paramimg.getBinder();
    c = ((hpu)d.a(hpu.class));
  }
  
  public void a()
  {
    a.clear();
    Object localObject = d.c(cve.class);
    Collections.sort((List)localObject);
    bfd localbfd = dvd.e(c.a());
    if (localbfd != null)
    {
      localObject = ((List)localObject).iterator();
      int i = -1;
      if (((Iterator)localObject).hasNext())
      {
        cve localcve = (cve)((Iterator)localObject).next();
        localcve.a(localbfd);
        if (!localcve.g()) {
          break label144;
        }
        int j = localcve.d();
        if ((j != i) && (i != -1)) {
          a.add(new cvi());
        }
        a.add(localcve);
        i = j;
      }
    }
    label144:
    for (;;)
    {
      break;
      notifyDataSetChanged();
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (b == paramBoolean) {}
    for (;;)
    {
      return;
      b = paramBoolean;
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        ((cve)localIterator.next()).a(paramBoolean);
      }
    }
  }
  
  public final boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public final int getCount()
  {
    return a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return ((cve)a.get(paramInt)).c();
  }
  
  public final int getItemViewType(int paramInt)
  {
    if (((cve)a.get(paramInt)).g()) {
      return 1;
    }
    return 0;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    cve localcve = (cve)a.get(paramInt);
    Activity localActivity = e;
    View localView;
    if (!localcve.h())
    {
      localView = paramView;
      if (paramView == null) {
        localView = localActivity.getLayoutInflater().inflate(aal.gj, paramViewGroup, false);
      }
      return localView;
    }
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.findViewById(aen.gD) != null) {}
    }
    else
    {
      localView = localActivity.getLayoutInflater().inflate(aal.gu, paramViewGroup, false);
    }
    localView.setBackgroundResource(localcve.i());
    b = ((TextView)localView.findViewById(aen.gD));
    b.setText(localcve.a());
    c = ((TextView)localView.findViewById(aen.bA));
    paramView = localcve.f();
    if (!TextUtils.isEmpty(paramView))
    {
      c.setText(paramView);
      c.setVisibility(0);
    }
    for (;;)
    {
      d = ((ImageView)localView.findViewById(aen.dn));
      d.setImageResource(localcve.b());
      d.clearColorFilter();
      e = ((ImageView)localView.findViewById(aen.do));
      e.setVisibility(8);
      return localView;
      c.setVisibility(8);
    }
  }
  
  public final int getViewTypeCount()
  {
    return 2;
  }
  
  public final boolean hasStableIds()
  {
    return false;
  }
  
  public final boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return ((cve)a.get(paramInt)).g();
  }
}

/* Location:
 * Qualified Name:     cvd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */