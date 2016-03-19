public abstract interface cxs
{
  public static final String[] a = { "author_first_name", "author_full_name", "author_chat_id", "text", "type", "local_url", "remote_url", "conversation_id", "conversation_name", "generated_name", "conversation_type", "timestamp", "status", "attachment_content_type", "transport_type", "author_gaia_id", "new_conversation_name", "participant_keys", "merge_key", "sms_type", "chat_watermark", "chat_ringtone_uri", "otr_status", "call_media_type", "author_profile_photo_url", "_id", "message_id" };
  public static final String b;
  public static final String c;
  public static final String d;
  public static final String e;
  public static final String f;
  public static final String g;
  public static final String h;
  public static final String i;
  public static final String j;
  public static final String k;
  public static final String l;
  
  static
  {
    String str1 = String.valueOf(" AND conversation_notification_level!=10 AND notification_level!=10 AND conversation_pending_leave!=1 AND type!=");
    int m = emd.h.ordinal();
    String str2 = String.valueOf("type");
    int n = emd.i.ordinal();
    String str3 = String.valueOf("conversation_status");
    String str4 = String.valueOf("timestamp");
    String str5 = String.valueOf("chat_watermark");
    String str6 = String.valueOf("timestamp");
    String str7 = String.valueOf("1355097600000000");
    String str8 = String.valueOf("timestamp");
    b = String.valueOf(str1).length() + 68 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + str1 + m + " AND " + str2 + "!=" + n + " AND " + str3 + "!=1 AND " + str4 + ">" + str5 + " AND " + str6 + " > " + str7 + " AND " + str8 + ">?";
    str1 = String.valueOf("conversation_id IN (SELECT conversation_id FROM conversations WHERE conversations.has_chat_notifications) AND (author_chat_id is NULL)");
    str2 = String.valueOf(b);
    if (str2.length() != 0)
    {
      str1 = str1.concat(str2);
      c = str1;
      str1 = String.valueOf("conversation_id IN (SELECT conversation_id FROM conversations WHERE conversations.has_chat_notifications) AND (author_chat_id is NULL OR author_chat_id!=?)");
      str2 = String.valueOf(b);
      if (str2.length() == 0) {
        break label1098;
      }
      str1 = str1.concat(str2);
      label464:
      d = str1;
      str1 = String.valueOf(" AND conversation_notification_level!=10 AND notification_level!=10 AND conversation_pending_leave!=1 AND type!=");
      m = emd.h.ordinal();
      str2 = String.valueOf("type");
      n = emd.i.ordinal();
      str3 = String.valueOf("conversation_status");
      str4 = String.valueOf("observed_status");
      str5 = String.valueOf("timestamp");
      str6 = String.valueOf("sms_type");
      e = String.valueOf(str1).length() + 89 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + str1 + m + " AND " + str2 + "!=" + n + " AND " + str3 + "!=1 AND " + str4 + "!=1 AND " + str5 + ">? AND " + str6 + "=-1";
      str1 = String.valueOf("(author_chat_id is NULL)");
      str2 = String.valueOf(e);
      if (str2.length() == 0) {
        break label1110;
      }
      str1 = str1.concat(str2);
      label686:
      f = str1;
      str1 = String.valueOf("(author_chat_id is NULL OR author_chat_id!=?)");
      str2 = String.valueOf(e);
      if (str2.length() == 0) {
        break label1122;
      }
      str1 = str1.concat(str2);
      label716:
      g = str1;
      str1 = c;
      str2 = String.valueOf("sms_type");
      h = String.valueOf(str1).length() + 18 + String.valueOf(str2).length() + str1 + " AND " + str2 + "!=-1";
      str1 = d;
      str2 = String.valueOf("sms_type");
      i = String.valueOf(str1).length() + 18 + String.valueOf(str2).length() + str1 + " AND " + str2 + "!=-1";
      str1 = String.valueOf(" AND conversation_notification_level!=10 AND notification_level!=10 AND conversation_pending_leave!=1 AND type!=");
      m = emd.h.ordinal();
      str2 = String.valueOf("type");
      n = emd.i.ordinal();
      str3 = String.valueOf("conversation_status");
      str4 = String.valueOf("timestamp");
      str5 = String.valueOf("timestamp");
      str6 = String.valueOf("1355097600000000");
      j = String.valueOf(str1).length() + 62 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + str1 + m + " AND " + str2 + "!=" + n + " AND " + str3 + "!=1 AND " + str4 + ">? AND " + str5 + " > " + str6;
      str1 = String.valueOf("conversation_id= AND(author_chat_id is NULL)");
      str2 = String.valueOf(j);
      if (str2.length() == 0) {
        break label1134;
      }
      str1 = str1.concat(str2);
      label1051:
      k = str1;
      str1 = String.valueOf("conversation_id=? AND(author_chat_id is NULL OR author_chat_id!=?)");
      str2 = String.valueOf(j);
      if (str2.length() == 0) {
        break label1146;
      }
    }
    label1098:
    label1110:
    label1122:
    label1134:
    label1146:
    for (str1 = str1.concat(str2);; str1 = new String(str1))
    {
      l = str1;
      return;
      str1 = new String(str1);
      break;
      str1 = new String(str1);
      break label464;
      str1 = new String(str1);
      break label686;
      str1 = new String(str1);
      break label716;
      str1 = new String(str1);
      break label1051;
    }
  }
}

/* Location:
 * Qualified Name:     cxs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */