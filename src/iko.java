import android.content.Intent;
import com.google.android.libraries.social.silentfeedback.impl.SilentFeedbackService;

public final class iko
  implements gxn
{
  public iko(SilentFeedbackService paramSilentFeedbackService, gyq paramgyq, Intent paramIntent, gxk paramgxk) {}
  
  public void a()
  {
    try
    {
      gyq localgyq = a;
      Object localObject = d;
      Intent localIntent = b;
      localObject = (gyv)ilh.a(((SilentFeedbackService)localObject).getApplication(), gyv.class);
      if (localIntent != null)
      {
        ((gyv)localObject).b(" ");
        ((gyv)localObject).a();
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.exceptionClass")) {
          ((gyv)localObject).d(localIntent.getStringExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.exceptionClass"));
        }
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.stackTrace")) {
          ((gyv)localObject).h(localIntent.getStringExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.stackTrace"));
        }
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingClass")) {
          ((gyv)localObject).f(localIntent.getStringExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingClass"));
        }
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingFile")) {
          ((gyv)localObject).e(localIntent.getStringExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingFile"));
        }
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingLine")) {
          ((gyv)localObject).a(localIntent.getIntExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingLine", -1));
        }
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingMethod")) {
          ((gyv)localObject).g(localIntent.getStringExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingMethod"));
        }
        if (localIntent.hasExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.categoryTag")) {
          ((gyv)localObject).c(localIntent.getStringExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.categoryTag"));
        }
      }
      localgyq.a(((gyv)localObject).b()).a(new ikp(this));
      return;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      d.a();
    }
  }
  
  public void a(int paramInt) {}
}

/* Location:
 * Qualified Name:     iko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */