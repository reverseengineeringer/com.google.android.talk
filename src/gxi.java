import android.content.Intent;

public class gxi
  extends Exception
{
  private final Intent a;
  
  public gxi(String paramString, Intent paramIntent, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    a = paramIntent;
  }
}

/* Location:
 * Qualified Name:     gxi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */