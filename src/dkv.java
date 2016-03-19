import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.ActionMode;
import android.widget.AbsListView.MultiChoiceModeListener;

public final class dkv
{
  final dkx a;
  ActionMode b;
  private final AbsListView.MultiChoiceModeListener c;
  
  public dkv(dkx paramdkx)
  {
    a = paramdkx;
    c = new dkw(this);
  }
  
  public AbsListView.MultiChoiceModeListener a()
  {
    return c;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (b != null)
    {
      if (paramCharSequence != null)
      {
        paramCharSequence = new SpannableString(paramCharSequence);
        paramCharSequence.setSpan(new ForegroundColorSpan(-1), 0, paramCharSequence.length(), 33);
        b.setTitle(paramCharSequence);
      }
    }
    else {
      return;
    }
    b.setTitle(null);
  }
  
  public void b()
  {
    if (b != null) {
      b.invalidate();
    }
  }
  
  public void c()
  {
    if (b != null) {
      b.finish();
    }
  }
}

/* Location:
 * Qualified Name:     dkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */