.class interface abstract Lefa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "version_code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "queue_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "server_request"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fail_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server_fail_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "creation_time"

    aput-object v2, v0, v1

    sput-object v0, Lefa;->a:[Ljava/lang/String;

    return-void
.end method
