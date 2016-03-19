import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class cto
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<cto> CREATOR = new ctp();
  private final int a;
  private final String b;
  private final String c;
  
  public cto(int paramInt, String paramString, boolean paramBoolean)
  {
    a = paramInt;
    if (paramBoolean)
    {
      b = paramString;
      c = "";
      return;
    }
    b = "";
    c = paramString;
  }
  
  protected cto(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readString();
    c = paramParcel.readString();
  }
  
  public static cto a(int paramInt, String paramString)
  {
    return new cto(paramInt, paramString, false);
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    if (!TextUtils.isEmpty(b)) {
      ((ctn)ilh.a(paramContext, ctn.class)).a(a, b);
    }
    for (;;)
    {
      return bco.a;
      ((ctn)ilh.a(paramContext, ctn.class)).a(c);
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
  }
}

/* Location:
 * Qualified Name:     cto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */