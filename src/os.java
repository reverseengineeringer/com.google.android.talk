import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public final class os
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<os> CREATOR = new ot();
  public int a = 0;
  public int b = 0;
  public int c = 0;
  
  public os(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readInt();
  }
  
  public os(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(a);
  }
}

/* Location:
 * Qualified Name:     os
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */