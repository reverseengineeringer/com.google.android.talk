import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class dtt
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<dtt> CREATOR = new dtu();
  private static final long serialVersionUID = 1L;
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final boolean e;
  
  public dtt(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramBoolean;
  }
  
  private static int a(Object paramObject)
  {
    if (paramObject != null) {
      return paramObject.hashCode();
    }
    return 0;
  }
  
  public static dtt a(String paramString)
  {
    return new dtt(paramString, null, null, null, false);
  }
  
  public static dtt a(String paramString1, String paramString2)
  {
    return new dtt(null, null, paramString1, paramString2, false);
  }
  
  public static kbj[] a(Collection<dtt> paramCollection)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    dtt localdtt;
    if (paramCollection != null)
    {
      localObject1 = localObject2;
      if (!paramCollection.isEmpty())
      {
        Iterator localIterator = paramCollection.iterator();
        paramCollection = null;
        if (localIterator.hasNext())
        {
          localdtt = (dtt)localIterator.next();
          if (!TextUtils.isEmpty(d))
          {
            localObject1 = new kbj();
            a = new kbm();
            a.a = new lcf();
            a.a.a = d;
            label107:
            if (localObject1 == null) {
              break label213;
            }
            if (paramCollection != null) {
              break label210;
            }
            paramCollection = new ArrayList();
            label123:
            paramCollection.add(localObject1);
          }
        }
      }
    }
    label210:
    label213:
    for (;;)
    {
      break;
      if (!TextUtils.isEmpty(c))
      {
        localObject1 = new kbj();
        b = new kbk();
        b.a = c;
        break label107;
      }
      localObject1 = null;
      break label107;
      localObject1 = localObject2;
      if (paramCollection != null)
      {
        localObject1 = new kbj[paramCollection.size()];
        paramCollection.toArray((Object[])localObject1);
      }
      return (kbj[])localObject1;
      break label123;
    }
  }
  
  public static dtt b(String paramString)
  {
    return new dtt(null, null, null, paramString, false);
  }
  
  public boolean a()
  {
    return (a != null) || (c != null) || (d != null);
  }
  
  public boolean b()
  {
    return (a != null) || (b != null) || (d != null);
  }
  
  public String c()
  {
    String str1 = a;
    String str2 = b;
    String str3 = c;
    String str4 = d;
    return String.valueOf(str1).length() + 3 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + str1 + "|" + str2 + "|" + str3 + "|" + str4;
  }
  
  public jzi d()
  {
    jzi localjzi = new jzi();
    if (a != null) {
      a = a;
    }
    for (;;)
    {
      if (e) {
        f = Boolean.valueOf(true);
      }
      return localjzi;
      if (c != null) {
        c = c;
      } else if (d != null) {
        d = d;
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof dtt)) {
        return false;
      }
      paramObject = (dtt)paramObject;
    } while ((TextUtils.equals(a, a)) && (TextUtils.equals(b, b)) && (TextUtils.equals(c, c)) && (TextUtils.equals(d, d)));
    return false;
  }
  
  public int hashCode()
  {
    return (((a(a) + 527) * 31 + a(b)) * 31 + a(c)) * 31 + a(d);
  }
  
  public String toString()
  {
    String str1 = c;
    String str2 = d;
    String str3 = a;
    String str4 = b;
    boolean bool = e;
    return String.valueOf(str1).length() + 86 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "EntityLookupSpec { email: " + str1 + "  phoneNumber: " + str2 + "  gaiaId: " + str3 + "  chatId: " + str4 + " createOffNetwork:" + bool + " }";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    if (e) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dtt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */