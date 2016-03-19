.class public final Lhjz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhkq;
.implements Lhkr;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/media/AudioManager;

.field final c:Lhkj;

.field final d:Ljava/lang/Object;

.field e:Z

.field f:Z

.field g:Lhkd;

.field h:Lhke;

.field final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lhkd;",
            ">;"
        }
    .end annotation
.end field

.field j:Lhki;

.field k:Landroid/bluetooth/BluetoothAdapter;

.field l:Landroid/bluetooth/BluetoothHeadset;

.field m:Lhkg;

.field n:Landroid/bluetooth/BluetoothDevice;

.field o:Lhke;

.field private final p:Ljava/lang/Runnable;

.field private q:Lhcd;

.field private r:Z

.field private s:Z

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lhkf;

    .line 1654
    invoke-direct {v0, p0}, Lhkf;-><init>(Lhjz;)V

    .line 92
    iput-object v0, p0, Lhjz;->p:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lhkj;

    .line 1816
    invoke-direct {v0, p0}, Lhkj;-><init>(Lhjz;)V

    .line 93
    iput-object v0, p0, Lhjz;->c:Lhkj;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhjz;->d:Ljava/lang/Object;

    .line 102
    sget-object v0, Lhke;->a:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    .line 103
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lhjz;->i:Ljava/util/Set;

    .line 132
    new-instance v0, Lhka;

    invoke-direct {v0, p0}, Lhka;-><init>(Lhjz;)V

    iput-object v0, p0, Lhjz;->t:Ljava/lang/Runnable;

    .line 148
    iput-object p1, p0, Lhjz;->a:Landroid/content/Context;

    .line 149
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lhjz;->b:Landroid/media/AudioManager;

    .line 152
    invoke-virtual {p0}, Lhjz;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lhjz;->i:Ljava/util/Set;

    sget-object v1, Lhkd;->b:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    iget-object v0, p0, Lhjz;->i:Ljava/util/Set;

    sget-object v1, Lhkd;->a:Lhkd;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    if-nez p2, :cond_1

    .line 158
    invoke-virtual {p0}, Lhjz;->l()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lhkd;->a:Lhkd;

    :goto_0
    iput-object v0, p0, Lhjz;->g:Lhkd;

    .line 159
    return-void

    .line 158
    :cond_2
    sget-object v0, Lhkd;->b:Lhkd;

    goto :goto_0
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 639
    const/4 v2, 0x0

    .line 641
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 642
    const-string v3, "isVoiceCapable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 643
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 646
    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 648
    goto :goto_1

    .line 646
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 376
    const-string v0, "vclib"

    iget-object v1, p0, Lhjz;->b:Landroid/media/AudioManager;

    .line 377
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "setSpeakerphoneOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), wasOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lhjz;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 379
    return-void
.end method

