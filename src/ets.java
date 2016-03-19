import android.os.AsyncTask;
import java.net.DatagramSocket;
import java.util.concurrent.Executor;

class ets
{
  DatagramSocket a()
  {
    return new DatagramSocket();
  }
  
  Executor b()
  {
    return AsyncTask.THREAD_POOL_EXECUTOR;
  }
}

/* Location:
 * Qualified Name:     ets
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */