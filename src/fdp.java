import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import java.util.Collection;
import java.util.Iterator;

public final class fdp
{
  private final String a;
  private final TextView b;
  
  public fdp(TextView paramTextView)
  {
    aal.w();
    b = ((TextView)aen.a(paramTextView));
    a = paramTextView.getText().toString();
  }
  
  public void a(Collection<fdr> paramCollection)
  {
    if (paramCollection.isEmpty()) {
      return;
    }
    if (aal.v())
    {
      b(paramCollection);
      return;
    }
    aal.a(new fdq(this, paramCollection));
  }
  
  void b(Collection<fdr> paramCollection)
  {
    SpannableString localSpannableString = new SpannableString(b.getText());
    paramCollection = paramCollection.iterator();
    boolean bool = false;
    if (paramCollection.hasNext())
    {
      fdr localfdr = (fdr)paramCollection.next();
      if (!localfdr.a(localSpannableString)) {
        break label93;
      }
      localfdr.b(localSpannableString);
      bool = localfdr.a() | bool;
    }
    label93:
    for (;;)
    {
      break;
      b.setText(localSpannableString);
      if (bool) {
        b.setMovementMethod(LinkMovementMethod.getInstance());
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     fdp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */