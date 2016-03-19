import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import java.util.Locale;

public final class awk
  implements TextWatcher
{
  private boolean a = false;
  private boolean b;
  private hnu c;
  
  public awk()
  {
    this(Locale.getDefault().getCountry());
  }
  
  public awk(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException();
    }
    c = hof.b().g(paramString);
  }
  
  private String a(char paramChar, boolean paramBoolean)
  {
    if (paramBoolean) {
      return c.b(paramChar);
    }
    return c.a(paramChar);
  }
  
  private void a()
  {
    b = true;
    c.a();
  }
  
  private static boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    while (i < paramInt1 + paramInt2)
    {
      if (!PhoneNumberUtils.isNonSeparator(paramCharSequence.charAt(i))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public void a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException();
    }
    c = hof.b().g(paramString);
    a = false;
    b = false;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    boolean bool1 = true;
    for (;;)
    {
      int j;
      int i;
      char c2;
      boolean bool2;
      try
      {
        if (b)
        {
          if (paramEditable.length() != 0)
          {
            b = bool1;
            return;
          }
          bool1 = false;
          continue;
        }
        if (a) {
          continue;
        }
        j = Selection.getSelectionEnd(paramEditable);
        String str = null;
        c.a();
        int k = paramEditable.length();
        i = 0;
        bool1 = false;
        c1 = '\000';
        if (i < k)
        {
          c2 = paramEditable.charAt(i);
          if (PhoneNumberUtils.isNonSeparator(c2))
          {
            bool2 = bool1;
            if (c1 == 0) {
              break label212;
            }
            str = a(c1, bool1);
            bool2 = false;
            break label212;
          }
        }
        else
        {
          if (c1 != 0)
          {
            str = a(c1, bool1);
            if (str != null)
            {
              i = c.b();
              a = true;
              paramEditable.replace(0, paramEditable.length(), str, 0, str.length());
              if (str.equals(paramEditable.toString())) {
                Selection.setSelection(paramEditable, i);
              }
              a = false;
            }
          }
          else
          {
            continue;
          }
          continue;
        }
      }
      finally {}
      break label218;
      label212:
      char c1 = c2;
      bool1 = bool2;
      label218:
      if (i == j - 1) {
        bool1 = true;
      }
      i += 1;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((a) || (b)) {}
    while ((paramInt2 <= 0) || (!a(paramCharSequence, paramInt1, paramInt2))) {
      return;
    }
    a();
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((a) || (b)) {}
    while ((paramInt3 <= 0) || (!a(paramCharSequence, paramInt1, paramInt3))) {
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     awk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */