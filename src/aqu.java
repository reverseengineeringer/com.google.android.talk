import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

public final class aqu<DataType>
  implements ajb<DataType, BitmapDrawable>
{
  private final ajb<DataType, Bitmap> a;
  private final Resources b;
  private final amd c;
  
  public aqu(Resources paramResources, amd paramamd, ajb<DataType, Bitmap> paramajb)
  {
    b = ((Resources)aal.a(paramResources, "Argument must not be null"));
    c = ((amd)aal.a(paramamd, "Argument must not be null"));
    a = ((ajb)aal.a(paramajb, "Argument must not be null"));
  }
  
  public alr<BitmapDrawable> a(DataType paramDataType, int paramInt1, int paramInt2, aja paramaja)
  {
    paramDataType = a.a(paramDataType, paramInt1, paramInt2, paramaja);
    if (paramDataType == null) {
      return null;
    }
    return aru.a(b, c, (Bitmap)paramDataType.c());
  }
  
  public boolean a(DataType paramDataType, aja paramaja)
  {
    return a.a(paramDataType, paramaja);
  }
}

/* Location:
 * Qualified Name:     aqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */