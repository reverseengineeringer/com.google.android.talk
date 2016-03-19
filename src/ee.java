import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;

public final class ee
  extends ek
{
  public static final el a;
  private static final eg g;
  private final String b;
  private final CharSequence c;
  private final CharSequence[] d;
  private final boolean e;
  private final Bundle f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      g = new eh();
    }
    for (;;)
    {
      a = new el();
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        g = new ej();
      } else {
        g = new ei();
      }
    }
  }
  
  ee(String paramString, CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence, boolean paramBoolean, Bundle paramBundle)
  {
    b = paramString;
    c = paramCharSequence;
    d = paramArrayOfCharSequence;
    e = paramBoolean;
    f = paramBundle;
  }
  
  public static Bundle a(Intent paramIntent)
  {
    return g.a(paramIntent);
  }
  
  public String a()
  {
    return b;
  }
  
  public CharSequence b()
  {
    return c;
  }
  
  public CharSequence[] c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public Bundle e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */