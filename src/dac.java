import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.peoplelistv2.impl.DeleteOnEmptyEditText;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;
import com.google.android.apps.hangouts.views.AvatarView;
import java.util.Iterator;
import java.util.List;

public final class dac
{
  public dac(EditParticipantsView paramEditParticipantsView) {}
  
  public void a()
  {
    Object localObject1;
    Object localObject2;
    if (a.d.getChildCount() > 1)
    {
      localObject1 = a.d.getChildAt(a.d.getChildCount() - 2);
      localObject2 = (axt)((View)localObject1).getTag();
      if (localObject2 != null)
      {
        ((View)localObject1).setTag(null);
        a.b.b((axt)localObject2);
        localObject1 = a;
        if ((h == null) || (aal.a(h, bhh.g))) {
          break label475;
        }
      }
    }
    label475:
    for (int j = 0;; j = 1)
    {
      localObject2 = b.c();
      int i = 0;
      Object localObject3;
      Object localObject4;
      Object localObject5;
      if (i < d.getChildCount() - 1)
      {
        localObject3 = d.getChildAt(i);
        localObject4 = ((View)localObject3).getTag();
        if (((List)localObject2).contains(localObject4))
        {
          ((EditParticipantsView)localObject1).a((View)localObject3, (axt)localObject4);
          ((List)localObject2).remove(localObject4);
        }
        for (;;)
        {
          i += 1;
          break;
          if (j != 0)
          {
            ((View)localObject3).setOnClickListener(null);
            localObject4 = (AvatarView)((View)localObject3).findViewById(StressMode.tQ);
            localObject5 = (TextView)((View)localObject3).findViewById(StressMode.tT);
            ((AvatarView)localObject4).setVisibility(4);
            ((TextView)localObject5).setVisibility(4);
            localObject3 = ObjectAnimator.ofPropertyValuesHolder(localObject3, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(EditParticipantsView.SCALE_X, new float[] { 1.0F, 0.0F }) });
            ((ValueAnimator)localObject3).setInterpolator(new axe(axi.a));
            ((ValueAnimator)localObject3).setDuration(200L);
            ((ValueAnimator)localObject3).addListener(j);
            ((ValueAnimator)localObject3).start();
          }
          else
          {
            d.removeView((View)localObject3);
            i -= 1;
          }
        }
      }
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (axt)((Iterator)localObject2).next();
        localObject4 = new dal((EditParticipantsView)localObject1, (axt)localObject3);
        localObject5 = LayoutInflater.from(((EditParticipantsView)localObject1).getContext()).inflate(aal.os, (ViewGroup)localObject1, false);
        ((View)localObject5).setOnClickListener(new dam((EditParticipantsView)localObject1, (View.OnClickListener)localObject4));
        ((View)localObject5).setScaleX(0.0F);
        d.addView((View)localObject5, d.getChildCount() - 1);
        ((EditParticipantsView)localObject1).a((View)localObject5, (axt)localObject3);
        EditParticipantsView.a((View)localObject5);
      }
      if ((!ezc.a(((EditParticipantsView)localObject1).getContext())) && (d.getChildCount() > 1)) {
        e.setHint("");
      }
      for (;;)
      {
        ((EditParticipantsView)localObject1).requestLayout();
        return;
        e.setHint(aen.jL);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */