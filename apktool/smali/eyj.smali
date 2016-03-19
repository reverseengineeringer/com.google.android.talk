.class final Leyj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Leyh;


# direct methods
.method constructor <init>(Leyh;)V
    .locals 3

    .prologue
    .line 197
    iput-object p1, p0, Leyj;->a:Leyh;

    .line 198
    const-string v1, "NotificationPlayer-"

    .line 1045
    iget-object v0, p1, Leyh;->d:Ljava/lang/String;

    .line 198
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 199
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 206
    :goto_0
    iget-object v0, p0, Leyj;->a:Leyh;

    .line 2045
    iget-object v1, v0, Leyh;->b:Ljava/util/LinkedList;

    .line 206
    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Leyj;->a:Leyh;

    .line 3045
    iget-object v0, v0, Leyh;->b:Ljava/util/LinkedList;

    .line 210
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyk;

    .line 211
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget v1, v0, Leyk;->a:I

    packed-switch v1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_1
    iget-object v0, p0, Leyj;->a:Leyh;

    .line 6045
    iget-object v1, v0, Leyh;->b:Ljava/util/LinkedList;

    .line 228
    monitor-enter v1

    .line 229
    :try_start_1
    iget-object v0, p0, Leyj;->a:Leyh;

    .line 7045
    iget-object v0, v0, Leyh;->b:Ljava/util/LinkedList;

    .line 229
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 234
    iget-object v0, p0, Leyj;->a:Leyh;

    .line 8045
    const/4 v2, 0x0

    iput-object v2, v0, Leyh;->e:Leyj;

    .line 235
    iget-object v0, p0, Leyj;->a:Leyh;

    .line 9377
    iget-object v2, v0, Leyh;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 9378
    iget-object v0, v0, Leyh;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 236
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 211
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 218
    :pswitch_0
    iget-object v1, p0, Leyj;->a:Leyh;

    .line 4045
    invoke-virtual {v1, v0}, Leyh;->a(Leyk;)V

    goto :goto_1

    .line 224
    :pswitch_1
    iget-object v1, p0, Leyj;->a:Leyh;

    .line 5163
    iget-object v2, v1, Leyh;->f:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 5166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Leyk;->f:J

    sub-long/2addr v2, v4

    .line 5167
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 5168
    iget-object v4, v1, Leyh;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msecs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5170
    :cond_2
    iget-object v2, v1, Leyh;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 5171
    iget-object v2, v1, Leyh;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 5172
    iput-object v7, v1, Leyh;->f:Landroid/media/MediaPlayer;

    .line 5173
    iget-object v2, v1, Leyh;->h:Landroid/media/AudioManager;

    if-eqz v2, :cond_3

    .line 5174
    iget-boolean v0, v0, Leyk;->g:Z

    if-eqz v0, :cond_4

    .line 5175
    iget-object v0, v1, Leyh;->a:Landroid/os/Handler;

    new-instance v2, Leyi;

    invoke-direct {v2, v1}, Leyi;-><init>(Leyh;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5191
    :cond_3
    :goto_2
    iget-object v0, v1, Leyh;->c:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, v1, Leyh;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    .line 5192
    iget-object v0, v1, Leyh;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    .line 5187
    :cond_4
    iget-object v0, v1, Leyh;->h:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 5188
    iput-object v7, v1, Leyh;->h:Landroid/media/AudioManager;

    goto :goto_2

    .line 238
    :cond_5
    :try_start_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
