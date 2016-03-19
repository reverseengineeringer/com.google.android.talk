import android.content.Context;
import android.content.Intent;
import android.support.v7.internal.widget.ActivityChooserView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;

public final class va
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  public va(ActivityChooserView paramActivityChooserView) {}
  
  public void onClick(View paramView)
  {
    if (paramView == a.e)
    {
      a.b();
      paramView = a.a.b();
      int i = a.a.e().a(paramView);
      paramView = a.a.e().b(i);
      if (paramView != null)
      {
        paramView.addFlags(524288);
        a.getContext().startActivity(paramView);
      }
      return;
    }
    if (paramView == a.d)
    {
      a.j = false;
      a.b(a.k);
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public void onDismiss()
  {
    if (a.i != null) {
      a.i.onDismiss();
    }
    if (a.g != null) {
      a.g.a(false);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((uz)paramAdapterView.getAdapter()).getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      a.b(Integer.MAX_VALUE);
    }
    do
    {
      return;
      a.b();
      if (!a.j) {
        break;
      }
    } while (paramInt <= 0);
    a.a.e().c(paramInt);
    return;
    if (a.a.f()) {}
    for (;;)
    {
      paramAdapterView = a.a.e().b(paramInt);
      if (paramAdapterView == null) {
        break;
      }
      paramAdapterView.addFlags(524288);
      a.getContext().startActivity(paramAdapterView);
      return;
      paramInt += 1;
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    if (paramView == a.e)
    {
      if (a.a.getCount() > 0)
      {
        a.j = true;
        a.b(a.k);
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:
 * Qualified Name:     va
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */