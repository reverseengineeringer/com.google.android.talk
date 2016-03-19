import android.view.View;

public abstract class ach
  extends kh
{
  private final bg a;
  private av b = null;
  private hv<String, av> c = new aci(this);
  bz f = null;
  
  public ach(bg parambg)
  {
    a = parambg;
  }
  
  public abstract av a(int paramInt);
  
  public Object a(View paramView, int paramInt)
  {
    if (f == null) {
      f = a.a();
    }
    Object localObject = a(paramView.getId(), paramInt);
    c.b(localObject);
    localObject = a.a((String)localObject);
    if (localObject != null) {
      f.e((av)localObject);
    }
    for (paramView = (View)localObject;; paramView = (View)localObject)
    {
      if (paramView != b) {
        paramView.setMenuVisibility(false);
      }
      return paramView;
      localObject = a(paramInt);
      if (localObject == null) {
        return null;
      }
      f.a(paramView.getId(), (av)localObject, a(paramView.getId(), paramInt));
    }
  }
  
  protected String a(int paramInt1, int paramInt2)
  {
    return 40 + "android:switcher:" + paramInt1 + ":" + paramInt2;
  }
  
  public void a(View paramView, int paramInt, Object paramObject)
  {
    if (f == null) {
      f = a.a();
    }
    av localav = (av)paramObject;
    String str = localav.getTag();
    paramObject = str;
    if (str == null) {
      paramObject = a(paramView.getId(), paramInt);
    }
    c.a(paramObject, localav);
    f.d(localav);
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    paramObject = ((av)paramObject).getView();
    while ((paramView instanceof View))
    {
      if (paramView == paramObject) {
        return true;
      }
      paramView = ((View)paramView).getParent();
    }
    return false;
  }
  
  public void b(Object paramObject)
  {
    paramObject = (av)paramObject;
    if (paramObject != b)
    {
      if (b != null) {
        b.setMenuVisibility(false);
      }
      if (paramObject != null) {
        ((av)paramObject).setMenuVisibility(true);
      }
      b = ((av)paramObject);
    }
  }
  
  public void c()
  {
    if ((f != null) && (!a.e()))
    {
      f.c();
      f = null;
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     ach
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */