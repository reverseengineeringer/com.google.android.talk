import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicInteger;

public final class bcg
  implements Parcelable
{
  public static final Parcelable.Creator<bcg> CREATOR = new bch();
  private static final AtomicInteger a = new AtomicInteger(1);
  private static final String b;
  private final String c;
  private final String d;
  private final int e;
  
  static
  {
    long l = SystemClock.elapsedRealtime();
    b = 21 + l + "_";
  }
  
  bcg(Parcel paramParcel)
  {
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readInt();
  }
  
  public bcg(String paramString)
  {
    fii.a(paramString);
    c = paramString;
    e = a.incrementAndGet();
    paramString = b;
    int i = e;
    d = (String.valueOf(paramString).length() + 11 + paramString + i);
  }
  
  public int a()
  {
    return e;
  }
  
  public String b()
  {
    if (!TextUtils.isEmpty(c)) {}
    for (int i = 1; i != 0; i = 0) {
      return c;
    }
    return toString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    bcg localbcg = (bcg)paramObject;
    if (localbcg != null) {
      return (c.equals(c)) && (d.equals(d));
    }
    return super.equals(paramObject);
  }
  
  public int hashCode()
  {
    return c.hashCode() + e * 31;
  }
  
  public String toString()
  {
    String str1 = c;
    String str2 = d;
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + "_" + str2;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeInt(e);
  }
}

/* Location:
 * Qualified Name:     bcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */