import android.graphics.drawable.Drawable;

class fx
  extends fw
{
  public void a(Drawable paramDrawable)
  {
    paramDrawable.jumpToCurrentState();
  }
  
  public Drawable c(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof gf)) {
      localObject = new gf(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */