import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public final class ikj
{
  private final Context a;
  
  public ikj(Context paramContext)
  {
    a = paramContext;
  }
  
  public static void a(Context paramContext, Throwable paramThrowable, String paramString)
  {
    paramThrowable = b(paramContext, paramThrowable, paramString);
    if (paramThrowable != null) {
      paramContext.startService(paramThrowable);
    }
  }
  
  private static void a(Throwable paramThrowable, StringBuilder paramStringBuilder, Set<Throwable> paramSet, String paramString)
  {
    while ((paramThrowable != null) && (!paramSet.contains(paramThrowable)))
    {
      paramSet.add(paramThrowable);
      if (paramString != null) {
        paramStringBuilder.append(paramString);
      }
      paramStringBuilder.append(paramThrowable.getClass().getName());
      paramStringBuilder.append(':');
      paramString = paramThrowable.getStackTrace();
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramString[i];
        paramStringBuilder.append("\n\tat ");
        paramStringBuilder.append(localObject);
        i += 1;
      }
      if (Build.VERSION.SDK_INT >= 19)
      {
        paramString = paramThrowable.getSuppressed();
        j = paramString.length;
        i = 0;
        while (i < j)
        {
          a(paramString[i], paramStringBuilder, paramSet, "\nSuppressed: ");
          i += 1;
        }
      }
      if (paramThrowable.getCause() == null) {
        break;
      }
      paramThrowable = paramThrowable.getCause();
      paramString = "\nCaused by: ";
    }
  }
  
  private static Intent b(Context paramContext, Throwable paramThrowable, String paramString)
  {
    Object localObject2 = paramThrowable.getStackTrace();
    if (paramThrowable.getStackTrace().length == 0) {
      return null;
    }
    try
    {
      localObject1 = paramContext.getPackageManager().getPackageInfo(paramContext.getApplicationContext().getPackageName(), 4);
      localObject3 = services;
      int j = localObject3.length;
      int i = 0;
      localObject1 = null;
      while (i < j)
      {
        Object localObject4 = localObject3[i];
        if (name.matches("com\\.google\\.android\\.libraries\\.social\\.silentfeedback\\.\\w*\\.SilentFeedbackService")) {
          localObject1 = name;
        }
        i += 1;
      }
      if (localObject1 != null) {
        break label116;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.e("SilentFeedback", "Could not find our own package. This should never happen. Not sending crash info.", paramContext);
      return null;
    }
    Log.e("SilentFeedback", "Could not find SilentFeedbackService, not sending crash info.");
    return null;
    label116:
    Object localObject3 = new Intent();
    ((Intent)localObject3).setComponent(new ComponentName(paramContext.getApplicationContext(), (String)localObject1));
    ((Intent)localObject3).setPackage(paramContext.getApplicationContext().getPackageName());
    Object localObject1 = new StringBuilder();
    a(paramThrowable, (StringBuilder)localObject1, new HashSet(), null);
    localObject2 = localObject2[0];
    if (((StackTraceElement)localObject2).getFileName() != null) {}
    for (paramContext = ((StackTraceElement)localObject2).getFileName();; paramContext = "Unknown Source")
    {
      ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.exceptionClass", paramThrowable.getClass().getName());
      ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.stackTrace", ((StringBuilder)localObject1).toString());
      ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingClass", ((StackTraceElement)localObject2).getClassName());
      ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingFile", paramContext);
      ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingLine", ((StackTraceElement)localObject2).getLineNumber());
      ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.throwingMethod", ((StackTraceElement)localObject2).getMethodName());
      if (paramString != null) {
        ((Intent)localObject3).putExtra("com.google.android.libraries.social.silentfeedback.SilentFeedbackService.categoryTag", paramString);
      }
      return (Intent)localObject3;
    }
  }
  
  public void a(Throwable paramThrowable, String paramString)
  {
    a(a, paramThrowable, paramString);
  }
}

/* Location:
 * Qualified Name:     ikj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */