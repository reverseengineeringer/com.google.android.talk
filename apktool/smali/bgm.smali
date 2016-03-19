.class interface abstract Lbgm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "merge_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "min(chat_ringtone_uri)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "min(hangout_ringtone_uri)"

    aput-object v2, v0, v1

    sput-object v0, Lbgm;->a:[Ljava/lang/String;

    return-void
.end method
