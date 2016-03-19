import android.view.View;
import android.view.ViewGroup;

public final class ccr
  extends bmm<cct>
{
  public ccr(View paramView, cct paramcct)
  {
    super(paramcct, (ViewGroup)paramView.findViewById(aen.eD));
  }
  
  protected boolean a()
  {
    return (((cct)c).G()) && (((cct)c).z());
  }
  
  protected void c()
  {
    d.setOnClickListener(new ccs(this));
  }
  
  protected void d()
  {
    ((cct)c).b(((cct)c).t());
  }
}

/* Location:
 * Qualified Name:     ccr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */