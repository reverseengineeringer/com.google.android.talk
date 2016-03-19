.class public final Lfar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lfar;

.field public static b:Lfau;


# instance fields
.field public final c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:I

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:Landroid/media/AudioManager;

.field private k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

.field private l:I

.field private m:I

.field private n:Landroid/content/BroadcastReceiver;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/AudioAttachmentView;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfar;->c:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lfar;->f:Ljava/lang/String;

    .line 175
    invoke-static {p3, p4, p5}, Lfar;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-object p3, p0, Lfar;->d:Ljava/lang/String;

    .line 177
    iput-wide p4, p0, Lfar;->i:J

    .line 179
    :cond_0
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lfar;->e:I

    .line 182
    new-instance v0, Lfas;

    invoke-direct {v0, p0}, Lfas;-><init>(Lfar;)V

    iput-object v0, p0, Lfar;->o:Ljava/lang/Runnable;

    .line 199
    return-void
.end method

.method private static a(Lfar;)V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lfar;->a:Lfar;

    if-ne v0, p0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sput-object p0, Lfar;->a:Lfar;

    .line 210
    sget-object v0, Lfar;->b:Lfau;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lfar;->b:Lfau;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfau;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const-string v1, "AudioAttachment"

    const/4 v2, 0x0

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "output"

    .line 271
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    return-void
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 238
    iget v0, p0, Lfar;->e:I

    if-eq v0, p1, :cond_1

    .line 1040
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->a:Z

    .line 239
    if-eqz v0, :cond_0

    .line 240
    const-string v1, "setState"

    const-string v2, "new state:"

    invoke-static {p1}, Lfar;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    iput p1, p0, Lfar;->e:I

    .line 243
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 2040
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->e()V

    .line 247
    :cond_1
    return-void

    .line 240
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;J)Z
    .locals 3

    .prologue
    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 639
    packed-switch p0, :pswitch_data_0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 641
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 643
    :pswitch_1
    const-string v0, "PREFETCH"

    goto :goto_0

    .line 645
    :pswitch_2
    const-string v0, "FETCH_FOR_PLAY"

    goto :goto_0

    .line 647
    :pswitch_3
    const-string v0, "PREPARING"

    goto :goto_0

    .line 649
    :pswitch_4
    const-string v0, "PLAYING"

    goto :goto_0

    .line 651
    :pswitch_5
    const-string v0, "PAUSED"

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private m()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    const-string v1, "speaker"

    invoke-virtual {p0}, Lfar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 277
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 340
    const-string v0, "sendPrepare"

    .line 3674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfar;->a(I)Landroid/content/Intent;

    move-result-object v0

    .line 342
    const-string v1, "audio_stream_url"

    iget-object v2, p0, Lfar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lfar;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "sendPlay"

    .line 4674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lfar;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 349
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "sendPause"

    .line 5674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lfar;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 354
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 514
    const-string v0, "activateSelf"

    .line 15674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16202
    sget-object v0, Lfar;->a:Lfar;

    .line 516
    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {v0}, Lfar;->b()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 520
    invoke-direct {v0}, Lfar;->p()V

    .line 523
    :cond_0
    invoke-direct {v0}, Lfar;->r()V

    .line 526
    :cond_1
    iget-object v1, p0, Lfar;->j:Landroid/media/AudioManager;

    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    .line 527
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "speaker"

    .line 528
    invoke-virtual {p0}, Lfar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 526
    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 533
    iget-object v0, p0, Lfar;->f:Ljava/lang/String;

    iget v1, p0, Lfar;->h:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "+playId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfar;->g:Ljava/lang/String;

    .line 534
    iget v0, p0, Lfar;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfar;->h:I

    .line 16398
    iget-object v0, p0, Lfar;->n:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 16399
    new-instance v0, Lfat;

    invoke-direct {v0, p0}, Lfat;-><init>(Lfar;)V

    iput-object v0, p0, Lfar;->n:Landroid/content/BroadcastReceiver;

    .line 16406
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ready_to_play"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16407
    const-string v1, "play_started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16408
    const-string v1, "play_paused"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16409
    const-string v1, "play_stopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16410
    const-string v1, "current_position"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16411
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16412
    iget-object v1, p0, Lfar;->c:Landroid/content/Context;

    iget-object v2, p0, Lfar;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16424
    :cond_2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lfar;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16425
    iget-object v1, p0, Lfar;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    invoke-static {p0}, Lfar;->a(Lfar;)V

    .line 538
    return-void

    .line 528
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 541
    const-string v0, "deactivateSelf"

    .line 16674
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17417
    iget-object v0, p0, Lfar;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 17418
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    iget-object v2, p0, Lfar;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17419
    iput-object v4, p0, Lfar;->n:Landroid/content/BroadcastReceiver;

    .line 543
    :cond_0
    iget-object v2, p0, Lfar;->j:Landroid/media/AudioManager;

    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    .line 544
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "speaker"

    .line 545
    invoke-virtual {p0}, Lfar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 543
    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 546
    invoke-direct {p0, v1}, Lfar;->b(I)V

    .line 547
    sget-object v0, Lfar;->b:Lfau;

    if-eqz v0, :cond_1

    .line 549
    sget-object v0, Lfar;->b:Lfau;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfau;->a(I)V

    .line 552
    :cond_1
    invoke-static {v4}, Lfar;->a(Lfar;)V

    .line 553
    return-void

    :cond_2
    move v0, v1

    .line 545
    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfar;->c:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/hangouts/service/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    const-string v1, "op"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v1, "play_id"

    iget-object v2, p0, Lfar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lfar;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 429
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    const-string v0, "state"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 434
    :goto_0
    if-eqz v0, :cond_3

    .line 435
    invoke-direct {p0}, Lfar;->m()V

    .line 439
    :goto_1
    sget-object v0, Lfar;->b:Lfau;

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lfar;->b:Lfau;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lfau;->a(I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 8040
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->e()V

    .line 467
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 433
    goto :goto_0

    .line 437
    :cond_3
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 451
    :cond_4
    iget-object v2, p0, Lfar;->g:Ljava/lang/String;

    const-string v3, "play_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const-string v2, "ready_to_play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8470
    const-string v0, "onReadyToPlay"

    .line 8674
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8471
    const-string v0, "duration_in_milliseconds"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfar;->l:I

    .line 8472
    iput v1, p0, Lfar;->m:I

    .line 8473
    invoke-direct {p0}, Lfar;->o()V

    goto :goto_2

    .line 456
    :cond_5
    const-string v2, "play_started"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9477
    const-string v0, "onPlayStarted"

    .line 9674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10369
    const-string v0, "sendRegister"

    .line 10674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10370
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const/4 v1, 0x6

    .line 10371
    invoke-virtual {p0, v1}, Lfar;->a(I)Landroid/content/Intent;

    move-result-object v1

    .line 10370
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9479
    invoke-direct {p0, v4}, Lfar;->b(I)V

    .line 9480
    sget-object v0, Lfar;->b:Lfau;

    if-eqz v0, :cond_1

    .line 9482
    sget-object v0, Lfar;->b:Lfau;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lfau;->a(I)V

    goto :goto_2

    .line 458
    :cond_6
    const-string v2, "play_paused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11488
    const-string v0, "onPlayPaused"

    .line 11674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12375
    const-string v0, "sendUnregister"

    .line 12674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12376
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const/4 v1, 0x7

    .line 12377
    invoke-virtual {p0, v1}, Lfar;->a(I)Landroid/content/Intent;

    move-result-object v1

    .line 12376
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 11490
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lfar;->b(I)V

    .line 11491
    sget-object v0, Lfar;->b:Lfau;

    if-eqz v0, :cond_1

    .line 11493
    sget-object v0, Lfar;->b:Lfau;

    invoke-virtual {v0, v4}, Lfau;->a(I)V

    goto/16 :goto_2

    .line 460
    :cond_7
    const-string v2, "play_stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 13499
    const-string v0, "onPlayStopped"

    .line 13674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13500
    invoke-direct {p0}, Lfar;->r()V

    goto/16 :goto_2

    .line 462
    :cond_8
    const-string v2, "current_position"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 14504
    const-string v0, "onCurrentPosition"

    .line 14674
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14505
    const-string v0, "position_in_milliseconds"

    .line 14506
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfar;->m:I

    .line 14507
    const-string v0, "duration_in_milliseconds"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfar;->l:I

    .line 14508
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    if-eqz v0, :cond_1

    .line 14509
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 15040
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->e()V

    goto/16 :goto_2

    .line 465
    :cond_9
    const-string v2, "Babel"

    const-string v3, "Received unrecognized broadcast action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public a(Lcom/google/android/apps/hangouts/views/AudioAttachmentView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 231
    return-void
.end method

.method public a(Lfav;)V
    .locals 4

    .prologue
    .line 250
    const-string v0, "preloadAudioDataSourceIfNecessary"

    .line 2674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lfar;->b()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lfar;->d:Ljava/lang/String;

    iget-wide v2, p0, Lfar;->i:J

    invoke-static {v0, v2, v3}, Lfar;->b(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfar;->b(I)V

    .line 256
    invoke-virtual {p1}, Lfav;->a()V

    .line 259
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 20040
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->a:Z

    .line 601
    if-eqz v0, :cond_0

    .line 602
    const-string v0, "setAudioDataSource"

    iget-object v1, p0, Lfar;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "new audioStreamUrl is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioStreamUrl is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    invoke-static {p1, p2, p3}, Lfar;->b(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20222
    const/4 v0, 0x0

    iput-object v0, p0, Lfar;->d:Ljava/lang/String;

    .line 636
    :goto_0
    :pswitch_0
    return-void

    .line 611
    :cond_1
    iget v0, p0, Lfar;->e:I

    packed-switch v0, :pswitch_data_0

    .line 634
    :pswitch_1
    const-string v1, "Babel"

    const-string v2, "Unexpected state in setAudioDataSource: "

    iget v0, p0, Lfar;->e:I

    invoke-static {v0}, Lfar;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 613
    :pswitch_2
    iput-object p1, p0, Lfar;->d:Ljava/lang/String;

    .line 614
    iput-wide p2, p0, Lfar;->i:J

    goto :goto_0

    .line 617
    :pswitch_3
    iput-object p1, p0, Lfar;->d:Ljava/lang/String;

    .line 618
    iput-wide p2, p0, Lfar;->i:J

    .line 619
    invoke-direct {p0, v5}, Lfar;->b(I)V

    goto :goto_0

    .line 622
    :pswitch_4
    iput-object p1, p0, Lfar;->d:Ljava/lang/String;

    .line 623
    iput-wide p2, p0, Lfar;->i:J

    .line 624
    invoke-direct {p0}, Lfar;->n()V

    .line 625
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lfar;->b(I)V

    goto :goto_0

    .line 634
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 21040
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->a:Z

    .line 658
    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lfar;->f:Ljava/lang/String;

    iget-object v1, p0, Lfar;->g:Ljava/lang/String;

    iget v2, p0, Lfar;->e:I

    .line 667
    invoke-static {v2}, Lfar;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " playId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    if-eqz p1, :cond_1

    .line 310
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-direct {p0}, Lfar;->m()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lfar;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const-string v1, "AudioAttachment"

    const/4 v2, 0x0

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "output"

    const-string v2, "speaker"

    .line 264
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "Babel"

    const-string v1, "toggleAudioOutput: isWiredHeadset is true."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v0, "speaker"

    invoke-virtual {p0}, Lfar;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const-string v0, "earpiece"

    invoke-direct {p0, v0}, Lfar;->a(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 291
    :goto_1
    sget-object v0, Lfar;->b:Lfau;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lfar;->b:Lfau;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lfau;->a(I)V

    goto :goto_0

    .line 288
    :cond_2
    const-string v0, "speaker"

    invoke-direct {p0, v0}, Lfar;->a(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-virtual {p0}, Lfar;->b()I

    move-result v1

    .line 299
    if-eq v1, v0, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lfar;->j:Landroid/media/AudioManager;

    .line 302
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lfar;->j:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lfar;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lfar;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lfar;->m:I

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "stopPlayback"

    .line 6674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lfar;->r()V

    .line 7381
    const-string v0, "sendStop"

    .line 7674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7382
    iget-object v0, p0, Lfar;->c:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lfar;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 395
    return-void
.end method

.method public k()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 556
    const-string v0, "playAudio"

    .line 17674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget v0, p0, Lfar;->e:I

    packed-switch v0, :pswitch_data_0

    .line 589
    :pswitch_0
    const-string v1, "Babel"

    const-string v2, "Unexpected state in playAudio: "

    iget v0, p0, Lfar;->e:I

    invoke-static {v0}, Lfar;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :goto_1
    :pswitch_1
    return-void

    .line 559
    :pswitch_2
    iget-object v0, p0, Lfar;->d:Ljava/lang/String;

    iget-wide v2, p0, Lfar;->i:J

    invoke-static {v0, v2, v3}, Lfar;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Lfar;->q()V

    .line 561
    invoke-direct {p0}, Lfar;->n()V

    .line 562
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lfar;->b(I)V

    goto :goto_1

    .line 564
    :cond_0
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 18040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->c:Lfav;

    .line 564
    if-eqz v0, :cond_1

    .line 565
    invoke-direct {p0}, Lfar;->q()V

    .line 566
    iget-object v0, p0, Lfar;->k:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 19040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->c:Lfav;

    .line 566
    invoke-virtual {v0}, Lfav;->a()V

    .line 567
    invoke-direct {p0, v5}, Lfar;->b(I)V

    goto :goto_1

    .line 569
    :cond_1
    const-string v0, "Babel"

    const-string v1, "No audioUrl, and no audioUrlFetcher."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    invoke-direct {p0, v4}, Lfar;->b(I)V

    goto :goto_1

    .line 575
    :pswitch_3
    invoke-direct {p0}, Lfar;->q()V

    .line 577
    invoke-direct {p0, v5}, Lfar;->b(I)V

    goto :goto_1

    .line 586
    :pswitch_4
    invoke-direct {p0}, Lfar;->o()V

    goto :goto_1

    .line 589
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public l()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "pauseAudio"

    .line 19674
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget v0, p0, Lfar;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 596
    invoke-direct {p0}, Lfar;->p()V

    .line 598
    :cond_0
    return-void
.end method
