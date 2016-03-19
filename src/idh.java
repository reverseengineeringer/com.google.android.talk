import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class idh
{
  private static final Set<String> a;
  
  static
  {
    gvt localgvt = new gvt();
    a = localgvt;
    localgvt.addAll(Arrays.asList(new String[] { "expire", "signature" }));
  }
  
  public static String a(String paramString)
  {
    if (Build.VERSION.SDK_INT < 11) {}
    Object localObject;
    int i;
    do
    {
      Uri localUri;
      do
      {
        return paramString;
        localUri = Uri.parse(paramString);
        localObject = localUri.getHost();
      } while ((localObject == null) || (!((String)localObject).contains("google")));
      localObject = localUri.buildUpon();
      ((Uri.Builder)localObject).clearQuery();
      Iterator localIterator1 = localUri.getQueryParameterNames().iterator();
      i = 0;
      while (localIterator1.hasNext())
      {
        String str = (String)localIterator1.next();
        if (a.contains(str))
        {
          i = 1;
        }
        else
        {
          Iterator localIterator2 = localUri.getQueryParameters(str).iterator();
          while (localIterator2.hasNext()) {
            ((Uri.Builder)localObject).appendQueryParameter(str, (String)localIterator2.next());
          }
        }
      }
    } while (i == 0);
    return ((Uri.Builder)localObject).toString();
  }
}

/* Location:
 * Qualified Name:     idh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */