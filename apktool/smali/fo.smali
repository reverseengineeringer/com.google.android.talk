.class final Lfo;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfm;


# direct methods
.method constructor <init>(Lfm;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lfo;->a:Lfm;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Lfo;->get()Ljava/lang/Object;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lfo;->a:Lfm;

    .line 1155
    iget-object v2, v1, Lfm;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1156
    if-nez v2, :cond_0

    .line 1157
    invoke-virtual {v1, v0}, Lfm;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :catch_1
    move-exception v0

    iget-object v0, p0, Lfo;->a:Lfm;

    .line 2155
    iget-object v1, v0, Lfm;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 2156
    if-nez v1, :cond_0

    .line 2157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfm;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_3
    move-exception v0

    goto :goto_0
.end method
