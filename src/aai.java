import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public final class aai
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<aai> CREATOR = new aaj();
  public Parcelable a;
  
  aai(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readParcelable(aab.class.getClassLoader());
  }
  
  public aai(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(a, 0);
  }
}

/* Location:
 * Qualified Name:     aai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */