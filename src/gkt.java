import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolygonOptions;
import java.util.ArrayList;

public final class gkt
  implements Parcelable.Creator<PolygonOptions>
{
  public PolygonOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool1 = false;
    int m = aal.a(paramParcel);
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = new ArrayList();
    boolean bool2 = false;
    int i = 0;
    int j = 0;
    float f2 = 0.0F;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default: 
        aal.b(paramParcel, n);
        break;
      case 1: 
        k = aal.e(paramParcel, n);
        break;
      case 2: 
        localArrayList1 = aal.c(paramParcel, n, LatLng.CREATOR);
        break;
      case 3: 
        ClassLoader localClassLoader = getClass().getClassLoader();
        n = aal.a(paramParcel, n);
        int i1 = paramParcel.dataPosition();
        if (n != 0)
        {
          paramParcel.readList(localArrayList2, localClassLoader);
          paramParcel.setDataPosition(n + i1);
        }
        break;
      case 4: 
        f2 = aal.g(paramParcel, n);
        break;
      case 5: 
        j = aal.e(paramParcel, n);
        break;
      case 6: 
        i = aal.e(paramParcel, n);
        break;
      case 7: 
        f1 = aal.g(paramParcel, n);
        break;
      case 8: 
        bool2 = aal.c(paramParcel, n);
        break;
      case 9: 
        bool1 = aal.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new ax("Overread allowed size end=" + m, paramParcel);
    }
    return new PolygonOptions(k, localArrayList1, localArrayList2, f2, j, i, f1, bool2, bool1);
  }
}

/* Location:
 * Qualified Name:     gkt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */