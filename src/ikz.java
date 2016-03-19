import android.text.TextPaint;
import android.text.style.UnderlineSpan;

public final class ikz
  extends UnderlineSpan
{
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     ikz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */