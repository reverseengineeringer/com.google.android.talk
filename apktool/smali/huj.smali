.class final Lhuj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhtu;

.field final synthetic b:Lhug;


# direct methods
.method constructor <init>(Lhug;Lhtu;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lhuj;->b:Lhug;

    iput-object p2, p0, Lhuj;->a:Lhtu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lhuj;->a:Lhtu;

    iget-object v2, p0, Lhuj;->b:Lhug;

    .line 1033
    iget-object v2, v2, Lhug;->a:Landroid/content/Context;

    .line 1301
    new-instance v3, Lhus;

    invoke-direct {v3, v0}, Lhus;-><init>(Z)V

    .line 2283
    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lhtu;->e()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v4, "You must provide a Context with your background task, or if you\'re using deprecated methods, you must provide your BackgroundTask with a Context."

    invoke-static {v0, v4}, Laen;->a(ZLjava/lang/Object;)V

    .line 2287
    invoke-virtual {v1}, Lhtu;->a()Lhus;

    move-result-object v0

    .line 2288
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 2289
    invoke-virtual {v1, v2}, Lhtu;->a(Landroid/content/Context;)Lhus;

    move-result-object v0

    .line 2292
    :cond_2
    if-nez v0, :cond_3

    .line 2293
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Null result in BackgroundTask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    .line 1306
    if-eqz v4, :cond_4

    .line 1307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1313
    :try_start_2
    iget-object v0, v1, Lhtu;->e:Lhtv;

    invoke-interface {v0, v1, v3}, Lhtv;->a(Lhtu;Lhus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1315
    invoke-virtual {v1, v2}, Lhtu;->d(Landroid/content/Context;)V

    .line 1316
    :goto_0
    return-void

    .line 2295
    :cond_3
    :try_start_3
    iget v4, v1, Lhtu;->f:I

    invoke-virtual {v0, v4}, Lhus;->a(I)V

    .line 3205
    invoke-static {}, Ljuc;->a()Ljuc;

    move-result-object v4

    iput-object v4, v0, Lhus;->b:Ljuc;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1313
    :try_start_4
    iget-object v3, v1, Lhtu;->e:Lhtv;

    invoke-interface {v3, v1, v0}, Lhtv;->a(Lhtu;Lhus;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1315
    invoke-virtual {v1, v2}, Lhtu;->d(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lhtu;->d(Landroid/content/Context;)V

    throw v0

    .line 1309
    :cond_4
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1312
    :catchall_1
    move-exception v0

    .line 1313
    :try_start_6
    iget-object v4, v1, Lhtu;->e:Lhtv;

    invoke-interface {v4, v1, v3}, Lhtv;->a(Lhtu;Lhus;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1315
    invoke-virtual {v1, v2}, Lhtu;->d(Landroid/content/Context;)V

    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v2}, Lhtu;->d(Landroid/content/Context;)V

    throw v0

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v2}, Lhtu;->d(Landroid/content/Context;)V

    throw v0
.end method
