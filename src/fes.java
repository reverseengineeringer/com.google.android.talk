import android.content.res.Resources;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.VoiceRatesAndBalanceView;
import java.util.Locale;

public final class fes
  extends eap
{
  public fes(VoiceRatesAndBalanceView paramVoiceRatesAndBalanceView) {}
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    for (;;)
    {
      VoiceRatesAndBalanceView localVoiceRatesAndBalanceView;
      String str;
      StringBuilder localStringBuilder;
      synchronized (a.e)
      {
        localObject1 = parameau.c();
        if ((a.f == null) || (paramInt != aal.a((Integer)a.f.first, 0))) {
          break label374;
        }
        parameau = (String)a.f.second;
        if ((localObject1 instanceof dqx))
        {
          localObject1 = (dqx)localObject1;
          localVoiceRatesAndBalanceView = a;
          boolean bool = ((dqx)localObject1).l();
          str = ((dqx)localObject1).k();
          parameau = ezm.a(parameau);
          if (parameau == null)
          {
            parameau = Locale.getDefault();
            localStringBuilder = new StringBuilder();
            parameau = localVoiceRatesAndBalanceView.getResources().getString(StressMode.bp, new Object[] { parameau.getDisplayCountry() });
            b.setText(parameau);
            localStringBuilder.append(parameau);
            if (!bool) {
              break label300;
            }
            paramInt = localVoiceRatesAndBalanceView.getResources().getColor(aal.cV);
            parameau = localVoiceRatesAndBalanceView.getResources().getString(StressMode.bq);
            localObject1 = parameau;
            c.setTextColor(paramInt);
            c.setText((CharSequence)localObject1);
            localStringBuilder.append(parameau);
            if (!localVoiceRatesAndBalanceView.a(parambfd, localStringBuilder)) {
              break label358;
            }
            a.setContentDescription(localVoiceRatesAndBalanceView.getResources().getString(StressMode.dk, new Object[] { localStringBuilder.toString() }));
            localVoiceRatesAndBalanceView.setVisibility(0);
          }
        }
        else
        {
          a.a();
          return;
        }
        parameau = new Locale(Locale.getDefault().getLanguage(), parameau);
      }
      label300:
      paramInt = localVoiceRatesAndBalanceView.getResources().getColor(aal.cU);
      Object localObject1 = localVoiceRatesAndBalanceView.getResources().getString(StressMode.bv, new Object[] { str });
      parameau = localVoiceRatesAndBalanceView.getResources().getString(StressMode.bw, new Object[] { str });
      continue;
      label358:
      a.setContentDescription(localStringBuilder.toString());
      continue;
      label374:
      if (paramInt == a.g)
      {
        a.a(parambfd, null);
        a.b();
        a.d = false;
      }
    }
  }
  
  public void a(int paramInt, bfd arg2, eff parameff, dvn paramdvn)
  {
    synchronized (a.e)
    {
      if ((a.f != null) && (paramInt == aal.a((Integer)a.f.first, 0))) {
        a.a();
      }
      while (paramInt != a.g)
      {
        ezi.e("Babel_calls", String.format("Voice request failed", new Object[] { paramdvn }), new Object[0]);
        return;
      }
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     fes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */