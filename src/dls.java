import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public final class dls
  implements ilu, ioz
{
  Class<?>[] a;
  int b;
  private final iog c;
  
  public dls(iog paramiog, Class<?>[] paramArrayOfClass, int paramInt)
  {
    c = paramiog;
    b = paramInt;
    a = paramArrayOfClass;
    paramiog.a(this);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    paramContext = (dlt)paramilh.b(dlt.class);
    paramBundle = new ArrayList();
    Class[] arrayOfClass = a;
    int j = arrayOfClass.length;
    int i = 0;
    while (i < j)
    {
      dlu localdlu = (dlu)paramilh.b(arrayOfClass[i]);
      if (localdlu != null)
      {
        c.a(localdlu);
        paramBundle.add(localdlu);
      }
      i += 1;
    }
    if (paramContext != null) {
      paramContext.a(paramilh, c, paramBundle, b);
    }
  }
}

/* Location:
 * Qualified Name:     dls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */