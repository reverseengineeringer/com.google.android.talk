import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class dce
  implements TextWatcher
{
  dce(dcc paramdcc) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ill localill = a.context;
    if (((!bwc.b) && (!bwc.c)) || (paramCharSequence == null)) {
      paramInt1 = 0;
    }
    while (paramInt1 != 0)
    {
      a.b.setText("");
      a.a.a("");
      return;
      Object localObject = bwc.a.matcher(paramCharSequence);
      if (((Matcher)localObject).matches())
      {
        localObject = ((Matcher)localObject).group(1);
        Iterator localIterator = ilh.c(localill, bwb.class).iterator();
        for (;;)
        {
          if (localIterator.hasNext())
          {
            bwb localbwb = (bwb)localIterator.next();
            if (localbwb.a((String)localObject))
            {
              localbwb.a(localill);
              paramInt1 = 1;
              break;
            }
          }
        }
      }
      paramInt1 = 0;
    }
    a.a.a(paramCharSequence.toString());
  }
}

/* Location:
 * Qualified Name:     dce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */