import android.net.Uri;
import android.net.Uri.Builder;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Deprecated
public final class idg
{
  private static final Pattern a = Pattern.compile("^(((http(s)?):)?\\/\\/images(\\d)?-.+-opensocial\\.googleusercontent\\.com\\/gadgets\\/proxy\\?)");
  private static int b;
  
  private static Uri a(int paramInt1, int paramInt2, Uri paramUri, String paramString)
  {
    Object localObject1 = Uri.EMPTY.buildUpon();
    ((Uri.Builder)localObject1).authority(paramUri.getAuthority());
    ((Uri.Builder)localObject1).scheme(paramUri.getScheme());
    ((Uri.Builder)localObject1).path(paramUri.getPath());
    if ((paramInt1 != -1) && (paramInt2 != -1))
    {
      ((Uri.Builder)localObject1).appendQueryParameter("resize_w", Integer.toString(paramInt1));
      ((Uri.Builder)localObject1).appendQueryParameter("resize_h", Integer.toString(paramInt2));
      ((Uri.Builder)localObject1).appendQueryParameter("no_expand", "1");
    }
    Object localObject2 = ((Uri.Builder)localObject1).build();
    if (paramUri.isOpaque()) {
      throw new UnsupportedOperationException("This isn't a hierarchical URI.");
    }
    localObject1 = paramUri.getEncodedQuery();
    Object localObject3;
    label135:
    int i;
    label200:
    int j;
    label213:
    Uri.Builder localBuilder;
    if (localObject1 == null)
    {
      localObject1 = Collections.emptySet();
      localObject3 = ((Set)localObject1).iterator();
      localObject1 = localObject2;
      do
      {
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject2 = (String)((Iterator)localObject3).next();
      } while (((Uri)localObject1).getQueryParameter((String)localObject2) != null);
      if ((!"resize_w".equals(localObject2)) && (!"resize_h".equals(localObject2)) && (!"no_expand".equals(localObject2))) {
        break label376;
      }
      i = 1;
      if ((paramInt1 != -1) && (paramInt2 != -1)) {
        break label382;
      }
      j = 1;
      localBuilder = ((Uri)localObject1).buildUpon();
      if (!"url".equals(localObject2)) {
        break label388;
      }
      localBuilder.appendQueryParameter("url", paramUri.getQueryParameter("url"));
    }
    for (;;)
    {
      localObject1 = localBuilder.build();
      break label135;
      localObject3 = new LinkedHashSet();
      j = 0;
      do
      {
        int k = ((String)localObject1).indexOf('&', j);
        i = k;
        if (k == -1) {
          i = ((String)localObject1).length();
        }
        int m = ((String)localObject1).indexOf('=', j);
        if (m <= i)
        {
          k = m;
          if (m != -1) {}
        }
        else
        {
          k = i;
        }
        ((Set)localObject3).add(Uri.decode(((String)localObject1).substring(j, k)));
        i += 1;
        j = i;
      } while (i < ((String)localObject1).length());
      localObject1 = Collections.unmodifiableSet((Set)localObject3);
      break;
      label376:
      i = 0;
      break label200;
      label382:
      j = 0;
      break label213;
      label388:
      if ((j != 0) && (i != 0)) {
        break label135;
      }
      localObject1 = paramUri.getQueryParameters((String)localObject2).iterator();
      while (((Iterator)localObject1).hasNext()) {
        localBuilder.appendQueryParameter((String)localObject2, (String)((Iterator)localObject1).next());
      }
    }
    paramUri = (Uri)localObject1;
    if (paramString != null)
    {
      paramUri = (Uri)localObject1;
      if (((Uri)localObject1).getQueryParameter("url") == null)
      {
        paramUri = ((Uri)localObject1).buildUpon();
        paramUri.appendQueryParameter("url", paramString);
        paramUri = paramUri.build();
      }
    }
    paramString = paramUri;
    if (paramUri.getQueryParameter("container") == null)
    {
      paramUri = paramUri.buildUpon();
      paramUri.appendQueryParameter("container", "esmobile");
      paramString = paramUri.build();
    }
    paramUri = paramString;
    if (paramString.getQueryParameter("gadget") == null)
    {
      paramUri = paramString.buildUpon();
      paramUri.appendQueryParameter("gadget", "a");
      paramUri = paramUri.build();
    }
    paramString = paramUri;
    if (paramUri.getQueryParameter("rewriteMime") == null)
    {
      paramUri = paramUri.buildUpon();
      paramUri.appendQueryParameter("rewriteMime", "image/*");
      paramString = paramUri.build();
    }
    return paramString;
  }
  
  private static String a()
  {
    String str1 = String.valueOf("https://images");
    int i = b();
    String str2 = String.valueOf("-esmobile-opensocial.googleusercontent.com/gadgets/proxy");
    return String.valueOf(str1).length() + 11 + String.valueOf(str2).length() + str1 + i + str2;
  }
  
  static String a(int paramInt1, int paramInt2, String paramString)
  {
    if (paramString == null) {
      return paramString;
    }
    String str2;
    String str1;
    if (!a(paramString))
    {
      str2 = a();
      str1 = paramString;
    }
    for (;;)
    {
      return a(paramInt1, paramInt2, Uri.parse(str2), str1).toString();
      str1 = null;
      str2 = paramString;
    }
  }
  
  static String a(int paramInt, String paramString)
  {
    if (paramString == null) {
      return paramString;
    }
    String str2;
    String str1;
    if (!a(paramString))
    {
      str2 = a();
      str1 = paramString;
    }
    for (;;)
    {
      return a(paramInt, paramInt, Uri.parse(str2), str1).toString();
      str1 = null;
      str2 = paramString;
    }
  }
  
  private static boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return a.matcher(paramString).find();
  }
  
  private static int b()
  {
    try
    {
      int i = b + 1;
      b = i;
      b %= 3;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     idg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */