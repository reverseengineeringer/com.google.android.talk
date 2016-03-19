.class abstract Lkzx;
.super Llai;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Llai",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Llbb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llbb",
            "<+TV;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TX;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llbb;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Llai;-><init>()V

    .line 84
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llbb;

    iput-object v0, p0, Lkzx;->a:Llbb;

    .line 85
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lkzx;->b:Ljava/lang/Class;

    .line 86
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkzx;->c:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method static a(Llbb;Ljava/lang/Class;Llap;Ljava/util/concurrent/Executor;)Llbb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Llbb",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Llap",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Llbb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Lkzy;

    invoke-direct {v1, p0, p1, p2}, Lkzy;-><init>(Llbb;Ljava/lang/Class;Llap;)V

    .line 1986
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    invoke-static {v1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    sget-object v0, Llbh;->a:Llbh;

    .line 1988
    if-ne p3, v0, :cond_0

    .line 74
    :goto_0
    invoke-interface {p0, v1, p3}, Llbb;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 75
    return-object v1

    .line 1992
    :cond_0
    new-instance v0, Llbf;

    invoke-direct {v0, p3, v1}, Llbf;-><init>(Ljava/util/concurrent/Executor;Lkzz;)V

    move-object p3, v0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation
.end method

.method protected final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lkzx;->a:Llbb;

    invoke-virtual {p0, v0}, Lkzx;->a(Ljava/util/concurrent/Future;)V

    .line 150
    iput-object v1, p0, Lkzx;->a:Llbb;

    .line 151
    iput-object v1, p0, Lkzx;->b:Ljava/lang/Class;

    .line 152
    iput-object v1, p0, Lkzx;->c:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    iget-object v5, p0, Lkzx;->a:Llbb;

    .line 92
    iget-object v6, p0, Lkzx;->b:Ljava/lang/Class;

    .line 93
    iget-object v7, p0, Lkzx;->c:Ljava/lang/Object;

    .line 94
    if-nez v5, :cond_0

    move v4, v0

    :goto_0
    if-nez v6, :cond_1

    move v3, v0

    :goto_1
    or-int/2addr v3, v4

    if-nez v7, :cond_2

    :goto_2
    or-int/2addr v0, v3

    .line 97
    invoke-virtual {p0}, Lkzx;->isCancelled()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 137
    :goto_3
    return-void

    :cond_0
    move v4, v1

    .line 94
    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 100
    :cond_3
    iput-object v2, p0, Lkzx;->a:Llbb;

    .line 101
    iput-object v2, p0, Lkzx;->b:Ljava/lang/Class;

    .line 102
    iput-object v2, p0, Lkzx;->c:Ljava/lang/Object;

    .line 108
    :try_start_0
    invoke-static {v5}, Laal;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 115
    :goto_4
    if-nez v0, :cond_4

    .line 116
    invoke-virtual {p0, v2}, Lkzx;->b(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_4

    .line 3030
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 120
    if-nez v1, :cond_5

    .line 121
    invoke-virtual {p0, v0}, Lkzx;->a(Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 130
    :cond_5
    :try_start_1
    invoke-virtual {p0, v7, v0}, Lkzx;->a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lkzx;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 131
    :catch_1
    move-exception v0

    .line 132
    invoke-virtual {p0, v0}, Lkzx;->a(Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 112
    :catch_2
    move-exception v0

    goto :goto_4
.end method
