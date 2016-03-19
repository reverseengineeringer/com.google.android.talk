import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class cda
  extends bxq
  implements bxr
{
  public static cda a(Resources paramResources)
  {
    cda localcda = new cda();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramResources.getString(StressMode.iR));
    localBundle.putString("message", paramResources.getString(StressMode.iQ));
    localBundle.putString("positive", paramResources.getString(StressMode.al));
    localBundle.putString("negative", paramResources.getString(StressMode.U));
    localcda.setArguments(localBundle);
    localcda.setTargetFragment(localcda, 0);
    return localcda;
  }
  
  public void a(Bundle paramBundle, String paramString)
  {
    if (paramString.equals("clear_recent_calls")) {
      RealTimeChatService.c(((hpu)an.a(hpu.class)).a());
    }
  }
  
  public void a(bg parambg)
  {
    a(parambg, "clear_recent_calls");
  }
  
  public void b(String paramString) {}
  
  public void c(String paramString) {}
}

/* Location:
 * Qualified Name:     cda
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */