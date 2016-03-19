.class interface abstract Lbav;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "refreshed_at"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "client_callerid_setting"

    aput-object v2, v0, v1

    sput-object v0, Lbav;->a:[Ljava/lang/String;

    return-void
.end method
