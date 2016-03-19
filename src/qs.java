import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class qs
  implements View.OnClickListener
{
  qs(qr paramqr) {}
  
  public void onClick(View paramView)
  {
    if ((paramView == a.c) && (a.d != null)) {
      paramView = Message.obtain(a.d);
    }
    for (;;)
    {
      if (paramView != null) {
        paramView.sendToTarget();
      }
      a.p.obtainMessage(1, a.a).sendToTarget();
      return;
      if ((paramView == a.e) && (a.f != null)) {
        paramView = Message.obtain(a.f);
      } else if ((paramView == a.g) && (a.h != null)) {
        paramView = Message.obtain(a.h);
      } else {
        paramView = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     qs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */