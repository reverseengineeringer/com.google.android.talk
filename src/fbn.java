import android.os.Handler;
import com.google.android.apps.hangouts.views.EasterEggView;
import java.util.Random;

public final class fbn
  implements Runnable
{
  public fbn(EasterEggView paramEasterEggView, bfd parambfd) {}
  
  public void run()
  {
    int i = EasterEggView.a.nextInt(EasterEggView.d.length);
    b.a(a, b.c, EasterEggView.d[i]);
    if (b.g > 0)
    {
      EasterEggView localEasterEggView = b;
      g -= 1;
      b.e.postDelayed(this, 50L);
      return;
    }
    b.f = null;
  }
}

/* Location:
 * Qualified Name:     fbn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */