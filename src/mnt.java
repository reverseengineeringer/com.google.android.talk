import android.os.Message;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class mnt
  implements mnv
{
  private Method a;
  
  mnt()
  {
    try
    {
      a = Class.forName("android.os.Message").getMethod("setAsynchronous", new Class[] { Boolean.TYPE });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      aal.b("cr.SysMessageHandler", "Failed to find android.os.Message class", new Object[] { localClassNotFoundException });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      aal.b("cr.SysMessageHandler", "Failed to load Message.setAsynchronous method", new Object[] { localNoSuchMethodException });
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      aal.b("cr.SysMessageHandler", "Exception while loading Message.setAsynchronous method", new Object[] { localRuntimeException });
    }
  }
  
  public void a(Message paramMessage, boolean paramBoolean)
  {
    if (a == null) {
      return;
    }
    try
    {
      a.invoke(paramMessage, new Object[] { Boolean.valueOf(true) });
      return;
    }
    catch (IllegalAccessException paramMessage)
    {
      aal.b("cr.SysMessageHandler", "Illegal access to async message creation, disabling.", new Object[0]);
      a = null;
      return;
    }
    catch (IllegalArgumentException paramMessage)
    {
      aal.b("cr.SysMessageHandler", "Illegal argument for async message creation, disabling.", new Object[0]);
      a = null;
      return;
    }
    catch (InvocationTargetException paramMessage)
    {
      aal.b("cr.SysMessageHandler", "Invocation exception during async message creation, disabling.", new Object[0]);
      a = null;
      return;
    }
    catch (RuntimeException paramMessage)
    {
      aal.b("cr.SysMessageHandler", "Runtime exception during async message creation, disabling.", new Object[0]);
      a = null;
    }
  }
}

/* Location:
 * Qualified Name:     mnt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */