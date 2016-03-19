import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.List;

final class hza
{
  public hza a = this;
  public hza b = this;
  final hyt c;
  private List<Bitmap> d;
  
  public hza(hyt paramhyt)
  {
    c = paramhyt;
  }
  
  public int a()
  {
    if (d != null) {
      return d.size();
    }
    return 0;
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (d == null) {
      d = new ArrayList();
    }
    d.add(paramBitmap);
  }
  
  public Bitmap b()
  {
    int i = a();
    if (i != 0) {
      return (Bitmap)d.remove(i - 1);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     hza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */