.class public final Lgdj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lgej;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lgdl;

.field private static final d:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lgej;",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lgdj;->a:Lfib;

    new-instance v0, Lgdk;

    invoke-direct {v0}, Lgdk;-><init>()V

    sput-object v0, Lgdj;->d:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "ActivityRecognition.API"

    sget-object v2, Lgdj;->d:Lfhx;

    sget-object v3, Lgdj;->a:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lgdj;->b:Lfhw;

    new-instance v0, Lgdl;

    invoke-direct {v0}, Lgdl;-><init>()V

    sput-object v0, Lgdj;->c:Lgdl;

    return-void
.end method
