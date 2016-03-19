package gen_binder;

import android.content.Context;
import bpy;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$conversation$v2$ConversationV2Module
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(bpy.a, Integer.valueOf(0));
      a.put(bpy.b, Integer.valueOf(1));
      a.put(bpy.c, Integer.valueOf(2));
    }
    paramContext = (Integer)a.get(paramClass.getName());
    if (paramContext == null) {
      return;
    }
    switch (paramContext.intValue())
    {
    default: 
      return;
    case 0: 
      bpy.a(paramilh);
      return;
    case 1: 
      bpy.b(paramilh);
      return;
    }
    bpy.c(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.conversation.v2.ConversationV2Module
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */