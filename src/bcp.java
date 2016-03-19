import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.Log;

public final class bcp
  implements Parcelable
{
  public static final Parcelable.Creator<bcp> CREATOR = new bcq();
  public final String a;
  public final Bundle b;
  public final bcg c;
  public final long d;
  public final Bundle e;
  public boolean f;
  final String g;
  public final bcs h;
  
  protected bcp(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readBundle();
    c = ((bcg)paramParcel.readParcelable(bcg.class.getClassLoader()));
    d = paramParcel.readLong();
    e = paramParcel.readBundle();
    g = paramParcel.readString();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      h = ((bcs)paramParcel.readParcelable(bcs.class.getClassLoader()));
      return;
    }
  }
  
  public bcp(String paramString1, String paramString2, Bundle paramBundle, long paramLong, bcs parambcs)
  {
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      aen.a(bool);
      a = paramString1;
      b = ((Bundle)aen.a(paramBundle));
      c = new bcg(paramString2);
      d = (SystemClock.elapsedRealtime() + paramLong);
      e = new Bundle();
      g = Log.getStackTraceString(new Throwable());
      h = parambcs;
      return;
    }
  }
  
  public <T extends bcn> T a(Class<T> paramClass)
  {
    b.setClassLoader(paramClass.getClassLoader());
    return (bcn)aal.a(b);
  }
  
  public String a()
  {
    int j = a.lastIndexOf('.') + 1;
    int i = j;
    if (j >= a.length()) {
      i = 0;
    }
    String str1 = String.valueOf(a.substring(i));
    String str2 = String.valueOf(c);
    return String.valueOf(str1).length() + 0 + String.valueOf(str2).length() + str1 + str2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeBundle(b);
    paramParcel.writeParcelable(c, 0);
    paramParcel.writeLong(d);
    paramParcel.writeBundle(e);
    paramParcel.writeString(g);
    if (f) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeParcelable(h, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bcp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */