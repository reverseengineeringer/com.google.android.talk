import java.util.Locale;

public final class gw
{
  static hg a = hh.c;
  static final gw b = new gw(false, 2, a);
  static final gw c = new gw(true, 2, a);
  private static final String d = Character.toString('‎');
  private static final String e = Character.toString('‏');
  private final boolean f;
  private final int g;
  private final hg h;
  
  gw(boolean paramBoolean, int paramInt, hg paramhg)
  {
    f = paramBoolean;
    g = paramInt;
    h = paramhg;
  }
  
  public static gw a()
  {
    return new gx().a();
  }
  
  static boolean a(Locale paramLocale)
  {
    return hn.a.a(paramLocale) == 1;
  }
  
  private static int b(String paramString)
  {
    return new gy(paramString).b();
  }
  
  private static int c(String paramString)
  {
    return new gy(paramString).a();
  }
  
  public String a(String paramString, hg paramhg)
  {
    if (paramString == null) {
      return null;
    }
    boolean bool1 = paramhg.a(paramString, paramString.length());
    StringBuilder localStringBuilder = new StringBuilder();
    int i;
    label52:
    boolean bool2;
    label87:
    char c1;
    if ((g & 0x2) != 0)
    {
      i = 1;
      if (i != 0)
      {
        if (!bool1) {
          break label198;
        }
        paramhg = hh.b;
        bool2 = paramhg.a(paramString, paramString.length());
        if ((f) || ((!bool2) && (c(paramString) != 1))) {
          break label205;
        }
        paramhg = d;
        localStringBuilder.append(paramhg);
      }
      if (bool1 == f) {
        break label245;
      }
      if (!bool1) {
        break label238;
      }
      c1 = '‫';
      label112:
      localStringBuilder.append(c1);
      localStringBuilder.append(paramString);
      localStringBuilder.append('‬');
      label135:
      if (!bool1) {
        break label255;
      }
      paramhg = hh.b;
      label144:
      bool1 = paramhg.a(paramString, paramString.length());
      if ((f) || ((!bool1) && (b(paramString) != 1))) {
        break label262;
      }
      paramString = d;
    }
    for (;;)
    {
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
      i = 0;
      break;
      label198:
      paramhg = hh.a;
      break label52;
      label205:
      if ((f) && ((!bool2) || (c(paramString) == -1)))
      {
        paramhg = e;
        break label87;
      }
      paramhg = "";
      break label87;
      label238:
      c1 = '‪';
      break label112;
      label245:
      localStringBuilder.append(paramString);
      break label135;
      label255:
      paramhg = hh.a;
      break label144;
      label262:
      if ((f) && ((!bool1) || (b(paramString) == -1))) {
        paramString = e;
      } else {
        paramString = "";
      }
    }
  }
  
  public boolean a(String paramString)
  {
    return h.a(paramString, paramString.length());
  }
}

/* Location:
 * Qualified Name:     gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */