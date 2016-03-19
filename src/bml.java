import android.content.Context;
import android.view.View;

public abstract class bml<H>
  extends bmm<H>
{
  public boolean a;
  public Context b;
  private final epc e;
  private epa f;
  
  public bml(View paramView, H paramH, epc paramepc)
  {
    super(paramH, null);
    b = paramView.getContext();
    e = paramepc;
  }
  
  public void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (!a))
    {
      d();
      a = true;
      f = b();
      e.a(f);
    }
    while ((paramBoolean) || (!a)) {
      return;
    }
    e.b(f);
    a = false;
  }
  
  public abstract epa b();
  
  protected void c() {}
  
  protected void d() {}
  
  public epb e()
  {
    return new epb(b);
  }
}

/* Location:
 * Qualified Name:     bml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */