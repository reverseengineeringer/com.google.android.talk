import android.view.View;
import android.view.ViewGroup;

public abstract class br
  extends kh
{
  private final bg a;
  private bz b = null;
  private av c = null;
  
  public br(bg parambg)
  {
    a = parambg;
  }
  
  private static String a(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }
  
  public abstract av a(int paramInt);
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (b == null) {
      b = a.a();
    }
    long l = b(paramInt);
    Object localObject = a(paramViewGroup.getId(), l);
    localObject = a.a((String)localObject);
    if (localObject != null) {
      b.e((av)localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ViewGroup)localObject)
    {
      if (paramViewGroup != c)
      {
        paramViewGroup.setMenuVisibility(false);
        paramViewGroup.setUserVisibleHint(false);
      }
      return paramViewGroup;
      localObject = a(paramInt);
      b.a(paramViewGroup.getId(), (av)localObject, a(paramViewGroup.getId(), l));
    }
  }
  
  public void a()
  {
    if (b != null)
    {
      b.c();
      b = null;
      a.b();
    }
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (b == null) {
      b = a.a();
    }
    b.d((av)paramObject);
  }
  
  public void a(Object paramObject)
  {
    paramObject = (av)paramObject;
    if (paramObject != c)
    {
      if (c != null)
      {
        c.setMenuVisibility(false);
        c.setUserVisibleHint(false);
      }
      if (paramObject != null)
      {
        ((av)paramObject).setMenuVisibility(true);
        ((av)paramObject).setUserVisibleHint(true);
      }
      c = ((av)paramObject);
    }
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    return ((av)paramObject).getView() == paramView;
  }
  
  public long b(int paramInt)
  {
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */