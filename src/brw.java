import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.conversation.v2.TransportSpinner;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class brw
  extends ArrayAdapter<Object>
{
  public boolean a;
  private final LayoutInflater c;
  
  public brw(TransportSpinner paramTransportSpinner, Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    c = LayoutInflater.from(paramContext);
  }
  
  private static int a(int paramInt)
  {
    if (paramInt == 2) {
      return R.drawable.bp;
    }
    return R.drawable.bo;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject1 = getItem(paramInt);
    int j;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    int i;
    if ((localObject1 instanceof bjb))
    {
      paramView = c.inflate(aal.fe, paramViewGroup, false);
      localObject1 = (bjb)localObject1;
      j = b;
      localObject2 = (ImageView)paramView.findViewById(aen.dn);
      localObject3 = (TextView)paramView.findViewById(aen.gl);
      localObject4 = (TextView)paramView.findViewById(aen.gC);
      paramViewGroup = (TextView)paramView.findViewById(aen.gx);
      if (aal.f(j))
      {
        ((ImageView)localObject2).setImageResource(0);
        ((TextView)localObject3).setBackgroundResource(a(j));
        if (b.d)
        {
          i = StressMode.fX;
          ((TextView)localObject3).setText(i);
          ((TextView)localObject3).setVisibility(0);
          ((TextView)localObject4).setText(ezm.p(c));
          ((TextView)localObject4).setTextColor(b.getResources().getColor(aal.cS));
          paramViewGroup.setVisibility(8);
          if ((TextUtils.isEmpty(f)) && (!a)) {
            break label481;
          }
          localObject2 = f;
          paramViewGroup.setVisibility(0);
          localObject1 = new StringBuilder();
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            ((StringBuilder)localObject1).append((String)localObject2);
            if (a) {
              ((StringBuilder)localObject1).append(" ");
            }
          }
          if (a)
          {
            localObject2 = ((StringBuilder)localObject1).append("(");
            localObject3 = b;
            if (!aal.e(j)) {
              break label367;
            }
            if (!d) {
              break label359;
            }
            i = StressMode.sz;
            label291:
            ((StringBuilder)localObject2).append(((TransportSpinner)localObject3).getContext().getResources().getString(i)).append(")");
          }
          paramViewGroup.setText(((StringBuilder)localObject1).toString());
        }
      }
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramView = new View(c.getContext());
        paramView.setVisibility(8);
        return paramView;
        i = StressMode.jo;
        break;
        label359:
        i = StressMode.sA;
        break label291;
        label367:
        localObject4 = dvd.e(a);
        if ((localObject4 != null) && (((bfd)localObject4).R()))
        {
          i = StressMode.sB;
          break label291;
        }
        i = StressMode.sy;
        break label291;
        if (aal.g(j))
        {
          if (!b.c) {
            break label484;
          }
          i = aal.hf;
          label429:
          ((ImageView)localObject2).setImageResource(i);
          ((TextView)localObject3).setVisibility(8);
          if (TextUtils.isEmpty(c)) {
            break label492;
          }
          paramViewGroup.setText(c);
        }
        for (;;)
        {
          ((TextView)localObject4).setText(b.getResources().getString(StressMode.eF));
          label481:
          break;
          label484:
          i = R.drawable.bn;
          break label429;
          label492:
          paramViewGroup.setText(d);
        }
        if (!(localObject1 instanceof brx)) {
          break label789;
        }
        localObject1 = (brx)localObject1;
        paramView = c.inflate(aal.fh, paramViewGroup, false);
        paramViewGroup = (TextView)paramView.findViewById(aen.gC);
        localObject2 = (ImageView)paramView.findViewById(aen.dn);
        paramViewGroup.setText(((brx)localObject1).a());
        i = ((brx)localObject1).b();
        if (i == 0) {
          ((ImageView)localObject2).setVisibility(8);
        }
        for (;;)
        {
          if ((localObject1 instanceof View.OnClickListener)) {
            paramView.setOnClickListener((View.OnClickListener)localObject1);
          }
          break;
          ((ImageView)localObject2).setVisibility(0);
          ((ImageView)localObject2).setImageResource(i);
        }
      }
      if (paramInt == 0)
      {
        getLayoutParamsheight = b.getResources().getDimensionPixelSize(aal.eF);
        paramView.setLayoutParams(paramView.getLayoutParams());
        paramView.setPadding(paramView.getPaddingLeft(), b.getResources().getDimensionPixelSize(aal.eD), paramView.getPaddingRight(), 0);
        return paramView;
      }
      if (paramInt == getCount() - 1)
      {
        getLayoutParamsheight = b.getResources().getDimensionPixelSize(aal.eF);
        paramView.setLayoutParams(paramView.getLayoutParams());
        paramView.setPadding(paramView.getPaddingLeft(), 0, paramView.getPaddingRight(), b.getResources().getDimensionPixelSize(aal.eD));
        return paramView;
      }
      getLayoutParamsheight = b.getResources().getDimensionPixelSize(aal.eE);
      paramView.setLayoutParams(paramView.getLayoutParams());
      paramView.setPadding(paramView.getPaddingLeft(), 0, paramView.getPaddingRight(), 0);
      return paramView;
      label789:
      paramView = null;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = getItem(paramInt);
    if ((paramView instanceof bjb)) {}
    for (paramView = (bjb)paramView;; paramView = null)
    {
      if (b.e == null) {
        b.e = c.inflate(aal.gP, paramViewGroup, false);
      }
      paramViewGroup = (ImageView)b.e.findViewById(aen.gW);
      TextView localTextView = (TextView)b.e.findViewById(aen.gl);
      if (paramView != null)
      {
        paramInt = b;
        if (paramInt != 0) {
          break label122;
        }
        paramViewGroup.setImageResource(R.drawable.bn);
        localTextView.setVisibility(8);
      }
      for (;;)
      {
        return b.e;
        paramInt = 0;
        break;
        label122:
        if (aal.f(paramInt))
        {
          paramViewGroup.setImageResource(0);
          localTextView.setBackgroundResource(a(paramInt));
          if (b.d) {}
          for (paramInt = StressMode.fX;; paramInt = StressMode.jo)
          {
            localTextView.setText(paramInt);
            localTextView.setVisibility(0);
            break;
          }
        }
        if (aal.g(paramInt))
        {
          if (b.c) {}
          for (paramInt = aal.hf;; paramInt = R.drawable.bn)
          {
            paramViewGroup.setImageResource(paramInt);
            localTextView.setText("");
            localTextView.setVisibility(8);
            break;
          }
        }
        ezi.e("Babel", "Unexpected variant", new Object[0]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     brw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */