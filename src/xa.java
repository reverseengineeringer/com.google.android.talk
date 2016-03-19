import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

final class xa
{
  private static final int[] a = { 16843033 };
  private final ImageView b;
  private final vv c;
  
  xa(ImageView paramImageView, vv paramvv)
  {
    b = paramImageView;
    c = paramvv;
  }
  
  void a(int paramInt)
  {
    if (paramInt != 0)
    {
      ImageView localImageView = b;
      if (c != null) {}
      for (Drawable localDrawable = c.a(paramInt);; localDrawable = ey.a(b.getContext(), paramInt))
      {
        localImageView.setImageDrawable(localDrawable);
        return;
      }
    }
    b.setImageDrawable(null);
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = vw.a(b.getContext(), paramAttributeSet, a, paramInt);
    try
    {
      if (paramAttributeSet.g(0)) {
        b.setImageDrawable(paramAttributeSet.a(0));
      }
      return;
    }
    finally
    {
      paramAttributeSet.a();
    }
  }
}

/* Location:
 * Qualified Name:     xa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */