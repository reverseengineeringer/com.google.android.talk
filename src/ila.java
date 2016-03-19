import android.text.TextPaint;
import android.text.style.SuperscriptSpan;

public final class ila
  extends SuperscriptSpan
{
  public void updateDrawState(TextPaint paramTextPaint)
  {
    baselineShift += (int)(paramTextPaint.ascent() / 4.0F);
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    baselineShift += (int)(paramTextPaint.ascent() / 4.0F);
  }
}

/* Location:
 * Qualified Name:     ila
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */