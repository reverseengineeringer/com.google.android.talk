.class final Lgqy;
.super Lfhx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfhx",
        "<",
        "Lgqr;",
        "Lfhz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfhx;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lfkq;Ljava/lang/Object;Lfif;Lfih;)Lfia;
    .locals 8

    .prologue
    .line 1000
    new-instance v0, Lgqr;

    const/4 v3, 0x0

    sget-object v1, Lgqd;->a:Lgqd;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lgqr;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLfkq;Lfif;Lfih;Ljava/util/concurrent/ExecutorService;)V

    .line 0
    return-object v0
.end method
