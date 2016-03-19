import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class bjf
{
  Map<Integer, Set<String>> a = new HashMap();
  
  bjf()
  {
    RealTimeChatService.a(new bjg(this));
  }
  
  public boolean a(int paramInt, String paramString)
  {
    Set localSet = (Set)a.get(Integer.valueOf(paramInt));
    return (localSet != null) && (localSet.contains(paramString));
  }
}

/* Location:
 * Qualified Name:     bjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */