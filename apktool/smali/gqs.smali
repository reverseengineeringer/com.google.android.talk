.class final Lgqs;
.super Lgqj;


# instance fields
.field final a:Lgqd;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lgqd;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lgqj;-><init>()V

    iput-object p1, p0, Lgqs;->a:Lgqd;

    iput-object p2, p0, Lgqs;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lgqn;)V
    .locals 2

    iget-object v0, p0, Lgqs;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgqu;

    invoke-direct {v1, p0, p1, p2, p3}, Lgqu;-><init>(Lgqs;Ljava/lang/String;Ljava/lang/String;Lgqn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lgqn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lgqn;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lgqs;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgqt;

    invoke-direct {v1, p0, p2, p1, p3}, Lgqt;-><init>(Lgqs;Ljava/util/List;Ljava/lang/String;Lgqn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
