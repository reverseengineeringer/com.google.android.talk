import android.net.Uri;
import android.net.Uri.Builder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class dhr
{
  private static final dhu a = dhu.a("=").a();
  private static final dhu b = dhu.a("/").a();
  private static final dht c = new dht("/");
  private static final Pattern d = Pattern.compile("^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(www\\.google\\.com\\/visualsearch\\/lh))\\/");
  
  public static Uri a(String paramString1, String paramString2)
  {
    int k = 1;
    if (paramString2 == null) {
      return null;
    }
    if (paramString2 == null) {}
    for (boolean bool = false; !bool; bool = d.matcher(paramString2).find()) {
      return Uri.parse(paramString2);
    }
    paramString2 = Uri.parse(paramString2);
    Object localObject = a(b.a(paramString2.getPath()));
    int i = ((List)localObject).size();
    if ((((List)localObject).size() > 1) && (((String)((List)localObject).get(0)).equals("image"))) {
      i -= 1;
    }
    for (;;)
    {
      String str;
      if ((i >= 4) && (i <= 6))
      {
        str = paramString2.getPath();
        localObject = a(b.a(str));
        if ((((List)localObject).size() <= 0) || (!((String)((List)localObject).get(0)).equals("image"))) {
          break label446;
        }
        ((List)localObject).remove(0);
      }
      label210:
      label244:
      label328:
      label334:
      label347:
      label446:
      for (i = 1;; i = 0)
      {
        int m = ((List)localObject).size();
        bool = str.endsWith("/");
        int j;
        if ((!bool) && (m == 5))
        {
          j = 1;
          if (m != 4) {
            break label328;
          }
          if (j != 0) {
            ((List)localObject).add(((List)localObject).get(4));
          }
          if (k == 0) {
            break label334;
          }
          ((List)localObject).add(paramString1);
          if (i != 0) {
            ((List)localObject).add(0, "image");
          }
          if (bool) {
            ((List)localObject).add("");
          }
          paramString2 = paramString2.buildUpon();
          paramString1 = String.valueOf(c.a(new StringBuilder(), (Iterable)localObject).toString());
          if (paramString1.length() == 0) {
            break label347;
          }
        }
        for (paramString1 = "/".concat(paramString1);; paramString1 = new String("/"))
        {
          return paramString2.path(paramString1).build();
          j = 0;
          break;
          k = 0;
          break label210;
          ((List)localObject).set(4, paramString1);
          break label244;
        }
        if (i == 1)
        {
          localObject = (String)a(a.a(paramString2.getPath())).get(0);
          paramString1 = String.valueOf(localObject).length() + 1 + String.valueOf(paramString1).length() + (String)localObject + "=" + paramString1;
          return paramString2.buildUpon().path(paramString1).build();
        }
        return paramString2;
      }
    }
  }
  
  private static <E> ArrayList<E> a(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
    {
      paramIterable = new ArrayList((Collection)paramIterable);
      return paramIterable;
    }
    Iterator localIterator = paramIterable.iterator();
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      paramIterable = localArrayList;
      if (!localIterator.hasNext()) {
        break;
      }
      localArrayList.add(localIterator.next());
    }
  }
}

/* Location:
 * Qualified Name:     dhr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */