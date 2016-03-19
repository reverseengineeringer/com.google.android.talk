import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import java.util.Map;
import org.chromium.net.UserAgent;

public final class iik
  extends iie
{
  private final ihb b;
  
  public iik(Context paramContext, String paramString1, String paramString2, ihb paramihb)
  {
    super(paramContext, paramString1, paramString2);
    b = paramihb;
  }
  
  protected String a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder(UserAgent.a(paramContext));
    localStringBuilder.append("; G+ SDK/");
    if (b.f() == null) {}
    for (paramContext = "1.0.0";; paramContext = b.f())
    {
      localStringBuilder.append(paramContext);
      localStringBuilder.append(';');
      return localStringBuilder.toString();
    }
  }
  
  public Map<String, String> a(String paramString)
  {
    Map localMap = super.a(paramString);
    Object localObject = b;
    paramString = (String)localObject;
    if (((ihb)localObject).e() != null) {
      paramString = ((ihb)localObject).e();
    }
    if (paramString.d() != null) {}
    for (localObject = paramString.d();; localObject = "0")
    {
      String str1 = paramString.b();
      String str2 = paramString.a();
      paramString = paramString.c();
      localObject = String.valueOf(Uri.encode((String)localObject));
      localObject = Uri.parse(String.valueOf(localObject).length() + 35 + "http://" + (String)localObject + ".apps.googleusercontent.com/").buildUpon();
      if (str1 != null) {
        ((Uri.Builder)localObject).appendQueryParameter("client_id", str1);
      }
      if (str2 != null) {
        ((Uri.Builder)localObject).appendQueryParameter("api_key", str2);
      }
      if (paramString != null) {
        ((Uri.Builder)localObject).appendQueryParameter("pkg", paramString);
      }
      localMap.put("X-Container-Url", ((Uri.Builder)localObject).build().toString());
      return localMap;
    }
  }
}

/* Location:
 * Qualified Name:     iik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */