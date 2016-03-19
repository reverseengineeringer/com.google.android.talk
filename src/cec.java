import android.animation.LayoutTransition;
import android.database.Cursor;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.fragments.dialpad.DialpadFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.VoiceRatesAndBalanceView;
import com.google.android.libraries.quantum.snackbar.Snackbar;

public class cec
  extends img
  implements TextWatcher, View.OnClickListener, View.OnKeyListener, View.OnLongClickListener, cdw, ck<Cursor>
{
  private static final gw a = ;
  private String aj = "";
  private hpu ak;
  private boolean al;
  private boolean am;
  private azl an;
  private ced b;
  private EditText c;
  private TextView d;
  private boolean e;
  private View f;
  private cdv g;
  private Snackbar h;
  private VoiceRatesAndBalanceView i;
  
  private void e()
  {
    int j = c.length();
    if ((j == c.getSelectionStart()) && (j == c.getSelectionEnd())) {
      c.setCursorVisible(false);
    }
  }
  
  private void f()
  {
    boolean bool2 = false;
    Object localObject = f;
    if (!c()) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      ((View)localObject).setEnabled(bool1);
      localObject = b;
      if (c())
      {
        bool1 = bool2;
        if ("".equals(aj)) {}
      }
      else
      {
        bool1 = true;
      }
      ((ced)localObject).b(bool1);
      return;
    }
  }
  
  public void a()
  {
    c.getText().clear();
  }
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    paramInt = c.getSelectionStart();
    if (paramInt > 0)
    {
      c.setSelection(paramInt);
      c.getText().delete(paramInt - 1, paramInt);
    }
    a(81, true);
    a(81, false);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      c.onKeyDown(paramInt, new KeyEvent(0, paramInt));
      h = ((Snackbar)getActivity().findViewById(aen.gm));
      if ((h != null) && (!h.c())) {
        h.b();
      }
    }
    e();
  }
  
  public void a(Cursor paramCursor)
  {
    if (paramCursor.moveToPosition(0))
    {
      aj = paramCursor.getString(1);
      f();
    }
  }
  
  public void a(ced paramced)
  {
    b = paramced;
  }
  
  public void a(String paramString)
  {
    c.setText(paramString);
    c.setSelection(c.getText().length());
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (c()) {
      c.setCursorVisible(false);
    }
    paramEditable = c.getText().toString();
    if (i != null)
    {
      bfd localbfd = dvd.e(ak.a());
      i.a(paramEditable, localbfd);
    }
    if (paramEditable.length() == 0) {
      b.a(paramEditable);
    }
    for (;;)
    {
      f();
      return;
      b.a(a.a(paramEditable, hh.a));
    }
  }
  
  public void b()
  {
    if (c())
    {
      if (!"".equals(aj))
      {
        a(aj);
        return;
      }
      ezi.e("Babel_dialer", "Dialer button enabled without a last-dialed number", new Object[0]);
      return;
    }
    b.b(c.getText().toString());
    a();
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public boolean c()
  {
    return c.length() == 0;
  }
  
  public void d()
  {
    if (!am)
    {
      al = true;
      return;
    }
    al = false;
    c.setText("");
    g.c();
    i.c();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = getLoaderManager().b(1, null, this);
    if (paramBundle != null) {
      paramBundle.u();
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    ak = ((hpu)binder.a(hpu.class));
    an = ((azl)binder.b(azl.class));
  }
  
  public void onClick(View paramView)
  {
    int j = paramView.getId();
    if (j == aen.by)
    {
      g.d();
      a(67, true);
    }
    do
    {
      return;
      if (j != aen.bI) {
        break;
      }
    } while (c());
    c.setCursorVisible(true);
    return;
    paramView = String.valueOf(paramView);
    ezi.e("Babel_dialer", String.valueOf(paramView).length() + 33 + "Unexpected onClick() event from: " + paramView, new Object[0]);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = new cdv(getActivity());
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if ((paramInt == 1) && (ak.b())) {
      return aal.a(dvd.e(ak.a()), true, 1);
    }
    return null;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    am = true;
    paramBundle = paramLayoutInflater.inflate(aal.gB, paramViewGroup, false);
    paramLayoutInflater = ((LinearLayout)paramBundle.findViewById(aen.gP)).getLayoutTransition();
    paramLayoutInflater.disableTransitionType(3);
    paramLayoutInflater.disableTransitionType(1);
    c = ((EditText)paramBundle.findViewById(aen.bI));
    c.setKeyListener(cef.a);
    c.setOnClickListener(this);
    c.setOnKeyListener(this);
    c.setOnLongClickListener(this);
    c.addTextChangedListener(this);
    getActivity();
    paramLayoutInflater = c;
    new cee(ezm.i(), paramLayoutInflater).execute(new Void[0]);
    d = ((TextView)paramBundle.findViewById(aen.aR));
    f = paramBundle.findViewById(aen.by);
    if (f != null)
    {
      f.setOnClickListener(this);
      f.setOnLongClickListener(this);
    }
    paramViewGroup = (DialpadFragment)getChildFragmentManager().a(DialpadFragment.class.getName());
    paramLayoutInflater = paramViewGroup;
    if (paramViewGroup == null)
    {
      paramLayoutInflater = new DialpadFragment();
      getChildFragmentManager().a().a(aen.bE, paramLayoutInflater, DialpadFragment.class.getName()).b();
    }
    paramLayoutInflater.a(this);
    i = ((VoiceRatesAndBalanceView)paramBundle.findViewById(aen.fj));
    f();
    e();
    if (al) {
      d();
    }
    paramLayoutInflater = dvd.e(ak.a());
    if (paramLayoutInflater != null)
    {
      if (!paramLayoutInflater.t()) {
        break label366;
      }
      paramViewGroup = d;
      localill = context;
      if (paramLayoutInflater.R()) {
        break label358;
      }
      j = StressMode.S;
      paramViewGroup.setText(localill.getString(j, new Object[] { ezm.a(paramLayoutInflater.v(), ezp.b) }));
      d.setVisibility(0);
    }
    label358:
    label366:
    while (an == null) {
      for (;;)
      {
        ill localill;
        return paramBundle;
        int j = StressMode.T;
      }
    }
    an.a(getActivity(), getLifecycle(), d);
    return paramBundle;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    g.a();
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (!paramBoolean) {
      c.requestFocus();
    }
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramView.getId() == aen.bI) && (paramInt == 66))
    {
      b();
      return true;
    }
    return false;
  }
  
  public void onLoaderReset(fe<Cursor> paramfe) {}
  
  public boolean onLongClick(View paramView)
  {
    Editable localEditable = c.getText();
    int j = paramView.getId();
    if (j == aen.by)
    {
      localEditable.clear();
      f.setPressed(false);
      return true;
    }
    if (j == aen.bI)
    {
      c.setCursorVisible(true);
      return false;
    }
    return false;
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    aj = "";
    f();
  }
  
  public void onStop()
  {
    super.onStop();
    if (e)
    {
      e = false;
      a();
    }
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     cec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */