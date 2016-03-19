.class public final Lbid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "CASE WHEN %s IN (%d, %d) THEN 1 ELSE 0 END"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "status"

    aput-object v3, v2, v4

    sget-object v3, Lemc;->b:Lemc;

    .line 21
    invoke-virtual {v3}, Lemc;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lemc;->c:Lemc;

    .line 22
    invoke-virtual {v3}, Lemc;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 17
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbid;->c:Ljava/lang/String;

    .line 26
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "message_id"

    aput-object v1, v0, v5

    const-string v1, "conversation_id"

    aput-object v1, v0, v6

    const-string v1, "author_chat_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "author_gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "local_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "remote_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "width_pixels"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "height_pixels"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "attachment_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "attachment_target_url"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "expiration_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "off_the_record"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "attachment_content_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sms_message_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sms_priority"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sms_timestamp_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "external_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mms_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "sms_raw_sender"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sms_raw_recipients"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "persisted"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sms_message_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "image_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "stream_url"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "stream_expiration"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sms_type"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "new_conversation_name"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "participant_keys"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sending_error"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "call_media_type"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "voicemail_length"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "image_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "attachment_blob_data"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "receive_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "init_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "in_app_msg_latency"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "notified"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "observed_status"

    aput-object v2, v0, v1

    sput-object v0, Lbid;->a:[Ljava/lang/String;

    .line 126
    sget-object v0, Lbid;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " desc, timestamp desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbid;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lemd;->h:Lemd;

    .line 139
    invoke-virtual {v2}, Lemd;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
