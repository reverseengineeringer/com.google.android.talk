.class public final Leyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field a:Landroid/os/Handler;

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Leyk;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/os/Looper;

.field d:Ljava/lang/String;

.field e:Leyj;

.field f:Landroid/media/MediaPlayer;

.field g:Landroid/os/PowerManager$WakeLock;

.field h:Landroid/media/AudioManager;

.field private i:Leyl;

.field private final j:Ljava/lang/Object;

.field private k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leyh;->a:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Leyh;->b:Ljava/util/LinkedList;

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leyh;->j:Ljava/lang/Object;

    .line 271
    const/4 v0, 0x2

    iput v0, p0, Leyh;->k:I

    .line 280
    iput-object p1, p0, Leyh;->d:Ljava/lang/String;

    .line 284
    return-void
.end method

.method private b(Leyk;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Leyh;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Leyh;->e:Leyj;

    if-nez v0, :cond_1

    .line 2371
    iget-object v0, p0, Leyh;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Leyh;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 343
    :cond_0
    new-instance v0, Leyj;

    invoke-direct {v0, p0}, Leyj;-><init>(Leyh;)V

    iput-object v0, p0, Leyh;->e:Leyj;

    .line 344
    iget-object v0, p0, Leyh;->e:Leyj;

    invoke-virtual {v0}, Leyj;->start()V

    .line 346
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 300
    new-instance v0, Leyk;

    .line 1054
    invoke-direct {v0}, Leyk;-><init>()V

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Leyk;->f:J

    .line 302
    iput v1, v0, Leyk;->a:I

    .line 303
    iput-object p1, v0, Leyk;->b:Landroid/net/Uri;

    .line 304
    iput-boolean v1, v0, Leyk;->c:Z

    .line 305
    const/4 v1, 0x2

    iput v1, v0, Leyk;->d:I

    .line 306
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Leyk;->e:F

    .line 307
    iget-object v1, p0, Leyh;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 308
    :try_start_0
    invoke-direct {p0, v0}, Leyh;->b(Leyk;)V

    .line 309
    const/4 v0, 0x1

    iput v0, p0, Leyh;->k:I

    .line 310
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Leyk;)V
    .locals 5

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Leyh;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v0, p0, Leyh;->c:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leyh;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    .line 143
    iget-object v0, p0, Leyh;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 145
    :cond_0
    new-instance v0, Leyl;

    invoke-direct {v0, p0, p1}, Leyl;-><init>(Leyh;Leyk;)V

    iput-object v0, p0, Leyh;->i:Leyl;

    .line 146
    iget-object v2, p0, Leyh;->i:Leyl;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :try_start_2
    iget-object v0, p0, Leyh;->i:Leyl;

    invoke-virtual {v0}, Leyl;->start()V

    .line 148
    iget-object v0, p0, Leyh;->i:Leyl;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 149
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Leyk;->f:J

    sub-long/2addr v0, v2

    .line 154
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 155
    iget-object v2, p0, Leyh;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x37

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Notification sound delayed by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 149
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 150
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Leyh;->d:Ljava/lang/String;

    iget-object v2, p1, Leyk;->b:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "error loading sound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 325
    iget-object v1, p0, Leyh;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 328
    :try_start_0
    iget v0, p0, Leyh;->k:I

    if-eq v0, v2, :cond_0

    .line 329
    new-instance v0, Leyk;

    .line 2054
    invoke-direct {v0}, Leyk;-><init>()V

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Leyk;->f:J

    .line 331
    const/4 v2, 0x2

    iput v2, v0, Leyk;->a:I

    .line 332
    iput-boolean p1, v0, Leyk;->g:Z

    .line 333
    invoke-direct {p0, v0}, Leyh;->b(Leyk;)V

    .line 334
    const/4 v0, 0x2

    iput v0, p0, Leyh;->k:I

    .line 336
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

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Leyh;->h:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Leyh;->h:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 249
    :cond_0
    iget-object v1, p0, Leyh;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Leyh;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 251
    iget-object v2, p0, Leyh;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    iget-object v0, p0, Leyh;->c:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Leyh;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 255
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Leyh;->i:Leyl;

    .line 256
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 258
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