.method private m()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 486
    const-string v0, "vclib"

    const-string v1, "turnOffBluetooth"

    .line 15073
    invoke-static {v4, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v1, Lhke;->d:Lhke;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v1, Lhke;->e:Lhke;

    if-eq v0, v1, :cond_0

    .line 489
    const-string v0, "vclib"

    iget-object v1, p0, Lhjz;->h:Lhke;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "turnOffBluetooth: state is already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot turn off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16073
    invoke-static {v4, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lhjz;->g()V

    .line 495
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v1, p0, Lhjz;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lhjz;->e:Z

    if-eqz v0, :cond_1

    .line 2343
    const-string v0, "vclib"

    const-string v2, "releaseBluetoothAudio"

    .line 3073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2345
    iget-object v0, p0, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 2347
    invoke-virtual {p0}, Lhjz;->g()V

    .line 2349
    invoke-virtual {p0}, Lhjz;->i()V

    .line 2351
    iget-object v0, p0, Lhjz;->a:Landroid/content/Context;

    iget-object v2, p0, Lhjz;->m:Lhkg;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2352
    const/4 v0, 0x0

    iput-object v0, p0, Lhjz;->m:Lhkg;

    .line 2354
    iget-object v0, p0, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2355
    const/4 v0, 0x0

    iput-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    .line 2356
    const/4 v0, 0x0

    iput-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 2357
    const/4 v0, 0x0

    iput-object v0, p0, Lhjz;->k:Landroid/bluetooth/BluetoothAdapter;

    .line 3371
    :cond_0
    const-string v0, "vclib"

    const-string v2, "releaseWiredHeadsetAudio"

    .line 4073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3372
    iget-object v0, p0, Lhjz;->a:Landroid/content/Context;

    iget-object v2, p0, Lhjz;->c:Lhkj;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iget-object v0, p0, Lhjz;->b:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 186
    iget-object v0, p0, Lhjz;->b:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 187
    const-string v0, "vclib"

    iget-boolean v2, p0, Lhjz;->f:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Restoring saved speakerphone state to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4081
    const/4 v3, 0x4

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-boolean v0, p0, Lhjz;->f:Z

    invoke-direct {p0, v0}, Lhjz;->b(Z)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhjz;->e:Z

    .line 192
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iput-object v5, p0, Lhjz;->q:Lhcd;

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lhkd;)V
    .locals 5

    .prologue
    .line 245
    iget-object v1, p0, Lhjz;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    sget-object v0, Lhkc;->a:[I

    invoke-virtual {p1}, Lhkd;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {p0}, Lhjz;->e()V

    .line 279
    return-void

    .line 249
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lhjz;->h:Lhke;

    iput-object v0, p0, Lhjz;->o:Lhke;

    .line 6404
    const-string v0, "vclib"

    const-string v2, "turnOnBluetooth"

    .line 7073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6405
    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v2, Lhke;->d:Lhke;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v2, Lhke;->e:Lhke;

    if-ne v0, v2, :cond_1

    .line 6407
    :cond_0
    const-string v0, "vclib"

    iget-object v2, p0, Lhjz;->h:Lhke;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "turnOnBluetooth: state is already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cannot turn on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6412
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lhjz;->f()V

    goto :goto_0

    .line 253
    :pswitch_1
    iget-boolean v0, p0, Lhjz;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lhjz;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    :cond_2
    sget-object v0, Lhke;->a:Lhke;

    iput-object v0, p0, Lhjz;->o:Lhke;

    .line 258
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhjz;->b(Z)V

    goto :goto_0

    .line 256
    :cond_3
    sget-object v0, Lhke;->a:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    goto :goto_1

    .line 261
    :pswitch_2
    iget-boolean v0, p0, Lhjz;->e:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lhjz;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    :cond_4
    sget-object v0, Lhke;->c:Lhke;

    iput-object v0, p0, Lhjz;->o:Lhke;

    .line 266
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhjz;->b(Z)V

    goto :goto_0

    .line 264
    :cond_5
    sget-object v0, Lhke;->c:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    goto :goto_2

    .line 269
    :pswitch_3
    iget-boolean v0, p0, Lhjz;->e:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lhjz;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    :cond_6
    sget-object v0, Lhke;->b:Lhke;

    iput-object v0, p0, Lhjz;->o:Lhke;

    .line 274
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhjz;->b(Z)V

    goto/16 :goto_0

    .line 272
    :cond_7
    sget-object v0, Lhke;->b:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lhki;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lhjz;->j:Lhki;

    .line 300
    return-void
.end method

.method public a(Lhks;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lhjz;->q:Lhcd;

    if-nez v0, :cond_1

    .line 164
    const-string v0, "Must use CallClient"

    instance-of v1, p1, Lhcd;

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 165
    check-cast p1, Lhcd;

    iput-object p1, p0, Lhjz;->q:Lhcd;

    .line 167
    iget-object v1, p0, Lhjz;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lhjz;->e:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lhjz;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 171
    :cond_0
    iget-boolean v0, p0, Lhjz;->r:Z

    invoke-virtual {p0, v0}, Lhjz;->a(Z)V

    .line 172
    iget-boolean v0, p0, Lhjz;->s:Z

    invoke-virtual {p0, v0}, Lhjz;->c_(Z)V

    .line 173
    monitor-exit v1

    .line 175
    :cond_1
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    iput-boolean p1, p0, Lhjz;->r:Z

    .line 207
    iget-object v3, p0, Lhjz;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 211
    :try_start_0
    iget-object v2, p0, Lhjz;->q:Lhcd;

    if-eqz v2, :cond_0

    .line 214
    if-nez p1, :cond_1

    move v2, v0

    .line 5011
    :goto_0
    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->setMicrophoneMute(Z)V

    .line 216
    const-string v4, "vclib"

    if-nez p1, :cond_2

    move v2, v0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x21

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Setting audio mute state to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5073
    const/4 v5, 0x3

    invoke-static {v5, v4, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lhjz;->q:Lhcd;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lhcd;->a(Z)V

    .line 219
    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    move v2, v1

    .line 214
    goto :goto_0

    :cond_2
    move v2, v1

    .line 216
    goto :goto_1

    :cond_3
    move v0, v1

    .line 217
    goto :goto_2

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lhjz;->r:Z

    return v0
.end method

.method public c()Lhke;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lhjz;->h:Lhke;

    return-object v0
.end method

.method public c_(Z)V
    .locals 1

    .prologue
    .line 232
    iput-boolean p1, p0, Lhjz;->s:Z

    .line 233
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 6014
    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioMute(Z)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lhkd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lhjz;->i:Ljava/util/Set;

    return-object v0
.end method

.method e()V
    .locals 6

    .prologue
    .line 386
    const-string v0, "vclib"

    iget-object v1, p0, Lhjz;->h:Lhke;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhjz;->i:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "reportUpdate: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", devices="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Lhkb;

    invoke-direct {v0, p0}, Lhkb;-><init>(Lhjz;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method f()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 416
    const-string v0, "vclib"

    const-string v1, "startBluetoothSco"

    .line 11073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lhjz;->i()V

    .line 419
    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_2

    .line 426
    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 428
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 432
    :cond_2
    iget-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 438
    const-string v0, "vclib"

    const-string v1, "startBluetoothSco : JBMR2+ Workaround"

    .line 12073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 441
    const/4 v1, 0x0

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v1

    .line 442
    iget-object v1, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 443
    const-string v2, "startScoUsingVirtualVoiceCall"

    .line 444
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 447
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 448
    iget-object v1, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v2, v3

    .line 449
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 451
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    sget-object v0, Lhke;->e:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 463
    :cond_3
    :goto_1
    const-string v0, "vclib"

    const-string v1, "done"

    .line 13073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_2
    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v1, Lhke;->e:Lhke;

    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lhjz;->e()V

    .line 474
    invoke-virtual {p0}, Lhjz;->h()V

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 457
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 461
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 465
    :cond_4
    const-string v0, "vclib"

    const-string v1, "startBluetoothSco : pre-JBMR2"

    .line 14073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lhjz;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 468
    sget-object v0, Lhke;->e:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    goto :goto_2
.end method

.method g()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 499
    const-string v0, "vclib"

    const-string v1, "stopBluetoothSco"

    .line 17073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lhjz;->i()V

    .line 502
    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 515
    :try_start_0
    const-string v0, "vclib"

    const-string v1, "stopBluetoothSco : JBMR2+ Workaround"

    .line 18073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 517
    const/4 v1, 0x0

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v1

    .line 518
    iget-object v1, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 519
    const-string v2, "stopScoUsingVirtualVoiceCall"

    .line 520
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 524
    iget-object v1, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v2, v3

    .line 525
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 526
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    sget-object v0, Lhke;->f:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 538
    :cond_2
    :goto_1
    const-string v0, "vclib"

    const-string v1, "done"

    .line 19073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    :goto_2
    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v1, Lhke;->f:Lhke;

    if-ne v0, v1, :cond_0

    .line 548
    invoke-virtual {p0}, Lhjz;->e()V

    .line 549
    invoke-virtual {p0}, Lhjz;->h()V

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 532
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :cond_3
    const-string v0, "vclib"

    const-string v1, "stopBluetoothSco : pre-JBMR2"

    .line 20073
    invoke-static {v5, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lhjz;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 543
    sget-object v0, Lhke;->f:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    goto :goto_2
.end method

.method h()V
    .locals 4

    .prologue
    .line 554
    const-string v0, "vclib"

    const-string v1, "Starting bluetooth timer"

    .line 21073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lhjz;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 556
    return-void
.end method

.method i()V
    .locals 3

    .prologue
    .line 559
    const-string v0, "vclib"

    const-string v1, "Canceling bluetooth timer"

    .line 22073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lhjz;->t:Ljava/lang/Runnable;

    .line 22089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 564
    const-string v0, "vclib"

    const-string v1, "Starting or stopping Bluetooth timed out"

    .line 23073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lhjz;->i()V

    .line 569
    sget-object v0, Lhkc;->b:[I

    iget-object v1, p0, Lhjz;->h:Lhke;

    invoke-virtual {v1}, Lhke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 572
    :pswitch_0
    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 573
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "vclib"

    const-string v1, "We thought BT had timed out, but it\'s actually on; updating state."

    .line 23101
    invoke-static {v3, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lhke;->d:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    .line 582
    :goto_1
    invoke-virtual {p0}, Lhjz;->e()V

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lhjz;->g()V

    .line 580
    invoke-virtual {p0}, Lhjz;->k()V

    goto :goto_1

    .line 586
    :pswitch_1
    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhjz;->l:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lhjz;->n:Landroid/bluetooth/BluetoothDevice;

    .line 587
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    :cond_1
    const-string v0, "vclib"

    const-string v1, "We thought BT had timed out, but it\'s actually off; updating state."

    .line 24101
    invoke-static {v3, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lhjz;->k()V

    .line 595
    :goto_2
    invoke-virtual {p0}, Lhjz;->e()V

    goto :goto_0

    .line 593
    :cond_2
    sget-object v0, Lhke;->d:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    goto :goto_2

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method k()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 607
    iget-object v0, p0, Lhjz;->o:Lhke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhjz;->o:Lhke;

    sget-object v1, Lhke;->c:Lhke;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lhjz;->i:Ljava/util/Set;

    sget-object v1, Lhkd;->d:Lhkd;

    .line 609
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    const-string v0, "vclib"

    const-string v1, "usePendingAudioDeviceState: there\'s no pending state or it was WH, but has been unplugged; using default device. Pending state was "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhjz;->o:Lhke;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    iput-object v6, p0, Lhjz;->o:Lhke;

    .line 616
    iget-object v0, p0, Lhjz;->g:Lhkd;

    invoke-virtual {p0, v0}, Lhjz;->a(Lhkd;)V

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v0, "vclib"

    iget-object v1, p0, Lhjz;->o:Lhke;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "usePendingAudioDeviceState: using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lhjz;->o:Lhke;

    iput-object v0, p0, Lhjz;->h:Lhke;

    .line 622
    iput-object v6, p0, Lhjz;->o:Lhke;

    .line 623
    iget-object v0, p0, Lhjz;->h:Lhke;

    sget-object v1, Lhke;->a:Lhke;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lhjz;->b(Z)V

    .line 624
    invoke-virtual {p0}, Lhjz;->e()V

    goto :goto_0

    .line 623
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Lhjz;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 629
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 631
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 632
    invoke-static {v0}, Lhjz;->a(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    .line 633
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
