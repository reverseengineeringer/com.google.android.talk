import android.view.View;
import android.view.ViewPropertyAnimator;

final class mi
  extends mh
{
  mi()
  {
    super((byte)0);
  }
  
  mi(byte paramByte)
  {
    this();
  }
  
  public void a(View paramView, mp parammp)
  {
    mm localmm = null;
    if (parammp != null) {
      localmm = new mm(parammp, paramView);
    }
    paramView.animate().setUpdateListener(localmm);
  }
}

/* Location:
 * Qualified Name:     mi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */