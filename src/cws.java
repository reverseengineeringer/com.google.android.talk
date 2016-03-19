import android.content.Context;
import java.util.Locale;

final class cws
  extends cyk
{
  private final String y;
  
  cws(Context paramContext, int paramInt1, cwx paramcwx, int paramInt2)
  {
    super(paramContext, paramInt1, paramcwx, false, false);
    y = String.format(Locale.US, "%02d", new Object[] { Integer.valueOf(paramInt2) });
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected void h()
  {
    u.b(Integer.toString(q)).c(y);
    super.h();
  }
  
  protected void i()
  {
    if (cww.b(p)) {
      aal.a(dvd.e(q), 1929);
    }
  }
}

/* Location:
 * Qualified Name:     cws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */