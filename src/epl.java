import android.text.Spannable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public final class epl
  extends feg
{
  static final int a = cl;
  String b;
  Spannable c;
  final View d;
  final View.OnClickListener e = new epm(this);
  private final dlj g;
  
  public epl(iog paramiog, int paramInt, TextView paramTextView, View paramView)
  {
    super(paramTextView);
    d = paramView;
    g = new epn(this, paramTextView.getContext(), paramiog, paramInt);
  }
  
  public void a()
  {
    a(null, null);
    super.a();
  }
  
  public void a(String paramString1, String paramString2)
  {
    b = paramString1;
    g.a(paramString2);
  }
  
  protected void b()
  {
    if (g.e() != null)
    {
      if (!TextUtils.isEmpty(c)) {}
      for (int i = 0;; i = 8)
      {
        if (!TextUtils.isEmpty(c)) {
          fbt.a(f.getContext()).a(c, f);
        }
        f.setVisibility(i);
        f.setText(c);
        return;
      }
    }
    super.b();
  }
}

/* Location:
 * Qualified Name:     epl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */