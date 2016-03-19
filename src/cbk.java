import android.app.backup.BackupManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

final class cbk
  implements Runnable
{
  cbk(cbj paramcbj) {}
  
  public void run()
  {
    synchronized (cbj.d)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Object localObject3 = a.b.iterator();
      for (int i = 1; ((Iterator)localObject3).hasNext(); i = 0)
      {
        Integer localInteger = (Integer)((Iterator)localObject3).next();
        if (i == 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append(Integer.toString(aal.a(localInteger, 0), cbj.c));
      }
      localObject3 = a.a.getSharedPreferences("recentEmoji", 0).edit();
      ((SharedPreferences.Editor)localObject3).putString("recentEmojiKey", localStringBuilder.toString());
      ((SharedPreferences.Editor)localObject3).apply();
      new BackupManager(a.a).dataChanged();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cbk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */