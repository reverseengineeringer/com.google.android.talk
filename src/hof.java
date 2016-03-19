import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class hof
{
  private static final Pattern A;
  private static hof B;
  static final hnv a = new hnv();
  static final Pattern b;
  static final Pattern c;
  static final Pattern d;
  static final String e;
  static final Pattern f;
  private static final Logger g = Logger.getLogger(hof.class.getName());
  private static final Map<Integer, String> h;
  private static final Map<Character, Character> i;
  private static final Map<Character, Character> j;
  private static final Map<Character, Character> k;
  private static final Map<Character, Character> l;
  private static final Pattern m;
  private static final String n;
  private static final Pattern o;
  private static final Pattern p;
  private static final Pattern q;
  private static final Pattern r;
  private static final String s;
  private static final String t;
  private static final Pattern u;
  private static final Pattern v;
  private static final Pattern w;
  private static final Pattern x;
  private static final Pattern y;
  private static final Pattern z;
  private final hnx C;
  private final Map<Integer, List<String>> D;
  private final Set<String> E = new HashSet(35);
  private final hou F = new hou(100);
  private final Set<String> G = new HashSet(320);
  private final Set<Integer> H = new HashSet();
  
  static
  {
    Object localObject1 = new HashMap();
    ((HashMap)localObject1).put(Integer.valueOf(52), "1");
    ((HashMap)localObject1).put(Integer.valueOf(54), "9");
    h = Collections.unmodifiableMap((Map)localObject1);
    localObject1 = new HashMap();
    ((HashMap)localObject1).put(Character.valueOf('0'), Character.valueOf('0'));
    ((HashMap)localObject1).put(Character.valueOf('1'), Character.valueOf('1'));
    ((HashMap)localObject1).put(Character.valueOf('2'), Character.valueOf('2'));
    ((HashMap)localObject1).put(Character.valueOf('3'), Character.valueOf('3'));
    ((HashMap)localObject1).put(Character.valueOf('4'), Character.valueOf('4'));
    ((HashMap)localObject1).put(Character.valueOf('5'), Character.valueOf('5'));
    ((HashMap)localObject1).put(Character.valueOf('6'), Character.valueOf('6'));
    ((HashMap)localObject1).put(Character.valueOf('7'), Character.valueOf('7'));
    ((HashMap)localObject1).put(Character.valueOf('8'), Character.valueOf('8'));
    ((HashMap)localObject1).put(Character.valueOf('9'), Character.valueOf('9'));
    Object localObject2 = new HashMap(40);
    ((HashMap)localObject2).put(Character.valueOf('A'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('B'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('C'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('D'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('E'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('F'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('G'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('H'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('I'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('J'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('K'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('L'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('M'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('N'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('O'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('P'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('Q'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('R'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('S'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('T'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('U'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('V'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('W'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('X'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('Y'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('Z'), Character.valueOf('9'));
    j = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap(100);
    ((HashMap)localObject2).putAll(j);
    ((HashMap)localObject2).putAll((Map)localObject1);
    k = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap();
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).put(Character.valueOf('+'), Character.valueOf('+'));
    ((HashMap)localObject2).put(Character.valueOf('*'), Character.valueOf('*'));
    i = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap();
    Object localObject3 = j.keySet().iterator();
    while (((Iterator)localObject3).hasNext())
    {
      char c1 = ((Character)((Iterator)localObject3).next()).charValue();
      ((HashMap)localObject2).put(Character.valueOf(Character.toLowerCase(c1)), Character.valueOf(c1));
      ((HashMap)localObject2).put(Character.valueOf(c1), Character.valueOf(c1));
    }
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).put(Character.valueOf('-'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf(65293), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‐'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‑'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‒'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('–'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('—'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('―'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('−'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('/'), Character.valueOf('/'));
    ((HashMap)localObject2).put(Character.valueOf(65295), Character.valueOf('/'));
    ((HashMap)localObject2).put(Character.valueOf(' '), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('　'), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('⁠'), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('.'), Character.valueOf('.'));
    ((HashMap)localObject2).put(Character.valueOf(65294), Character.valueOf('.'));
    l = Collections.unmodifiableMap((Map)localObject2);
    m = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
    localObject1 = String.valueOf(Arrays.toString(j.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
    localObject2 = String.valueOf(Arrays.toString(j.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
    if (((String)localObject2).length() != 0)
    {
      localObject1 = ((String)localObject1).concat((String)localObject2);
      n = (String)localObject1;
      b = Pattern.compile("[+＋]+");
      o = Pattern.compile("[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]+");
      p = Pattern.compile("(\\p{Nd})");
      q = Pattern.compile("[+＋\\p{Nd}]");
      c = Pattern.compile("[\\\\/] *x");
      d = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
      r = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
      localObject1 = String.valueOf(String.valueOf("\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*"));
      localObject2 = String.valueOf(String.valueOf(n));
      localObject3 = String.valueOf(String.valueOf("\\p{Nd}"));
      s = ((String)localObject1).length() + 2 + ((String)localObject2).length() + ((String)localObject3).length() + (String)localObject1 + (String)localObject2 + (String)localObject3 + "]*";
      localObject1 = String.valueOf("xｘ#＃~～");
      if (((String)localObject1).length() == 0) {
        break label1476;
      }
    }
    label1476:
    for (localObject1 = ",".concat((String)localObject1);; localObject1 = new String(","))
    {
      t = h((String)localObject1);
      e = h("xｘ#＃~～");
      localObject1 = String.valueOf(String.valueOf(t));
      u = Pattern.compile(((String)localObject1).length() + 5 + "(?:" + (String)localObject1 + ")$", 66);
      localObject1 = String.valueOf(String.valueOf(s));
      localObject2 = String.valueOf(String.valueOf(t));
      v = Pattern.compile(((String)localObject1).length() + 5 + ((String)localObject2).length() + (String)localObject1 + "(?:" + (String)localObject2 + ")?", 66);
      f = Pattern.compile("(\\D+)");
      w = Pattern.compile("(\\$\\d)");
      x = Pattern.compile("\\$NP");
      y = Pattern.compile("\\$FG");
      z = Pattern.compile("\\$CC");
      A = Pattern.compile("\\(?\\$1\\)?");
      B = null;
      return;
      localObject1 = new String((String)localObject1);
      break;
    }
  }
  
  private hof(hnx paramhnx, Map<Integer, List<String>> paramMap)
  {
    C = paramhnx;
    D = paramMap;
    paramhnx = paramMap.entrySet().iterator();
    while (paramhnx.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramhnx.next();
      List localList = (List)localEntry.getValue();
      if ((localList.size() == 1) && ("001".equals(localList.get(0)))) {
        H.add(localEntry.getKey());
      } else {
        G.addAll(localList);
      }
    }
    if (G.remove("001")) {
      g.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
    }
    E.addAll((Collection)paramMap.get(Integer.valueOf(1)));
  }
  
  private int a(String paramString, hpa paramhpa)
  {
    if (!b(paramString, a)) {
      return hoq.l;
    }
    if (b(paramString, e)) {
      return hoq.e;
    }
    if (b(paramString, d)) {
      return hoq.d;
    }
    if (b(paramString, f)) {
      return hoq.f;
    }
    if (b(paramString, h)) {
      return hoq.g;
    }
    if (b(paramString, g)) {
      return hoq.h;
    }
    if (b(paramString, i)) {
      return hoq.i;
    }
    if (b(paramString, j)) {
      return hoq.j;
    }
    if (b(paramString, l)) {
      return hoq.k;
    }
    if (b(paramString, b))
    {
      if (y) {
        return hoq.c;
      }
      if (b(paramString, c)) {
        return hoq.c;
      }
      return hoq.a;
    }
    if ((!y) && (b(paramString, c))) {
      return hoq.b;
    }
    return hoq.l;
  }
  
  private static int a(Pattern paramPattern, String paramString)
  {
    paramPattern = paramPattern.matcher(paramString);
    if (paramPattern.matches()) {
      return hor.a;
    }
    if (paramPattern.lookingAt()) {
      return hor.d;
    }
    return hor.c;
  }
  
  private hpa a(int paramInt, String paramString)
  {
    if ("001".equals(paramString)) {
      return a(paramInt);
    }
    return d(paramString);
  }
  
  private String a(hos paramhos, List<String> paramList)
  {
    paramhos = a(paramhos);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      hpa localhpa = d(str);
      if (!C.equals(""))
      {
        if (F.a(C).matcher(paramhos).lookingAt()) {
          return str;
        }
      }
      else if (a(paramhos, localhpa) != hoq.l) {
        return str;
      }
    }
    return null;
  }
  
  static String a(String paramString)
  {
    Object localObject1 = q.matcher(paramString);
    if (((Matcher)localObject1).find())
    {
      localObject1 = paramString.substring(((Matcher)localObject1).start());
      Object localObject2 = d.matcher((CharSequence)localObject1);
      paramString = (String)localObject1;
      Level localLevel;
      if (((Matcher)localObject2).find())
      {
        localObject1 = ((String)localObject1).substring(0, ((Matcher)localObject2).start());
        localObject2 = g;
        localLevel = Level.FINER;
        paramString = String.valueOf(localObject1);
        if (paramString.length() == 0) {
          break label116;
        }
      }
      label116:
      for (paramString = "Stripped trailing characters: ".concat(paramString);; paramString = new String("Stripped trailing characters: "))
      {
        ((Logger)localObject2).log(localLevel, paramString);
        paramString = (String)localObject1;
        localObject2 = c.matcher(paramString);
        localObject1 = paramString;
        if (((Matcher)localObject2).find()) {
          localObject1 = paramString.substring(0, ((Matcher)localObject2).start());
        }
        return (String)localObject1;
      }
    }
    return "";
  }
  
  private String a(String paramString1, hoz paramhoz, int paramInt, String paramString2)
  {
    paramString2 = b;
    paramString1 = F.a(a).matcher(paramString1);
    int i1 = hop.c;
    paramhoz = d;
    if ((paramInt == hop.c) && (paramhoz != null) && (paramhoz.length() > 0)) {}
    for (paramString1 = paramString1.replaceAll(w.matcher(paramString2).replaceFirst(paramhoz));; paramString1 = paramString1.replaceAll(paramString2))
    {
      paramhoz = paramString1;
      if (paramInt == hop.d)
      {
        paramhoz = o.matcher(paramString1);
        if (paramhoz.lookingAt()) {
          paramString1 = paramhoz.replaceFirst("");
        }
        paramhoz = paramhoz.reset(paramString1).replaceAll("-");
      }
      return paramhoz;
    }
  }
  
  static StringBuilder a(String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    paramString = paramString.toCharArray();
    int i2 = paramString.length;
    int i1 = 0;
    if (i1 < i2)
    {
      char c1 = paramString[i1];
      int i3 = Character.digit(c1, 10);
      if (i3 != -1) {
        localStringBuilder.append(i3);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (paramBoolean) {
          localStringBuilder.append(c1);
        }
      }
    }
    return localStringBuilder;
  }
  
  private static void a(int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
  {
    switch (hog.b[(paramInt2 - 1)])
    {
    default: 
      return;
    case 1: 
      paramStringBuilder.insert(0, paramInt1).insert(0, '+');
      return;
    case 2: 
      paramStringBuilder.insert(0, " ").insert(0, paramInt1).insert(0, '+');
      return;
    }
    paramStringBuilder.insert(0, "-").insert(0, paramInt1).insert(0, '+').insert(0, "tel:");
  }
  
  private static void a(hof paramhof)
  {
    try
    {
      B = paramhof;
      return;
    }
    finally
    {
      paramhof = finally;
      throw paramhof;
    }
  }
  
  private static void a(String paramString, hos paramhos)
  {
    if ((paramString.length() > 1) && (paramString.charAt(0) == '0'))
    {
      paramhos.a(true);
      int i1 = 1;
      while ((i1 < paramString.length() - 1) && (paramString.charAt(i1) == '0')) {
        i1 += 1;
      }
      if (i1 != 1) {
        paramhos.b(i1);
      }
    }
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, hos paramhos)
  {
    int i2 = 0;
    if (paramString1 == null) {
      throw new hnz(hoa.b, "The phone number supplied was null.");
    }
    if (paramString1.length() > 250) {
      throw new hnz(hoa.e, "The string supplied was too long to parse.");
    }
    Object localObject3 = new StringBuilder();
    int i3 = paramString1.indexOf(";phone-context=");
    if (i3 > 0)
    {
      i1 = i3 + 15;
      if (paramString1.charAt(i1) == '+')
      {
        int i4 = paramString1.indexOf(';', i1);
        if (i4 > 0) {
          ((StringBuilder)localObject3).append(paramString1.substring(i1, i4));
        }
      }
      else
      {
        i1 = paramString1.indexOf("tel:");
        if (i1 < 0) {
          break label217;
        }
        i1 += 4;
        label135:
        ((StringBuilder)localObject3).append(paramString1.substring(i1, i3));
      }
    }
    for (;;)
    {
      i1 = ((StringBuilder)localObject3).indexOf(";isub=");
      if (i1 > 0) {
        ((StringBuilder)localObject3).delete(i1, ((StringBuilder)localObject3).length());
      }
      if (i(((StringBuilder)localObject3).toString())) {
        break label236;
      }
      throw new hnz(hoa.b, "The string supplied did not seem to be a phone number.");
      ((StringBuilder)localObject3).append(paramString1.substring(i1));
      break;
      label217:
      i1 = 0;
      break label135;
      ((StringBuilder)localObject3).append(a(paramString1));
    }
    label236:
    if (paramBoolean2)
    {
      localObject1 = ((StringBuilder)localObject3).toString();
      if ((!j(paramString2)) && ((localObject1 == null) || (((String)localObject1).length() == 0) || (!b.matcher((CharSequence)localObject1).lookingAt()))) {}
      for (i1 = 0; i1 == 0; i1 = 1) {
        throw new hnz(hoa.a, "Missing or invalid default region.");
      }
    }
    if (paramBoolean1) {
      paramhos.b(paramString1);
    }
    paramString1 = a((StringBuilder)localObject3);
    if (paramString1.length() > 0) {
      paramhos.a(paramString1);
    }
    Object localObject2 = d(paramString2);
    Object localObject1 = new StringBuilder();
    for (;;)
    {
      try
      {
        i1 = a(((StringBuilder)localObject3).toString(), (hpa)localObject2, (StringBuilder)localObject1, paramBoolean1, paramhos);
        if (i1 != 0)
        {
          localObject3 = b(i1);
          paramString1 = (String)localObject2;
          if (!((String)localObject3).equals(paramString2)) {
            paramString1 = a(i1, (String)localObject3);
          }
          if (((StringBuilder)localObject1).length() >= 2) {
            break;
          }
          throw new hnz(hoa.d, "The string supplied is too short to be a phone number.");
        }
      }
      catch (hnz paramString1)
      {
        Matcher localMatcher = b.matcher(((StringBuilder)localObject3).toString());
        if ((paramString1.a() == hoa.a) && (localMatcher.lookingAt()))
        {
          i3 = a(((StringBuilder)localObject3).substring(localMatcher.end()), (hpa)localObject2, (StringBuilder)localObject1, paramBoolean1, paramhos);
          i1 = i3;
          if (i3 != 0) {
            continue;
          }
          throw new hnz(hoa.a, "Could not interpret numbers after plus-sign.");
        }
        throw new hnz(paramString1.a(), paramString1.getMessage());
      }
      b((StringBuilder)localObject3);
      ((StringBuilder)localObject1).append((CharSequence)localObject3);
      if (paramString2 != null)
      {
        paramhos.a(r);
        paramString1 = (String)localObject2;
      }
      else
      {
        paramString1 = (String)localObject2;
        if (paramBoolean1)
        {
          paramhos.l();
          paramString1 = (String)localObject2;
        }
      }
    }
    paramString2 = (String)localObject1;
    if (paramString1 != null)
    {
      localObject3 = new StringBuilder();
      localObject2 = new StringBuilder((CharSequence)localObject1);
      a((StringBuilder)localObject2, paramString1, (StringBuilder)localObject3);
      paramString2 = ((StringBuilder)localObject2).toString();
      i1 = i2;
      if (a(F.a(a.b), paramString2) == hor.c) {
        i1 = 1;
      }
      paramString2 = (String)localObject1;
      if (i1 == 0)
      {
        if (paramBoolean1) {
          paramhos.c(((StringBuilder)localObject3).toString());
        }
        paramString2 = (String)localObject2;
      }
    }
    int i1 = paramString2.length();
    if (i1 < 2) {
      throw new hnz(hoa.d, "The string supplied is too short to be a phone number.");
    }
    if (i1 > 17) {
      throw new hnz(hoa.e, "The string supplied is too long to be a phone number.");
    }
    a(paramString2.toString(), paramhos);
    paramhos.a(Long.parseLong(paramString2.toString()));
  }
  
  public static hof b()
  {
    try
    {
      if (B != null) {
        break label55;
      }
      hnv localhnv1 = a;
      if (localhnv1 == null) {
        throw new IllegalArgumentException("metadataLoader could not be null.");
      }
    }
    finally {}
    a(new hof(new hny(localhnv2), aal.s()));
    label55:
    hof localhof = B;
    return localhof;
  }
  
  public static String b(String paramString)
  {
    return a(paramString, false).toString();
  }
  
  private static void b(StringBuilder paramStringBuilder)
  {
    String str = paramStringBuilder.toString();
    StringBuilder localStringBuilder;
    if (r.matcher(str).matches())
    {
      Map localMap = k;
      localStringBuilder = new StringBuilder(str.length());
      int i1 = 0;
      while (i1 < str.length())
      {
        Character localCharacter = (Character)localMap.get(Character.valueOf(Character.toUpperCase(str.charAt(i1))));
        if (localCharacter != null) {
          localStringBuilder.append(localCharacter);
        }
        i1 += 1;
      }
    }
    for (str = localStringBuilder.toString();; str = b(str))
    {
      paramStringBuilder.replace(0, paramStringBuilder.length(), str);
      return;
    }
  }
  
  private static boolean b(hos paramhos1, hos paramhos2)
  {
    paramhos1 = String.valueOf(paramhos1.b());
    paramhos2 = String.valueOf(paramhos2.b());
    return (paramhos1.endsWith(paramhos2)) || (paramhos2.endsWith(paramhos1));
  }
  
  private boolean c(int paramInt)
  {
    return D.containsKey(Integer.valueOf(paramInt));
  }
  
  static boolean c(String paramString)
  {
    return (paramString.length() == 0) || (A.matcher(paramString).matches());
  }
  
  private static String h(String paramString)
  {
    String str1 = String.valueOf(String.valueOf(";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|["));
    paramString = String.valueOf(String.valueOf(paramString));
    String str2 = String.valueOf(String.valueOf("(\\p{Nd}{1,7})"));
    String str3 = String.valueOf(String.valueOf("\\p{Nd}"));
    return str1.length() + 48 + paramString.length() + str2.length() + str3.length() + str1 + paramString + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*" + str2 + "#?|[- ]+(" + str3 + "{1,5})#";
  }
  
  private static boolean i(String paramString)
  {
    if (paramString.length() < 2) {
      return false;
    }
    return v.matcher(paramString).matches();
  }
  
  private boolean j(String paramString)
  {
    return (paramString != null) && (G.contains(paramString));
  }
  
  private int k(String paramString)
  {
    hpa localhpa = d(paramString);
    if (localhpa == null)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "Invalid region code: ".concat(paramString);; paramString = new String("Invalid region code: ")) {
        throw new IllegalArgumentException(paramString);
      }
    }
    return r;
  }
  
  int a(String paramString, hpa paramhpa, StringBuilder paramStringBuilder, boolean paramBoolean, hos paramhos)
  {
    if (paramString.length() == 0) {
      return 0;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    paramString = "NonMatch";
    if (paramhpa != null) {
      paramString = s;
    }
    paramString = a(localStringBuilder, paramString);
    if (paramBoolean) {
      paramhos.a(paramString);
    }
    int i1;
    if (paramString != hot.d)
    {
      if (localStringBuilder.length() <= 2) {
        throw new hnz(hoa.c, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
      }
      i1 = a(localStringBuilder, paramStringBuilder);
      if (i1 != 0)
      {
        paramhos.a(i1);
        return i1;
      }
      throw new hnz(hoa.a, "Country calling code supplied was not recognised.");
    }
    if (paramhpa != null)
    {
      i1 = r;
      paramString = String.valueOf(i1);
      Object localObject = localStringBuilder.toString();
      if (((String)localObject).startsWith(paramString))
      {
        paramString = new StringBuilder(((String)localObject).substring(paramString.length()));
        hpc localhpc = a;
        localObject = F.a(a);
        a(paramString, paramhpa, null);
        paramhpa = F.a(b);
        if (((!((Pattern)localObject).matcher(localStringBuilder).matches()) && (((Pattern)localObject).matcher(paramString).matches())) || (a(paramhpa, localStringBuilder.toString()) == hor.d))
        {
          paramStringBuilder.append(paramString);
          if (paramBoolean) {
            paramhos.a(hot.c);
          }
          paramhos.a(i1);
          return i1;
        }
      }
    }
    paramhos.a(0);
    return 0;
  }
  
  int a(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
  {
    if ((paramStringBuilder1.length() == 0) || (paramStringBuilder1.charAt(0) == '0')) {
      return 0;
    }
    int i2 = paramStringBuilder1.length();
    int i1 = 1;
    while ((i1 <= 3) && (i1 <= i2))
    {
      int i3 = Integer.parseInt(paramStringBuilder1.substring(0, i1));
      if (D.containsKey(Integer.valueOf(i3)))
      {
        paramStringBuilder2.append(paramStringBuilder1.substring(i1));
        return i3;
      }
      i1 += 1;
    }
    return 0;
  }
  
  public hoo a(hos paramhos1, hos paramhos2)
  {
    hos localhos = new hos();
    localhos.a(paramhos1);
    paramhos1 = new hos();
    paramhos1.a(paramhos2);
    localhos.j();
    localhos.l();
    localhos.m();
    paramhos1.j();
    paramhos1.l();
    paramhos1.m();
    if ((localhos.c()) && (localhos.d().length() == 0)) {
      localhos.e();
    }
    if ((paramhos1.c()) && (paramhos1.d().length() == 0)) {
      paramhos1.e();
    }
    if ((localhos.c()) && (paramhos1.c()) && (!localhos.d().equals(paramhos1.d()))) {
      return hoo.b;
    }
    int i1 = localhos.a();
    int i2 = paramhos1.a();
    if ((i1 != 0) && (i2 != 0))
    {
      if (localhos.b(paramhos1)) {
        return hoo.e;
      }
      if ((i1 == i2) && (b(localhos, paramhos1))) {
        return hoo.c;
      }
      return hoo.b;
    }
    localhos.a(i2);
    if (localhos.b(paramhos1)) {
      return hoo.d;
    }
    if (b(localhos, paramhos1)) {
      return hoo.c;
    }
    return hoo.b;
  }
  
  public hos a(String paramString1, String paramString2)
  {
    hos localhos = new hos();
    a(paramString1, paramString2, localhos);
    return localhos;
  }
  
  hot a(StringBuilder paramStringBuilder, String paramString)
  {
    int i1 = 1;
    if (paramStringBuilder.length() == 0) {
      return hot.d;
    }
    Matcher localMatcher = b.matcher(paramStringBuilder);
    if (localMatcher.lookingAt())
    {
      paramStringBuilder.delete(0, localMatcher.end());
      b(paramStringBuilder);
      return hot.a;
    }
    paramString = F.a(paramString);
    b(paramStringBuilder);
    paramString = paramString.matcher(paramStringBuilder);
    if (paramString.lookingAt())
    {
      int i2 = paramString.end();
      paramString = p.matcher(paramStringBuilder.substring(i2));
      if ((!paramString.find()) || (!b(paramString.group(1)).equals("0"))) {
        paramStringBuilder.delete(0, i2);
      }
    }
    while (i1 != 0)
    {
      return hot.b;
      i1 = 0;
    }
    return hot.d;
  }
  
  hoz a(hoz[] paramArrayOfhoz, String paramString)
  {
    int i2 = paramArrayOfhoz.length;
    int i1 = 0;
    while (i1 < i2)
    {
      hoz localhoz = paramArrayOfhoz[i1];
      int i3 = c.length;
      if (((i3 == 0) || (F.a(c[(i3 - 1)]).matcher(paramString).lookingAt())) && (F.a(a).matcher(paramString).matches())) {
        return localhoz;
      }
      i1 += 1;
    }
    return null;
  }
  
  hpa a(int paramInt)
  {
    if (!D.containsKey(Integer.valueOf(paramInt))) {
      return null;
    }
    return C.a(paramInt);
  }
  
  public String a(hos paramhos)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramhos.f())
    {
      char[] arrayOfChar = new char[paramhos.g()];
      Arrays.fill(arrayOfChar, '0');
      localStringBuilder.append(new String(arrayOfChar));
    }
    localStringBuilder.append(paramhos.b());
    return localStringBuilder.toString();
  }
  
  public String a(hos paramhos, int paramInt)
  {
    if ((paramhos.b() == 0L) && (paramhos.h()))
    {
      localObject = paramhos.i();
      if (((String)localObject).length() > 0) {
        return (String)localObject;
      }
    }
    Object localObject = new StringBuilder(20);
    a(paramhos, paramInt, (StringBuilder)localObject);
    return ((StringBuilder)localObject).toString();
  }
  
  String a(String paramString, hoz paramhoz, int paramInt)
  {
    return a(paramString, paramhoz, paramInt, null);
  }
  
  String a(StringBuilder paramStringBuilder)
  {
    Matcher localMatcher = u.matcher(paramStringBuilder);
    if ((localMatcher.find()) && (i(paramStringBuilder.substring(0, localMatcher.start()))))
    {
      int i1 = 1;
      int i2 = localMatcher.groupCount();
      while (i1 <= i2)
      {
        if (localMatcher.group(i1) != null)
        {
          String str = localMatcher.group(i1);
          paramStringBuilder.delete(localMatcher.start(), paramStringBuilder.length());
          return str;
        }
        i1 += 1;
      }
    }
    return "";
  }
  
  public Set<String> a()
  {
    return Collections.unmodifiableSet(G);
  }
  
  public void a(hos paramhos, int paramInt, StringBuilder paramStringBuilder)
  {
    paramStringBuilder.setLength(0);
    int i1 = paramhos.a();
    String str = a(paramhos);
    if (paramInt == hop.a)
    {
      paramStringBuilder.append(str);
      a(i1, hop.a, paramStringBuilder);
      return;
    }
    if (!c(i1))
    {
      paramStringBuilder.append(str);
      return;
    }
    hpa localhpa = a(i1, b(i1));
    Object localObject;
    if ((A.length == 0) || (paramInt == hop.c))
    {
      localObject = z;
      localObject = a((hoz[])localObject, str);
      if (localObject != null) {
        break label179;
      }
      localObject = str;
      label115:
      paramStringBuilder.append((String)localObject);
      if ((paramhos.c()) && (paramhos.d().length() > 0))
      {
        if (paramInt != hop.d) {
          break label194;
        }
        paramStringBuilder.append(";ext=").append(paramhos.d());
      }
    }
    for (;;)
    {
      a(i1, paramInt, paramStringBuilder);
      return;
      localObject = A;
      break;
      label179:
      localObject = a(str, (hoz)localObject, paramInt, null);
      break label115;
      label194:
      if (!v.equals("")) {
        paramStringBuilder.append(v).append(paramhos.d());
      } else {
        paramStringBuilder.append(" ext. ").append(paramhos.d());
      }
    }
  }
  
  public void a(String paramString1, String paramString2, hos paramhos)
  {
    a(paramString1, paramString2, false, true, paramhos);
  }
  
  public boolean a(hos paramhos, String paramString)
  {
    int i1 = paramhos.a();
    hpa localhpa = a(i1, paramString);
    if ((localhpa == null) || ((!"001".equals(paramString)) && (i1 != k(paramString)))) {}
    while (a(a(paramhos), localhpa) == hoq.l) {
      return false;
    }
    return true;
  }
  
  boolean a(String paramString, hpc paramhpc)
  {
    return F.a(b).matcher(paramString).matches();
  }
  
  boolean a(StringBuilder paramStringBuilder1, hpa paramhpa, StringBuilder paramStringBuilder2)
  {
    int i1 = paramStringBuilder1.length();
    Object localObject = w;
    if ((i1 == 0) || (((String)localObject).length() == 0)) {}
    Pattern localPattern;
    boolean bool;
    int i2;
    StringBuilder localStringBuilder;
    do
    {
      do
      {
        do
        {
          return false;
          localObject = F.a((String)localObject).matcher(paramStringBuilder1);
        } while (!((Matcher)localObject).lookingAt());
        localPattern = F.a(a.a);
        bool = localPattern.matcher(paramStringBuilder1).matches();
        i2 = ((Matcher)localObject).groupCount();
        paramhpa = x;
        if ((paramhpa != null) && (paramhpa.length() != 0) && (((Matcher)localObject).group(i2) != null)) {
          break;
        }
      } while ((bool) && (!localPattern.matcher(paramStringBuilder1.substring(((Matcher)localObject).end())).matches()));
      if ((paramStringBuilder2 != null) && (i2 > 0) && (((Matcher)localObject).group(i2) != null)) {
        paramStringBuilder2.append(((Matcher)localObject).group(1));
      }
      paramStringBuilder1.delete(0, ((Matcher)localObject).end());
      return true;
      localStringBuilder = new StringBuilder(paramStringBuilder1);
      localStringBuilder.replace(0, i1, ((Matcher)localObject).replaceFirst(paramhpa));
    } while ((bool) && (!localPattern.matcher(localStringBuilder.toString()).matches()));
    if ((paramStringBuilder2 != null) && (i2 > 1)) {
      paramStringBuilder2.append(((Matcher)localObject).group(1));
    }
    paramStringBuilder1.replace(0, paramStringBuilder1.length(), localStringBuilder.toString());
    return true;
  }
  
  public hoo b(hos paramhos, String paramString)
  {
    try
    {
      hoo localhoo = a(paramhos, a(paramString, "ZZ"));
      paramhos = localhoo;
    }
    catch (hnz localhnz)
    {
      while (localhnz.a() == hoa.a)
      {
        Object localObject = b(paramhos.a());
        try
        {
          if (((String)localObject).equals("ZZ")) {
            break label73;
          }
          paramString = a(paramhos, a(paramString, (String)localObject));
          paramhos = paramString;
          if (paramString != hoo.e) {
            continue;
          }
          return hoo.d;
          label73:
          localObject = new hos();
          a(paramString, null, false, false, (hos)localObject);
          paramhos = a(paramhos, (hos)localObject);
          return paramhos;
        }
        catch (hnz paramhos) {}
      }
    }
    return paramhos;
    return hoo.a;
  }
  
  public hos b(String paramString1, String paramString2)
  {
    hos localhos = new hos();
    b(paramString1, paramString2, localhos);
    return localhos;
  }
  
  public String b(int paramInt)
  {
    List localList = (List)D.get(Integer.valueOf(paramInt));
    if (localList == null) {
      return "ZZ";
    }
    return (String)localList.get(0);
  }
  
  public void b(String paramString1, String paramString2, hos paramhos)
  {
    a(paramString1, paramString2, true, true, paramhos);
  }
  
  public boolean b(hos paramhos)
  {
    return a(paramhos, c(paramhos));
  }
  
  boolean b(String paramString, hpc paramhpc)
  {
    Matcher localMatcher = F.a(a).matcher(paramString);
    return (a(paramString, paramhpc)) && (localMatcher.matches());
  }
  
  public hoo c(String paramString1, String paramString2)
  {
    try
    {
      hoo localhoo1 = b(a(paramString1, "ZZ"), paramString2);
      return localhoo1;
    }
    catch (hnz localhnz1)
    {
      if (localhnz1.a() == hoa.a) {
        try
        {
          hoo localhoo2 = b(a(paramString2, "ZZ"), paramString1);
          return localhoo2;
        }
        catch (hnz localhnz2)
        {
          if (localhnz2.a() == hoa.a) {
            try
            {
              hos localhos1 = new hos();
              hos localhos2 = new hos();
              a(paramString1, null, false, false, localhos1);
              a(paramString2, null, false, false, localhos2);
              paramString1 = a(localhos1, localhos2);
              return paramString1;
            }
            catch (hnz paramString1) {}
          }
        }
      }
    }
    return hoo.a;
  }
  
  public String c(hos paramhos)
  {
    int i1 = paramhos.a();
    Object localObject = (List)D.get(Integer.valueOf(i1));
    if (localObject == null)
    {
      String str = a(paramhos);
      paramhos = g;
      localObject = Level.INFO;
      str = String.valueOf(String.valueOf(str));
      paramhos.log((Level)localObject, str.length() + 54 + "Missing/invalid country_code (" + i1 + ") for number " + str);
      return null;
    }
    if (((List)localObject).size() == 1) {
      return (String)((List)localObject).get(0);
    }
    return a(paramhos, (List)localObject);
  }
  
  hpa d(String paramString)
  {
    if (!j(paramString)) {
      return null;
    }
    return C.a(paramString);
  }
  
  public boolean d(hos paramhos)
  {
    return e(paramhos) == hor.a;
  }
  
  public int e(hos paramhos)
  {
    String str = a(paramhos);
    int i1 = paramhos.a();
    if (!c(i1)) {
      return hor.b;
    }
    paramhos = a(i1, b(i1));
    return a(F.a(a.b), str);
  }
  
  public int e(String paramString)
  {
    if (!j(paramString))
    {
      Logger localLogger = g;
      Level localLevel = Level.WARNING;
      String str = paramString;
      if (paramString == null) {
        str = "null";
      }
      paramString = String.valueOf(String.valueOf(str));
      localLogger.log(localLevel, paramString.length() + 43 + "Invalid or missing region code (" + paramString + ") provided.");
      return 0;
    }
    return k(paramString);
  }
  
  public String f(String paramString)
  {
    Object localObject = d(paramString);
    if (localObject == null)
    {
      Logger localLogger = g;
      Level localLevel = Level.WARNING;
      localObject = paramString;
      if (paramString == null) {
        localObject = "null";
      }
      paramString = String.valueOf(String.valueOf(localObject));
      localLogger.log(localLevel, paramString.length() + 43 + "Invalid or missing region code (" + paramString + ") provided.");
    }
    do
    {
      return null;
      paramString = u;
    } while (paramString.length() == 0);
    return paramString.replace("~", "");
  }
  
  public hnu g(String paramString)
  {
    return new hnu(paramString);
  }
}

/* Location:
 * Qualified Name:     hof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */