import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

public final class bzn
  extends BaseAdapter
{
  public final Context a;
  private bzp[] b;
  private int c = 0;
  private int d = 0;
  private boolean e = true;
  private bzo f;
  
  private bzn(Context paramContext)
  {
    a = paramContext;
    f = new bzo(this);
    b = new bzp[2];
  }
  
  public bzn(Context paramContext, ccv paramccv, ccx paramccx)
  {
    this(paramContext);
    a(new bzp(this, false, paramccv));
    a(new ccy(this, paramccx));
  }
  
  private void a(bzp parambzp)
  {
    if (c >= b.length)
    {
      arrayOfbzp = new bzp[c + 2];
      System.arraycopy(b, 0, arrayOfbzp, 0, c);
      b = arrayOfbzp;
    }
    bzp[] arrayOfbzp = b;
    int i = c;
    c = (i + 1);
    arrayOfbzp[i] = parambzp;
    parambzp.d().registerDataSetObserver(f);
    c();
    notifyDataSetChanged();
  }
  
  private void c()
  {
    e = false;
  }
  
  private void d()
  {
    int i = 0;
    if (e) {}
    for (;;)
    {
      return;
      d = 0;
      while (i < c)
      {
        d += b[i].c();
        i += 1;
      }
    }
  }
  
  public Context a()
  {
    return a;
  }
  
  public void b()
  {
    int i = 0;
    while (i < c)
    {
      bzp localbzp = b[i];
      localbzp.e();
      localbzp.d().unregisterDataSetObserver(f);
      i += 1;
    }
    c();
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    d();
    return d;
  }
  
  public Object getItem(int paramInt)
  {
    int i = 0;
    d();
    int k;
    for (int j = 0; i < c; j = k)
    {
      k = b[i].c() + j;
      if ((paramInt >= j) && (paramInt < k))
      {
        paramInt -= j;
        bzp localbzp = b[i];
        if ((localbzp.b()) && (paramInt == 0) && ((localbzp.c() > 0) || (localbzp.a()))) {
          return null;
        }
        return b[i].d().getItem(paramInt);
      }
      i += 1;
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    int i = 0;
    d();
    int k;
    for (int j = 0; i < c; j = k)
    {
      k = b[i].c() + j;
      if ((paramInt >= j) && (paramInt < k))
      {
        paramInt -= j;
        bzp localbzp = b[i];
        if ((localbzp.b()) && (paramInt == 0) && ((localbzp.c() > 0) || (localbzp.a()))) {
          return 0L;
        }
        return b[i].d().getItemId(paramInt);
      }
      i += 1;
    }
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    d();
    int j = 0;
    bzp localbzp;
    int k;
    if (i < c)
    {
      localbzp = b[i];
      k = localbzp.c() + j;
      if ((paramInt >= j) && (paramInt < k))
      {
        paramInt -= j;
        if ((!localbzp.b()) || ((localbzp.c() <= 0) && (!localbzp.a()))) {
          break label178;
        }
        paramInt -= 1;
      }
    }
    label178:
    for (;;)
    {
      if (paramInt == -1) {
        paramView = localbzp.a(paramView, paramViewGroup);
      }
      for (;;)
      {
        if (paramView == null)
        {
          throw new NullPointerException(69 + "View should not be null, partition: " + i + " position: " + paramInt);
          paramView = localbzp.d().getView(paramInt, paramView, paramViewGroup);
          continue;
          i += 1;
          j = k;
          break;
          throw new ArrayIndexOutOfBoundsException(paramInt);
        }
      }
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     bzn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */