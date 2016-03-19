import android.view.View;
import android.view.ViewPropertyAnimator;

class mh
  extends mf
{
  mh() {}
  
  mh(byte paramByte)
  {
    this();
  }
  
  public void a(md parammd, View paramView, mn parammn)
  {
    if (parammn != null)
    {
      paramView.animate().setListener(new ml(parammn, paramView));
      return;
    }
    paramView.animate().setListener(null);
  }
}

/* Location:
 * Qualified Name:     mh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */