import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class iit
  extends ijd
{
  public static final Parcelable.Creator<iit> CREATOR = new iiu();
  boolean a;
  Bundle b;
  
  public iit(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      a = bool;
      b = paramParcel.readBundle();
      return;
      bool = false;
    }
  }
  
  public iit(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (a) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeBundle(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     iit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */