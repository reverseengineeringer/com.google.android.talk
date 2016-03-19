.class public final Lagy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    new-instance v0, Lagm;

    invoke-direct {v0, p0, p1}, Lagm;-><init>(Lagy;Landroid/os/Handler;)V

    iput-object v0, p0, Lagy;->a:Ljava/util/concurrent/Executor;

    .line 2042
    return-void
.end method


# virtual methods
.method public a(Lagr;Lagv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagr",
            "<*>;",
            "Lagv",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lagy;->a(Lagr;Lagv;Ljava/lang/Runnable;)V

    .line 1056
    return-void
.end method

.method public a(Lagr;Lagv;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagr",
            "<*>;",
            "Lagv",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p1}, Lagr;->n()V

    .line 1061
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lagr;->a(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lagy;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lagn;

    invoke-direct {v1, p0, p1, p2, p3}, Lagn;-><init>(Lagy;Lagr;Lagv;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1063
    return-void
.end method

.method public a(Lagr;Laha;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagr",
            "<*>;",
            "Laha;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1067
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lagr;->a(Ljava/lang/String;)V

    .line 1068
    invoke-static {p2}, Lagv;->a(Laha;)Lagv;

    move-result-object v0

    .line 1069
    iget-object v1, p0, Lagy;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lagn;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lagn;-><init>(Lagy;Lagr;Lagv;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1070
    return-void
.end method
