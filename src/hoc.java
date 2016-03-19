import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class hoc
  implements Iterator<hob>
{
  private static final Pattern a;
  private static final Pattern b = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");
  private static final Pattern c = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");
  private static final Pattern d = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");
  private static final Pattern e = Pattern.compile(":[0-5]\\d");
  private static final Pattern f;
  private static final Pattern[] g = { Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)") };
  private static final Pattern h;
  private final hof i;
  private final CharSequence j;
  private final String k;
  private final hoh l;
  private long m;
  private int n;
  private hob o;
  private int p;
  
  static
  {
    String str1 = String.valueOf(String.valueOf("(\\[（［"));
    String str2 = String.valueOf(String.valueOf(")\\]）］"));
    String str8 = str1.length() + 3 + str2.length() + "[^" + str1 + str2 + "]";
    String str9 = a(0, 3);
    str1 = String.valueOf(String.valueOf("(\\[（［"));
    str2 = String.valueOf(String.valueOf(str8));
    String str3 = String.valueOf(String.valueOf(")\\]）］"));
    String str4 = String.valueOf(String.valueOf(str8));
    String str5 = String.valueOf(String.valueOf("(\\[（［"));
    String str6 = String.valueOf(String.valueOf(str8));
    String str7 = String.valueOf(String.valueOf(")\\]）］"));
    str9 = String.valueOf(String.valueOf(str9));
    str8 = String.valueOf(String.valueOf(str8));
    f = Pattern.compile(str1.length() + 26 + str2.length() + str3.length() + str4.length() + str5.length() + str6.length() + str7.length() + str9.length() + str8.length() + "(?:[" + str1 + "])?(?:" + str2 + "+[" + str3 + "])?" + str4 + "+(?:[" + str5 + "]" + str6 + "+[" + str7 + "])" + str9 + str8 + "*");
    str5 = a(0, 2);
    str2 = a(0, 4);
    str4 = a(0, 20);
    str1 = String.valueOf("[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]");
    str2 = String.valueOf(str2);
    if (str2.length() != 0)
    {
      str1 = str1.concat(str2);
      str2 = String.valueOf(a(1, 20));
      if (str2.length() == 0) {
        break label750;
      }
      str2 = "\\p{Nd}".concat(str2);
      label462:
      str3 = String.valueOf("(\\[（［");
      str6 = String.valueOf("+＋");
      if (str6.length() == 0) {
        break label763;
      }
    }
    label750:
    label763:
    for (str3 = str3.concat(str6);; str3 = new String(str3))
    {
      str3 = String.valueOf(String.valueOf(str3));
      str3 = str3.length() + 2 + "[" + str3 + "]";
      h = Pattern.compile(str3);
      str3 = String.valueOf(String.valueOf(str3));
      str6 = String.valueOf(String.valueOf(str1));
      str5 = String.valueOf(String.valueOf(str5));
      str7 = String.valueOf(String.valueOf(str2));
      str1 = String.valueOf(String.valueOf(str1));
      str2 = String.valueOf(String.valueOf(str2));
      str4 = String.valueOf(String.valueOf(str4));
      str8 = String.valueOf(String.valueOf(hof.e));
      a = Pattern.compile(str3.length() + 13 + str6.length() + str5.length() + str7.length() + str1.length() + str2.length() + str4.length() + str8.length() + "(?:" + str3 + str6 + ")" + str5 + str7 + "(?:" + str1 + str2 + ")" + str4 + "(?:" + str8 + ")?", 66);
      return;
      str1 = new String(str1);
      break;
      str2 = new String("\\p{Nd}");
      break label462;
    }
  }
  
  private hob a(String paramString, int paramInt)
  {
    try
    {
      if (f.matcher(paramString).matches())
      {
        if (b.matcher(paramString).find()) {
          return null;
        }
        if (l.compareTo(hoh.b) >= 0)
        {
          char c1;
          if ((paramInt > 0) && (!h.matcher(paramString).lookingAt()))
          {
            c1 = j.charAt(paramInt - 1);
            if ((b(c1)) || (a(c1))) {
              break label258;
            }
          }
          int i1 = paramString.length() + paramInt;
          if (i1 < j.length())
          {
            c1 = j.charAt(i1);
            if ((b(c1)) || (a(c1))) {
              break label258;
            }
          }
        }
        hos localhos = i.b(paramString, k);
        if (((!i.b(localhos.a()).equals("IL")) || (i.a(localhos).length() != 4) || ((paramInt != 0) && ((paramInt <= 0) || (j.charAt(paramInt - 1) == '*')))) && (l.a(localhos, paramString, i)))
        {
          localhos.l();
          localhos.j();
          localhos.m();
          paramString = new hob(paramInt, paramString, localhos);
          return paramString;
        }
      }
    }
    catch (hnz paramString) {}
    label258:
    return null;
  }
  
  private static CharSequence a(Pattern paramPattern, CharSequence paramCharSequence)
  {
    Matcher localMatcher = paramPattern.matcher(paramCharSequence);
    paramPattern = paramCharSequence;
    if (localMatcher.find()) {
      paramPattern = paramCharSequence.subSequence(0, localMatcher.start());
    }
    return paramPattern;
  }
  
  private static String a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 <= 0) || (paramInt2 < paramInt1)) {
      throw new IllegalArgumentException();
    }
    return 25 + "{" + paramInt1 + "," + paramInt2 + "}";
  }
  
  private static boolean a(char paramChar)
  {
    if ((!Character.isLetter(paramChar)) && (Character.getType(paramChar) != 6)) {}
    Character.UnicodeBlock localUnicodeBlock;
    do
    {
      return false;
      localUnicodeBlock = Character.UnicodeBlock.of(paramChar);
    } while ((!localUnicodeBlock.equals(Character.UnicodeBlock.BASIC_LATIN)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_A)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_B)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS)));
    return true;
  }
  
  static boolean a(hof paramhof, hos paramhos, StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    String str;
    if (paramhos.k() != hot.d)
    {
      str = Integer.toString(paramhos.a());
      i1 = paramStringBuilder.indexOf(str);
    }
    for (int i1 = str.length() + i1;; i1 = 0)
    {
      int i3 = 0;
      int i2 = i1;
      i1 = i3;
      while (i1 < paramArrayOfString.length)
      {
        i2 = paramStringBuilder.indexOf(paramArrayOfString[i1], i2);
        if (i2 < 0) {
          return false;
        }
        i2 += paramArrayOfString[i1].length();
        if ((i1 == 0) && (i2 < paramStringBuilder.length()) && (paramhof.f(paramhof.b(paramhos.a())) != null) && (Character.isDigit(paramStringBuilder.charAt(i2))))
        {
          paramhof = paramhof.a(paramhos);
          return paramStringBuilder.substring(i2 - paramArrayOfString[i1].length()).startsWith(paramhof);
        }
        i1 += 1;
      }
      return paramStringBuilder.substring(i2).contains(paramhos.d());
    }
  }
  
  static boolean a(hos paramhos, hof paramhof)
  {
    if (paramhos.k() != hot.d) {}
    hpa localhpa;
    Object localObject;
    do
    {
      do
      {
        return true;
        localhpa = paramhof.d(paramhof.b(paramhos.a()));
      } while (localhpa == null);
      localObject = paramhof.a(paramhos);
      localObject = paramhof.a(z, (String)localObject);
    } while ((localObject == null) || (d.length() <= 0) || (e) || (hof.c(d)));
    return paramhof.a(new StringBuilder(hof.b(paramhos.i())), localhpa, null);
  }
  
  static boolean a(hos paramhos, String paramString)
  {
    int i2 = paramString.indexOf('/');
    if (i2 < 0) {}
    int i3;
    do
    {
      return false;
      i3 = paramString.indexOf('/', i2 + 1);
    } while (i3 < 0);
    if ((paramhos.k() == hot.a) || (paramhos.k() == hot.c)) {}
    for (int i1 = 1; (i1 != 0) && (hof.b(paramString.substring(0, i2)).equals(Integer.toString(paramhos.a()))); i1 = 0) {
      return paramString.substring(i3 + 1).contains("/");
    }
    return true;
  }
  
  static boolean a(hos paramhos, String paramString, hof paramhof)
  {
    int i2;
    for (int i1 = 0; i1 < paramString.length() - 1; i1 = i2 + 1)
    {
      int i3 = paramString.charAt(i1);
      if (i3 != 120)
      {
        i2 = i1;
        if (i3 != 88) {}
      }
      else
      {
        i2 = paramString.charAt(i1 + 1);
        if ((i2 == 120) || (i2 == 88))
        {
          i1 += 1;
          i2 = i1;
          if (paramhof.b(paramhos, paramString.substring(i1)) == hoo.d) {}
        }
        else
        {
          while (!hof.b(paramString.substring(i1)).equals(paramhos.d())) {
            return false;
          }
          i2 = i1;
        }
      }
    }
    return true;
  }
  
  static boolean a(hos paramhos, String paramString, hof paramhof, hod paramhod)
  {
    paramString = hof.a(paramString, true);
    if (paramhod.a(paramhof, paramhos, paramString, a(paramhof, paramhos, null))) {
      return true;
    }
    Object localObject = hnw.a(paramhos.a());
    if (localObject != null)
    {
      localObject = z;
      int i2 = localObject.length;
      int i1 = 0;
      for (;;)
      {
        if (i1 >= i2) {
          break label93;
        }
        if (paramhod.a(paramhof, paramhos, paramString, a(paramhof, paramhos, localObject[i1]))) {
          break;
        }
        i1 += 1;
      }
    }
    label93:
    return false;
  }
  
  private static String[] a(hof paramhof, hos paramhos, hoz paramhoz)
  {
    if (paramhoz == null)
    {
      paramhof = paramhof.a(paramhos, hop.d);
      int i2 = paramhof.indexOf(';');
      int i1 = i2;
      if (i2 < 0) {
        i1 = paramhof.length();
      }
      return paramhof.substring(paramhof.indexOf('-') + 1, i1).split("-");
    }
    return paramhof.a(paramhof.a(paramhos), paramhoz, hop.d).split("-");
  }
  
  private static boolean b(char paramChar)
  {
    return (paramChar == '%') || (Character.getType(paramChar) == 26);
  }
  
  static boolean b(hof paramhof, hos paramhos, StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    paramStringBuilder = hof.f.split(paramStringBuilder.toString());
    if (paramhos.c()) {}
    for (int i1 = paramStringBuilder.length - 2; (paramStringBuilder.length == 1) || (paramStringBuilder[i1].contains(paramhof.a(paramhos))); i1 = paramStringBuilder.length - 1) {
      return true;
    }
    int i2 = paramArrayOfString.length;
    i2 -= 1;
    while ((i2 > 0) && (i1 >= 0))
    {
      if (!paramStringBuilder[i1].equals(paramArrayOfString[i2])) {
        return false;
      }
      i2 -= 1;
      i1 -= 1;
    }
    return (i1 >= 0) && (paramStringBuilder[i1].endsWith(paramArrayOfString[0]));
  }
  
  public boolean hasNext()
  {
    int i1;
    int i4;
    Object localObject;
    CharSequence localCharSequence;
    String str;
    if (n == hoe.a)
    {
      i1 = p;
      Matcher localMatcher1 = a.matcher(j);
      if ((m <= 0L) || (!localMatcher1.find(i1))) {
        break label404;
      }
      i4 = localMatcher1.start();
      localObject = j.subSequence(i4, localMatcher1.end());
      localCharSequence = a(hof.c, (CharSequence)localObject);
      if (c.matcher(localCharSequence).find()) {
        break label374;
      }
      if (d.matcher(localCharSequence).find())
      {
        localObject = j.toString().substring(localCharSequence.length() + i4);
        if (e.matcher((CharSequence)localObject).lookingAt()) {
          break label374;
        }
      }
      str = localCharSequence.toString();
      localObject = a(str, i4);
      if (localObject == null) {
        break label207;
      }
      label170:
      if (localObject == null) {
        break label380;
      }
      label175:
      o = ((hob)localObject);
      if (o != null) {
        break label410;
      }
    }
    for (n = hoe.c;; n = hoe.b)
    {
      if (n != hoe.b) {
        break label431;
      }
      return true;
      label207:
      Pattern[] arrayOfPattern = g;
      int i5 = arrayOfPattern.length;
      i1 = 0;
      for (;;)
      {
        if (i1 >= i5) {
          break label374;
        }
        Matcher localMatcher2 = arrayOfPattern[i1].matcher(str);
        int i3;
        for (int i2 = 1;; i2 = i3)
        {
          if ((!localMatcher2.find()) || (m <= 0L)) {
            break label367;
          }
          i3 = i2;
          if (i2 != 0)
          {
            hob localhob = a(a(hof.d, str.substring(0, localMatcher2.start())).toString(), i4);
            localObject = localhob;
            if (localhob != null) {
              break;
            }
            m -= 1L;
            i3 = 0;
          }
          localObject = a(a(hof.d, localMatcher2.group(1)).toString(), localMatcher2.start(1) + i4);
          if (localObject != null) {
            break;
          }
          m -= 1L;
        }
        label367:
        i1 += 1;
      }
      label374:
      localObject = null;
      break label170;
      label380:
      i1 = localCharSequence.length() + i4;
      m -= 1L;
      break;
      label404:
      localObject = null;
      break label175;
      label410:
      p = o.a();
    }
    label431:
    return false;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     hoc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */