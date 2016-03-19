package android.support.v7.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import tl;
import tn;
import tp;
import ub;
import vw;

public final class ExpandedMenuView
  extends ListView
  implements AdapterView.OnItemClickListener, tn, ub
{
  private static final int[] a = { 16842964, 16843049 };
  private tl b;
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    paramContext = vw.a(paramContext, paramAttributeSet, a, paramInt);
    if (paramContext.g(0)) {
      setBackgroundDrawable(paramContext.a(0));
    }
    if (paramContext.g(1)) {
      setDivider(paramContext.a(1));
    }
    paramContext.a();
  }
  
  public void a(tl paramtl)
  {
    b = paramtl;
  }
  
  public boolean a(tp paramtp)
  {
    return b.a(paramtp, 0);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setChildrenDrawingCacheEnabled(false);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a((tp)getAdapter().getItem(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ExpandedMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */