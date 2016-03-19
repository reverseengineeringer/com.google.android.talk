.class public Lcom/google/android/apps/hangouts/service/AudioPlayerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:Z


# instance fields
.field public b:Legz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lezi;->a:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    .line 306
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    const-string v1, "play_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    packed-switch p0, :pswitch_data_0

    .line 343
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

    .line 322
    :pswitch_0
    const-string v0, "PREPARE"

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "PLAY"

    goto :goto_0

    .line 328
    :pswitch_2
    const-string v0, "PAUSE"

    goto :goto_0

    .line 331
    :pswitch_3
    const-string v0, "SEEK"

    goto :goto_0

    .line 334
    :pswitch_4
    const-string v0, "STOP"

    goto :goto_0

    .line 337
    :pswitch_5
    const-string v0, "REGISTER"

    goto :goto_0

    .line 340
    :pswitch_6
    const-string v0, "UNREGISTER"

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    invoke-virtual {v0}, Legz;->g()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    .line 311
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 349
    const-string v0, "op"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 350
    const-string v1, "play_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const-string v0, "Babel"

    const-string v1, "No EXTRA_PLAY_ID in intent sent to AudioPlayerService."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    .line 356
    invoke-virtual {v2}, Legz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 357
    :cond_1
    const-string v2, "Babel"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " message because playId \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" is not current."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    const-string v0, "play_stopped"

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 362
    :cond_2
    sget-boolean v2, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a:Z

    if-eqz v2, :cond_3

    .line 363
    const-string v2, "AudioPlayerService received op: "

    invoke-static {v0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 398
    const-string v1, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized EXTRA_OP value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 363
    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    if-eqz v0, :cond_5

    .line 368
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a()V

    .line 370
    :cond_5
    const-string v0, "audio_stream_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1144
    const-string v3, "Expected condition to be false"

    invoke-static {v3, v2}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 373
    :try_start_0
    new-instance v2, Legz;

    invoke-direct {v2, p0, p0, v0, v1}, Legz;-><init>(Lcom/google/android/apps/hangouts/service/AudioPlayerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 375
    :catch_0
    move-exception v0

    const-string v0, "play_stopped"

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    goto/16 :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    invoke-virtual {v0}, Legz;->b()V

    goto/16 :goto_0

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    invoke-virtual {v0}, Legz;->c()V

    goto/16 :goto_0

    .line 386
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    const-string v1, "position_in_milliseconds"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Legz;->a(I)V

    goto/16 :goto_0

    .line 389
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a()V

    goto/16 :goto_0

    .line 392
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    invoke-virtual {v0}, Legz;->d()V

    goto/16 :goto_0

    .line 395
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    invoke-virtual {v0}, Legz;->e()V

    goto/16 :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a()V

    .line 425
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 410
    if-nez p1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v1

    .line 413
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->a(Landroid/content/Intent;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->b:Legz;

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/service/AudioPlayerService;->stopSelf()V

    goto :goto_0
.end method
