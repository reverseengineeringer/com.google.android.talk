.class public final Leon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "already active"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "request started"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type not available"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "request failed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "already inactive"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unknown"

    aput-object v2, v0, v1

    sput-object v0, Leon;->a:[Ljava/lang/String;

    return-void
.end method
