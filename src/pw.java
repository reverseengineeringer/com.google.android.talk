import android.graphics.drawable.Drawable;
import android.widget.TextView;

class pw
  extends py
{
  pw()
  {
    super((byte)0);
  }
  
  public void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    int i;
    if (paramTextView.getLayoutDirection() == 1)
    {
      i = 1;
      if (i == 0) {
        break label38;
      }
      paramDrawable2 = null;
      label18:
      if (i == 0) {
        break label43;
      }
    }
    for (;;)
    {
      paramTextView.setCompoundDrawables(paramDrawable2, null, paramDrawable1, null);
      return;
      i = 0;
      break;
      label38:
      paramDrawable2 = paramDrawable1;
      break label18;
      label43:
      paramDrawable1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     pw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */