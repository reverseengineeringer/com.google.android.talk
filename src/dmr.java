import java.util.Iterator;
import java.util.List;

public final class dmr
{
  public static final dmr c = new dmr();
  public int a = 1;
  public String b = null;
  
  public dmr() {}
  
  public dmr(jyp paramjyp)
  {
    if (paramjyp != null)
    {
      a = aal.a(a, 1);
      if (b != null) {
        b = b.a;
      }
    }
  }
  
  public static String a(List<dmr> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return "Empty deliveryMediumList. ";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localStringBuilder.append((dmr)paramList.next());
    }
    return localStringBuilder.toString();
  }
  
  public String toString()
  {
    int i = a;
    String str = b;
    return String.valueOf(str).length() + 33 + "Medium (type=" + i + " phone=" + str + ") ";
  }
}

/* Location:
 * Qualified Name:     dmr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */