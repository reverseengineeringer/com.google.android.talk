import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

public abstract class kh
{
  private DataSetObservable a = new DataSetObservable();
  
  public Object a(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    return a(paramViewGroup, paramInt);
  }
  
  public void a()
  {
    c();
  }
  
  public void a(DataSetObserver paramDataSetObserver)
  {
    a.registerObserver(paramDataSetObserver);
  }
  
  public void a(View paramView, int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    a(paramViewGroup, paramInt, paramObject);
  }
  
  public void a(Object paramObject)
  {
    b(paramObject);
  }
  
  public abstract boolean a(View paramView, Object paramObject);
  
  public abstract int b();
  
  public void b(DataSetObserver paramDataSetObserver)
  {
    a.unregisterObserver(paramDataSetObserver);
  }
  
  public void b(Object paramObject) {}
  
  public int c(Object paramObject)
  {
    return -1;
  }
  
  public CharSequence c(int paramInt)
  {
    return null;
  }
  
  public void c() {}
  
  public void d()
  {
    a.notifyChanged();
  }
}

/* Location:
 * Qualified Name:     kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */