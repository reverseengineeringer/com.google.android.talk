.class public final Lkpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkps",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lkps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkps",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Llbl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llbl",
            "<TV;>;"
        }
    .end annotation
.end field

.field final c:Lkoe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3736
    sget-object v0, Lcom/google/common/cache/LocalCache;->r:Lkps;

    .line 3498
    invoke-direct {p0, v0}, Lkpc;-><init>(Lkps;)V

    .line 3499
    return-void
.end method

.method public constructor <init>(Lkps;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkps",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4041
    new-instance v0, Llbl;

    invoke-direct {v0}, Llbl;-><init>()V

    .line 3494
    iput-object v0, p0, Lkpc;->b:Llbl;

    .line 4089
    new-instance v0, Lkoe;

    invoke-direct {v0}, Lkoe;-><init>()V

    .line 3495
    iput-object v0, p0, Lkpc;->c:Lkoe;

    .line 3502
    iput-object p1, p0, Lkpc;->a:Lkps;

    .line 3503
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 3517
    iget-object v0, p0, Lkpc;->a:Lkps;

    invoke-interface {v0}, Lkps;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lkps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lkps",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3602
    return-object p0
.end method

.method public a(Ljava/lang/Object;Laak;)Llbb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Laak;",
            ")",
            "Llbb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3548
    :try_start_0
    iget-object v0, p0, Lkpc;->c:Lkoe;

    invoke-virtual {v0}, Lkoe;->a()Lkoe;

    .line 3549
    iget-object v0, p0, Lkpc;->a:Lkps;

    invoke-interface {v0}, Lkps;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3550
    if-nez v0, :cond_2

    .line 3551
    invoke-virtual {p2}, Laak;->g()Ljava/lang/Object;

    move-result-object v0

    .line 3552
    invoke-virtual {p0, v0}, Lkpc;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lkpc;->b:Llbl;

    .line 3572
    :cond_0
    :goto_0
    return-object v0

    .line 3552
    :cond_1
    invoke-static {v0}, Llau;->g(Ljava/lang/Object;)Llbb;

    move-result-object v0

    goto :goto_0

    .line 3554
    :cond_2
    invoke-virtual {p2, p1, v0}, Laak;->a(Ljava/lang/Object;Ljava/lang/Object;)Llbb;

    move-result-object v0

    .line 3555
    if-nez v0, :cond_3

    .line 3556
    const/4 v0, 0x0

    invoke-static {v0}, Llau;->g(Ljava/lang/Object;)Llbb;

    move-result-object v0

    goto :goto_0

    .line 3560
    :cond_3
    new-instance v1, Lkpd;

    invoke-direct {v1, p0}, Lkpd;-><init>(Lkpc;)V

    invoke-static {v0, v1}, Llau;->a(Llbb;Lknj;)Llbb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3567
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3568
    invoke-virtual {p0, v1}, Lkpc;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkpc;->b:Llbl;

    .line 3569
    :goto_1
    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 3570
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 5529
    :cond_4
    invoke-static {v1}, Llau;->a(Ljava/lang/Throwable;)Llbb;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3534
    if-eqz p1, :cond_0

    .line 3537
    invoke-virtual {p0, p1}, Lkpc;->b(Ljava/lang/Object;)Z

    .line 3544
    :goto_0
    return-void

    .line 4736
    :cond_0
    sget-object v0, Lcom/google/common/cache/LocalCache;->r:Lkps;

    .line 3540
    iput-object v0, p0, Lkpc;->a:Lkps;

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lkpc;->b:Llbl;

    invoke-virtual {v0, p1}, Llbl;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3596
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3521
    iget-object v0, p0, Lkpc;->b:Llbl;

    invoke-virtual {v0, p1}, Llbl;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3507
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 3512
    iget-object v0, p0, Lkpc;->a:Lkps;

    invoke-interface {v0}, Lkps;->d()Z

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 3577
    iget-object v0, p0, Lkpc;->c:Lkoe;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lkoe;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lkps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkps",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3591
    iget-object v0, p0, Lkpc;->a:Lkps;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3587
    iget-object v0, p0, Lkpc;->a:Lkps;

    invoke-interface {v0}, Lkps;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
