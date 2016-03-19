import android.app.ActivityManager;
import java.util.ArrayList;
import java.util.List;

public class dsi
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final List<cyx> g;
  
  private dsi(kdu paramkdu)
  {
    super(responseHeader, -1L);
    if (ActivityManager.isUserAMonkey()) {
      g = new ArrayList();
    }
    for (;;)
    {
      if (dqf.a)
      {
        paramkdu = String.valueOf(paramkdu);
        new StringBuilder(String.valueOf(paramkdu).length() + 28).append("SearchEntitiesResponse from:").append(paramkdu);
      }
      return;
      g = aal.a(a);
      if (dqf.a)
      {
        int i = g.size();
        new StringBuilder(54).append("SearchEntitiesResponse. Number of entities:").append(i);
      }
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kdu)lyi.b(new kdu(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsi(paramArrayOfByte);
  }
  
  public List<cyx> k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     dsi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */