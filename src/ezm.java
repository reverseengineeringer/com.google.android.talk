import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrength;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ezm
{
  public static if<String, String> a;
  private static final boolean b;
  private static final ezo c;
  private static final Map<Integer, String> d;
  private static int e;
  private static String f;
  private static String g;
  private static Integer h;
  private static final gw i;
  private static final hox j;
  private static final hof k;
  private static final Pattern l;
  private static final Pattern m;
  private static final Set<String> n;
  
  static
  {
    Object localObject = ezi.t;
    b = false;
    c = new ezo();
    e = -1;
    i = gw.a();
    j = hox.a;
    k = hof.b();
    l = Pattern.compile("^[\\p{L}\\p{M}].*$");
    m = Pattern.compile("^\\+?[0-9. ()-]{4,30}$");
    n = new HashSet();
    localObject = new if();
    a = (if)localObject;
    ((if)localObject).put(Locale.US.getCountry(), "*67");
    a.put(Locale.UK.getCountry(), "141");
    a.put("HK", "133");
    a.put("DK", "#31#");
    a.put("IT", "#31#");
    a.put("SE", "#31#");
    localObject = new HashMap();
    ((Map)localObject).put(Integer.valueOf(52), "1");
    ((Map)localObject).put(Integer.valueOf(54), "9");
    d = Collections.unmodifiableMap((Map)localObject);
  }
  
  private static ezk a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null) {
      throw new hnz(hoa.b, "Number may not be null");
    }
    ezk localezk2 = (ezk)c.a(paramString1);
    ezk localezk1;
    if ((localezk2 != null) && (localezk2.a(paramString2)))
    {
      localezk1 = localezk2;
      if (localezk2.a() == paramBoolean) {}
    }
    else
    {
      localezk1 = new ezk(paramString1, paramString2, paramBoolean);
      c.a(paramString1, localezk1);
    }
    return localezk1;
  }
  
  public static String a(String paramString)
  {
    Object localObject = null;
    try
    {
      String str = a(paramString, null, false).f();
      localObject = str;
    }
    catch (hnz localhnz)
    {
      while (!b) {}
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label44;
      }
      "getCountry: Not able to parse e164 number ".concat(paramString);
      return null;
      label44:
      new String("getCountry: Not able to parse e164 number ");
    }
    return (String)localObject;
    return null;
  }
  
  public static String a(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return aal.oJ.getResources().getString(aal.rX);
    }
    return i.a(b(paramString, paramInt), hh.a);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 != null)
    {
      str = paramString1;
      if (paramString2 != null)
      {
        paramString2 = (String)a.get(paramString2);
        str = paramString1;
        if (!TextUtils.isEmpty(paramString2)) {
          str = paramString1.replaceFirst(Pattern.quote(paramString2), "");
        }
      }
    }
    return str;
  }
  
  public static void a()
  {
    try
    {
      ezl.a.a(null, null);
      hbu.a.a(c);
      return;
    }
    catch (hnz localhnz)
    {
      for (;;) {}
    }
  }
  
  public static void a(String paramString, Integer paramInteger)
  {
    g = paramString;
    h = paramInteger;
    f = null;
    e = -1;
  }
  
  public static boolean a(Context paramContext)
  {
    Object localObject = (TelephonyManager)paramContext.getSystemService("phone");
    if ((localObject != null) && (Build.VERSION.SDK_INT >= 18)) {
      if (((dcj)ilh.a(paramContext, dcj.class)).a("android.permission.ACCESS_COARSE_LOCATION"))
      {
        paramContext = ((TelephonyManager)localObject).getAllCellInfo();
        if (paramContext != null) {
          localObject = paramContext.iterator();
        }
      }
    }
    for (;;)
    {
      if (((Iterator)localObject).hasNext())
      {
        paramContext = (CellInfo)((Iterator)localObject).next();
        if (!paramContext.isRegistered()) {
          continue;
        }
        if ((paramContext instanceof CellInfoLte)) {
          paramContext = ((CellInfoLte)paramContext).getCellSignalStrength();
        }
      }
      while (paramContext != null)
      {
        int i1;
        if (paramContext.getLevel() > 0) {
          i1 = 1;
        }
        for (;;)
        {
          if (i1 == 0) {
            break label184;
          }
          return true;
          if ((paramContext instanceof CellInfoGsm))
          {
            paramContext = ((CellInfoGsm)paramContext).getCellSignalStrength();
            break;
          }
          if ((paramContext instanceof CellInfoCdma))
          {
            paramContext = ((CellInfoCdma)paramContext).getCellSignalStrength();
            break;
          }
          if (!(paramContext instanceof CellInfoWcdma)) {
            break label186;
          }
          paramContext = ((CellInfoWcdma)paramContext).getCellSignalStrength();
          break;
          i1 = 0;
          continue;
          i1 = 0;
        }
        label184:
        return false;
        label186:
        paramContext = null;
      }
    }
  }
  
  private static String b(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() < 6)) {}
    String str;
    do
    {
      return paramString;
      str = b(paramString, i());
    } while (str == null);
    label180:
    for (;;)
    {
      try
      {
        paramString = a(str, i(), false);
        switch (ezn.a[(paramInt - 1)])
        {
        case 1: 
          paramInt = hop.b;
          return paramString.a(paramInt);
          int i1 = paramString.c().a();
          if (e > 0)
          {
            paramInt = e;
            if (i1 == paramInt) {
              paramInt = hop.c;
            }
          }
          else
          {
            if (c())
            {
              Integer localInteger = Integer.valueOf(k.e(i()));
              if (localInteger != null)
              {
                paramInt = aal.a(localInteger, 0);
                e = paramInt;
                continue;
              }
            }
            if (h == null) {
              break label180;
            }
            paramInt = aal.a(h, 0);
            continue;
          }
          paramInt = hop.b;
          break;
        case 2: 
          paramInt = hop.c;
          break;
        }
        continue;
        paramInt = 1;
      }
      catch (hnz paramString)
      {
        return str;
      }
    }
  }
  
  public static String b(String paramString1, String paramString2)
  {
    try
    {
      ezk localezk = a(a(paramString1, paramString2), paramString2, false);
      if (localezk.d()) {
        return localezk.a(hop.a);
      }
      if ((!TextUtils.isEmpty(paramString2)) && (paramString2.equals(Locale.US.getCountry())) && (j.a(localezk.c(), paramString2)) && (r(localezk.a(hop.a))))
      {
        paramString2 = localezk.a(hop.a);
        return paramString2;
      }
    }
    catch (hnz paramString2)
    {
      if (b)
      {
        paramString1 = String.valueOf(paramString1);
        if (paramString1.length() != 0)
        {
          "toValidGvE164Number: Not able to parse phone number ".concat(paramString1);
          return null;
        }
        new String("toValidGvE164Number: Not able to parse phone number ");
      }
    }
    return null;
  }
  
  public static boolean b()
  {
    return k().getPhoneType() != 0;
  }
  
  public static boolean b(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext != null)
    {
      paramContext = paramContext.getActiveNetworkInfo();
      return (paramContext != null) && (paramContext.isConnected());
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    paramString = a(paramString);
    return (paramString == null) || (paramString.equals("US")) || (paramString.equals("CA"));
  }
  
  public static boolean c()
  {
    int i1 = k().getSimState();
    if (b) {
      new StringBuilder(50).append("telephonyManager.getSimState() returns:").append(i1);
    }
    return i1 != 1;
  }
  
  public static boolean c(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return e(paramString, i());
  }
  
  public static boolean c(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return false;
    }
    if (PhoneNumberUtils.isEmergencyNumber(paramString1)) {
      return true;
    }
    for (;;)
    {
      try
      {
        Object localObject = a(paramString1, paramString2, false);
        String str = Long.toString(((ezk)localObject).c().b());
        localObject = ((ezk)localObject).f();
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          paramString2 = (String)localObject;
        }
        if ((!j.a(str, paramString2)) || (!j.b(str, paramString2))) {
          break;
        }
        return true;
      }
      catch (hnz paramString2)
      {
        if (b)
        {
          paramString1 = String.valueOf(paramString1);
          if (paramString1.length() != 0) {
            "isPotentialEmergencyNumber: Not able to parse phone number ".concat(paramString1);
          }
        }
        else
        {
          return false;
        }
      }
      new String("isPotentialEmergencyNumber: Not able to parse phone number ");
    }
    return false;
  }
  
  public static String d(String paramString)
  {
    String str = i();
    if (e(paramString, str)) {
      return paramString;
    }
    if ((paramString != null) && (str != null))
    {
      str = (String)a.get(str);
      if (!TextUtils.isEmpty(str))
      {
        str = String.valueOf(str);
        paramString = String.valueOf(paramString);
        if (paramString.length() != 0) {
          return str.concat(paramString);
        }
        return new String(str);
      }
    }
    return null;
  }
  
  public static boolean d()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return k().isSmsCapable();
    }
    return b();
  }
  
  public static boolean d(String paramString1, String paramString2)
  {
    String str = i();
    label124:
    label131:
    label133:
    label138:
    label141:
    for (;;)
    {
      int i1;
      try
      {
        ezk localezk = a(paramString1, str, false);
        paramString2 = localezk.a(a(paramString2, str, false));
        if (!j.a(localezk.c(), str))
        {
          if (!str.equals("US")) {
            break label138;
          }
          if (paramString1.startsWith("+1"))
          {
            if (paramString1.length() != 10) {
              break label133;
            }
            i1 = 1;
            break label124;
          }
        }
        else
        {
          if (paramString2 != hoo.e) {
            break label131;
          }
          return true;
        }
        if (paramString1.length() != 8) {
          break label138;
        }
        i1 = 1;
      }
      catch (hnz paramString1)
      {
        return false;
      }
      if ((paramString2 != hoo.e) && (paramString2 != hoo.d))
      {
        paramString1 = hoo.c;
        if (paramString2 != paramString1) {}
      }
      else
      {
        return true;
      }
      for (;;)
      {
        if (i1 == 0) {
          break label141;
        }
        break;
        return false;
        i1 = 0;
        continue;
        i1 = 0;
      }
    }
  }
  
  public static boolean e()
  {
    return (d()) && (c());
  }
  
  public static boolean e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return m.matcher(paramString).matches();
  }
  
  private static boolean e(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return false;
    }
    paramString2 = (String)a.get(paramString2);
    if (TextUtils.isEmpty(paramString2)) {
      return false;
    }
    return paramString1.startsWith(paramString2);
  }
  
  public static String f()
  {
    String str = g();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return b(str, j());
  }
  
  public static String f(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.startsWith("+")) {}
    for (String str = "+";; str = "")
    {
      str = String.valueOf(str);
      paramString = String.valueOf(paramString.replaceAll("[^0-9]", ""));
      if (paramString.length() == 0) {
        break;
      }
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  private static String f(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      paramString2 = null;
    }
    String str;
    Object localObject;
    do
    {
      return paramString2;
      str = paramString1.trim();
      if ((str == null) || (str.length() < 3) || (str.charAt(0) != '*') || (!Character.isDigit(str.charAt(1))) || (!Character.isDigit(str.charAt(2)))) {
        break;
      }
      paramString1 = str.substring(0, 3);
      localObject = str.substring(paramString1.length()).trim();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        break label100;
      }
      paramString2 = paramString1;
    } while (!TextUtils.isEmpty(paramString1));
    for (;;)
    {
      return null;
      paramString1 = "";
      break;
      try
      {
        label100:
        localObject = a((String)localObject, paramString2, false);
        if (!((ezk)localObject).d()) {
          break label184;
        }
        paramString1 = String.valueOf(paramString1);
        paramString2 = String.valueOf(((ezk)localObject).a(hop.a));
        if (paramString2.length() != 0) {
          return paramString1.concat(paramString2);
        }
        paramString1 = new String(paramString1);
        return paramString1;
      }
      catch (hnz paramString1) {}
      if (b)
      {
        paramString1 = String.valueOf(str);
        if (paramString1.length() != 0)
        {
          "Unable to parse phone number ".concat(paramString1);
          continue;
          label184:
          if (j.a(((ezk)localObject).c(), paramString2))
          {
            paramString1 = String.valueOf(paramString1);
            paramString2 = String.valueOf(((ezk)localObject).a(hop.c));
            if (paramString2.length() != 0) {
              return paramString1.concat(paramString2);
            }
            paramString1 = new String(paramString1);
            return paramString1;
          }
        }
        else
        {
          new String("Unable to parse phone number ");
        }
      }
    }
  }
  
  public static String g()
  {
    if (h()) {
      return k().getLine1Number();
    }
    return null;
  }
  
  public static String g(String paramString)
  {
    return b(paramString, i());
  }
  
  private static String g(String paramString1, String paramString2)
  {
    try
    {
      ezk localezk = a(paramString1, paramString2, false);
      if (localezk.d()) {
        return localezk.a(hop.a);
      }
      String str = String.valueOf(localezk.e());
      int i1 = str.length();
      if ((i1 >= 2) && (i1 <= 18))
      {
        paramString2 = String.format("+%s%s", new Object[] { String.valueOf(localezk.b(paramString2)), str });
        return paramString2;
      }
    }
    catch (hnz paramString2)
    {
      if (b)
      {
        paramString1 = String.valueOf(paramString1);
        if (paramString1.length() != 0)
        {
          "Not able to parse phone number ".concat(paramString1);
          return null;
        }
        new String("Not able to parse phone number ");
      }
    }
    return null;
  }
  
  public static String h(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = 0;
    while (i1 < paramString.length())
    {
      int i2 = Character.digit(paramString.charAt(i1), 10);
      if (i2 != -1) {
        localStringBuilder.append(i2);
      }
      i1 += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static boolean h()
  {
    dcj localdcj = (dcj)ilh.a(aal.oJ, dcj.class);
    return (localdcj.a("android.permission.READ_PHONE_STATE")) || (localdcj.a("android.permission.READ_SMS"));
  }
  
  public static String i()
  {
    if (!TextUtils.isEmpty(f)) {
      return f;
    }
    if (c())
    {
      String str = j();
      if (!TextUtils.isEmpty(str))
      {
        f = str;
        return str;
      }
    }
    if (!TextUtils.isEmpty(g)) {
      return g;
    }
    if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
      return Locale.getDefault().getCountry();
    }
    return "US";
  }
  
  public static void i(String paramString)
  {
    n.add(paramString);
  }
  
  public static String j()
  {
    String str = k().getSimCountryIso();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return str.toUpperCase(Locale.US);
  }
  
  public static boolean j(String paramString)
  {
    return c(paramString, i());
  }
  
  public static TelephonyManager k()
  {
    return (TelephonyManager)aal.oJ.getSystemService("phone");
  }
  
  @Deprecated
  public static String k(String paramString)
  {
    return l(paramString);
  }
  
  public static String l(String paramString)
  {
    String str2 = i();
    String str1 = b(paramString, str2);
    if (str1 != null) {
      paramString = str1;
    }
    do
    {
      return paramString;
      str1 = g(paramString, str2);
    } while (str1 == null);
    return str1;
  }
  
  public static String m(String paramString)
  {
    return f(paramString, i());
  }
  
  public static String n(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i2 = paramString.length();
    int i1 = 0;
    while (i1 < i2)
    {
      char c1 = paramString.charAt(i1);
      if (Character.isDigit(c1)) {
        localStringBuilder.append(c1);
      }
      i1 += 1;
    }
    return localStringBuilder.substring(Math.max(0, localStringBuilder.length() - 6));
  }
  
  public static String o(String paramString)
  {
    return p(paramString).replaceAll("\\s", "\\ ");
  }
  
  public static String p(String paramString)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString)) {
      localObject = aal.oJ.getResources().getString(aal.rX);
    }
    for (;;)
    {
      return (String)localObject;
      if (paramString != null)
      {
        localObject = paramString;
        if (l.matcher(paramString).matches()) {
          continue;
        }
      }
      try
      {
        ezk localezk = a(l(paramString), null, c(paramString));
        boolean bool = r(paramString);
        if (!localezk.d())
        {
          localObject = paramString;
          if (!bool) {
            continue;
          }
        }
        int i1;
        if (localezk.b())
        {
          i1 = hop.c;
          String str2 = a(localezk.a(i1), ezp.a);
          localObject = str2;
          if (!localezk.a()) {
            break;
          }
          localObject = String.valueOf(str2);
          if (((String)localObject).length() == 0) {
            break label147;
          }
        }
        label147:
        for (localObject = " ".concat((String)localObject);; localObject = new String(" "))
        {
          return d((String)localObject);
          i1 = hop.a;
          break;
        }
        String str1;
        return str1;
      }
      catch (hnz localhnz)
      {
        str1 = String.valueOf(localhnz.getMessage());
        new StringBuilder(String.valueOf(paramString).length() + 35 + String.valueOf(str1).length()).append("Failed to parse '").append(paramString).append("' into PhoneInfo: ").append(str1);
        return a(paramString, ezp.a);
      }
    }
  }
  
  public static String q(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramString != null)
    {
      paramString = a(paramString);
      localObject1 = localObject2;
      if (paramString != null) {
        localObject1 = new Locale(Locale.getDefault().getLanguage(), paramString).getDisplayCountry();
      }
    }
    return (String)localObject1;
  }
  
  private static boolean r(String paramString)
  {
    Iterator localIterator = n.iterator();
    while (localIterator.hasNext()) {
      if (paramString.startsWith((String)localIterator.next())) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ezm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */