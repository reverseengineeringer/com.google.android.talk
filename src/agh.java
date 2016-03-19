import android.content.Intent;

public final class agh
  extends aha
{
  private Intent b;
  
  public agh() {}
  
  public agh(agq paramagq)
  {
    super(paramagq);
  }
  
  public String getMessage()
  {
    if (b != null) {
      return "User needs to (re)enter credentials.";
    }
    return super.getMessage();
  }
}

/* Location:
 * Qualified Name:     agh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */