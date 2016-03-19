import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

final class epy
  implements TextWatcher
{
  epy(epv paramepv) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = a.a.getResources();
    paramCharSequence = a.e.getText().toString();
    paramInt1 = paramCharSequence.codePointCount(0, paramCharSequence.length());
    Object localObject2 = Integer.toString(paramInt1);
    paramCharSequence = new SpannableString(a.a.getString(StressMode.fA, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(140) }));
    if (paramInt1 > 140)
    {
      paramInt2 = ((Resources)localObject1).getColor(aal.dE);
      a.g.setBackgroundColor(paramInt2);
      paramCharSequence.setSpan(new ForegroundColorSpan(paramInt2), 0, ((String)localObject2).length(), 33);
      a.h.setEnabled(false);
      localObject1 = a.a.getString(StressMode.fC, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(140) });
      a.f.setContentDescription((CharSequence)localObject1);
      localObject2 = a;
      if ((i != null) && (i.isEnabled()) && (i.isTouchExplorationEnabled()))
      {
        paramInt1 = 1;
        if (paramInt1 != 0) {
          a.e.setError((CharSequence)localObject1);
        }
      }
    }
    label392:
    for (;;)
    {
      a.f.setText(paramCharSequence);
      return;
      paramInt1 = 0;
      break;
      a.g.setBackgroundColor(((Resources)localObject1).getColor(aal.dF));
      a.h.setEnabled(true);
      a.f.setContentDescription(a.a.getString(StressMode.fB, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(140) }));
      localObject1 = a;
      if ((i != null) && (i.isEnabled()) && (i.isTouchExplorationEnabled())) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        if (paramInt1 == 0) {
          break label392;
        }
        a.e.setError(null);
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     epy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */