import android.os.Bundle;
import android.view.View;

final class bqj
  implements iny, iow, ioz
{
  bqk a;
  private bfb b;
  
  bqj(bqk parambqk)
  {
    a = parambqk;
  }
  
  public void a(View paramView, Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramView = (bfb)paramBundle.getParcelable("draft");
      a.b(paramView);
      return;
    }
    if (b != null)
    {
      a.b(b);
      return;
    }
    a.S();
  }
  
  void a(bfb parambfb)
  {
    b = parambfb;
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putParcelable("draft", a.ai());
  }
}

/* Location:
 * Qualified Name:     bqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */