import android.graphics.drawable.Drawable;

class fz
  extends fy
{
  public void a(Drawable paramDrawable, boolean paramBoolean)
  {
    paramDrawable.setAutoMirrored(paramBoolean);
  }
  
  public boolean b(Drawable paramDrawable)
  {
    return paramDrawable.isAutoMirrored();
  }
  
  public Drawable c(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof gg)) {
      localObject = new gg(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */