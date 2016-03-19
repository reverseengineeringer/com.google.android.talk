import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Locale;
import java.util.Objects;

public final class est
  implements Parcelable
{
  public static final Parcelable.Creator<est> CREATOR = new esu();
  private final int a;
  private final String b;
  private final String c;
  
  est(int paramInt, String paramString1, String paramString2)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
  }
  
  public est(Context paramContext, int paramInt)
  {
    a = paramInt;
    b = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
    eut localeut = eut.a(paramContext);
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkCountryIso();
    String str;
    if (paramContext != null)
    {
      str = paramContext.toUpperCase(Locale.US);
      if (!TextUtils.isEmpty(str))
      {
        paramContext = str;
        if (!str.equals(localeut.k()))
        {
          localeut.b(str);
          paramContext = str;
        }
      }
    }
    for (;;)
    {
      c = paramContext;
      return;
      str = localeut.k();
      paramContext = str;
      if (TextUtils.isEmpty(str))
      {
        ezi.c("Babel_telephony", "TeleNetworkStatus.getCurrentNetworkCountryIso, network country is unknown.", new Object[0]);
        paramContext = null;
      }
    }
  }
  
  public static est a(euq parameuq)
  {
    String str2 = null;
    String str1;
    if (TextUtils.isEmpty(b))
    {
      str1 = null;
      if (!TextUtils.isEmpty(c)) {
        break label46;
      }
    }
    for (;;)
    {
      return new est(a, str1, str2);
      str1 = b;
      break;
      label46:
      str2 = c;
    }
  }
  
  public int a()
  {
    int i = c();
    if (((i != 2) && (i != 1)) || (a == 1)) {
      return 2;
    }
    if (a == 2) {
      return 1;
    }
    return 3;
  }
  
  public boolean a(Context paramContext)
  {
    return (!aal.a(paramContext, "babel_hutch_experience_for_us", false)) && (e() == 1);
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean b(Context paramContext)
  {
    boolean bool = false;
    if ((aal.a(paramContext, "babel_hutch_experience_for_us", false)) || (e() == 2)) {
      bool = true;
    }
    return bool;
  }
  
  public int c()
  {
    String str = b;
    if (str != null)
    {
      if (str.startsWith("310260")) {
        return 2;
      }
      if (str.startsWith("310120")) {
        return 1;
      }
      if (str.startsWith("311580")) {
        return 3;
      }
      if (str.startsWith("23420")) {
        return 4;
      }
      if (str.startsWith("45403")) {
        return 5;
      }
    }
    return 0;
  }
  
  public String d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int e()
  {
    if (c == null) {
      return 3;
    }
    if (c.equals(Locale.US.getCountry())) {
      return 1;
    }
    return 2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (est)paramObject;
    } while ((a == a) && (Objects.equals(b, b)) && (Objects.equals(c, c)));
    return false;
  }
  
  euq f()
  {
    euq localeuq = new euq();
    a = a;
    if (b != null) {
      b = b;
    }
    if (c != null) {
      c = c;
    }
    return localeuq;
  }
  
  public int hashCode()
  {
    int j = a + 31;
    int i = j;
    if (b != null) {
      i = j * 31 + b.hashCode();
    }
    j = i;
    if (c != null) {
      j = i * 31 + c.hashCode();
    }
    return j;
  }
  
  public String toString()
  {
    int i = c();
    String str1;
    String str2;
    if (i == 2)
    {
      str1 = "T-Mobile";
      if (a != 1) {
        break label139;
      }
      str2 = "roaming";
    }
    for (;;)
    {
      String str3 = c;
      return String.valueOf(str1).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + ", " + str2 + ", " + str3;
      if (i == 1)
      {
        str1 = "Sprint";
        break;
      }
      str1 = String.valueOf(b);
      if (str1.length() != 0)
      {
        str1 = "Uknown carrier: ".concat(str1);
        break;
      }
      str1 = new String("Uknown carrier: ");
      break;
      label139:
      if (a == 2) {
        str2 = "not roaming";
      } else {
        str2 = "roaming status unknown";
      }
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
  }
}

/* Location:
 * Qualified Name:     est
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */