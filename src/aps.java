import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.util.Log;

public final class aps<Data>
  implements apg<Integer, Data>
{
  private final apg<Uri, Data> a;
  private final Resources b;
  
  public aps(Context paramContext, apg<Uri, Data> paramapg)
  {
    this(paramContext.getResources(), paramapg);
  }
  
  private aps(Resources paramResources, apg<Uri, Data> paramapg)
  {
    b = paramResources;
    a = paramapg;
  }
  
  private Uri a(Integer paramInteger)
  {
    try
    {
      Object localObject = String.valueOf("android.resource://");
      String str1 = String.valueOf(b.getResourcePackageName(paramInteger.intValue()));
      String str2 = String.valueOf(b.getResourceTypeName(paramInteger.intValue()));
      String str3 = String.valueOf(b.getResourceEntryName(paramInteger.intValue()));
      localObject = Uri.parse(String.valueOf(localObject).length() + 2 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + (String)localObject + str1 + "/" + str2 + "/" + str3);
      return (Uri)localObject;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      if (Log.isLoggable("ResourceLoader", 5))
      {
        paramInteger = String.valueOf(paramInteger);
        new StringBuilder(String.valueOf(paramInteger).length() + 30).append("Received invalid resource id: ").append(paramInteger);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     aps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */