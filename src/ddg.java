import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;

public final class ddg
  extends Preference
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  private static String a = null;
  private static CompoundButton b = null;
  private boolean c = false;
  private boolean d = true;
  
  private ddg(Context paramContext)
  {
    this(paramContext, null, aal.cK);
  }
  
  public ddg(Context paramContext, byte paramByte)
  {
    this(paramContext);
  }
  
  private ddg(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, null, paramInt);
  }
  
  private static void a(CompoundButton paramCompoundButton)
  {
    paramCompoundButton.setContentDescription(((TextView)((View)paramCompoundButton.getParent()).findViewById(16908310)).getText().toString());
  }
  
  public void a()
  {
    a = getKey();
  }
  
  public View getView(View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramView, paramViewGroup);
    paramViewGroup = paramView.findViewById(aen.aq);
    if ((paramViewGroup != null) && ((paramViewGroup instanceof RadioButton)))
    {
      paramViewGroup = (RadioButton)paramViewGroup;
      if (!d) {
        break label114;
      }
      paramViewGroup.setOnCheckedChangeListener(this);
      boolean bool = getKey().equals(a);
      if (bool)
      {
        b = paramViewGroup;
        a = getKey();
      }
      c = true;
      paramViewGroup.setChecked(bool);
      c = false;
    }
    for (;;)
    {
      a(paramViewGroup);
      paramViewGroup = paramView.findViewById(aen.gH);
      if ((paramViewGroup != null) && ((paramViewGroup instanceof RelativeLayout))) {
        paramViewGroup.setOnClickListener(this);
      }
      return paramView;
      label114:
      paramViewGroup.setVisibility(8);
    }
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    String str = String.valueOf(getKey());
    new StringBuilder(String.valueOf(str).length() + 11).append("ID: ").append(str).append(" :").append(paramBoolean);
    if (c) {
      return;
    }
    if (paramBoolean)
    {
      if (b != null) {
        b.setChecked(false);
      }
      b = paramCompoundButton;
      a = getKey();
      callChangeListener(a);
    }
    for (;;)
    {
      a(paramCompoundButton);
      return;
      b = null;
      a = null;
    }
  }
  
  public void onClick(View paramView)
  {
    if ((paramView != null) && (aen.gH == paramView.getId()))
    {
      paramView = getContext();
      if (paramView != null) {
        paramView.startActivity(aal.n(getKey()));
      }
    }
  }
  
  public void setSelectable(boolean paramBoolean)
  {
    d = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     ddg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */