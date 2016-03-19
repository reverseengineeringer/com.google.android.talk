import java.util.Set;

final class afu
  extends afs
{
  private String g;
  private boolean h = false;
  
  public afu() {}
  
  public afu(byte paramByte)
  {
    super((byte)0);
  }
  
  private void b(afx paramafx, String paramString1, String paramString2)
  {
    int k = paramString2.length();
    int j = 0;
    int i = 0;
    Object localObject1 = null;
    if (j < k)
    {
      char c = paramString2.charAt(j);
      if (c == '"') {
        if (i != 0)
        {
          paramafx.a(paramString1, e(((StringBuilder)localObject1).toString()));
          i = 0;
          localObject1 = null;
        }
      }
      for (;;)
      {
        j += 1;
        break;
        if ((localObject1 != null) && (((StringBuilder)localObject1).length() <= 0)) {
          paramafx.a(paramString1, e(((StringBuilder)localObject1).toString()));
        }
        i = 1;
        continue;
        if ((c == ',') && (i == 0))
        {
          if (localObject1 == null)
          {
            new StringBuilder(String.valueOf(paramString2).length() + 44).append("Comma is used before actual string comes. (").append(paramString2).append(")");
          }
          else
          {
            paramafx.a(paramString1, e(((StringBuilder)localObject1).toString()));
            localObject1 = null;
          }
        }
        else
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder();
          }
          ((StringBuilder)localObject2).append(c);
          localObject1 = localObject2;
        }
      }
    }
    if ((localObject1 != null) && (((StringBuilder)localObject1).length() != 0)) {
      paramafx.a(paramString1, e(((StringBuilder)localObject1).toString()));
    }
  }
  
  private static String e(String paramString)
  {
    return afz.b(paramString, "ISO-8859-1", "UTF-8");
  }
  
  protected String a()
  {
    if (g != null)
    {
      String str = g;
      g = null;
      return str;
    }
    return d.readLine();
  }
  
  protected void a(afx paramafx, String paramString)
  {
    try
    {
      super.a(paramafx, paramString);
      return;
    }
    catch (agc localagc)
    {
      String[] arrayOfString = paramString.split("=", 2);
      if (arrayOfString.length == 2)
      {
        a(paramafx, arrayOfString[0], arrayOfString[1]);
        return;
      }
      paramafx = String.valueOf(paramString);
      if (paramafx.length() == 0) {}
    }
    for (paramafx = "Unknown params value: ".concat(paramafx);; paramafx = new String("Unknown params value: ")) {
      throw new agc(paramafx);
    }
  }
  
  protected void a(afx paramafx, String paramString1, String paramString2)
  {
    b(paramafx, paramString1, paramString2);
  }
  
  protected boolean a(boolean paramBoolean)
  {
    return super.a(paramBoolean);
  }
  
  protected void b(afx paramafx)
  {
    if (!h) {
      h = true;
    }
  }
  
  protected void b(afx paramafx, String paramString)
  {
    c(paramafx, paramString);
  }
  
  protected String c()
  {
    Object localObject = null;
    String str;
    label176:
    do
    {
      for (;;)
      {
        str = d.readLine();
        if (str == null)
        {
          if (localObject != null) {
            return ((StringBuilder)localObject).toString();
          }
          if (g != null)
          {
            localObject = g;
            g = null;
            return (String)localObject;
          }
          throw new agc("Reached end of buffer.");
        }
        if (str.length() == 0)
        {
          if (localObject != null) {
            return ((StringBuilder)localObject).toString();
          }
          if (g != null)
          {
            localObject = g;
            g = null;
            return (String)localObject;
          }
        }
        else
        {
          if ((str.charAt(0) != ' ') && (str.charAt(0) != '\t')) {
            break label176;
          }
          if (localObject != null)
          {
            ((StringBuilder)localObject).append(str.substring(1));
          }
          else
          {
            if (g == null) {
              break;
            }
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(g);
            g = null;
            ((StringBuilder)localObject).append(str.substring(1));
          }
        }
      }
      throw new agc("Space exists at the beginning of the line");
      if (g != null) {
        break;
      }
      g = str;
    } while (localObject == null);
    return ((StringBuilder)localObject).toString();
    localObject = g;
    g = str;
    return (String)localObject;
  }
  
  protected String c(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    for (;;)
    {
      paramString = a();
      if (paramString == null) {
        throw new agc("File ended during parsing BASE64 binary");
      }
      if (paramString.length() != 0)
      {
        if ((!paramString.startsWith(" ")) && (!paramString.startsWith("\t"))) {
          g = paramString;
        }
      }
      else {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(paramString);
    }
  }
  
  protected void c(afx paramafx, String paramString)
  {
    b(paramafx, "TYPE", paramString);
  }
  
  protected String d(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString.length();
    int i = 0;
    if (i < j)
    {
      char c = paramString.charAt(i);
      if ((c == '\\') && (i < j - 1))
      {
        i += 1;
        c = paramString.charAt(i);
        if ((c == 'n') || (c == 'N')) {
          localStringBuilder.append("\n");
        }
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append(c);
        continue;
        localStringBuilder.append(c);
      }
    }
    return localStringBuilder.toString();
  }
  
  protected int f()
  {
    return 1;
  }
  
  protected String g()
  {
    return "3.0";
  }
  
  protected Set<String> h()
  {
    return afw.a;
  }
}

/* Location:
 * Qualified Name:     afu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */