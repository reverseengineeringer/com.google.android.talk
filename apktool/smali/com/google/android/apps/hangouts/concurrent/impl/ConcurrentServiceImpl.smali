.class public Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lbde;


# static fields
.field public static final a:Landroid/os/StrictMode$ThreadPolicy;

.field public static final b:J

.field private static final h:I

.field private static final i:Lezv;

.field private static final j:[Lbcu;


# instance fields
.field public c:Lbdm;

.field public d:Z

.field public e:Ljava/util/concurrent/ExecutorService;

.field f:Ljava/util/concurrent/ExecutorService;

.field public final g:Ljava/lang/Runnable;

.field private final k:Landroid/os/Handler;

.field private final l:Landroid/os/IBinder;

.field private m:Landroid/content/Context;

.field private n:Landroid/app/AlarmManager;

.field private final o:Ljava/lang/Runnable;

.field private final p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->h:I

    .line 42
    const-string v0, "concurrent"

    .line 43
    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->i:Lezv;

    .line 45
    invoke-static {}, Lbcu;->values()[Lbcu;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->j:[Lbcu;

    .line 47
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 48
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->a:Landroid/os/StrictMode$ThreadPolicy;

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->k:Landroid/os/Handler;

    .line 54
    new-instance v0, Lbdl;

    invoke-direct {v0, p0}, Lbdl;-><init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->l:Landroid/os/IBinder;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->e:Ljava/util/concurrent/ExecutorService;

    .line 71
    sget v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->h:I

    new-instance v1, Llbm;

    invoke-direct {v1}, Llbm;-><init>()V

    .line 75
    invoke-virtual {v1}, Llbm;->a()Llbm;

    move-result-object v1

    const-string v2, "Hangouts Concurrent Service Thread %d"

    .line 76
    invoke-virtual {v1, v2}, Llbm;->a(Ljava/lang/String;)Llbm;

    move-result-object v1

    new-instance v2, Lbdf;

    invoke-direct {v2, p0}, Lbdf;-><init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V

    .line 77
    invoke-virtual {v1, v2}, Llbm;->a(Ljava/util/concurrent/ThreadFactory;)Llbm;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Llbm;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->f:Ljava/util/concurrent/ExecutorService;

    .line 96
    new-instance v0, Lbdh;

    invoke-direct {v0, p0}, Lbdh;-><init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->g:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lbdi;

    invoke-direct {v0, p0}, Lbdi;-><init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->o:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lbdj;

    invoke-direct {v0, p0}, Lbdj;-><init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    const-string v0, "concurrent_process_data_key"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbcp;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->a(Lbcp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    sget-wide v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    invoke-virtual {v0}, Lbdm;->c()V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, p1, v0

    .line 252
    cmp-long v0, v2, v8

    if-lez v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->n:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->m:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->n:Landroid/app/AlarmManager;

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "******** Scheduling alarm for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms delay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->m:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1242
    const-string v1, "concurrent_service_command_key"

    sget-object v4, Lbcu;->c:Lbcu;

    .line 1243
    invoke-virtual {v4}, Lbcu;->ordinal()I

    move-result v4

    .line 1242
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1244
    iget-object v1, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->m:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->n:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    .line 1246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 1245
    invoke-virtual {v1, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b()V

    .line 258
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b(J)V

    .line 259
    return-void
.end method

.method public declared-synchronized a(Lbcp;)V
    .locals 4

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    const-string v0, "Scheduling one task: "

    invoke-virtual {p1}, Lbcp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    :goto_0
    sget-object v1, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->i:Lezv;

    const-string v0, "SCHEDULE_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbcp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lezv;->c(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    invoke-virtual {v0}, Lbdm;->b()V

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbdm;->a(Lbcp;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbdc;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    invoke-direct {v1, v2, v3}, Lbdc;-><init>(Landroid/content/Context;Lbdm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->d:Z

    .line 205
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->a(Landroid/content/Intent;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->l:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->m:Landroid/content/Context;

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->m:Landroid/content/Context;

    invoke-static {v0, p0}, Lbdm;->a(Landroid/content/Context;Lbde;)Lbdm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->p:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 161
    return-void
.end method

.method public declared-synchronized onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 170
    monitor-enter p0

    if-nez p1, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    monitor-exit p0

    return v3

    .line 174
    :cond_0
    :try_start_1
    const-string v0, "concurrent_service_command_key"

    const/4 v1, -0x1

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    sget-object v1, Lbdk;->a:[I

    sget-object v2, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->j:[Lbcu;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lbcu;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b()V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->d:Z

    .line 213
    sget-wide v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b(J)V

    .line 214
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
