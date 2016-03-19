import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.Iterator;
import java.util.List;

public final class huw
  extends huo
{
  private av d;
  
  public huw(Context paramContext, bg parambg)
  {
    super(paramContext, parambg);
  }
  
  public void a(String paramString)
  {
    au localau = (au)b.a("bg_task_progress_dialog");
    if ((localau != null) && (TextUtils.equals(paramString, localau.getArguments().getString("arg_task_tag")))) {
      localau.a();
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if ((au)b.a("bg_task_progress_dialog") == null)
    {
      paramString1 = ikv.a(paramString1, null, d);
      paramString1.getArguments().putString("arg_task_tag", paramString3);
      paramString1.b(false);
      paramString1.a(b, "bg_task_progress_dialog");
    }
  }
  
  public boolean a(hus paramhus)
  {
    if (hus.a(paramhus))
    {
      paramhus.b();
      localObject = ilh.c(a, hwt.class).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (((hwt)((Iterator)localObject).next()).a()) {
          c = false;
        }
      }
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    Object localObject = a;
    if ((paramhus != null) && (!TextUtils.isEmpty(paramhus.c())))
    {
      c = false;
      Toast.makeText((Context)localObject, paramhus.c(), 0).show();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     huw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */