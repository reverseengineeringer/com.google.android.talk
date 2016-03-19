import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Patterns;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.Serializable;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class cyx
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<cyx> CREATOR = new cyy();
  private static final long serialVersionUID = 1L;
  public List<String> A;
  public List<String> B;
  public String C;
  public int D = cyz.a;
  String E;
  byte[] F = new byte[0];
  public Set G;
  public czd a;
  public czb b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public Boolean i;
  public String j;
  public String k;
  public String l;
  public boolean m;
  public boolean n;
  public boolean o;
  public boolean p;
  public String q;
  public String r;
  public String s;
  public boolean t;
  public boolean u;
  public boolean v = true;
  public int w = 0;
  public String x;
  public boolean y;
  public boolean z;
  
  public static String a(Context paramContext)
  {
    return paramContext.getResources().getString(StressMode.tA);
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      paramString = paramString.trim();
    } while (TextUtils.isEmpty(paramString));
    int i1 = paramString.indexOf(' ');
    if (i1 >= 0) {
      return paramString.substring(0, i1);
    }
    return paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 != null) {
      e = paramString1;
    }
    if (paramString2 != null) {
      h = paramString2;
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    E = paramString;
    F = paramArrayOfByte;
  }
  
  public boolean a()
  {
    return !TextUtils.isEmpty(b());
  }
  
  public String b()
  {
    if (b != null) {
      return b.a;
    }
    return null;
  }
  
  public void b(String paramString)
  {
    q = paramString;
  }
  
  public String c()
  {
    if (b != null) {
      return b.b;
    }
    return null;
  }
  
  public void c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      g = a(aal.oJ);
      return;
    }
    g = paramString;
  }
  
  public byte[] d()
  {
    return F;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    if ((E == null) || (!E.isEmpty())) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool, "Illegal states for CallerIdPhoneNumber, only null or non-zero-length values are permitted");
      return E;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof cyx)) {}
    do
    {
      return false;
      paramObject = (cyx)paramObject;
    } while ((b == null) || (b == null));
    return b.a(b);
  }
  
  public String f()
  {
    return c;
  }
  
  @Deprecated
  public boolean g()
  {
    return c != null;
  }
  
  public boolean h()
  {
    return a == czd.d;
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  public boolean i()
  {
    return (!TextUtils.isEmpty(c)) && (Patterns.EMAIL_ADDRESS.matcher(c).matches());
  }
  
  public String j()
  {
    return q;
  }
  
  public String k()
  {
    String str2 = b();
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (str2.startsWith("g:")) {
        str1 = str2.substring(2);
      }
    }
    return str1;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(b);
    String str2 = String.valueOf(a);
    String str3 = c;
    String str4 = e;
    String str5 = f;
    String str6 = g;
    String str7 = h;
    String str8 = String.valueOf(i);
    return String.valueOf(str1).length() + 98 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + "ParticipantEntity {id:" + str1 + ", type:" + str2 + " phoneNumber:" + str3 + " displayName:" + str4 + " firstName:" + str5 + " fallbackName:" + str6 + " avatar:" + str7 + " blocked:" + str8 + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a.ordinal());
    paramParcel.writeParcelable(b, paramInt);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(r);
    paramParcel.writeString(s);
    if (t) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(w);
      paramParcel.writeString(E);
      paramParcel.writeInt(F.length);
      paramParcel.writeByteArray(F);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cyx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */