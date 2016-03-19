import android.os.SystemClock;
import java.util.Locale;

public final class bid
{
  public static final String[] a = { "_id", "message_id", "conversation_id", "author_chat_id", "author_gaia_id", "text", "timestamp", "status", "type", "local_url", "remote_url", "width_pixels", "height_pixels", "attachment_name", "latitude", "longitude", "address", "attachment_target_url", "expiration_timestamp", "off_the_record", "attachment_content_type", "sms_message_size", "sms_priority", "sms_timestamp_sent", "external_ids", "mms_subject", "sms_raw_sender", "sms_raw_recipients", "persisted", "sms_message_status", "image_id", "stream_url", "stream_expiration", "sms_type", "new_conversation_name", "participant_keys", "transport_type", "sending_error", "call_media_type", "voicemail_length", "image_rotation", "attachment_blob_data", "receive_type", "init_timestamp", "in_app_msg_latency", "notified", "observed_status" };
  public static final String b = String.valueOf(c).concat(" desc, timestamp desc");
  private static final String c = String.format(Locale.US, "CASE WHEN %s IN (%d, %d) THEN 1 ELSE 0 END", new Object[] { "status", Integer.valueOf(emc.b.ordinal()), Integer.valueOf(emc.c.ordinal()) });
  
  public static String[] a()
  {
    return new String[] { Integer.toString(emd.h.ordinal()), Long.toString(SystemClock.elapsedRealtime() * 1000L) };
  }
}

/* Location:
 * Qualified Name:     bid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */