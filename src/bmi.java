import android.content.ContentValues;
import android.database.Cursor;

final class bmi
  implements Runnable
{
  bmi(bmh parambmh) {}
  
  public void run()
  {
    Object localObject1 = new bfz(aal.oJ, a.d);
    Object localObject2 = ((bfz)localObject1).e();
    Object localObject3 = a.c;
    localObject3 = ((bha)localObject2).a("conversation_participants_view", new String[] { "gaia_id", "chat_id" }, "conversation_id=?", new String[] { localObject3 }, null);
    localObject2 = new ContentValues();
    ((ContentValues)localObject2).put("status", Integer.valueOf(1));
    if (a.b) {}
    for (int i = 1;; i = 2)
    {
      ((ContentValues)localObject2).put("inviter_affinity", Integer.valueOf(i));
      if (((Cursor)localObject3).moveToLast())
      {
        ((ContentValues)localObject2).put("inviter_gaia_id", ((Cursor)localObject3).getString(0));
        ((ContentValues)localObject2).put("inviter_chat_id", ((Cursor)localObject3).getString(1));
      }
      ((Cursor)localObject3).close();
      ((ContentValues)localObject2).put("self_watermark", Integer.valueOf(0));
      ((ContentValues)localObject2).put("chat_watermark", Integer.valueOf(0));
      ((ContentValues)localObject2).put("hangout_watermark", Integer.valueOf(0));
      if (a.b) {
        ((ContentValues)localObject2).put("notification_level", Integer.valueOf(30));
      }
      i = ((bfz)localObject1).e().a("conversations", (ContentValues)localObject2, "conversation_id=?", new String[] { a.c });
      localObject1 = a.c;
      localObject2 = String.valueOf(((ContentValues)localObject2).getAsString("inviter_chat_id"));
      new StringBuilder(String.valueOf(localObject1).length() + 74 + String.valueOf(localObject2).length()).append("modifying ").append((String)localObject1).append(" pretend invite status with inviter_id ").append((String)localObject2).append(" updated ").append(i).append(" rows");
      bft.a(a.d);
      ((cyh)ilh.a(a.a, cyh.class)).a(a.d);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bmi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */