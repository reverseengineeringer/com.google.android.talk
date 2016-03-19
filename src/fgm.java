import android.content.Intent;

public class fgm
  extends fgj
{
  private final Intent a;
  
  public fgm(String paramString, Intent paramIntent)
  {
    super(paramString);
    a = paramIntent;
  }
  
  public Intent b()
  {
    if (a == null) {
      return null;
    }
    return new Intent(a);
  }
}

/* Location:
 * Qualified Name:     fgm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */