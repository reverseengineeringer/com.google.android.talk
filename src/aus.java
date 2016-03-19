import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public abstract class aus<Z>
  extends aux<ImageView, Z>
  implements atn
{
  private Animatable b;
  
  public aus(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  public void a(Drawable paramDrawable)
  {
    ((ImageView)a).setImageDrawable(paramDrawable);
  }
  
  public void a()
  {
    Object localObject;
    b(localObject);
    if ((localObject instanceof Animatable))
    {
      b = ((Animatable)localObject);
      b.start();
    }
  }
  
  public void b(Drawable paramDrawable)
  {
    super.b(paramDrawable);
    b(null);
    a(paramDrawable);
  }
  
  protected abstract void b(Z paramZ);
  
  public void c(Drawable paramDrawable)
  {
    super.c(paramDrawable);
    b(null);
    a(paramDrawable);
  }
  
  public void d(Drawable paramDrawable)
  {
    super.d(paramDrawable);
    b(null);
    a(paramDrawable);
  }
  
  public void e()
  {
    if (b != null) {
      b.stop();
    }
  }
  
  public void s_()
  {
    if (b != null) {
      b.start();
    }
  }
}

/* Location:
 * Qualified Name:     aus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */