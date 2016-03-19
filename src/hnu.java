import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class hnu
{
  private static final hpa l;
  private static final Pattern o = Pattern.compile("\\[([^\\[\\]])*\\]");
  private static final Pattern p = Pattern.compile("\\d(?=[^,}][^,}])");
  private static final Pattern q = Pattern.compile("[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]*)+");
  private static final Pattern r = Pattern.compile("[- ]");
  private static final Pattern s = Pattern.compile(" ");
  private List<hoz> A = new ArrayList();
  private hou B = new hou(64);
  private String a = "";
  private StringBuilder b = new StringBuilder();
  private String c = "";
  private StringBuilder d = new StringBuilder();
  private StringBuilder e = new StringBuilder();
  private boolean f = true;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private final hof j = hof.b();
  private String k;
  private hpa m;
  private hpa n;
  private int t = 0;
  private int u = 0;
  private int v = 0;
  private StringBuilder w = new StringBuilder();
  private boolean x = false;
  private String y = "";
  private StringBuilder z = new StringBuilder();
  
  static
  {
    hpa localhpa = new hpa();
    l = localhpa;
    s = "NA";
  }
  
  hnu(String paramString)
  {
    k = paramString;
    n = a(k);
    m = n;
  }
  
  private hpa a(String paramString)
  {
    int i1 = j.e(paramString);
    paramString = j.b(i1);
    paramString = j.d(paramString);
    if (paramString != null) {
      return paramString;
    }
    return l;
  }
  
  private String a(char paramChar, boolean paramBoolean)
  {
    int i2 = 1;
    d.append(paramChar);
    if (paramBoolean) {
      u = d.length();
    }
    int i1;
    char c1;
    Object localObject;
    if ((Character.isDigit(paramChar)) || ((d.length() == 1) && (hof.b.matcher(Character.toString(paramChar)).matches())))
    {
      i1 = 1;
      if (i1 != 0) {
        break label113;
      }
      f = false;
      g = true;
      c1 = paramChar;
      if (f) {
        break label299;
      }
      if (!g) {
        break label183;
      }
      localObject = d.toString();
    }
    label113:
    label183:
    label299:
    String str1;
    String str2;
    do
    {
      return (String)localObject;
      i1 = 0;
      break;
      if (paramChar == '+') {
        e.append(paramChar);
      }
      for (;;)
      {
        c1 = paramChar;
        if (!paramBoolean) {
          break;
        }
        v = e.length();
        c1 = paramChar;
        break;
        paramChar = Character.forDigit(Character.digit(paramChar, 10), 10);
        e.append(paramChar);
        z.append(paramChar);
      }
      if (i())
      {
        if (j()) {
          return d();
        }
      }
      else
      {
        if (y.length() > 0)
        {
          z.insert(0, y);
          i1 = w.lastIndexOf(y);
          w.setLength(i1);
        }
        if (!y.equals(h())) {}
        for (i1 = i2; i1 != 0; i1 = 0)
        {
          w.append(' ');
          return d();
        }
      }
      return d.toString();
      switch (e.length())
      {
      }
      while (i)
      {
        if (j()) {
          i = false;
        }
        localObject = String.valueOf(String.valueOf(w));
        str1 = String.valueOf(String.valueOf(z.toString()));
        return ((String)localObject).length() + 0 + str1.length() + (String)localObject + str1;
        return d.toString();
        if (i())
        {
          i = true;
        }
        else
        {
          y = h();
          return f();
        }
      }
      if (A.size() <= 0) {
        break label534;
      }
      str2 = c(c1);
      str1 = e();
      localObject = str1;
    } while (str1.length() > 0);
    b(z.toString());
    if (c()) {
      return g();
    }
    if (f) {
      return c(str2);
    }
    return d.toString();
    label534:
    return f();
  }
  
  private void b(String paramString)
  {
    int i1 = paramString.length();
    Iterator localIterator = A.iterator();
    while (localIterator.hasNext())
    {
      hoz localhoz = (hoz)localIterator.next();
      if (c.length != 0)
      {
        int i2 = Math.min(i1 - 3, c.length - 1);
        if (!B.a(c[i2]).matcher(paramString).lookingAt()) {
          localIterator.remove();
        }
      }
    }
  }
  
  private String c(char paramChar)
  {
    Matcher localMatcher = s.matcher(b);
    if (localMatcher.find(t))
    {
      String str = localMatcher.replaceFirst(Character.toString(paramChar));
      b.replace(0, str.length(), str);
      t = localMatcher.start();
      return b.substring(0, t + 1);
    }
    if (A.size() == 1) {
      f = false;
    }
    c = "";
    return d.toString();
  }
  
  private String c(String paramString)
  {
    int i1 = w.length();
    if ((x) && (i1 > 0) && (w.charAt(i1 - 1) != ' '))
    {
      str = String.valueOf(String.valueOf(new String(w)));
      paramString = String.valueOf(String.valueOf(paramString));
      return str.length() + 1 + paramString.length() + str + ' ' + paramString;
    }
    String str = String.valueOf(String.valueOf(w));
    paramString = String.valueOf(String.valueOf(paramString));
    return str.length() + 0 + paramString.length() + str + paramString;
  }
  
  private boolean c()
  {
    Iterator localIterator = A.iterator();
    while (localIterator.hasNext())
    {
      hoz localhoz = (hoz)localIterator.next();
      String str2 = a;
      if (c.equals(str2)) {
        return false;
      }
      String str1 = a;
      String str3;
      Object localObject;
      if (str1.indexOf('|') == -1)
      {
        str1 = o.matcher(str1).replaceAll("\\\\d");
        str1 = p.matcher(str1).replaceAll("\\\\d");
        b.setLength(0);
        str3 = b;
        localObject = B.a(str1).matcher("999999999999999");
        ((Matcher)localObject).find();
        localObject = ((Matcher)localObject).group();
        if (((String)localObject).length() < z.length())
        {
          str1 = "";
          if (str1.length() <= 0) {
            break label230;
          }
          b.append(str1);
        }
      }
      label230:
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          break label235;
        }
        c = str2;
        x = r.matcher(d).find();
        t = 0;
        return true;
        str1 = ((String)localObject).replaceAll(str1, str3).replaceAll("9", " ");
        break;
      }
      label235:
      localIterator.remove();
    }
    f = false;
    return false;
  }
  
  private String d()
  {
    f = true;
    i = false;
    A.clear();
    t = 0;
    b.setLength(0);
    c = "";
    return f();
  }
  
  private String e()
  {
    Iterator localIterator = A.iterator();
    while (localIterator.hasNext())
    {
      hoz localhoz = (hoz)localIterator.next();
      Matcher localMatcher = B.a(a).matcher(z);
      if (localMatcher.matches())
      {
        x = r.matcher(d).find();
        return c(localMatcher.replaceAll(b));
      }
    }
    return "";
  }
  
  private String f()
  {
    int i2 = 0;
    if (z.length() >= 3)
    {
      String str1 = z.toString();
      if ((h) && (n.A.length > 0))
      {
        localObject1 = n.A;
        if (n.u.equals("")) {
          break label163;
        }
      }
      label163:
      for (int i1 = 1;; i1 = 0)
      {
        int i3 = localObject1.length;
        while (i2 < i3)
        {
          Object localObject2 = localObject1[i2];
          if ((i1 == 0) || (h) || (e) || (hof.c(d)))
          {
            String str2 = b;
            if (q.matcher(str2).matches()) {
              A.add(localObject2);
            }
          }
          i2 += 1;
        }
        localObject1 = n.z;
        break;
      }
      b(str1);
      Object localObject1 = e();
      if (((String)localObject1).length() > 0) {
        return (String)localObject1;
      }
      if (c()) {
        return g();
      }
      return d.toString();
    }
    return c(z.toString());
  }
  
  private String g()
  {
    int i2 = z.length();
    if (i2 > 0)
    {
      String str = "";
      int i1 = 0;
      while (i1 < i2)
      {
        str = c(z.charAt(i1));
        i1 += 1;
      }
      if (f) {
        return c(str);
      }
      return d.toString();
    }
    return w.toString();
  }
  
  private String h()
  {
    int i2 = 1;
    int i1;
    if ((n.r == 1) && (z.charAt(0) == '1') && (z.charAt(1) != '0') && (z.charAt(1) != '1'))
    {
      i1 = 1;
      if (i1 == 0) {
        break label107;
      }
      w.append('1').append(' ');
      h = true;
      i1 = i2;
    }
    for (;;)
    {
      Object localObject = z.substring(0, i1);
      z.delete(0, i1);
      return (String)localObject;
      i1 = 0;
      break;
      label107:
      if (!n.w.equals(""))
      {
        localObject = B.a(n.w).matcher(z);
        if ((((Matcher)localObject).lookingAt()) && (((Matcher)localObject).end() > 0))
        {
          h = true;
          i1 = ((Matcher)localObject).end();
          w.append(z.substring(0, i1));
          continue;
        }
      }
      i1 = 0;
    }
  }
  
  private boolean i()
  {
    hou localhou = B;
    Object localObject = String.valueOf("\\+|");
    String str = String.valueOf(n.s);
    if (str.length() != 0) {}
    for (localObject = ((String)localObject).concat(str);; localObject = new String((String)localObject))
    {
      localObject = localhou.a((String)localObject).matcher(e);
      if (!((Matcher)localObject).lookingAt()) {
        break;
      }
      h = true;
      int i1 = ((Matcher)localObject).end();
      z.setLength(0);
      z.append(e.substring(i1));
      w.setLength(0);
      w.append(e.substring(0, i1));
      if (e.charAt(0) != '+') {
        w.append(' ');
      }
      return true;
    }
    return false;
  }
  
  private boolean j()
  {
    if (z.length() == 0) {}
    int i1;
    do
    {
      return false;
      localObject = new StringBuilder();
      i1 = j.a(z, (StringBuilder)localObject);
    } while (i1 == 0);
    z.setLength(0);
    z.append((CharSequence)localObject);
    Object localObject = j.b(i1);
    if ("001".equals(localObject)) {
      n = j.a(i1);
    }
    for (;;)
    {
      localObject = Integer.toString(i1);
      w.append((String)localObject).append(' ');
      y = "";
      return true;
      if (!((String)localObject).equals(k)) {
        n = a((String)localObject);
      }
    }
  }
  
  public String a(char paramChar)
  {
    a = a(paramChar, false);
    return a;
  }
  
  public void a()
  {
    a = "";
    d.setLength(0);
    e.setLength(0);
    b.setLength(0);
    t = 0;
    c = "";
    w.setLength(0);
    y = "";
    z.setLength(0);
    f = true;
    g = false;
    v = 0;
    u = 0;
    h = false;
    i = false;
    A.clear();
    x = false;
    if (!n.equals(m)) {
      n = a(k);
    }
  }
  
  public int b()
  {
    int i1 = 0;
    int i3;
    if (!f)
    {
      i3 = u;
      return i3;
    }
    for (int i2 = 0;; i2 = i3)
    {
      i3 = i1;
      if (i2 >= v) {
        break;
      }
      i3 = i1;
      if (i1 >= a.length()) {
        break;
      }
      i3 = i2;
      if (e.charAt(i2) == a.charAt(i1)) {
        i3 = i2 + 1;
      }
      i1 += 1;
    }
  }
  
  public String b(char paramChar)
  {
    a = a(paramChar, true);
    return a;
  }
}

/* Location:
 * Qualified Name:     hnu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */