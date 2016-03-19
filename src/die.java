import android.text.TextPaint;
import android.text.style.URLSpan;
import com.google.android.apps.hangouts.phone.GoogleVoiceTermsOfServiceActivity;

public final class die
  extends URLSpan
{
  public die(GoogleVoiceTermsOfServiceActivity paramGoogleVoiceTermsOfServiceActivity, String paramString)
  {
    super(paramString);
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     die
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */