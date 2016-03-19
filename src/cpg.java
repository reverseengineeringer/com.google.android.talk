import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public final class cpg
{
  public final int a;
  public final int b;
  private final int c;
  
  public cpg(int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramInt3;
    b = paramInt1;
    c = paramInt2;
  }
  
  public View a(ViewGroup paramViewGroup, cpc paramcpc)
  {
    paramViewGroup = ((LayoutInflater)paramViewGroup.getContext().getSystemService("layout_inflater")).inflate(c, paramViewGroup, false);
    ((TextView)paramViewGroup.findViewById(aal.mJ)).setText(b);
    View localView = paramViewGroup.findViewById(aal.mz);
    if (localView != null) {
      localView.setOnClickListener(new cph(this, paramcpc));
    }
    localView = paramViewGroup.findViewById(aal.my);
    if (localView != null) {
      localView.setOnClickListener(new cpi(this, paramcpc));
    }
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     cpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */