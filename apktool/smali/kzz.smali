.class public Lkzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llbb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llbb",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/lang/Object;

.field static final d:Llaa;


# instance fields
.field volatile listeners:Llae;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Llal;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 64
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 66
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lkzz;->a:Z

    .line 106
    const-class v0, Lkzz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkzz;->b:Ljava/util/logging/Logger;

    .line 118
    :try_start_0
    new-instance v0, Llaj;

    .line 2870
    invoke-direct {v0}, Llaj;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    sput-object v0, Lkzz;->d:Llaa;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkzz;->c:Ljava/lang/Object;

    return-void

    .line 119
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 124
    :try_start_1
    new-instance v0, Llaf;

    const-class v1, Llal;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "thread"

    .line 125
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Llal;

    const-class v3, Llal;

    const-string v4, "next"

    .line 126
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lkzz;

    const-class v4, Llal;

    const-string v5, "waiters"

    .line 127
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Lkzz;

    const-class v5, Llae;

    const-string v7, "listeners"

    .line 128
    invoke-static {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Lkzz;

    const-class v7, Ljava/lang/Object;

    const-string v8, "value"

    .line 129
    invoke-static {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Llaf;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 135
    sget-object v1, Lkzz;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    sget-object v1, Lkzz;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    new-instance v0, Llah;

    .line 2999
    invoke-direct {v0}, Llah;-><init>()V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 487
    instance-of v0, p0, Llab;

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "Task was cancelled."

    check-cast p0, Llab;

    iget-object v1, p0, Llab;->b:Ljava/lang/Throwable;

    .line 1842
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 488
    throw v2

    .line 489
    :cond_0
    instance-of v0, p0, Llac;

    if-eqz v0, :cond_1

    .line 490
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Llac;

    iget-object v1, p0, Llac;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 491
    :cond_1
    sget-object v0, Lkzz;->c:Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    .line 492
    const/4 p0, 0x0

    .line 496
    :cond_2
    return-object p0
.end method

.method private a(Llal;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 197
    iput-object v3, p1, Llal;->thread:Ljava/lang/Thread;

    .line 201
    :cond_0
    iget-object v0, p0, Lkzz;->waiters:Llal;

    .line 202
    sget-object v1, Llal;->a:Llal;

    if-ne v0, v1, :cond_4

    .line 222
    :cond_1
    return-void

    .line 206
    :goto_0
    if-eqz v0, :cond_1

    .line 207
    iget-object v2, v0, Llal;->next:Llal;

    .line 208
    iget-object v4, v0, Llal;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_2

    :goto_1
    move-object v1, v0

    move-object v0, v2

    .line 218
    goto :goto_0

    .line 210
    :cond_2
    if-eqz v1, :cond_3

    .line 211
    iput-object v2, v1, Llal;->next:Llal;

    .line 212
    iget-object v0, v1, Llal;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    .line 215
    :cond_3
    sget-object v4, Lkzz;->d:Llaa;

    invoke-virtual {v4, p0, v0, v2}, Llaa;->a(Lkzz;Llal;Llal;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_0
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    .line 828
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 833
    sget-object v1, Lkzz;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x39

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "RuntimeException while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with executor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 2808
    :cond_0
    iget-object v0, p0, Lkzz;->waiters:Llal;

    .line 2809
    sget-object v1, Lkzz;->d:Llaa;

    sget-object v2, Llal;->a:Llal;

    invoke-virtual {v1, p0, v0, v2}, Llaa;->a(Lkzz;Llal;Llal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    :goto_0
    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {v0}, Llal;->a()V

    .line 745
    iget-object v0, v0, Llal;->next:Llal;

    goto :goto_0

    .line 2817
    :cond_1
    iget-object v1, p0, Lkzz;->listeners:Llae;

    .line 2818
    sget-object v0, Lkzz;->d:Llaa;

    sget-object v2, Llae;->a:Llae;

    invoke-virtual {v0, p0, v1, v2}, Llaa;->a(Lkzz;Llae;Llae;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const/4 v0, 0x0

    .line 751
    :goto_1
    if-eqz v1, :cond_2

    .line 753
    iget-object v2, v1, Llae;->next:Llae;

    .line 754
    iput-object v0, v1, Llae;->next:Llae;

    move-object v0, v1

    move-object v1, v2

    .line 756
    goto :goto_1

    .line 757
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 758
    iget-object v1, v0, Llae;->b:Ljava/lang/Runnable;

    iget-object v2, v0, Llae;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lkzz;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 757
    iget-object v0, v0, Llae;->next:Llae;

    goto :goto_2

    .line 765
    :cond_3
    invoke-virtual {p0}, Lkzz;->a()V

    .line 766
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 584
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lkzz;->listeners:Llae;

    .line 587
    sget-object v1, Llae;->a:Llae;

    if-eq v0, v1, :cond_2

    .line 588
    new-instance v1, Llae;

    invoke-direct {v1, p1, p2}, Llae;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 590
    :cond_0
    iput-object v0, v1, Llae;->next:Llae;

    .line 591
    sget-object v2, Lkzz;->d:Llaa;

    invoke-virtual {v2, p0, v0, v1}, Llaa;->a(Lkzz;Llae;Llae;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lkzz;->listeners:Llae;

    .line 595
    sget-object v2, Llae;->a:Llae;

    if-ne v0, v2, :cond_0

    .line 599
    :cond_2
    invoke-static {p1, p2}, Lkzz;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method final a(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 799
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lkzz;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lkzz;->c()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 802
    :cond_0
    return-void

    .line 799
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 636
    new-instance v1, Llac;

    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Llac;-><init>(Ljava/lang/Throwable;)V

    .line 637
    sget-object v0, Lkzz;->d:Llaa;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Llaa;->a(Lkzz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lkzz;->d()V

    .line 639
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Llbb;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    .line 669
    if-nez v0, :cond_2

    .line 670
    invoke-interface {p1}, Llbb;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0, p1, v1}, Lkzz;->a(Llbb;Ljava/lang/Object;)Z

    move-result v0

    .line 702
    :goto_0
    return v0

    .line 673
    :cond_0
    new-instance v2, Llag;

    invoke-direct {v2, p0, p1}, Llag;-><init>(Lkzz;Llbb;)V

    .line 674
    sget-object v0, Lkzz;->d:Llaa;

    invoke-virtual {v0, p0, v1, v2}, Llaa;->a(Lkzz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2448
    :try_start_0
    sget-object v0, Llbh;->a:Llbh;

    .line 678
    invoke-interface {p1, v2, v0}, Llbb;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 685
    :try_start_1
    new-instance v0, Llac;

    invoke-direct {v0, v1}, Llac;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 690
    :goto_2
    sget-object v1, Lkzz;->d:Llaa;

    invoke-virtual {v1, p0, v2, v0}, Llaa;->a(Lkzz;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 687
    :catch_1
    move-exception v0

    sget-object v0, Llac;->a:Llac;

    goto :goto_2

    .line 694
    :cond_1
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    .line 698
    :cond_2
    instance-of v1, v0, Llab;

    if-eqz v1, :cond_3

    .line 700
    check-cast v0, Llab;

    iget-boolean v0, v0, Llab;->a:Z

    invoke-interface {p1, v0}, Llbb;->cancel(Z)Z

    .line 702
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Llbb;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<+TV;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 713
    instance-of v0, p1, Llai;

    if-eqz v0, :cond_1

    .line 718
    check-cast p1, Lkzz;

    iget-object v0, p1, Lkzz;->value:Ljava/lang/Object;

    .line 734
    :cond_0
    :goto_0
    sget-object v2, Lkzz;->d:Llaa;

    invoke-virtual {v2, p0, p2, v0}, Llaa;->a(Lkzz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    invoke-direct {p0}, Lkzz;->d()V

    .line 736
    const/4 v0, 0x1

    .line 738
    :goto_1
    return v0

    .line 722
    :cond_1
    :try_start_0
    invoke-static {p1}, Laal;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 723
    if-nez v0, :cond_0

    sget-object v0, Lkzz;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 725
    new-instance v0, Llac;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v2}, Llac;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 726
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 727
    new-instance v0, Llab;

    invoke-direct {v0, v1, v2}, Llab;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 728
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 729
    new-instance v0, Llac;

    invoke-direct {v0, v2}, Llac;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 738
    goto :goto_1
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method protected b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 615
    if-nez p1, :cond_0

    sget-object p1, Lkzz;->c:Ljava/lang/Object;

    .line 616
    :cond_0
    sget-object v0, Lkzz;->d:Llaa;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Llaa;->a(Lkzz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    invoke-direct {p0}, Lkzz;->d()V

    .line 618
    const/4 v0, 0x1

    .line 620
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Z
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    .line 574
    instance-of v1, v0, Llab;

    if-eqz v1, :cond_0

    check-cast v0, Llab;

    iget-boolean v0, v0, Llab;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    iget-object v3, p0, Lkzz;->value:Ljava/lang/Object;

    .line 522
    if-nez v3, :cond_3

    move v0, v1

    :goto_0
    instance-of v4, v3, Llag;

    or-int/2addr v0, v4

    if-eqz v0, :cond_6

    .line 527
    sget-boolean v0, Lkzz;->a:Z

    if-eqz v0, :cond_4

    .line 529
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v4, "Future.cancel() was called."

    invoke-direct {v0, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 531
    :goto_1
    new-instance v4, Llab;

    invoke-direct {v4, p1, v0}, Llab;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, v3

    .line 533
    :cond_0
    sget-object v3, Lkzz;->d:Llaa;

    invoke-virtual {v3, p0, v0, v4}, Llaa;->a(Lkzz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    if-eqz p1, :cond_1

    .line 537
    invoke-virtual {p0}, Lkzz;->b()V

    .line 539
    :cond_1
    invoke-direct {p0}, Lkzz;->d()V

    .line 540
    instance-of v2, v0, Llag;

    if-eqz v2, :cond_2

    .line 543
    check-cast v0, Llag;

    iget-object v0, v0, Llag;->a:Llbb;

    invoke-interface {v0, p1}, Llbb;->cancel(Z)Z

    .line 553
    :cond_2
    :goto_2
    return v1

    :cond_3
    move v0, v2

    .line 522
    goto :goto_0

    .line 530
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 548
    :cond_5
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    .line 551
    instance-of v3, v0, Llag;

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    .line 553
    goto :goto_2
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 444
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 447
    :cond_0
    iget-object v4, p0, Lkzz;->value:Ljava/lang/Object;

    .line 448
    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    instance-of v3, v4, Llag;

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 449
    invoke-static {v4}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 448
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 451
    :cond_3
    iget-object v0, p0, Lkzz;->waiters:Llal;

    .line 452
    sget-object v3, Llal;->a:Llal;

    if-eq v0, v3, :cond_a

    .line 453
    new-instance v4, Llal;

    invoke-direct {v4, v2}, Llal;-><init>(B)V

    .line 455
    :cond_4
    invoke-virtual {v4, v0}, Llal;->a(Llal;)V

    .line 456
    sget-object v3, Lkzz;->d:Llaa;

    invoke-virtual {v3, p0, v0, v4}, Llaa;->a(Lkzz;Llal;Llal;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 459
    :cond_5
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 461
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 462
    invoke-direct {p0, v4}, Lkzz;->a(Llal;)V

    .line 463
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 467
    :cond_6
    iget-object v5, p0, Lkzz;->value:Ljava/lang/Object;

    .line 468
    if-eqz v5, :cond_7

    move v0, v1

    :goto_3
    instance-of v3, v5, Llag;

    if-nez v3, :cond_8

    move v3, v1

    :goto_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 469
    invoke-static {v5}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 468
    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    .line 473
    :cond_9
    iget-object v0, p0, Lkzz;->waiters:Llal;

    .line 474
    sget-object v3, Llal;->a:Llal;

    if-ne v0, v3, :cond_4

    .line 478
    :cond_a
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    invoke-static {v0}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 363
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 366
    :cond_0
    iget-object v4, p0, Lkzz;->value:Ljava/lang/Object;

    .line 367
    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    instance-of v1, v4, Llag;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 368
    invoke-static {v4}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    :goto_2
    return-object v0

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 371
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v4, v0

    .line 373
    :goto_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_12

    .line 374
    iget-object v0, p0, Lkzz;->waiters:Llal;

    .line 375
    sget-object v1, Llal;->a:Llal;

    if-eq v0, v1, :cond_c

    .line 376
    new-instance v6, Llal;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Llal;-><init>(B)V

    .line 378
    :cond_4
    invoke-virtual {v6, v0}, Llal;->a(Llal;)V

    .line 379
    sget-object v1, Lkzz;->d:Llaa;

    invoke-virtual {v1, p0, v0, v6}, Llaa;->a(Lkzz;Llal;Llal;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v0, v2

    .line 381
    :cond_5
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    invoke-direct {p0, v6}, Lkzz;->a(Llal;)V

    .line 385
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 371
    :cond_6
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_3

    .line 390
    :cond_7
    iget-object v2, p0, Lkzz;->value:Ljava/lang/Object;

    .line 391
    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :goto_4
    instance-of v1, v2, Llag;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 392
    invoke-static {v2}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 391
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 396
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 397
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 399
    invoke-direct {p0, v6}, Lkzz;->a(Llal;)V

    .line 413
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 414
    iget-object v2, p0, Lkzz;->value:Ljava/lang/Object;

    .line 415
    if-eqz v2, :cond_d

    const/4 v0, 0x1

    :goto_7
    instance-of v1, v2, Llag;

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_8
    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 416
    invoke-static {v2}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 404
    :cond_b
    iget-object v0, p0, Lkzz;->waiters:Llal;

    .line 405
    sget-object v1, Llal;->a:Llal;

    if-ne v0, v1, :cond_4

    .line 409
    :cond_c
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    invoke-static {v0}, Lkzz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 415
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    .line 418
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 419
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 421
    :cond_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_6

    .line 423
    :cond_11
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_12
    move-wide v0, v2

    goto :goto_6
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lkzz;->value:Ljava/lang/Object;

    .line 509
    instance-of v0, v0, Llab;

    return v0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    iget-object v3, p0, Lkzz;->value:Ljava/lang/Object;

    .line 503
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    instance-of v3, v3, Llag;

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
