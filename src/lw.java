import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public final class lw
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<lw> CREATOR = aal.a(new lx());
  public int a;
  public Parcelable b;
  public ClassLoader c;
  
  lw(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    super(paramParcel);
    ClassLoader localClassLoader = paramClassLoader;
    if (paramClassLoader == null) {
      localClassLoader = getClass().getClassLoader();
    }
    a = paramParcel.readInt();
    b = paramParcel.readParcelable(localClassLoader);
    c = localClassLoader;
  }
  
  public lw(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public String toString()
  {
    return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + a + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(a);
    paramParcel.writeParcelable(b, paramInt);
  }
}

/* Location:
 * Qualified Name:     lw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */