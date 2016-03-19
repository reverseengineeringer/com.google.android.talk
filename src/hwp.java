import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public final class hwp
  implements iny, ioo, ios, iov, ioz
{
  private View a;
  private TextView b;
  private View c;
  private TextView d;
  private boolean e = true;
  private boolean f = true;
  private int g;
  private CharSequence h;
  private View.OnClickListener i;
  private int j;
  private CharSequence k;
  private boolean l;
  private boolean m;
  private hws n = hws.a;
  private final hwr o = new hwr(this);
  
  public hwp(iog paramiog)
  {
    paramiog.a(this);
  }
  
  private static void a(TextView paramTextView, int paramInt, CharSequence paramCharSequence)
  {
    if (paramTextView == null) {
      return;
    }
    if (paramInt != 0) {
      paramCharSequence = paramTextView.getContext().getString(paramInt);
    }
    paramTextView.setText(paramCharSequence);
  }
  
  private void d()
  {
    if ((!m) || (a == null)) {
      return;
    }
    switch (hwq.a[n.ordinal()])
    {
    default: 
      throw new IllegalStateException();
    case 1: 
      if (l)
      {
        o.a();
        return;
      }
      c();
      return;
    case 2: 
      o.b();
      if (e)
      {
        c.setVisibility(8);
        a.setVisibility(0);
        b.setVisibility(0);
        return;
      }
      a.setVisibility(8);
      return;
    }
    o.b();
    a.setVisibility(8);
  }
  
  public void X_()
  {
    m = true;
    d();
  }
  
  public void a()
  {
    m = false;
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      l = true;
    }
  }
  
  public void a(View paramView, Bundle paramBundle)
  {
    a = paramView.findViewById(16908292);
    if (a != null)
    {
      b = ((TextView)a.findViewById(aal.ub));
      b.setOnClickListener(i);
      c = a.findViewById(aal.tZ);
      d = ((TextView)a.findViewById(aal.ua));
      if (a != null)
      {
        a(b, g, h);
        a(d, j, k);
      }
    }
  }
  
  public void a(hws paramhws)
  {
    n = ((hws)aen.a(paramhws));
    d();
  }
  
  void c()
  {
    if ((m) && (a != null) && (n == hws.a))
    {
      if (f)
      {
        b.setVisibility(8);
        a.setVisibility(0);
        c.setVisibility(0);
      }
    }
    else {
      return;
    }
    a.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     hwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */