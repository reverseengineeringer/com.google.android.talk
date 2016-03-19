.class public final Lfmo;
.super Ljava/lang/Object;


# static fields
.field public static a:Lgby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgby",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lgby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgby",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lgby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgby",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lgby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgby",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lgby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgby",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lgby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgby",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gms:common:stats:connections:level"

    sget v1, Lfmp;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lgby;->a(Ljava/lang/String;Ljava/lang/Integer;)Lgby;

    move-result-object v0

    sput-object v0, Lfmo;->a:Lgby;

    const-string v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lgby;->a(Ljava/lang/String;Ljava/lang/String;)Lgby;

    move-result-object v0

    sput-object v0, Lfmo;->b:Lgby;

    const-string v0, "gms:common:stats:connections:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lgby;->a(Ljava/lang/String;Ljava/lang/String;)Lgby;

    move-result-object v0

    sput-object v0, Lfmo;->c:Lgby;

    const-string v0, "gms:common:stats:connections:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lgby;->a(Ljava/lang/String;Ljava/lang/String;)Lgby;

    move-result-object v0

    sput-object v0, Lfmo;->d:Lgby;

    const-string v0, "gms:common:stats:connections:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lgby;->a(Ljava/lang/String;Ljava/lang/String;)Lgby;

    move-result-object v0

    sput-object v0, Lfmo;->e:Lgby;

    const-string v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lgby;->a(Ljava/lang/String;Ljava/lang/Long;)Lgby;

    move-result-object v0

    sput-object v0, Lfmo;->f:Lgby;

    return-void
.end method
