import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;
import java.util.ArrayList;

public final class gmx
  implements View.OnClickListener
{
  public gmx(SelectedAccountNavigationView paramSelectedAccountNavigationView) {}
  
  public void onClick(View paramView)
  {
    paramView = a;
    if ((a == null) || (a.size() == 0)) {
      return;
    }
    AnimatorSet localAnimatorSet = new AnimatorSet();
    Object localObject3 = d.s;
    Object localObject2 = d.w;
    ((View)localObject3).bringToFront();
    Object localObject1 = (gpt)a.get(0);
    if (f == 0.0F) {
      f = d.w.getWidth();
    }
    localObject2 = (ViewGroup.MarginLayoutParams)((View)localObject2).getLayoutParams();
    Object localObject4 = ObjectAnimator.ofFloat(d.p, "alpha", new float[] { 1.0F, 0.0F });
    if (h) {}
    for (int i = ((ViewGroup.MarginLayoutParams)localObject2).getMarginStart();; i = leftMargin)
    {
      float f1 = e / f;
      float f2 = e;
      float f3 = f;
      float f4 = bottomMargin;
      float f5 = d.p.getLeft() - (i + ((View)localObject3).getLeft());
      float f6 = f;
      float f7 = e;
      localObject2 = localAnimatorSet.play((Animator)localObject4);
      localObject4 = ObjectAnimator.ofFloat(localObject3, "translationX", new float[] { f5 - (f6 - f7) * 0.5F });
      ((ObjectAnimator)localObject4).setDuration(450L);
      ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(localObject3, "translationY", new float[] { (f2 - (f3 - f4)) * 0.5F });
      localObjectAnimator1.setDuration(450L);
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(localObject3, "scaleY", new float[] { f1 });
      localObjectAnimator2.setDuration(300L);
      localObject3 = ObjectAnimator.ofFloat(localObject3, "scaleX", new float[] { f1 });
      ((ObjectAnimator)localObject3).setDuration(300L);
      ((AnimatorSet.Builder)localObject2).with((Animator)localObject4).with(localObjectAnimator1).with(localObjectAnimator2).with((Animator)localObject3);
      localObject3 = d.D;
      localObject4 = d.G;
      if (localObject4 != null) {
        ((ImageView)localObject4).setImageDrawable(d.v.getDrawable());
      }
      if (localObject3 != null)
      {
        ((View)localObject3).setVisibility(0);
        localObject4 = ObjectAnimator.ofFloat(localObject3, "alpha", new float[] { 1.0F });
        ((ObjectAnimator)localObject4).setDuration(450L);
        localObjectAnimator1 = ObjectAnimator.ofFloat(localObject3, "scaleY", new float[] { 1.0F });
        localObjectAnimator1.setDuration(450L);
        localObject3 = ObjectAnimator.ofFloat(localObject3, "scaleX", new float[] { 1.0F });
        ((ObjectAnimator)localObject3).setDuration(450L);
        ((AnimatorSet.Builder)localObject2).with((Animator)localObject4).with((Animator)localObject3).with(localObjectAnimator1);
      }
      if ((d.y != null) && (d.m != null))
      {
        d.y.setAlpha(0.0F);
        d.y.setTranslationX(0.0F);
        paramView.a((gpt)localObject1, (AnimatorSet.Builder)localObject2, 150);
      }
      if (d.u != null)
      {
        localObject3 = ObjectAnimator.ofFloat(d.u, "alpha", new float[] { 0.0F });
        ((ObjectAnimator)localObject3).setDuration(300L);
        ((AnimatorSet.Builder)localObject2).with((Animator)localObject3);
      }
      if (d.C != null)
      {
        paramView.a(d, d.C, (gpt)localObject1);
        d.C.setVisibility(0);
        localObject1 = ObjectAnimator.ofFloat(d.C, "alpha", new float[] { 1.0F });
        ((ObjectAnimator)localObject1).setDuration(300L);
        ((AnimatorSet.Builder)localObject2).with((Animator)localObject1);
      }
      localAnimatorSet.addListener(new gmu(paramView));
      localObject1 = b;
      b = ((gpt)a.get(0));
      a.add(0, localObject1);
      a.remove(1);
      paramView.b(300);
      localAnimatorSet.setInterpolator(i);
      j = localAnimatorSet;
      j.start();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     gmx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */