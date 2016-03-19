import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class afy
  implements afq
{
  private static Set<String> a = new HashSet(Arrays.asList(new String[] { "X-PHONETIC-FIRST-NAME", "X-PHONETIC-MIDDLE-NAME", "X-PHONETIC-LAST-NAME", "X-ABADR", "X-ABUID" }));
  private static Set<String> b = new HashSet(Arrays.asList(new String[] { "X-GNO", "X-GN", "X-REDUCTION" }));
  private static Set<String> c = new HashSet(Arrays.asList(new String[] { "X-MICROSOFT-ASST_TEL", "X-MICROSOFT-ASSISTANT", "X-MICROSOFT-OFFICELOC" }));
  private static Set<String> d = new HashSet(Arrays.asList(new String[] { "X-SD-VERN", "X-SD-FORMAT_VER", "X-SD-CATEGORIES", "X-SD-CLASS", "X-SD-DCREATED", "X-SD-DESCRIPTION" }));
  private static String e = "X-SD-CHAR_CODE";
  private int f = 0;
  private int g = -1;
  private String h;
  
  public void a() {}
  
  public void a(afx paramafx)
  {
    String str = paramafx.a();
    paramafx = paramafx.d();
    if ((str.equalsIgnoreCase("VERSION")) && (paramafx.size() > 0))
    {
      paramafx = (String)paramafx.get(0);
      if (paramafx.equals("2.1"))
      {
        g = 0;
        if (f == 0) {
          break label171;
        }
      }
    }
    label171:
    do
    {
      return;
      if (paramafx.equals("3.0"))
      {
        g = 1;
        break;
      }
      if (paramafx.equals("4.0"))
      {
        g = 2;
        break;
      }
      paramafx = String.valueOf(paramafx);
      if (paramafx.length() != 0)
      {
        "Invalid version string: ".concat(paramafx);
        break;
      }
      new String("Invalid version string: ");
      break;
      if (!str.equalsIgnoreCase(e)) {
        break;
      }
      f = 3;
      if (paramafx.size() <= 0) {
        break;
      }
      h = ((String)paramafx.get(0));
      break;
      if (c.contains(str))
      {
        f = 4;
        return;
      }
      if (d.contains(str))
      {
        f = 3;
        return;
      }
      if (b.contains(str))
      {
        f = 2;
        return;
      }
    } while (!a.contains(str));
    f = 1;
  }
  
  public void b() {}
  
  public int c()
  {
    switch (f)
    {
    default: 
      if (g == 0) {
        return -1073741824;
      }
      break;
    case 3: 
      return 939524104;
    case 2: 
      return 402653192;
    }
    if (g == 1) {
      return -1073741823;
    }
    if (g == 2) {
      return -1073741822;
    }
    return 0;
  }
  
  public void d() {}
  
  public void e() {}
}

/* Location:
 * Qualified Name:     afy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */