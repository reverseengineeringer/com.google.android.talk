import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;

final class boj
  implements Runnable
{
  boj(bnc parambnc, String paramString) {}
  
  public void run()
  {
    bng localbng = b.a;
    String str = a;
    bjb localbjb = i.a();
    boolean bool3 = localbng.K();
    boolean bool1;
    if (localbjb == null)
    {
      bool1 = true;
      if (bu != null) {
        break label90;
      }
    }
    label90:
    for (boolean bool2 = true;; bool2 = false)
    {
      if (bool3) {
        break label95;
      }
      throw new IllegalStateException(aen.a("variant null: %s. reachability null: %s.", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(bool2) }));
      bool1 = false;
      break;
    }
    label95:
    if (!bu.a) {
      bu.a(context, false);
    }
    do
    {
      return;
      if (localbng.I()) {
        break;
      }
    } while (localbng.getActivity() == null);
    Toast.makeText(context, StressMode.jg, 0).show();
    return;
    localbng.a(localbjb, str, null);
  }
}

/* Location:
 * Qualified Name:     boj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */