import android.telephony.PhoneNumberUtils;
import android.text.Spanned;
import android.text.method.DialerKeyListener;

public final class cef
  extends DialerKeyListener
{
  public static final cef a = new cef();
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    Object localObject2 = paramCharSequence.toString();
    Object localObject1 = new StringBuilder(((String)localObject2).length());
    localObject2 = ((String)localObject2).toCharArray();
    int j = localObject2.length;
    int i = 0;
    if (i < j)
    {
      char c = localObject2[i];
      int k = Character.digit(c, 10);
      if (k != -1) {
        ((StringBuilder)localObject1).append(k);
      }
      for (;;)
      {
        i += 1;
        break;
        ((StringBuilder)localObject1).append(c);
      }
    }
    localObject2 = PhoneNumberUtils.convertKeypadLettersToDigits(((StringBuilder)localObject1).toString());
    localObject1 = super.filter((CharSequence)localObject2, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
    paramSpanned = (Spanned)localObject1;
    if (localObject1 == null)
    {
      if (paramCharSequence.equals(localObject2)) {
        paramSpanned = null;
      }
    }
    else {
      return paramSpanned;
    }
    return ((String)localObject2).subSequence(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     cef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */