import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

public abstract class wb
{
  private Object a;
  private boolean b;
  
  public abstract MenuInflater a();
  
  public abstract void a(int paramInt);
  
  public abstract void a(View paramView);
  
  public abstract void a(CharSequence paramCharSequence);
  
  public void a(Object paramObject)
  {
    a = paramObject;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public abstract Menu b();
  
  public abstract void b(int paramInt);
  
  public abstract void b(CharSequence paramCharSequence);
  
  public abstract void c();
  
  public abstract void d();
  
  public abstract CharSequence f();
  
  public abstract CharSequence g();
  
  public boolean h()
  {
    return false;
  }
  
  public abstract View i();
  
  public Object j()
  {
    return a;
  }
  
  public boolean k()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     wb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */