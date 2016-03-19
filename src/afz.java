import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class afz
{
  private static final Map<Integer, String> a = new HashMap();
  private static final Set<String> b;
  private static final Map<String, Integer> c = new HashMap();
  private static final Map<Integer, String> d;
  private static final Set<String> e = new HashSet(Arrays.asList(new String[] { "MOBILE", "携帯電話", "携帯", "ケイタイ", "ｹｲﾀｲ" }));
  private static final Set<Character> f = new HashSet(Arrays.asList(new Character[] { Character.valueOf('['), Character.valueOf(']'), Character.valueOf('='), Character.valueOf(':'), Character.valueOf('.'), Character.valueOf(','), Character.valueOf(' ') }));
  private static final int[] g = { 58, 59, 44, 32 };
  private static final int[] h = { 59, 58 };
  
  static
  {
    a.put(Integer.valueOf(9), "CAR");
    c.put("CAR", Integer.valueOf(9));
    a.put(Integer.valueOf(6), "PAGER");
    c.put("PAGER", Integer.valueOf(6));
    a.put(Integer.valueOf(11), "ISDN");
    c.put("ISDN", Integer.valueOf(11));
    c.put("HOME", Integer.valueOf(1));
    c.put("WORK", Integer.valueOf(3));
    c.put("CELL", Integer.valueOf(2));
    c.put("OTHER", Integer.valueOf(7));
    c.put("CALLBACK", Integer.valueOf(8));
    c.put("COMPANY-MAIN", Integer.valueOf(10));
    c.put("RADIO", Integer.valueOf(14));
    c.put("TTY-TDD", Integer.valueOf(16));
    c.put("ASSISTANT", Integer.valueOf(19));
    c.put("VOICE", Integer.valueOf(7));
    Object localObject = new HashSet();
    b = (Set)localObject;
    ((Set)localObject).add("MODEM");
    b.add("MSG");
    b.add("BBS");
    b.add("VIDEO");
    localObject = new HashMap();
    d = (Map)localObject;
    ((Map)localObject).put(Integer.valueOf(0), "X-AIM");
    d.put(Integer.valueOf(1), "X-MSN");
    d.put(Integer.valueOf(2), "X-YAHOO");
    d.put(Integer.valueOf(3), "X-SKYPE-USERNAME");
    d.put(Integer.valueOf(5), "X-GOOGLE-TALK");
    d.put(Integer.valueOf(6), "X-ICQ");
    d.put(Integer.valueOf(7), "X-JABBER");
    d.put(Integer.valueOf(4), "X-QQ");
    d.put(Integer.valueOf(8), "X-NETMEETING");
  }
  
  public static int a(int paramInt)
  {
    if (aet.e(paramInt)) {
      return 2;
    }
    return 1;
  }
  
  public static Object a(Collection<String> paramCollection, String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    int i = -1;
    paramString = null;
    int k;
    int m;
    if (paramCollection != null)
    {
      Iterator localIterator = paramCollection.iterator();
      j = 0;
      k = 0;
      paramCollection = paramString;
      while (localIterator.hasNext())
      {
        paramString = (String)localIterator.next();
        if (paramString != null)
        {
          Object localObject = paramString.toUpperCase();
          if (((String)localObject).equals("PREF"))
          {
            j = 1;
          }
          else if (((String)localObject).equals("FAX"))
          {
            k = 1;
          }
          else
          {
            if ((((String)localObject).startsWith("X-")) && (i < 0)) {
              paramString = paramString.substring(2);
            }
            for (;;)
            {
              if (paramString.length() == 0) {
                break label209;
              }
              localObject = (Integer)c.get(paramString.toUpperCase());
              if (localObject == null) {
                break label211;
              }
              m = ((Integer)localObject).intValue();
              int n = str.indexOf("@");
              if (((m != 6) || (n <= 0) || (n >= str.length() - 1)) && (i >= 0) && (i != 0) && (i != 7)) {
                break;
              }
              i = ((Integer)localObject).intValue();
              break;
            }
            label209:
            continue;
            label211:
            if (i >= 0) {
              break label295;
            }
            paramCollection = paramString;
            i = 0;
          }
        }
      }
      m = j;
    }
    for (int j = i;; j = -1)
    {
      i = j;
      if (j < 0)
      {
        if (m != 0) {
          i = 12;
        }
      }
      else
      {
        j = i;
        if (k != 0)
        {
          if (i != 1) {
            break label266;
          }
          j = 5;
        }
      }
      for (;;)
      {
        if (j != 0) {
          break label290;
        }
        return paramCollection;
        i = 1;
        break;
        label266:
        if (i == 3)
        {
          j = 4;
        }
        else
        {
          j = i;
          if (i == 7) {
            j = 13;
          }
        }
      }
      label290:
      return Integer.valueOf(j);
      label295:
      break;
      m = 0;
      k = 0;
      paramCollection = null;
    }
  }
  
  public static String a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    return a(paramInt, paramString1, paramString2, paramString3, null, null);
  }
  
  public static String a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramString1 = b(paramInt, paramString1, paramString2, paramString3);
    paramInt = 1;
    if (!TextUtils.isEmpty(paramString4))
    {
      localStringBuilder.append(paramString4);
      paramInt = 0;
    }
    int i = 0;
    if (i < 3)
    {
      paramString2 = paramString1[i];
      int j = paramInt;
      if (!TextUtils.isEmpty(paramString2))
      {
        if (paramInt == 0) {
          break label89;
        }
        paramInt = 0;
      }
      for (;;)
      {
        localStringBuilder.append(paramString2);
        j = paramInt;
        i += 1;
        paramInt = j;
        break;
        label89:
        localStringBuilder.append(' ');
      }
    }
    if (!TextUtils.isEmpty(paramString5))
    {
      if (paramInt == 0) {
        localStringBuilder.append(' ');
      }
      localStringBuilder.append(paramString5);
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject1 = new StringBuilder();
    int j = paramString1.length();
    int i = 0;
    char c1;
    if (i < j)
    {
      c1 = paramString1.charAt(i);
      if ((c1 == '=') && (i < j - 1))
      {
        char c2 = paramString1.charAt(i + 1);
        if ((c2 == ' ') || (c2 == '\t'))
        {
          ((StringBuilder)localObject1).append(c2);
          i += 1;
        }
      }
      for (;;)
      {
        i += 1;
        break;
        ((StringBuilder)localObject1).append(c1);
      }
    }
    Object localObject3 = ((StringBuilder)localObject1).toString();
    paramString1 = new StringBuilder();
    int k = ((String)localObject3).length();
    Object localObject2 = new ArrayList();
    i = 0;
    if (i < k)
    {
      c1 = ((String)localObject3).charAt(i);
      if (c1 == '\n')
      {
        ((ArrayList)localObject2).add(paramString1.toString());
        paramString1 = new StringBuilder();
        j = i;
      }
      for (;;)
      {
        i = j + 1;
        break;
        if (c1 == '\r')
        {
          ((ArrayList)localObject2).add(paramString1.toString());
          localObject1 = new StringBuilder();
          j = i;
          paramString1 = (String)localObject1;
          if (i < k - 1)
          {
            j = i;
            paramString1 = (String)localObject1;
            if (((String)localObject3).charAt(i + 1) == '\n')
            {
              j = i + 1;
              paramString1 = (String)localObject1;
            }
          }
        }
        else
        {
          paramString1.append(c1);
          j = i;
        }
      }
    }
    paramString1 = paramString1.toString();
    if (paramString1.length() > 0) {
      ((ArrayList)localObject2).add(paramString1);
    }
    localObject2 = (String[])((ArrayList)localObject2).toArray(new String[0]);
    localObject3 = new StringBuilder();
    j = localObject2.length;
    i = 0;
    while (i < j)
    {
      localObject1 = localObject2[i];
      paramString1 = (String)localObject1;
      if (((String)localObject1).endsWith("=")) {
        paramString1 = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
      }
      ((StringBuilder)localObject3).append(paramString1);
      i += 1;
    }
    localObject1 = ((StringBuilder)localObject3).toString();
    TextUtils.isEmpty((CharSequence)localObject1);
    try
    {
      paramString1 = ((String)localObject1).getBytes(paramString2);
    }
    catch (UnsupportedEncodingException paramString1)
    {
      try
      {
        paramString2 = agb.a(paramString1);
        paramString1 = paramString2;
      }
      catch (aga paramString2)
      {
        for (;;)
        {
          Log.e("vCard", "DecoderException is thrown.");
        }
      }
      try
      {
        paramString2 = new String(paramString1, paramString3);
        return paramString2;
      }
      catch (UnsupportedEncodingException paramString2)
      {
        paramString2 = String.valueOf(paramString3);
        if (paramString2.length() == 0) {
          break label519;
        }
      }
      paramString1 = paramString1;
      paramString1 = String.valueOf(paramString2);
      if (paramString1.length() != 0) {
        "Failed to decode: ".concat(paramString1);
      }
      for (;;)
      {
        paramString1 = ((String)localObject1).getBytes();
        break;
        new String("Failed to decode: ");
      }
    }
    label519:
    for (paramString2 = "Failed to encode: charset=".concat(paramString2);; paramString2 = new String("Failed to encode: charset="))
    {
      Log.e("vCard", paramString2);
      return new String(paramString1);
    }
  }
  
  public static List<String> a(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject2 = new StringBuilder();
    int j = paramString.length();
    int i = 0;
    if (i < j)
    {
      char c1 = paramString.charAt(i);
      char c2;
      Object localObject1;
      if ((c1 == '\\') && (i < j - 1))
      {
        c2 = paramString.charAt(i + 1);
        if (aet.c(paramInt)) {
          if ((c2 == 'n') || (c2 == 'N'))
          {
            localObject1 = "\n";
            label89:
            if (localObject1 == null) {
              break label214;
            }
            ((StringBuilder)localObject2).append((String)localObject1);
            i += 1;
            localObject1 = localObject2;
          }
        }
      }
      for (;;)
      {
        i += 1;
        localObject2 = localObject1;
        break;
        localObject1 = String.valueOf(c2);
        break label89;
        if (aet.b(paramInt))
        {
          if ((c2 == 'n') || (c2 == 'N'))
          {
            localObject1 = "\n";
            break label89;
          }
          localObject1 = String.valueOf(c2);
          break label89;
        }
        aet.a(paramInt);
        if ((c2 == '\\') || (c2 == ';') || (c2 == ':') || (c2 == ','))
        {
          localObject1 = String.valueOf(c2);
          break label89;
        }
        localObject1 = null;
        break label89;
        label214:
        ((StringBuilder)localObject2).append(c1);
        localObject1 = localObject2;
        continue;
        if (c1 == ';')
        {
          localArrayList.add(((StringBuilder)localObject2).toString());
          localObject1 = new StringBuilder();
        }
        else
        {
          ((StringBuilder)localObject2).append(c1);
          localObject1 = localObject2;
        }
      }
    }
    localArrayList.add(((StringBuilder)localObject2).toString());
    return localArrayList;
  }
  
  public static boolean a(String paramString)
  {
    int i = paramString.length() % 3;
    if ((paramString.length() < 2) || ((i != 1) && (i != 0))) {
      return false;
    }
    i = 0;
    for (;;)
    {
      if (i >= paramString.length()) {
        break label53;
      }
      if (paramString.charAt(i) != '=') {
        break;
      }
      i += 3;
    }
    label53:
    return true;
  }
  
  public static final String b(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equalsIgnoreCase(paramString3)) {
      return paramString1;
    }
    paramString1 = Charset.forName(paramString2).encode(paramString1);
    paramString2 = new byte[paramString1.remaining()];
    paramString1.get(paramString2);
    try
    {
      paramString1 = new String(paramString2, paramString3);
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      paramString1 = String.valueOf(paramString3);
      if (paramString1.length() == 0) {}
    }
    for (paramString1 = "Failed to encode: charset=".concat(paramString1);; paramString1 = new String("Failed to encode: charset="))
    {
      Log.e("vCard", paramString1);
      return null;
    }
  }
  
  private static String[] b(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    String[] arrayOfString = new String[3];
    switch (aet.d(paramInt))
    {
    default: 
      arrayOfString[0] = paramString3;
      arrayOfString[1] = paramString2;
      arrayOfString[2] = paramString1;
      return arrayOfString;
    case 8: 
      Object localObject = Arrays.asList(new String[] { paramString1 });
      label122:
      int i;
      if (localObject != null)
      {
        localObject = ((Collection)localObject).iterator();
        for (;;)
        {
          if (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            if (!TextUtils.isEmpty(str))
            {
              int j = str.length();
              paramInt = 0;
              if (paramInt < j)
              {
                i = str.charAt(paramInt);
                if (((32 <= i) && (i <= 126)) || (i == 13) || (i == 10))
                {
                  i = 1;
                  label169:
                  if (i != 0) {
                    break label342;
                  }
                  paramInt = 0;
                  label176:
                  if (paramInt != 0) {
                    continue;
                  }
                  paramInt = 0;
                  label182:
                  if (paramInt != 0)
                  {
                    localObject = Arrays.asList(new String[] { paramString3 });
                    if (localObject == null) {
                      break label377;
                    }
                    localObject = ((Collection)localObject).iterator();
                    label254:
                    label301:
                    label308:
                    do
                    {
                      do
                      {
                        if (!((Iterator)localObject).hasNext()) {
                          break;
                        }
                        str = (String)((Iterator)localObject).next();
                      } while (TextUtils.isEmpty(str));
                      j = str.length();
                      paramInt = 0;
                      if (paramInt >= j) {
                        break label372;
                      }
                      i = str.charAt(paramInt);
                      if (((32 > i) || (i > 126)) && (i != 13) && (i != 10)) {
                        break;
                      }
                      i = 1;
                      if (i != 0) {
                        break label365;
                      }
                      paramInt = 0;
                    } while (paramInt != 0);
                  }
                }
              }
            }
          }
        }
      }
      label342:
      label365:
      label372:
      label377:
      for (paramInt = 0; paramInt == 0; paramInt = 1)
      {
        arrayOfString[0] = paramString1;
        arrayOfString[1] = paramString2;
        arrayOfString[2] = paramString3;
        return arrayOfString;
        i = 0;
        break label169;
        paramInt += 1;
        break label122;
        paramInt = 1;
        break label176;
        paramInt = 1;
        break label182;
        i = 0;
        break label301;
        paramInt += 1;
        break label254;
        paramInt = 1;
        break label308;
      }
    }
    arrayOfString[0] = paramString2;
    arrayOfString[1] = paramString3;
    arrayOfString[2] = paramString1;
    return arrayOfString;
  }
}

/* Location:
 * Qualified Name:     afz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */