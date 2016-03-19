.class final Lbyr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbyp;


# direct methods
.method constructor <init>(Lbyp;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbyr;->a:Lbyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lbyr;->a:Lbyp;

    .line 1031
    iget-object v1, v0, Lbyp;->c:Ljava/lang/Object;

    .line 92
    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lbyr;->a:Lbyp;

    iget v0, v0, Lbyp;->a:I

    if-ltz v0, :cond_0

    .line 95
    iget-object v0, p0, Lbyr;->a:Lbyp;

    const/4 v2, -0x1

    iput v2, v0, Lbyp;->a:I

    .line 96
    iget-object v0, p0, Lbyr;->a:Lbyp;

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v2}, Lbyp;->a(Ljava/lang/Exception;)V

    .line 98
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
