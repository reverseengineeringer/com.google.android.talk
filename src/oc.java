import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

public class oc
{
  public Drawable a(CompoundButton paramCompoundButton)
  {
    return aen.a(paramCompoundButton);
  }
  
  public void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
  {
    if ((paramCompoundButton instanceof pz)) {
      ((pz)paramCompoundButton).a(paramColorStateList);
    }
  }
  
  public void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
  {
    if ((paramCompoundButton instanceof pz)) {
      ((pz)paramCompoundButton).a(paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     oc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */