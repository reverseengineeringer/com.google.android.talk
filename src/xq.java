import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

final class xq
  extends xp
{
  private static final int[] b = { 16843666, 16843667 };
  private vu c;
  private vu d;
  
  xq(TextView paramTextView)
  {
    super(paramTextView);
  }
  
  void a()
  {
    super.a();
    if ((c != null) || (d != null))
    {
      Drawable[] arrayOfDrawable = a.getCompoundDrawablesRelative();
      a(arrayOfDrawable[0], c);
      a(arrayOfDrawable[2], d);
    }
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    Context localContext = a.getContext();
    vv localvv = vv.a(localContext);
    paramAttributeSet = localContext.obtainStyledAttributes(paramAttributeSet, b, paramInt, 0);
    if (paramAttributeSet.hasValue(0)) {
      c = a(localvv, paramAttributeSet.getResourceId(0, 0));
    }
    if (paramAttributeSet.hasValue(1)) {
      d = a(localvv, paramAttributeSet.getResourceId(1, 0));
    }
    paramAttributeSet.recycle();
  }
}

/* Location:
 * Qualified Name:     xq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */