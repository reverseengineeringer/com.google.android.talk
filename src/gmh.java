import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

public final class gmh
  extends gmk
{
  public gmh(Context paramContext, fic paramfic)
  {
    super(paramContext, paramfic, false);
  }
  
  public static Bitmap a(Context paramContext)
  {
    return BitmapFactory.decodeResource(paramContext.getResources(), aal.sK);
  }
  
  public void a(ImageView paramImageView, gpt paramgpt, int paramInt)
  {
    if (!aal.a(paramgpt)) {
      return;
    }
    a(new gmi(this, paramImageView, paramgpt.a(), paramgpt.Q_(), paramInt));
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
 * Qualified Name:     gmh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */