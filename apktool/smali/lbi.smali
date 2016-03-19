.class public final Llbi;
.super Llam;
.source "SourceFile"

# interfaces
.implements Llbe;


# instance fields
.field final b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0, p1}, Llam;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 565
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Llbi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 566
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Llbc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Llbc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    invoke-static {p1, v0}, Llbo;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Llbo;

    move-result-object v0

    .line 573
    iget-object v1, p0, Llbi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 574
    new-instance v2, Llbj;

    invoke-direct {v2, v0, v1}, Llbj;-><init>(Llbb;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v2
.end method

.method public synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 557
    invoke-virtual {p0, p1, p2, p3, p4}, Llbi;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Llbc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4

    .prologue
    .line 3580
    invoke-static {p1}, Llbo;->a(Ljava/util/concurrent/Callable;)Llbo;

    move-result-object v0

    .line 3581
    iget-object v1, p0, Llbi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 3582
    new-instance v2, Llbj;

    invoke-direct {v2, v0, v1}, Llbj;-><init>(Llbb;Ljava/util/concurrent/ScheduledFuture;)V

    .line 557
    return-object v2
.end method

.method public synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .prologue
    .line 2588
    new-instance v1, Llbk;

    invoke-direct {v1, p1}, Llbk;-><init>(Ljava/lang/Runnable;)V

    .line 2590
    iget-object v0, p0, Llbi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 2591
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 2592
    new-instance v2, Llbj;

    invoke-direct {v2, v1, v0}, Llbj;-><init>(Llbb;Ljava/util/concurrent/ScheduledFuture;)V

    .line 557
    return-object v2
.end method

.method public synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .prologue
    .line 1598
    new-instance v1, Llbk;

    invoke-direct {v1, p1}, Llbk;-><init>(Ljava/lang/Runnable;)V

    .line 1600
    iget-object v0, p0, Llbi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 1601
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 1602
    new-instance v2, Llbj;

    invoke-direct {v2, v1, v0}, Llbj;-><init>(Llbb;Ljava/util/concurrent/ScheduledFuture;)V

    .line 557
    return-object v2
.end method
