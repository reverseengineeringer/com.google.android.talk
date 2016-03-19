import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsFragment;
import com.google.android.apps.hangouts.views.AvatarView;

public final class epv
{
  final Context a;
  final StatusMessageSettingsFragment b;
  final bfd c;
  final dll d;
  EditText e;
  TextView f;
  View g;
  Button h;
  AccessibilityManager i;
  private final TextWatcher j = new epy(this);
  
  epv(Context paramContext, jqt paramjqt, StatusMessageSettingsFragment paramStatusMessageSettingsFragment, dll paramdll)
  {
    a = paramContext;
    b = paramStatusMessageSettingsFragment;
    c = dvd.e(paramjqt.a());
    d = paramdll;
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(aal.gK, paramViewGroup, false);
    e = ((EditText)paramViewGroup.findViewById(aen.gt));
    f = ((TextView)paramViewGroup.findViewById(aen.gr));
    g = paramViewGroup.findViewById(aen.gs);
    h = ((Button)paramViewGroup.findViewById(aen.gv));
    Button localButton = (Button)paramViewGroup.findViewById(aen.gu);
    ((AvatarView)paramViewGroup.findViewById(aen.ed)).a(c.q(), c.c(), c);
    e.addTextChangedListener(j);
    if (exa.d(a)) {
      b.getActivity().getWindow().setSoftInputMode(2);
    }
    if (paramBundle != null)
    {
      paramLayoutInflater = paramBundle.getString("saved_text");
      if (paramLayoutInflater == null) {
        break label302;
      }
    }
    label302:
    for (paramLayoutInflater = ezc.a(Html.fromHtml(paramLayoutInflater));; paramLayoutInflater = new SpannableString(""))
    {
      fbt.a(a).a(paramLayoutInflater, e);
      e.setText(paramLayoutInflater);
      e.setSelection(paramLayoutInflater.length());
      i = ((AccessibilityManager)a.getSystemService("accessibility"));
      paramLayoutInflater = a.getResources();
      ((TextView)paramViewGroup.findViewById(aen.ee)).setText(paramLayoutInflater.getString(StressMode.fD, new Object[] { "🙋" }));
      h.setOnClickListener(new epw(this));
      localButton.setOnClickListener(new epx(this));
      return paramViewGroup;
      paramLayoutInflater = b.getActivity().getIntent().getStringExtra("status_message");
      break;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putString("saved_text", e.getText().toString());
  }
}

/* Location:
 * Qualified Name:     epv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */