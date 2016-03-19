import java.util.concurrent.ExecutionException;

final class law
  implements Runnable
{
  law(lbb paramlbb, lat paramlat) {}
  
  public void run()
  {
    try
    {
      Object localObject = aal.a(a);
      b.a(localObject);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      b.a(localExecutionException.getCause());
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      b.a(localRuntimeException);
      return;
    }
    catch (Error localError)
    {
      b.a(localError);
    }
  }
}

/* Location:
 * Qualified Name:     law
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */