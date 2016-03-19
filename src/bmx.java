import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.google.android.apps.hangouts.conversation.v2.MessageEditText;
import com.google.android.apps.hangouts.conversation.v2.TransportSpinner;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bmx
  extends FrameLayout
  implements AdapterView.OnItemSelectedListener, TextView.OnEditorActionListener
{
  private static final InputFilter[] m = new InputFilter[0];
  final TransportSpinner a;
  final MessageEditText b;
  bnc c;
  int d;
  long e;
  final View f;
  eoo g;
  bjc h;
  bjb i;
  final Runnable j = new bmy(this);
  final bnd k = new bnd(this);
  private InputFilter[] l;
  private boolean n = false;
  
  public bmx(Context paramContext, LayoutInflater paramLayoutInflater, eoo parameoo)
  {
    super(paramContext);
    g = parameoo;
    parameoo = ilh.b(paramContext);
    paramLayoutInflater = paramLayoutInflater.inflate(aal.fc, this, true);
    d = 3;
    f = paramLayoutInflater.findViewById(aen.el);
    b = ((MessageEditText)paramLayoutInflater.findViewById(aen.ep));
    b.addTextChangedListener(new bmz(this, paramContext));
    b.setOnEditorActionListener(this);
    b.setOnFocusChangeListener(new bna(this));
    b.a(new bqw(this));
    a = ((TransportSpinner)paramLayoutInflater.findViewById(aen.gV));
    a.a(parameoo);
    a();
    l();
    h = ((bjc)ilh.a(paramContext, bjc.class));
    h.a(new bnb(this));
  }
  
  private void l()
  {
    int i2 = 0;
    int i1;
    label22:
    int i3;
    if (a.getVisibility() != 8)
    {
      i1 = 1;
      if (i1 == 0) {
        break label79;
      }
      i1 = i2;
      i2 = getResources().getDimensionPixelSize(aal.dM);
      boolean bool = ezc.c();
      if (!bool) {
        break label93;
      }
      i3 = i2;
      label45:
      if (!bool) {
        break label98;
      }
    }
    for (;;)
    {
      f.setPadding(i3, f.getPaddingTop(), i1, f.getPaddingBottom());
      return;
      i1 = 0;
      break;
      label79:
      i1 = getResources().getDimensionPixelSize(aal.dM);
      break label22;
      label93:
      i3 = i1;
      break label45;
      label98:
      i1 = i2;
    }
  }
  
  public void a()
  {
    if ((i != null) && (aal.f(i.b))) {
      a.a(g.c());
    }
    if (c != null) {
      c.a();
    }
    if ((h == null) || (i == null)) {
      return;
    }
    boolean bool = aal.f(i.b);
    int i1 = h.a();
    Object localObject1;
    if (n)
    {
      i1 = StressMode.iy;
      localObject1 = null;
    }
    for (;;)
    {
      Object localObject2 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject2 = getContext().getString(i1);
      }
      b.setHint((CharSequence)localObject2);
      return;
      if (bool)
      {
        if (i1 == 1)
        {
          localObject1 = h.b();
          if (bzq.c((String)localObject1))
          {
            if (g.c()) {}
            for (i1 = aal.km;; i1 = aal.kn)
            {
              localObject1 = null;
              break;
            }
          }
          if (g.c()) {}
          for (i1 = StressMode.iw;; i1 = StressMode.ix)
          {
            localObject2 = gw.a();
            localObject1 = getContext().getString(i1, new Object[] { ((gw)localObject2).a(ezm.p((String)localObject1), hh.a) });
            break;
          }
        }
        i1 = aal.ko;
        localObject1 = null;
      }
      else
      {
        i1 = aal.ko;
        localObject1 = null;
      }
    }
  }
  
  void a(int paramInt)
  {
    if (c != null) {
      c.a(paramInt);
    }
  }
  
  public void a(bnc parambnc)
  {
    c = parambnc;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    int i1 = b.getSelectionStart();
    int i2 = b.getSelectionEnd();
    b.getText().replace(Math.min(i1, i2), Math.max(i1, i2), paramCharSequence);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(b.getText())) {
      b.setText(paramString);
    }
    if (paramBoolean) {
      b.selectAll();
    }
    for (;;)
    {
      a();
      return;
      b.setSelection(b.getText().length());
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b.setFocusable(paramBoolean);
    b.setFocusableInTouchMode(paramBoolean);
    MessageEditText localMessageEditText = b;
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      localMessageEditText.setImeOptions(i1);
      return;
    }
  }
  
  public void b()
  {
    b.requestFocus();
  }
  
  public boolean c()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (getVisibility() == 0)
    {
      bool1 = bool2;
      if (b.hasFocus())
      {
        MessageEditText localMessageEditText = b;
        if (localMessageEditText != null)
        {
          InputMethodManager localInputMethodManager = aen.a(localMessageEditText.getContext());
          if (localInputMethodManager != null) {
            localInputMethodManager.showSoftInput(localMessageEditText, 0);
          }
        }
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void d()
  {
    c = null;
    Object localObject = j;
    aal.y().removeCallbacks((Runnable)localObject);
    localObject = k;
    aal.y().removeCallbacks((Runnable)localObject);
  }
  
  public String e()
  {
    return b.getText().toString();
  }
  
  public void f()
  {
    b.dispatchKeyEvent(new KeyEvent(0, 67));
  }
  
  public void g()
  {
    b.dispatchKeyEvent(new KeyEvent(0, 62));
  }
  
  public void h()
  {
    if ((c != null) && (aal.f(i.b))) {}
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      if (l == null) {
        l = new InputFilter[] { new InputFilter.LengthFilter(emy.a().n()) };
      }
      b.setFilters(l);
      return;
    }
    b.setFilters(m);
  }
  
  public void i()
  {
    n = true;
  }
  
  public boolean j()
  {
    return b.getText().toString().trim().length() != 0;
  }
  
  public void k()
  {
    hbs.b("Expected non-null", c);
    String str = b.getText().toString().trim();
    if (!TextUtils.isEmpty(str)) {
      c.a(str);
    }
    b.setText("");
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt == 4) || ((paramKeyEvent != null) && (paramKeyEvent.getAction() == 0))) && (b.getText().length() > 0)) {
      ((bra)ilh.a(getContext(), bra.class)).a();
    }
    return true;
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (c != null)
    {
      paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
      if ((paramAdapterView instanceof bjb))
      {
        paramAdapterView = (bjb)paramAdapterView;
        if ((h != null) || (e != null)) {
          h.a(paramAdapterView);
        }
      }
    }
    l();
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    b.setVisibility(paramInt);
  }
}

/* Location:
 * Qualified Name:     bmx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */