.class public final Llbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field volatile a:Z

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lkzz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkzz;)V
    .locals 1

    .prologue
    .line 992
    iput-object p1, p0, Llbf;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Llbf;->c:Lkzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Llbf;->a:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 998
    :try_start_0
    iget-object v0, p0, Llbf;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Llbg;

    invoke-direct {v1, p0, p1}, Llbg;-><init>(Llbf;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    iget-boolean v1, p0, Llbf;->a:Z

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Llbf;->c:Lkzz;

    invoke-virtual {v1, v0}, Lkzz;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
