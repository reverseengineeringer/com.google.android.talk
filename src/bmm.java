import android.view.ViewGroup;

public abstract class bmm<H>
{
  public H c;
  public ViewGroup d;
  
  public bmm(H paramH, ViewGroup paramViewGroup)
  {
    c = paramH;
    d = paramViewGroup;
    c();
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      d();
    }
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      if (d != null) {
        d.setVisibility(i);
      }
      return;
    }
  }
  
  public abstract boolean a();
  
  public abstract void c();
  
  public abstract void d();
}

/* Location:
 * Qualified Name:     bmm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */