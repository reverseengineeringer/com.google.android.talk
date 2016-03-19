import android.os.Bundle;
import java.io.IOException;

public final class arw
  extends IOException
{
  private static final long serialVersionUID = -4338378848813561757L;
  
  public arw(int paramInt1, int paramInt2)
  {
    super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + paramInt1 + " limit " + paramInt2 + ").");
  }
  
  public arw(Bundle paramBundle)
  {
    super("Blocked by rule: " + paramBundle.getString("name"));
  }
  
  public arw(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     arw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */