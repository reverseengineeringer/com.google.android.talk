package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import iea;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$social$mediaupload$MediaUploadModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(1);
      a.put(iea.a, Integer.valueOf(0));
    }
    paramContext = (Integer)a.get(paramClass.getName());
    if (paramContext == null) {
      return;
    }
    switch (paramContext.intValue())
    {
    default: 
      return;
    }
    iea.a(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.social.mediaupload.MediaUploadModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */