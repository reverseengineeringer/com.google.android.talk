import android.content.Intent;

public class gwm
  extends gwj
{
  private final Intent a;
  
  public gwm(String paramString, Intent paramIntent)
  {
    super(paramString);
    a = paramIntent;
  }
  
  public gwm(String paramString, Intent paramIntent, Exception paramException)
  {
    super(paramString, paramException);
    a = paramIntent;
  }
  
  public Intent a()
  {
    if (a == null) {
      return null;
    }
    return new Intent(a);
  }
}

/* Location:
 * Qualified Name:     gwm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */