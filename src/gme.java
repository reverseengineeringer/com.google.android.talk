import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

public final class gme
  extends gmk
{
  public gme(Context paramContext, fic paramfic)
  {
    super(paramContext, paramfic, true);
  }
  
  public static Bitmap a(Context paramContext)
  {
    return aal.b(BitmapFactory.decodeResource(paramContext.getResources(), aal.sL));
  }
  
  public void a(ImageView paramImageView, gpt paramgpt, int paramInt)
  {
    a(new gmf(this, paramImageView, paramgpt, paramInt));
  }
  
  protected void a(gml paramgml, Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      f.setImageBitmap(a(b));
      return;
    }
    super.a(paramgml, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     gme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */