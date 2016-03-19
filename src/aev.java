import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class aev
  implements aez
{
  private final String a;
  private final List<String> b;
  
  public aev(String paramString, List<String> paramList)
  {
    a = paramString;
    b = paramList;
  }
  
  public afb a()
  {
    return afb.n;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof aev)) {
      return false;
    }
    paramObject = (aev)paramObject;
    if (!TextUtils.equals(a, a)) {
      return false;
    }
    if (b == null) {
      return b == null;
    }
    int j = b.size();
    if (j != b.size()) {
      return false;
    }
    int i = 0;
    while (i < j)
    {
      if (!TextUtils.equals((CharSequence)b.get(i), (CharSequence)b.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    int i;
    label32:
    String str;
    if (a != null)
    {
      i = a.hashCode();
      if (b == null) {
        break label85;
      }
      Iterator localIterator = b.iterator();
      j = i;
      if (!localIterator.hasNext()) {
        return j;
      }
      str = (String)localIterator.next();
      if (str == null) {
        break label80;
      }
    }
    label80:
    for (int j = str.hashCode();; j = 0)
    {
      i = j + i * 31;
      break label32;
      i = 0;
      break;
    }
    label85:
    j = i;
    return j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = a;
    localStringBuilder.append(String.valueOf(str).length() + 24 + "android-custom: " + str + ", data: ");
    if (b == null) {}
    for (str = "null";; str = Arrays.toString(b.toArray()))
    {
      localStringBuilder.append(str);
      return localStringBuilder.toString();
    }
  }
}

/* Location:
 * Qualified Name:     aev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */