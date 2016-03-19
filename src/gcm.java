import android.app.ApplicationErrorReport.CrashInfo;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.feedback.ErrorReport;
import com.google.android.gms.feedback.FeedbackOptions;
import com.google.android.gms.feedback.FileTeleporter;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public final class gcm
  extends flc<gcn>
{
  private Context e;
  
  public gcm(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, fkq paramfkq)
  {
    super(paramContext, paramLooper, 29, paramfkq, paramfif, paramfih);
    e = paramContext;
  }
  
  public static ErrorReport a(FeedbackOptions paramFeedbackOptions, File paramFile)
  {
    ErrorReport localErrorReport = new ErrorReport();
    if (paramFeedbackOptions != null)
    {
      if ((paramFeedbackOptions.b() != null) && (paramFeedbackOptions.b().size() > 0)) {
        E = paramFeedbackOptions.b();
      }
      if (!TextUtils.isEmpty(paramFeedbackOptions.a())) {
        C = paramFeedbackOptions.a();
      }
      if (!TextUtils.isEmpty(paramFeedbackOptions.d())) {
        c = paramFeedbackOptions.d();
      }
      if (paramFeedbackOptions.e() != null)
      {
        N = ethrowMethodName;
        L = ethrowLineNumber;
        M = ethrowClassName;
        O = estackTrace;
        J = eexceptionClassName;
        P = eexceptionMessage;
        K = ethrowFileName;
      }
      if (paramFeedbackOptions.c() != null) {
        Z = paramFeedbackOptions.c();
      }
      if (!TextUtils.isEmpty(paramFeedbackOptions.f())) {
        Q = paramFeedbackOptions.f();
      }
      if (!TextUtils.isEmpty(paramFeedbackOptions.h())) {
        b.packageName = paramFeedbackOptions.h();
      }
      if ((paramFeedbackOptions.g() != null) && (paramFile != null))
      {
        T = paramFeedbackOptions.g();
        T.a(paramFile);
      }
      if ((paramFeedbackOptions.i() != null) && (paramFeedbackOptions.i().size() != 0) && (paramFile != null))
      {
        Iterator localIterator = paramFeedbackOptions.i().iterator();
        while (localIterator.hasNext()) {
          ((FileTeleporter)localIterator.next()).a(paramFile);
        }
        V = ((FileTeleporter[])paramFeedbackOptions.i().toArray(new FileTeleporter[paramFeedbackOptions.i().size()]));
      }
      if (paramFeedbackOptions.k() != null) {
        aa = paramFeedbackOptions.k();
      }
      X = paramFeedbackOptions.j();
    }
    return localErrorReport;
  }
  
  private ErrorReport c(FeedbackOptions paramFeedbackOptions)
  {
    return a(paramFeedbackOptions, e.getCacheDir());
  }
  
  protected String a()
  {
    return "com.google.android.gms.feedback.internal.IFeedbackService";
  }
  
  public void a(FeedbackOptions paramFeedbackOptions)
  {
    ((gcn)m()).a(c(paramFeedbackOptions));
  }
  
  protected String b()
  {
    return "com.google.android.gms.feedback.internal.IFeedbackService";
  }
  
  public void b(FeedbackOptions paramFeedbackOptions)
  {
    ((gcn)m()).b(c(paramFeedbackOptions));
  }
}

/* Location:
 * Qualified Name:     gcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */