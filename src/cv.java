import android.app.PendingIntent;
import android.os.Bundle;
import java.util.ArrayList;

public final class cv
{
  private final int a;
  private final CharSequence b;
  private final PendingIntent c;
  private final Bundle d;
  private ArrayList<ee> e;
  
  public cv(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle());
  }
  
  private cv(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    a = paramInt;
    b = cy.d(paramCharSequence);
    c = paramPendingIntent;
    d = paramBundle;
  }
  
  public Bundle a()
  {
    return d;
  }
  
  public cv a(ee paramee)
  {
    if (e == null) {
      e = new ArrayList();
    }
    e.add(paramee);
    return this;
  }
  
  public cu b()
  {
    if (e != null) {}
    for (ee[] arrayOfee = (ee[])e.toArray(new ee[e.size()]);; arrayOfee = null) {
      return new cu(a, b, c, d, arrayOfee);
    }
  }
}

/* Location:
 * Qualified Name:     cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */