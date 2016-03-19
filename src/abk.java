import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class abk
  extends BaseAdapter
{
  public final bfd a;
  private final Context b;
  private ArrayList<abl> c;
  private int d = 0;
  private boolean e = true;
  private boolean f = true;
  private boolean g;
  
  private abk(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private abk(Context paramContext, byte paramByte)
  {
    b = paramContext;
    c = new ArrayList();
  }
  
  public abk(Context paramContext, bfd parambfd)
  {
    this(paramContext);
    a = parambfd;
  }
  
  private View a(int paramInt, Cursor paramCursor, View paramView)
  {
    if (paramView != null) {}
    for (;;)
    {
      a(paramView, paramInt, paramCursor);
      return paramView;
      paramView = a(b);
    }
  }
  
  private View a(Context paramContext)
  {
    return new fbd(paramContext, a);
  }
  
  private void a()
  {
    e = false;
  }
  
  private void a(View paramView, int paramInt, Cursor paramCursor)
  {
    fbd localfbd = (fbd)paramView;
    Object localObject1 = (bzh)paramCursor;
    if (localObject1 == null) {
      return;
    }
    gpr localgpr = ((bzh)localObject1).a();
    bzi localbzi = ((bzh)localObject1).c();
    int i = ((bzh)localObject1).e();
    int j = ((bzh)localObject1).d();
    paramView = ((abl)a(paramInt)).a();
    paramInt = 15;
    if (j == 1) {
      paramInt = 7;
    }
    if (paramView == null)
    {
      paramView = null;
      localfbd.a(paramView);
      if (localgpr == null) {
        break label268;
      }
      i = paramInt;
      if (!((bzh)localObject1).f()) {
        i = paramInt & 0xFFFFFFFC;
      }
      if (localbzi != null) {
        break label221;
      }
      paramView = null;
      label121:
      paramCursor = localgpr.e();
      if ((!localgpr.f()) || (TextUtils.isEmpty(paramCursor))) {
        break label230;
      }
      localObject1 = localgpr.h();
      paramCursor = null;
    }
    for (;;)
    {
      String str = localgpr.a();
      localObject2 = str;
      if (TextUtils.isEmpty(str)) {
        localObject2 = bzq.c(localgpr);
      }
      localfbd.a(paramCursor, (String)localObject2, (String)localObject1, (String)localObject1, 0, j, bzq.a(localgpr, paramView), localbzi, i);
      return;
      paramView = paramView.toString();
      break;
      label221:
      paramView = localbzi.b();
      break label121;
      label230:
      localObject1 = (Long)localgpr.b().iterator().next();
      paramCursor = String.valueOf(localObject1);
      localObject1 = eia.a((Long)localObject1);
    }
    label268:
    Object localObject2 = ((bzh)localObject1).b();
    switch (i)
    {
    default: 
      ezi.e("Babel", "CallContactsAdapter is given an unsupported contact type!", new Object[0]);
      return;
    }
    if (j == 1) {
      ezi.e("Babel", "Local contacts not returning AggregatedPerson!", new Object[0]);
    }
    paramView = null;
    if (j == 2) {
      paramCursor = ((bzh)localObject1).getString(0);
    }
    for (;;)
    {
      localfbd.a(paramView, paramCursor, null, null, i, j, (bzq)localObject2, localbzi, paramInt);
      return;
      paramCursor = ((bzv)((bzq)localObject2).f().get(0)).a();
      paramView = ((bzh)localObject1).getString(2);
      paramInt |= 0x10;
    }
  }
  
  private int b()
  {
    return c.size();
  }
  
  private Cursor b(int paramInt)
  {
    return c.get(paramInt)).c;
  }
  
  private void c()
  {
    if (e) {
      return;
    }
    d = 0;
    Iterator localIterator = c.iterator();
    if (localIterator.hasNext())
    {
      abl localabl = (abl)localIterator.next();
      Cursor localCursor = c;
      if ((localCursor == null) || (localCursor.isClosed())) {}
      for (int i = 0;; i = localCursor.getCount())
      {
        int j = i;
        if (b) {
          if (i == 0)
          {
            j = i;
            if (!a) {}
          }
          else
          {
            j = i + 1;
          }
        }
        e = j;
        d += j;
        break;
      }
    }
    e = true;
  }
  
  public abl a(int paramInt)
  {
    return (abl)c.get(paramInt);
  }
  
  public void a(int paramInt, Cursor paramCursor)
  {
    Cursor localCursor = c.get(paramInt)).c;
    if (localCursor != paramCursor)
    {
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
      c.get(paramInt)).c = paramCursor;
      if (paramCursor != null) {
        c.get(paramInt)).d = paramCursor.getColumnIndex("_id");
      }
      a();
      notifyDataSetChanged();
    }
  }
  
  public void a(abl paramabl)
  {
    c.add(paramabl);
    a();
    notifyDataSetChanged();
  }
  
  public void a(byu parambyu)
  {
    int j = b();
    int i = 0;
    while (i < j)
    {
      Cursor localCursor = b(i);
      if (localCursor != null) {
        ((bzh)localCursor).a(parambyu);
      }
      i += 1;
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      if (nextb) {
        return false;
      }
    }
    return true;
  }
  
  public int getCount()
  {
    c();
    return d;
  }
  
  public Object getItem(int paramInt)
  {
    c();
    Object localObject1 = c.iterator();
    int j;
    for (int i = 0; ((Iterator)localObject1).hasNext(); i = j)
    {
      Object localObject2 = (abl)((Iterator)localObject1).next();
      j = e + i;
      if ((paramInt >= i) && (paramInt < j))
      {
        i = paramInt - i;
        paramInt = i;
        if (b) {
          paramInt = i - 1;
        }
        if (paramInt == -1) {
          localObject1 = null;
        }
        do
        {
          return localObject1;
          localObject2 = c;
          if ((localObject2 == null) || (((Cursor)localObject2).isClosed())) {
            break;
          }
          localObject1 = localObject2;
        } while (((Cursor)localObject2).moveToPosition(paramInt));
        return null;
      }
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    c();
    Object localObject = c.iterator();
    int j;
    for (int i = 0; ((Iterator)localObject).hasNext(); i = j)
    {
      abl localabl = (abl)((Iterator)localObject).next();
      j = e + i;
      if ((paramInt >= i) && (paramInt < j))
      {
        i = paramInt - i;
        paramInt = i;
        if (b) {
          paramInt = i - 1;
        }
        if (paramInt == -1) {
          return 0L;
        }
        if (d == -1) {
          return 0L;
        }
        localObject = c;
        if ((localObject == null) || (((Cursor)localObject).isClosed()) || (!((Cursor)localObject).moveToPosition(paramInt))) {
          return 0L;
        }
        return ((Cursor)localObject).getLong(d);
      }
    }
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    c();
    int m = c.size();
    int i = 0;
    int j = 0;
    int k;
    if (i < m)
    {
      k = j + c.get(i)).e;
      if ((paramInt >= j) && (paramInt < k))
      {
        paramInt -= j;
        if (!c.get(i)).b) {
          break label105;
        }
        paramInt -= 1;
      }
    }
    label105:
    for (;;)
    {
      if (paramInt == -1) {
        return -1;
      }
      return 1;
      i += 1;
      j = k;
      break;
      throw new ArrayIndexOutOfBoundsException(paramInt);
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    c();
    int m = c.size();
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      k = j + c.get(i)).e;
      if ((paramInt >= j) && (paramInt < k))
      {
        j = paramInt - j;
        paramInt = j;
        if (c.get(i)).b) {
          paramInt = j - 1;
        }
        if (paramInt == -1)
        {
          c.get(i);
          if (paramView == null) {}
        }
        while (paramView == null)
        {
          throw new NullPointerException(69 + "View should not be null, partition: " + i + " position: " + paramInt);
          paramView = null;
          continue;
          if (!c.get(i)).c.moveToPosition(paramInt)) {
            throw new IllegalStateException(44 + "Couldn't move cursor to position " + paramInt);
          }
          paramView = a(i, c.get(i)).c, paramView);
        }
      }
      i += 1;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public boolean isEnabled(int paramInt)
  {
    c();
    int m = c.size();
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      k = j + c.get(i)).e;
      if ((paramInt >= j) && (paramInt < k)) {
        return (!c.get(i)).b) || (paramInt - j != 0);
      }
      i += 1;
    }
    return false;
  }
  
  public void notifyDataSetChanged()
  {
    if (f)
    {
      g = false;
      super.notifyDataSetChanged();
      return;
    }
    g = true;
  }
}

/* Location:
 * Qualified Name:     abk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */