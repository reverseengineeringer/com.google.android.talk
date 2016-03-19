.class final Lbfx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4325
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content_location"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "from_address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "message_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "expiry"

    aput-object v2, v0, v1

    sput-object v0, Lbfx;->a:[Ljava/lang/String;

    return-void
.end method
