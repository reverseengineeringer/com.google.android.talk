import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ijp
  extends BaseAdapter
  implements ijf
{
  private ijo a;
  private List<ijc> b;
  private ArrayList<ijr> c;
  private ijr d = new ijr();
  private boolean e = false;
  private volatile boolean f = false;
  private Handler g = new Handler();
  private Runnable h = new ijq(this);
  
  public ijp(ijo paramijo)
  {
    a = paramijo;
    a.b = this;
    b = new ArrayList();
    c = new ArrayList();
    c();
  }
  
  private ijc a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getCount())) {
      return null;
    }
    return (ijc)b.get(paramInt);
  }
  
  private static ijr a(ijc paramijc, ijr paramijr)
  {
    if (paramijr != null) {}
    for (;;)
    {
      c = paramijc.getClass().getName();
      a = paramijc.l();
      b = paramijc.m();
      return paramijr;
      paramijr = new ijr();
    }
  }
  
  private void a(List<ijc> paramList, ijo paramijo)
  {
    paramijo.f();
    int j = paramijo.a();
    int i = 0;
    while (i < j)
    {
      ijc localijc = paramijo.a(i);
      paramList.add(localijc);
      Object localObject;
      if ((!e) && (localijc.G()))
      {
        localObject = a(localijc, null);
        int k = Collections.binarySearch(c, localObject);
        if (k < 0)
        {
          k = -k;
          c.add(k - 1, localObject);
        }
      }
      if ((localijc instanceof ijo))
      {
        localObject = (ijo)localijc;
        if (((ijo)localObject).d()) {
          a(paramList, (ijo)localObject);
        }
      }
      b = this;
      i += 1;
    }
  }
  
  public void a()
  {
    notifyDataSetChanged();
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public void b()
  {
    g.removeCallbacks(h);
    g.post(h);
  }
  
  /* Error */
  void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 37	ijp:f	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: iconst_1
    //   14: putfield 37	ijp:f	Z
    //   17: aload_0
    //   18: monitorexit
    //   19: new 58	java/util/ArrayList
    //   22: dup
    //   23: aload_0
    //   24: getfield 61	ijp:b	Ljava/util/List;
    //   27: invokeinterface 153 1 0
    //   32: invokespecial 156	java/util/ArrayList:<init>	(I)V
    //   35: astore_1
    //   36: aload_0
    //   37: aload_1
    //   38: aload_0
    //   39: getfield 51	ijp:a	Lijo;
    //   42: invokespecial 136	ijp:a	(Ljava/util/List;Lijo;)V
    //   45: aload_0
    //   46: aload_1
    //   47: putfield 61	ijp:b	Ljava/util/List;
    //   50: aload_0
    //   51: invokevirtual 141	ijp:notifyDataSetChanged	()V
    //   54: aload_0
    //   55: monitorenter
    //   56: aload_0
    //   57: iconst_0
    //   58: putfield 37	ijp:f	Z
    //   61: aload_0
    //   62: invokevirtual 159	java/lang/Object:notifyAll	()V
    //   65: aload_0
    //   66: monitorexit
    //   67: return
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	ijp
    //   35	12	1	localArrayList	ArrayList
    //   68	4	1	localObject1	Object
    //   73	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   56	67	68	finally
    //   69	71	68	finally
    //   2	11	73	finally
    //   12	19	73	finally
    //   74	76	73	finally
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public long getItemId(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getCount())) {
      return Long.MIN_VALUE;
    }
    return a(paramInt).r();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (!e) {
      e = true;
    }
    ijc localijc = a(paramInt);
    if (!localijc.G()) {}
    do
    {
      return -1;
      d = a(localijc, d);
      paramInt = Collections.binarySearch(c, d);
    } while (paramInt < 0);
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ijc localijc = a(paramInt);
    d = a(localijc, d);
    if (Collections.binarySearch(c, d) < 0) {
      paramView = null;
    }
    return localijc.a(paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    if (!e) {
      e = true;
    }
    return Math.max(1, c.size());
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isEnabled(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getCount())) {
      return true;
    }
    return a(paramInt).q();
  }
}

/* Location:
 * Qualified Name:     ijp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */