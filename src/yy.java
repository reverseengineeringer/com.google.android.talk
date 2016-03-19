import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class yy
  implements Parcelable
{
  public static final Parcelable.Creator<yy> CREATOR = new yz();
  int a;
  int b;
  boolean c;
  
  public yy() {}
  
  yy(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      c = bool;
      return;
      bool = false;
    }
  }
  
  public yy(yy paramyy)
  {
    a = a;
    b = b;
    c = c;
  }
  
  boolean a()
  {
    return a >= 0;
  }
  
  void b()
  {
    a = -1;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
    if (c) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     yy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */