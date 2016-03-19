import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;

final class xh
  extends xd
{
  private static final int[] b = { 16843074 };
  private final SeekBar c;
  
  xh(SeekBar paramSeekBar, vv paramvv)
  {
    super(paramSeekBar, paramvv);
    c = paramSeekBar;
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    paramAttributeSet = vw.a(c.getContext(), paramAttributeSet, b, paramInt);
    Drawable localDrawable = paramAttributeSet.b(0);
    if (localDrawable != null) {
      c.setThumb(localDrawable);
    }
    paramAttributeSet.a();
  }
}

/* Location:
 * Qualified Name:     xh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */