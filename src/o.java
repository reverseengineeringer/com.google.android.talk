import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import android.view.View.BaseSavedState;

public final class o
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<o> CREATOR = aal.a(new aal());
  SparseArray<Parcelable> a;
  
  public o(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    super(paramParcel);
    int j = paramParcel.readInt();
    int[] arrayOfInt = new int[j];
    paramParcel.readIntArray(arrayOfInt);
    paramParcel = paramParcel.readParcelableArray(paramClassLoader);
    a = new SparseArray(j);
    int i = 0;
    while (i < j)
    {
      a.append(arrayOfInt[i], paramParcel[i]);
      i += 1;
    }
  }
  
  public o(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = 0;
    super.writeToParcel(paramParcel, paramInt);
    if (a != null) {}
    int[] arrayOfInt;
    Parcelable[] arrayOfParcelable;
    for (int i = a.size();; i = 0)
    {
      paramParcel.writeInt(i);
      arrayOfInt = new int[i];
      arrayOfParcelable = new Parcelable[i];
      while (j < i)
      {
        arrayOfInt[j] = a.keyAt(j);
        arrayOfParcelable[j] = ((Parcelable)a.valueAt(j));
        j += 1;
      }
    }
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
  }
}

/* Location:
 * Qualified Name:     o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */