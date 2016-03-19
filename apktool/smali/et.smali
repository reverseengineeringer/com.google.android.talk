.class public abstract Let;
.super Lfe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lfe",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Leu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu;"
        }
    .end annotation
.end field

.field volatile b:Leu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lfm;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Let;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lfe;-><init>(Landroid/content/Context;)V

    .line 118
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Let;->d:J

    .line 127
    iput-object p2, p0, Let;->f:Ljava/util/concurrent/Executor;

    .line 128
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lfe;->a()V

    .line 147
    invoke-virtual {p0}, Let;->t()Z

    .line 148
    new-instance v0, Leu;

    invoke-direct {v0, p0}, Leu;-><init>(Let;)V

    iput-object v0, p0, Let;->a:Leu;

    .line 150
    invoke-virtual {p0}, Let;->c()V

    .line 151
    return-void
.end method

.method a(Leu;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p2}, Let;->a(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Let;->b:Leu;

    if-ne v0, p1, :cond_0

    .line 227
    invoke-virtual {p0}, Let;->B()V

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Let;->d:J

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Let;->b:Leu;

    .line 231
    invoke-virtual {p0}, Let;->m()V

    .line 232
    invoke-virtual {p0}, Let;->c()V

    .line 234
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 343
    invoke-super {p0, p1, p2, p3, p4}, Lfe;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Let;->a:Leu;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Let;->a:Leu;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 346
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Let;->a:Leu;

    iget-boolean v0, v0, Leu;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 348
    :cond_0
    iget-object v0, p0, Let;->b:Leu;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Let;->b:Leu;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 350
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Let;->b:Leu;

    iget-boolean v0, v0, Leu;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    :cond_1
    iget-wide v0, p0, Let;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide v0, p0, Let;->c:J

    invoke-static {v0, v1, p3}, Lih;->a(JLjava/io/PrintWriter;)V

    .line 355
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-wide v0, p0, Let;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Lih;->a(JJLjava/io/PrintWriter;)V

    .line 358
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 360
    :cond_2
    return-void
.end method

.method b(Leu;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Let;->a:Leu;

    if-eq v0, p1, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2}, Let;->a(Leu;Ljava/lang/Object;)V

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Let;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0, p2}, Let;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Let;->A()V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Let;->d:J

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Let;->a:Leu;

    .line 249
    invoke-virtual {p0, p2}, Let;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Let;->a:Leu;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Let;->b:Leu;

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Let;->a:Leu;

    iget-boolean v1, v1, Leu;->a:Z

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Let;->a:Leu;

    iput-boolean v0, v1, Leu;->a:Z

    .line 164
    iget-object v1, p0, Let;->e:Landroid/os/Handler;

    iget-object v2, p0, Let;->a:Leu;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    iput-object v3, p0, Let;->a:Leu;

    .line 187
    :cond_1
    :goto_0
    return v0

    .line 168
    :cond_2
    iget-object v1, p0, Let;->a:Leu;

    iget-boolean v1, v1, Leu;->a:Z

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Let;->a:Leu;

    iput-boolean v0, v1, Leu;->a:Z

    .line 173
    iget-object v1, p0, Let;->e:Landroid/os/Handler;

    iget-object v2, p0, Let;->a:Leu;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iput-object v3, p0, Let;->a:Leu;

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Let;->a:Leu;

    .line 1311
    iget-object v1, v1, Lfm;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    .line 179
    if-eqz v0, :cond_4

    .line 180
    iget-object v1, p0, Let;->a:Leu;

    iput-object v1, p0, Let;->b:Leu;

    .line 181
    invoke-virtual {p0}, Let;->f()V

    .line 183
    :cond_4
    iput-object v3, p0, Let;->a:Leu;

    goto :goto_0
.end method

.method c()V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Let;->b:Leu;

    if-nez v0, :cond_1

    iget-object v0, p0, Let;->a:Leu;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Let;->a:Leu;

    iget-boolean v0, v0, Leu;->a:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Let;->a:Leu;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leu;->a:Z

    .line 204
    iget-object v0, p0, Let;->e:Landroid/os/Handler;

    iget-object v1, p0, Let;->a:Leu;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_0
    iget-wide v0, p0, Let;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 208
    iget-wide v2, p0, Let;->d:J

    iget-wide v4, p0, Let;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 213
    iget-object v0, p0, Let;->a:Leu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Leu;->a:Z

    .line 214
    iget-object v0, p0, Let;->e:Landroid/os/Handler;

    iget-object v1, p0, Let;->a:Leu;

    iget-wide v2, p0, Let;->d:J

    iget-wide v4, p0, Let;->c:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Let;->a:Leu;

    iget-object v1, p0, Let;->f:Ljava/util/concurrent/Executor;

    .line 1411
    iget v2, v0, Lfm;->f:I

    sget v3, Lfs;->a:I

    if-eq v2, v3, :cond_3

    .line 1412
    sget-object v2, Lfp;->a:[I

    iget v3, v0, Lfm;->f:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1423
    :cond_3
    sget v2, Lfs;->b:I

    iput v2, v0, Lfm;->f:I

    .line 1427
    iget-object v2, v0, Lfm;->d:Lft;

    const/4 v3, 0x0

    iput-object v3, v2, Lft;->a:[Ljava/lang/Object;

    .line 1428
    iget-object v0, v0, Lfm;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1414
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Let;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Let;->b:Leu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
