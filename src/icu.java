import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class icu
  implements Parcelable
{
  public static final Parcelable.Creator<icu> CREATOR = new icv();
  private final String a;
  private final idb b;
  private final String c;
  private final Uri d;
  private final ida e;
  private final int f;
  private final String g;
  
  icu(Parcel paramParcel)
  {
    a = paramParcel.readString();
    c = paramParcel.readString();
    String str = paramParcel.readString();
    if (str != null) {}
    for (d = Uri.parse(str);; d = null)
    {
      e = ida.a(paramParcel.readInt());
      g = paramParcel.readString();
      b = ((idb)idb.CREATOR.createFromParcel(paramParcel));
      f = paramParcel.readInt();
      return;
    }
  }
  
  private icu(String paramString1, String paramString2, int paramInt, long paramLong, String paramString3, Uri paramUri, ida paramida, String paramString4)
  {
    b = new idb(null, 0L);
    f = paramInt;
    a = null;
    c = paramString3;
    d = null;
    e = paramida;
    g = null;
    if ((!g()) && (!h())) {
      throw new IllegalArgumentException("MediaRef has neither url nor local uri!");
    }
  }
  
  public static icu a(Context paramContext, String paramString, ida paramida)
  {
    int i = -1;
    paramContext = (hpu)ilh.b(paramContext, hpu.class);
    if (paramContext != null) {
      i = paramContext.a();
    }
    return new icu(null, null, i, 0L, paramString, null, paramida, null);
  }
  
  public long a()
  {
    return b.a();
  }
  
  public String b()
  {
    return c;
  }
  
  public Uri c()
  {
    return d;
  }
  
  public String d()
  {
    return g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ida e()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof icu)) {
        break;
      }
      paramObject = (icu)paramObject;
      if (b.a() != ((icu)paramObject).a()) {
        return false;
      }
      if (!TextUtils.equals(c, c)) {
        return false;
      }
      if (!TextUtils.equals(g, g)) {
        return false;
      }
      Uri localUri1 = d;
      Uri localUri2 = d;
      boolean bool;
      if ((localUri1 != null) && (localUri2 != null)) {
        bool = localUri1.equals(localUri2);
      }
      while (!bool)
      {
        return false;
        if ((localUri1 == null) && (localUri2 == null)) {
          bool = true;
        } else {
          bool = false;
        }
      }
    } while (e == e);
    return false;
    return false;
  }
  
  public int f()
  {
    return f;
  }
  
  public boolean g()
  {
    return c != null;
  }
  
  public boolean h()
  {
    return d != null;
  }
  
  public int hashCode()
  {
    int m = 0;
    int n = (int)(b.a() ^ b.a() >>> 32);
    int i;
    int j;
    label42:
    int k;
    if (c == null)
    {
      i = 0;
      if (g != null) {
        break label96;
      }
      j = 0;
      if (d != null) {
        break label107;
      }
      k = 0;
      label51:
      if (e != null) {
        break label118;
      }
    }
    for (;;)
    {
      return (k + (j + (i + (n + 31) * 31) * 31) * 31) * 31 + m;
      i = c.hashCode();
      break;
      label96:
      j = g.hashCode();
      break label42;
      label107:
      k = d.hashCode();
      break label51;
      label118:
      m = e.hashCode();
    }
  }
  
  public boolean i()
  {
    return b.b();
  }
  
  public String toString()
  {
    String str2 = String.valueOf(getClass().getSimpleName());
    String str3 = String.valueOf(Integer.toHexString(System.identityHashCode(this)));
    String str4 = String.valueOf(b);
    String str5 = a;
    String str6 = c;
    if (d != null) {}
    for (String str1 = String.valueOf(d);; str1 = null)
    {
      str1 = String.valueOf(str1);
      String str7 = String.valueOf(e);
      String str8 = g;
      return String.valueOf(str2).length() + 25 + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str1).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + str2 + "@" + str3 + "[" + str4 + ", ti-" + str5 + ", u-" + str6 + ", l-" + str1 + ", ty-" + str7 + ", s-" + str8 + "]";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(c);
    if (d != null) {
      paramParcel.writeString(d.toString());
    }
    for (;;)
    {
      paramParcel.writeInt(e.e);
      paramParcel.writeString(g);
      b.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(f);
      return;
      paramParcel.writeString(null);
    }
  }
}

/* Location:
 * Qualified Name:     icu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */