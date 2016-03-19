.class final Lbpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 6401
    iput-object p1, p0, Lbpc;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 3

    .prologue
    .line 6442
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 19152
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbng;->aY:Z

    .line 6443
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 19285
    const/4 v1, 0x3

    iput v1, v0, Lbng;->aZ:I

    .line 6444
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 20285
    iget-object v0, v0, Lbng;->aN:Lbmx;

    .line 6444
    invoke-virtual {v0}, Lbmx;->b()V

    .line 6445
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 21285
    invoke-virtual {v0}, Lbng;->Z()V

    .line 6446
    iget-object v0, p0, Lbpc;->a:Lbng;

    invoke-virtual {v0}, Lbng;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6447
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 22285
    invoke-virtual {v0}, Lbng;->ab()V

    .line 6448
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 23285
    invoke-virtual {v0}, Lbng;->ac()V

    .line 6451
    :cond_0
    iget-object v0, p0, Lbpc;->a:Lbng;

    new-instance v1, Lbpd;

    invoke-direct {v1, p0}, Lbpd;-><init>(Lbpc;)V

    .line 24285
    iput-object v1, v0, Lbng;->c:Ljava/lang/Runnable;

    .line 6470
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 25285
    iget-object v0, v0, Lbng;->aS:Landroid/os/Handler;

    .line 6470
    iget-object v1, p0, Lbpc;->a:Lbng;

    .line 26285
    iget-object v1, v1, Lbng;->c:Ljava/lang/Runnable;

    .line 6470
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6473
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 27285
    iget-object v0, v0, Lbng;->aX:Landroid/database/Cursor;

    .line 6473
    if-eqz v0, :cond_1

    .line 6474
    iget-object v0, p0, Lbpc;->a:Lbng;

    iget-object v1, p0, Lbpc;->a:Lbng;

    .line 28285
    iget-object v1, v1, Lbng;->aX:Landroid/database/Cursor;

    .line 6474
    iget-object v2, p0, Lbpc;->a:Lbng;

    .line 29285
    iget-object v2, v2, Lbng;->at:Lbfd;

    .line 30285
    invoke-virtual {v0, v1, v2}, Lbng;->a(Landroid/database/Cursor;Lbfd;)V

    .line 6476
    :cond_1
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 31285
    invoke-virtual {v0}, Lbng;->aw()V

    .line 6477
    return-void
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6412
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 6412
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 6436
    :cond_0
    :goto_0
    return-void

    .line 6416
    :cond_1
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 8285
    iget-object v0, v0, Lbng;->aS:Landroid/os/Handler;

    .line 6416
    iget-object v1, p0, Lbpc;->a:Lbng;

    .line 9285
    iget-object v1, v1, Lbng;->c:Ljava/lang/Runnable;

    .line 6416
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6417
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 10285
    iput-object v4, v0, Lbng;->c:Ljava/lang/Runnable;

    .line 6419
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 11285
    iget-object v0, v0, Lbng;->aS:Landroid/os/Handler;

    .line 6419
    iget-object v1, p0, Lbpc;->a:Lbng;

    .line 12285
    iget-object v1, v1, Lbng;->by:Ljava/lang/Runnable;

    .line 6419
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6421
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 14152
    const/4 v1, 0x0

    iput-boolean v1, v0, Lbng;->aY:Z

    .line 6423
    iget-object v1, p0, Lbpc;->a:Lbng;

    .line 15171
    iget-object v0, v1, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->g()Lbeu;

    move-result-object v0

    invoke-virtual {v0}, Lbeu;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 15172
    iget-object v3, v1, Lbng;->aQ:Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->a(Lcyx;)V

    goto :goto_1

    .line 6425
    :cond_2
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 15285
    iput-object v4, v0, Lbng;->aD:Ljava/lang/String;

    .line 15515
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a:Z

    if-eqz v0, :cond_3

    .line 15516
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unsetFocusedConversation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " account:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15519
    :cond_3
    sget-object v1, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 15520
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d:Ljava/lang/String;

    .line 15521
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e:Ljava/util/Set;

    .line 15522
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6428
    iget-object v0, p0, Lbpc;->a:Lbng;

    .line 16285
    invoke-virtual {v0}, Lbng;->ad()V

    .line 6433
    iget-object v0, p0, Lbpc;->a:Lbng;

    invoke-virtual {v0}, Lbng;->R()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6434
    iget-object v0, p0, Lbpc;->a:Lbng;

    iget-object v1, p0, Lbpc;->a:Lbng;

    invoke-virtual {v1}, Lbng;->ai()Lbfb;

    move-result-object v1

    .line 17285
    invoke-virtual {v0, v1}, Lbng;->a(Lbfb;)V

    goto/16 :goto_0

    .line 15522
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
