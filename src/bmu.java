import android.view.View;
import android.view.View.OnClickListener;

final class bmu
  implements View.OnClickListener
{
  private final int b;
  
  bmu(bmp parambmp, int paramInt)
  {
    b = paramInt;
  }
  
  public void onClick(View paramView)
  {
    a.b(b);
  }
}

/* Location:
 * Qualified Name:     bmu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */