import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.fragments.InvitationFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;

public final class cce
  extends eap
{
  public cce(InvitationFragment paramInvitationFragment) {}
  
  public void a(bfd parambfd, drj paramdrj)
  {
    if ((a.d != null) && (!TextUtils.equals(a.d.a, paramdrj.l()))) {}
    do
    {
      return;
      ArrayList localArrayList = paramdrj.m();
      int j = Math.min(localArrayList.size(), a.i.size());
      Resources localResources = a.getResources();
      int i = 0;
      if (i < j)
      {
        localObject1 = null;
        Object localObject2 = (drk)localArrayList.get(i);
        switch (c)
        {
        }
        for (;;)
        {
          localObject2 = (TextView)a.i.get(i);
          ((TextView)localObject2).setVisibility(0);
          ((TextView)localObject2).setText((CharSequence)localObject1);
          i += 1;
          break;
          localObject1 = a;
          continue;
          if (!TextUtils.isEmpty(b))
          {
            localObject1 = localResources.getString(StressMode.rF, new Object[] { b, a });
          }
          else
          {
            localObject1 = localResources.getString(StressMode.tj, new Object[] { a });
            continue;
            localObject1 = a;
          }
        }
      }
    } while (paramdrj.k() == null);
    Object localObject1 = new ccf(this);
    parambfd = new bhs(new eyd(paramdrj.k().toString(), parambfd.a()).a(a.h.getMeasuredWidth(), (int)(a.getResources().getDisplayMetrics().density * 128.0F)).a(true).d(true), (bhv)localObject1, true, a.d);
    ((eit)a.binder.a(eit.class)).a(parambfd);
  }
}

/* Location:
 * Qualified Name:     cce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */