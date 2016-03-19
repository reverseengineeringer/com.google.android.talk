.class final Lhkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhjz;


# direct methods
.method constructor <init>(Lhjz;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lhkf;->a:Lhjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 657
    iget-object v2, p0, Lhkf;->a:Lhjz;

    .line 1042
    iget-object v2, v2, Lhjz;->d:Ljava/lang/Object;

    .line 657
    monitor-enter v2

    .line 658
    :try_start_0
    iget-object v3, p0, Lhkf;->a:Lhjz;

    .line 2042
    iget-boolean v3, v3, Lhjz;->e:Z

    .line 2144
    const-string v4, "Expected condition to be false"

    invoke-static {v4, v3}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 661
    iget-object v3, p0, Lhkf;->a:Lhjz;

    iget-object v4, p0, Lhkf;->a:Lhjz;

    .line 3042
    iget-object v4, v4, Lhjz;->b:Landroid/media/AudioManager;

    .line 661
    invoke-virtual {v4}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    .line 4042
    iput-boolean v4, v3, Lhjz;->f:Z

    .line 662
    const-string v3, "vclib"

    iget-object v4, p0, Lhkf;->a:Lhjz;

    .line 5042
    iget-boolean v4, v4, Lhjz;->f:Z

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "initAudio: speakerphone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5073
    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v3, p0, Lhkf;->a:Lhjz;

    .line 6042
    iget-object v3, v3, Lhjz;->b:Landroid/media/AudioManager;

    .line 666
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 668
    iget-object v3, p0, Lhkf;->a:Lhjz;

    .line 7042
    iget-object v3, v3, Lhjz;->b:Landroid/media/AudioManager;

    .line 668
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 670
    iget-object v3, p0, Lhkf;->a:Lhjz;

    .line 8362
    const-string v4, "vclib"

    const-string v5, "initWiredHeadsetAudio"

    .line 9073
    const/4 v6, 0x3

    invoke-static {v6, v4, v5}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 8363
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 8364
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8365
    iget-object v5, v3, Lhjz;->a:Landroid/content/Context;

    iget-object v3, v3, Lhjz;->c:Lhkj;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 675
    iget-object v3, p0, Lhkf;->a:Lhjz;

    .line 10042
    const/4 v4, 0x1

    iput-boolean v4, v3, Lhjz;->e:Z

    .line 678
    iget-object v3, p0, Lhkf;->a:Lhjz;

    .line 11308
    const-string v4, "vclib"

    const-string v5, "initBluetoothAudio"

    .line 12073
    const/4 v6, 0x3

    invoke-static {v6, v4, v5}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 11312
    iget-object v4, v3, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    .line 11313
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, v3, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    .line 11315
    :cond_0
    iget-object v4, v3, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_2

    .line 11319
    iget-object v4, v3, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, v3, Lhjz;->a:Landroid/content/Context;

    new-instance v6, Lhkh;

    .line 12695
    invoke-direct {v6, v3}, Lhkh;-><init>(Lhjz;)V

    .line 11319
    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 11322
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 11324
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11326
    const-string v5, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11327
    new-instance v5, Lhkg;

    .line 12724
    invoke-direct {v5, v3}, Lhkg;-><init>(Lhjz;)V

    .line 11327
    iput-object v5, v3, Lhjz;->m:Lhkg;

    .line 11328
    iget-object v5, v3, Lhjz;->a:Landroid/content/Context;

    iget-object v6, v3, Lhjz;->m:Lhkg;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11330
    iget-object v4, v3, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x1

    .line 11331
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    if-ne v8, v4, :cond_2

    .line 11332
    iget-object v1, v3, Lhjz;->i:Ljava/util/Set;

    sget-object v4, Lhkd;->c:Lhkd;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11333
    invoke-virtual {v3}, Lhjz;->h()V

    .line 11334
    sget-object v1, Lhke;->e:Lhke;

    iput-object v1, v3, Lhjz;->h:Lhke;

    .line 11335
    invoke-virtual {v3}, Lhjz;->e()V

    .line 678
    :goto_0
    if-nez v0, :cond_1

    .line 679
    const-string v0, "vclib"

    const-string v1, "Bluetooth is not connected, using default device."

    .line 13081
    const/4 v3, 0x4

    invoke-static {v3, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lhkf;->a:Lhjz;

    .line 14042
    iget-object v0, v0, Lhjz;->o:Lhke;

    .line 680
    if-nez v0, :cond_3

    .line 681
    iget-object v0, p0, Lhkf;->a:Lhjz;

    iget-object v1, p0, Lhkf;->a:Lhjz;

    .line 15042
    iget-object v1, v1, Lhjz;->g:Lhkd;

    .line 681
    invoke-virtual {v0, v1}, Lhjz;->a(Lhkd;)V

    .line 686
    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    :cond_2
    move v0, v1

    .line 11339
    goto :goto_0

    .line 683
    :cond_3
    iget-object v0, p0, Lhkf;->a:Lhjz;

    .line 16042
    invoke-virtual {v0}, Lhjz;->k()V

    goto :goto_1

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
