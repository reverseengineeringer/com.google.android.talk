import android.content.Context;
import android.os.Build.VERSION;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.widget.TextView;

public class fbt
{
  private static fbt a = null;
  
  public static fbt a(Context paramContext)
  {
    if (a == null) {
      if (Build.VERSION.SDK_INT < 19) {
        break label28;
      }
    }
    label28:
    for (a = new fbt();; a = new fbu(paramContext.getApplicationContext())) {
      return a;
    }
  }
  
  public int a(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public SpannableString a(CharSequence paramCharSequence, TextView paramTextView)
  {
    return null;
  }
  
  public void a(Spannable paramSpannable, TextView paramTextView) {}
  
  public void a(Spanned paramSpanned) {}
}

/* Location:
 * Qualified Name:     fbt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */