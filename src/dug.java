import android.animation.Animator;
import android.animation.AnimatorSet;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageButton;
import com.google.android.apps.hangouts.quickreply.impl.QuickReplyActivity;

public final class dug
  implements TextWatcher
{
  public dug(QuickReplyActivity paramQuickReplyActivity, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (a.getText().toString().trim().length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramCharSequence = b;
      if (l != bool)
      {
        l = bool;
        m.setClickable(bool);
        AnimatorSet localAnimatorSet = new AnimatorSet();
        Animator localAnimator1 = aal.a(1.0F, 0.0F, 1.0F, 0.0F);
        localAnimator1.setStartDelay(0L);
        localAnimator1.setDuration(150L);
        localAnimator1.setInterpolator(aal.d());
        localAnimator1.addListener(new duj(paramCharSequence, bool));
        Animator localAnimator2 = aal.a(0.0F, 1.0F, 0.0F, 1.0F);
        localAnimator2.setStartDelay(0L);
        localAnimator2.setDuration(150L);
        localAnimator2.setInterpolator(aal.d());
        localAnimatorSet.playSequentially(new Animator[] { localAnimator1, localAnimator2 });
        localAnimatorSet.setTarget(m);
        localAnimatorSet.start();
      }
      if ((bool) && (!b.p))
      {
        b.p = true;
        paramCharSequence = b;
        if (q == 1)
        {
          j.b(k.a(o));
          j.a(k.a(paramCharSequence, n, o, 1));
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */