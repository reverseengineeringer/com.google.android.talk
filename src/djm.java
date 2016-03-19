import android.app.Activity;
import android.os.SystemClock;
import java.util.ArrayList;

public final class djm
  extends hbw<Void, Void, ArrayList<cyx>>
{
  private final Activity a;
  private final String b;
  private final bfd c;
  private final int e;
  private final boolean f;
  private final boolean g;
  private final int h;
  private final long i;
  private final int j;
  private final boolean k;
  private final boolean l;
  
  public djm(Activity paramActivity, bfd parambfd, String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this(paramActivity, parambfd, paramString, paramBoolean, paramInt1, true, paramInt2, 0, false, false);
  }
  
  public djm(Activity paramActivity, bfd parambfd, String paramString, boolean paramBoolean1, int paramInt1, boolean paramBoolean2, int paramInt2, int paramInt3, boolean paramBoolean3, boolean paramBoolean4)
  {
    a = paramActivity;
    c = parambfd;
    b = paramString;
    f = paramBoolean1;
    e = paramInt1;
    g = paramBoolean2;
    h = paramInt2;
    i = SystemClock.elapsedRealtime();
    j = paramInt3;
    k = paramBoolean3;
    l = paramBoolean4;
  }
}

/* Location:
 * Qualified Name:     djm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */