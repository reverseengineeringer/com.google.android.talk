abstract interface cxm
{
  public static final String[] a = { "author_first_name", "type", "conversation_id", "conversation_name", "generated_name", "conversation_type", "timestamp", "participant_keys", "call_media_type" };
  public static final String b;
  
  static
  {
    String str1 = String.valueOf("conversation_id IN (SELECT conversation_id FROM conversations WHERE conversations.has_video_notifications=1) AND author_chat_id!=? AND conversation_notification_level!=10 AND conversation_pending_leave!=1 AND (type=");
    int i = emd.h.ordinal();
    String str2 = String.valueOf("type");
    int j = emd.i.ordinal();
    String str3 = String.valueOf("conversation_status");
    String str4 = String.valueOf("timestamp");
    String str5 = String.valueOf("hangout_watermark");
    String str6 = String.valueOf("author_full_name");
    String str7 = String.valueOf("timestamp");
    b = String.valueOf(str1).length() + 93 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + str1 + i + " OR " + str2 + "=" + j + ") AND " + str3 + "!=1 AND " + str4 + ">" + str5 + " AND " + str6 + " IS NOT NULL AND " + str7 + " > 1355097600000000";
  }
}

/* Location:
 * Qualified Name:     cxm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */