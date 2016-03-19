import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public final class ddj
  extends Handler
{
  private Handler a;
  private SQLiteDatabase b;
  
  public ddj(SQLiteDatabase paramSQLiteDatabase, Looper paramLooper, Handler paramHandler)
  {
    super(paramLooper);
    a = paramHandler;
    b = paramSQLiteDatabase;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    }
    bei.b(b);
    a.sendEmptyMessage(2);
  }
}

/* Location:
 * Qualified Name:     ddj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */