import android.os.Build.VERSION;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.design.widget.Snackbar;
import android.support.design.widget.Snackbar.SnackbarLayout;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

public final class q
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    int j = 0;
    switch (what)
    {
    default: 
      return false;
    case 0: 
      paramMessage = (Snackbar)obj;
      if (c.getParent() == null)
      {
        localObject = c.getLayoutParams();
        if ((localObject instanceof m))
        {
          w localw = new w(paramMessage);
          localw.b();
          localw.c();
          localw.a();
          localw.a(new fhz(paramMessage));
          ((m)localObject).a(localw);
        }
        b.addView(c);
      }
      c.a(new aen(paramMessage));
      localObject = c;
      if (ks.a.z((View)localObject)) {
        paramMessage.b();
      }
      for (;;)
      {
        return true;
        c.a(new dcn(paramMessage));
      }
    }
    Object localObject = (Snackbar)obj;
    int k = arg1;
    if (c.getVisibility() == 0)
    {
      paramMessage = c.getLayoutParams();
      int i = j;
      if ((paramMessage instanceof m))
      {
        paramMessage = ((m)paramMessage).a();
        i = j;
        if ((paramMessage instanceof y))
        {
          i = j;
          if (((y)paramMessage).d() != 0) {
            i = 1;
          }
        }
      }
      if (i == 0) {}
    }
    else
    {
      ((Snackbar)localObject).c();
    }
    for (;;)
    {
      return true;
      if (Build.VERSION.SDK_INT >= 14)
      {
        paramMessage = c;
        ks.a.k(paramMessage).c(c.getHeight()).a(j.b).a(250L).a(new v((Snackbar)localObject, k)).c();
      }
      else
      {
        paramMessage = AnimationUtils.loadAnimation(c.getContext(), aal.i);
        paramMessage.setInterpolator(j.b);
        paramMessage.setDuration(250L);
        paramMessage.setAnimationListener(new r((Snackbar)localObject, k));
        c.startAnimation(paramMessage);
      }
    }
  }
}

/* Location:
 * Qualified Name:     q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */