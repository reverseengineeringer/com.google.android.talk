.class public final Lfzj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lfyx;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lfyx;",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lfzh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lfzj;->a:Lfib;

    new-instance v0, Lfzk;

    invoke-direct {v0}, Lfzk;-><init>()V

    sput-object v0, Lfzj;->b:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "Help.API"

    sget-object v2, Lfzj;->b:Lfhx;

    sget-object v3, Lfzj;->a:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lfzj;->c:Lfhw;

    new-instance v0, Lfyu;

    invoke-direct {v0}, Lfyu;-><init>()V

    sput-object v0, Lfzj;->d:Lfzh;

    return-void
.end method

.method public static a(Lfic;Lfzn;)V
    .locals 2

    new-instance v0, Lfzl;

    invoke-direct {v0, p0, p1}, Lfzl;-><init>(Lfic;Lfzn;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfzl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
