import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Locale;

public final class axj
  implements Parcelable
{
  public static final Parcelable.Creator<axj> CREATOR = new axk();
  public final String a;
  public final int b;
  public final int c;
  public boolean d;
  public boolean e;
  public bfb f;
  public String g;
  public long h;
  public String i;
  public String j;
  public int k = 0;
  public ArrayList<Boolean> l = new ArrayList();
  public boolean m;
  public boolean n;
  public boolean o;
  
  public axj(String paramString, int paramInt)
  {
    a = paramString;
    b = paramInt;
    h = -1L;
    c = 0;
  }
  
  public axj(String paramString, int paramInt1, int paramInt2)
  {
    a = paramString;
    b = paramInt1;
    c = paramInt2;
    h = -1L;
  }
  
  public int a()
  {
    switch (k)
    {
    default: 
      return 0;
    }
    return 1;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    Locale localLocale = Locale.US;
    String str4 = a;
    boolean bool1 = d;
    boolean bool2 = e;
    int i1 = b;
    int i2 = c;
    String str5 = g;
    String str1;
    String str2;
    if (f != null)
    {
      str1 = f.toString();
      if (i == null) {
        break label157;
      }
      str2 = i;
      label67:
      if (j == null) {
        break label164;
      }
    }
    label157:
    label164:
    for (String str3 = j;; str3 = "no-hangoutRingtoneUri")
    {
      return String.format(localLocale, "[%s;%s;%s;%d;%d;%s;%s;%s;%s]", new Object[] { str4, Boolean.valueOf(bool1), Boolean.valueOf(bool2), Integer.valueOf(i1), Integer.valueOf(i2), str5, str1, str2, str3 });
      str1 = "no-drafts";
      break;
      str2 = "no-chatRingtoneUri";
      break label67;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeBooleanArray(new boolean[] { d, e });
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
    paramParcel.writeParcelable(f, 0);
    paramParcel.writeString(g);
    paramParcel.writeInt(ezc.a(m));
    paramParcel.writeLong(h);
    paramParcel.writeString(i);
    paramParcel.writeInt(k);
    paramParcel.writeString(j);
    paramParcel.writeList(l);
    paramParcel.writeInt(ezc.a(n));
    paramParcel.writeInt(ezc.a(o));
  }
}

/* Location:
 * Qualified Name:     axj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */