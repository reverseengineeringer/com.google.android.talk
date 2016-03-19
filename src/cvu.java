import java.io.IOException;

public final class cvu
  extends IOException
{
  private static final long serialVersionUID = -2558890850533726919L;
  
  public cvu(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     cvu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */