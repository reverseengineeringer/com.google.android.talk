.class public interface abstract Lbey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "notification_level"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "conversation_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "generated_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "draft"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "has_oldest_message"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "otr_status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "otr_toggle"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "call_media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "last_hangout_event_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "view"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "self_watermark"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "continuation_event_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "latest_message_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "(select merge_key from merge_keys where merge_keys.conversation_id=conversations.conversation_id) as merge_key"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sort_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "chat_ringtone_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hangout_ringtone_uri"

    aput-object v2, v0, v1

    sput-object v0, Lbey;->a:[Ljava/lang/String;

    return-void
.end method
