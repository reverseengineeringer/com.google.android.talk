.class interface abstract Lcxp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "conversation_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "generated_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sort_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "inviter_gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "inviter_chat_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "inviter_first_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "inviter_full_name"

    aput-object v2, v0, v1

    sput-object v0, Lcxp;->a:[Ljava/lang/String;

    return-void
.end method
