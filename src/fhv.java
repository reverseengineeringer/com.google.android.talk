import android.content.Intent;

public class fhv
  extends Exception
{
  private final Intent a;
  
  public fhv(String paramString, Intent paramIntent)
  {
    super(paramString);
    a = paramIntent;
  }
  
  public Intent b()
  {
    return new Intent(a);
  }
}

/* Location:
 * Qualified Name:     fhv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */