.class public final Lfzp;
.super Ljava/lang/Object;


# static fields
.field static final a:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lfzz;",
            "Lfhz;",
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

.field public static final c:Lfzr;

.field private static final d:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lfzz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lfzp;->d:Lfib;

    new-instance v0, Lfzq;

    invoke-direct {v0}, Lfzq;-><init>()V

    sput-object v0, Lfzp;->a:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "NetworkQuality.API"

    sget-object v2, Lfzp;->a:Lfhx;

    sget-object v3, Lfzp;->d:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lfzp;->b:Lfhw;

    new-instance v0, Lfzr;

    sget-object v1, Lfzp;->d:Lfib;

    invoke-direct {v0, v1}, Lfzr;-><init>(Lfib;)V

    sput-object v0, Lfzp;->c:Lfzr;

    return-void
.end method
