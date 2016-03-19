import android.app.PendingIntent;
import android.os.Bundle;

public final class cu
  extends do
{
  public static final dp d = new dp();
  public int a;
  public CharSequence b;
  public PendingIntent c;
  private final Bundle e;
  private final ee[] f;
  
  public cu(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  cu(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, ee[] paramArrayOfee)
  {
    a = paramInt;
    b = cy.d(paramCharSequence);
    c = paramPendingIntent;
    if (paramBundle != null) {}
    for (;;)
    {
      e = paramBundle;
      f = paramArrayOfee;
      return;
      paramBundle = new Bundle();
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public CharSequence b()
  {
    return b;
  }
  
  public PendingIntent c()
  {
    return c;
  }
  
  public Bundle d()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */