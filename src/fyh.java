import android.app.ApplicationErrorReport;
import android.app.ApplicationErrorReport.CrashInfo;
import com.google.android.gms.feedback.FeedbackOptions;

public final class fyh
  extends fyg
{
  private final ApplicationErrorReport a = new ApplicationErrorReport();
  private String b;
  
  public fyh()
  {
    a.crashInfo = new ApplicationErrorReport.CrashInfo();
    a.crashInfo.throwLineNumber = -1;
  }
  
  public FeedbackOptions a()
  {
    aal.d(a.crashInfo.exceptionClassName);
    aal.d(a.crashInfo.throwFileName);
    aal.d(a.crashInfo.throwClassName);
    aal.d(a.crashInfo.throwMethodName);
    aal.d(a.crashInfo.stackTrace);
    return FeedbackOptions.d(FeedbackOptions.a(super.a(), a.crashInfo), b);
  }
  
  public fyh a(int paramInt)
  {
    a.crashInfo.throwLineNumber = paramInt;
    return this;
  }
  
  public fyh d(String paramString)
  {
    a.crashInfo.exceptionClassName = paramString;
    return this;
  }
  
  public fyh e(String paramString)
  {
    a.crashInfo.throwFileName = paramString;
    return this;
  }
  
  public fyh f(String paramString)
  {
    a.crashInfo.throwClassName = paramString;
    return this;
  }
  
  public fyh g(String paramString)
  {
    a.crashInfo.throwMethodName = paramString;
    return this;
  }
  
  public fyh h(String paramString)
  {
    a.crashInfo.stackTrace = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     fyh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */