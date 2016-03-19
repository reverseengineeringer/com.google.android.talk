import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.apps.hangouts.R.drawable;

public final class fbq
{
  private static final int[] a = { R.drawable.i, R.drawable.j, R.drawable.k, R.drawable.j, R.drawable.i, R.drawable.l, R.drawable.m, R.drawable.l, R.drawable.i, R.drawable.n, R.drawable.o, R.drawable.n, R.drawable.i };
  private static final int[] b = { R.drawable.p, R.drawable.q, R.drawable.r, R.drawable.s, R.drawable.t, R.drawable.u, R.drawable.v, R.drawable.w, R.drawable.x, R.drawable.y, R.drawable.z, R.drawable.A, R.drawable.B, R.drawable.C, R.drawable.D, R.drawable.E, R.drawable.F, R.drawable.G, R.drawable.H, R.drawable.I };
  private static final int[] c = { R.drawable.J, R.drawable.K, R.drawable.L, R.drawable.M, R.drawable.N, R.drawable.O, R.drawable.P, R.drawable.Q, R.drawable.R };
  private static final int[] d = { R.drawable.S, R.drawable.T, R.drawable.U, R.drawable.V, R.drawable.W, R.drawable.X, R.drawable.Y, R.drawable.Z, R.drawable.aa, R.drawable.ab, R.drawable.ac, R.drawable.ad, R.drawable.ae, R.drawable.af, R.drawable.ag, R.drawable.ah, R.drawable.ai, R.drawable.aj, R.drawable.ak, R.drawable.al };
  private static final int[] e = { R.drawable.am, R.drawable.an, R.drawable.ao, R.drawable.ap, R.drawable.aq, R.drawable.ar, R.drawable.as, R.drawable.at, R.drawable.au };
  
  public static AnimationDrawable a(cbr paramcbr)
  {
    hbs.a();
    AnimationDrawable localAnimationDrawable = new AnimationDrawable();
    for (;;)
    {
      try
      {
        int k = b.length;
        i = 0;
        if (i >= k) {
          continue;
        }
        localDrawable = paramcbr.getResources().getDrawable(b[i]);
        if (i != k - 1) {
          continue;
        }
        j = 500;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        int i;
        Drawable localDrawable;
        ezi.d("Babel", "OutOfMemory trying to create animation ellipsis", localOutOfMemoryError);
        continue;
        int j = 33;
        continue;
      }
      localAnimationDrawable.addFrame(localDrawable, j);
      i += 1;
    }
    localAnimationDrawable.setOneShot(false);
    paramcbr.b(new fbr(localAnimationDrawable));
    return localAnimationDrawable;
  }
  
  public static AnimationDrawable b(cbr paramcbr)
  {
    hbs.a();
    AnimationDrawable localAnimationDrawable = new AnimationDrawable();
    for (;;)
    {
      try
      {
        int k = a.length;
        i = 0;
        if (i >= k) {
          continue;
        }
        localDrawable = paramcbr.getResources().getDrawable(a[i]);
        if (i != k - 1) {
          continue;
        }
        j = 500;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        int i;
        Drawable localDrawable;
        ezi.d("Babel", "OutOfMemory trying to create animation ellipsis", localOutOfMemoryError);
        continue;
        int j = 44;
        continue;
      }
      localAnimationDrawable.addFrame(localDrawable, j);
      i += 1;
    }
    localAnimationDrawable.setOneShot(false);
    paramcbr.b(new fbs(localAnimationDrawable));
    return localAnimationDrawable;
  }
}

/* Location:
 * Qualified Name:     fbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */