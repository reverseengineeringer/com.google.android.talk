.class public final Lelp;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field a:Leot;

.field b:Lhpz;

.field private c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

.field private d:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Limg;-><init>()V

    .line 63
    new-instance v0, Liiz;

    iget-object v1, p0, Lelp;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 64
    return-void
.end method

.method private a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V
    .locals 3

    .prologue
    .line 535
    new-instance v0, Like;

    iget-object v1, p0, Lelp;->context:Lill;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Like;-><init>(Landroid/content/Context;B)V

    .line 536
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 537
    invoke-virtual {v0, p2}, Like;->g(I)V

    .line 538
    if-eqz p3, :cond_0

    .line 539
    invoke-virtual {v0, p3}, Like;->h(I)V

    .line 541
    :cond_0
    iget-object v1, p0, Lelp;->a:Leot;

    invoke-interface {v1, p4}, Leot;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Like;->a(Z)V

    .line 542
    if-eqz p5, :cond_1

    .line 543
    invoke-virtual {v0, p5}, Like;->a(Lijg;)V

    .line 553
    :goto_0
    return-void

    .line 545
    :cond_1
    new-instance v1, Lelv;

    invoke-direct {v1, p0, p4}, Lelv;-><init>(Lelp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Like;->a(Lijg;)V

    goto :goto_0
.end method

.method private a(Lijo;Z)V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p1}, Lijo;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 172
    invoke-virtual {p1, v1}, Lijo;->a(I)Lijc;

    move-result-object v0

    .line 173
    instance-of v2, v0, Lijo;

    if-eqz v2, :cond_0

    .line 174
    check-cast v0, Lijo;

    invoke-direct {p0, v0, p2}, Lelp;->a(Lijo;Z)V

    .line 171
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0, p2}, Lijc;->d(Z)V

    goto :goto_1

    .line 179
    :cond_1
    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 514
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v1

    invoke-virtual {v1}, Laei;->v()Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lelp;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 519
    const-string v2, "com.android.cellbroadcastreceiver"

    .line 522
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 365
    iget-object v0, p0, Lelp;->d:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 366
    new-instance v1, Liji;

    iget-object v2, p0, Lelp;->context:Lill;

    invoke-direct {v1, v2}, Liji;-><init>(Landroid/content/Context;)V

    .line 369
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jW:I

    .line 370
    invoke-virtual {v1, v2}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v2

    iput-object v2, p0, Lelp;->c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    .line 373
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jX:I

    .line 374
    invoke-virtual {v1, v2}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v2

    .line 377
    new-instance v3, Lejs;

    iget-object v4, p0, Lelp;->context:Lill;

    invoke-direct {v3, v4}, Lejs;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 380
    const-string v4, "sms_notification_sound_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lejs;->c(Ljava/lang/String;)V

    .line 381
    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->jx:I

    invoke-virtual {v3, v4}, Lejs;->g(I)V

    .line 382
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lejs;->b(I)V

    .line 383
    invoke-virtual {v3}, Lejs;->x()V

    .line 384
    new-instance v4, Lels;

    invoke-direct {v4, p0, v0}, Lels;-><init>(Lelp;I)V

    invoke-virtual {v3, v4}, Lejs;->a(Lijg;)V

    .line 393
    iget-object v0, p0, Lelp;->context:Lill;

    const-class v4, Lekq;

    .line 394
    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    iget-object v4, p0, Lelp;->d:Lhpu;

    .line 396
    invoke-interface {v4}, Lhpu;->a()I

    move-result v4

    sget-object v6, Leku;->a:Leku;

    .line 395
    invoke-virtual {v0, v4, v6}, Lekq;->a(ILeku;)Landroid/net/Uri;

    move-result-object v0

    .line 393
    invoke-virtual {v3, v0}, Lejs;->a(Landroid/net/Uri;)V

    .line 399
    invoke-virtual {p0}, Lelp;->getActivity()Lba;

    move-result-object v0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Lba;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 400
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Liip;

    iget-object v3, p0, Lelp;->context:Lill;

    iget-object v4, p0, Lelp;->d:Lhpu;

    .line 404
    invoke-interface {v4}, Lhpu;->a()I

    move-result v4

    const-string v6, "sms_notification_vibrate_bool_key"

    invoke-direct {v0, v3, v4, v6}, Liip;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 406
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 407
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jy:I

    invoke-virtual {v0, v2}, Liip;->g(I)V

    .line 408
    iget-object v2, p0, Lelp;->d:Lhpu;

    .line 409
    invoke-interface {v2}, Lhpu;->c()Lhqb;

    move-result-object v2

    const-string v3, "sms_notification_vibrate_bool_key"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 408
    invoke-virtual {v0, v2}, Liip;->a(Z)V

    .line 413
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jV:I

    .line 414
    invoke-virtual {v1, v0}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v1

    .line 418
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v0

    invoke-virtual {v0}, Laei;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lezm;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    :cond_1
    invoke-static {}, Ldvd;->k()Lbfd;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 420
    :cond_2
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hB:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->hA:I

    const-string v4, "group_mms_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 426
    :cond_3
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->aO:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->aN:I

    const-string v4, "delete_old_messages_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 431
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v0

    invoke-virtual {v0}, Laei;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ju:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->jt:I

    const-string v4, "sms_delivery_report_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 438
    :cond_4
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->bQ:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->bP:I

    const-string v4, "enable_auto_retrieve_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 443
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->bO:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->bN:I

    const-string v4, "enable_auto_retrieve_in_roaming_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 449
    invoke-direct {p0}, Lelp;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    new-instance v0, Lijc;

    iget-object v2, p0, Lelp;->context:Lill;

    invoke-direct {v0, v2}, Lijc;-><init>(Landroid/content/Context;)V

    .line 451
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jQ:I

    invoke-virtual {v0, v2}, Lijc;->g(I)V

    .line 452
    new-instance v2, Lelt;

    invoke-direct {v2, p0}, Lelt;-><init>(Lelp;)V

    invoke-virtual {v0, v2}, Lijc;->a(Lijh;)V

    .line 466
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 470
    :cond_5
    iget-object v0, p0, Lelp;->context:Lill;

    invoke-static {v0}, Lenn;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 471
    new-instance v0, Lijc;

    iget-object v2, p0, Lelp;->context:Lill;

    invoke-direct {v0, v2}, Lijc;-><init>(Landroid/content/Context;)V

    .line 472
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->js:I

    invoke-virtual {v0, v2}, Lijc;->g(I)V

    .line 473
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jr:I

    invoke-virtual {v0, v2}, Lijc;->h(I)V

    .line 3781
    new-instance v2, Landroid/content/Intent;

    .line 4036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 3781
    const-class v4, Lcom/google/android/apps/hangouts/phone/ApnSettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    invoke-virtual {v0, v2}, Lijc;->a(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 479
    :cond_6
    invoke-static {}, Lezc;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 480
    iget-object v0, p0, Lelp;->context:Lill;

    invoke-static {v0}, Lenn;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 482
    sget v8, Lcom/google/android/apps/hangouts/hangout/StressMode;->sv:I

    sget v9, Lcom/google/android/apps/hangouts/hangout/StressMode;->su:I

    const-string v10, "use_local_apn_pref_key"

    new-instance v11, Lelu;

    invoke-direct {v11, p0}, Lelu;-><init>(Lelp;)V

    move-object v6, p0

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 500
    :cond_7
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->bH:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->bG:I

    const-string v4, "dump_sms_pref_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 505
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->bF:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->bE:I

    const-string v4, "dump_mms_pref_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lelp;->a(Lcom/google/android/libraries/social/settings/PreferenceCategory;IILjava/lang/String;Lijg;)V

    .line 510
    :cond_8
    invoke-virtual {p0}, Lelp;->b()V

    .line 511
    return-void
.end method

.method b()V
    .locals 13

    .prologue
    .line 1660
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v9

    .line 132
    iget-object v0, p0, Lelp;->c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c()V

    .line 2085
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 2087
    new-instance v0, Like;

    iget-object v1, p0, Lelp;->context:Lill;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Like;-><init>(Landroid/content/Context;B)V

    .line 2088
    invoke-virtual {v0, v9}, Like;->a(Z)V

    .line 2089
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bU:I

    invoke-virtual {v0, v1}, Like;->g(I)V

    .line 2090
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bT:I

    invoke-virtual {v0, v1}, Like;->h(I)V

    .line 2091
    new-instance v1, Lelq;

    invoke-direct {v1, p0}, Lelq;-><init>(Lelp;)V

    invoke-virtual {v0, v1}, Like;->a(Lijg;)V

    move-object v1, v0

    .line 135
    :goto_0
    iget-object v0, p0, Lelp;->c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 140
    invoke-static {}, Ldvd;->m()Lbfd;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    invoke-static {}, Ldvd;->e()[I

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 142
    new-instance v2, Lijc;

    iget-object v3, p0, Lelp;->context:Lill;

    invoke-direct {v2, v3}, Lijc;-><init>(Landroid/content/Context;)V

    .line 143
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->jq:I

    invoke-virtual {v2, v3}, Lijc;->g(I)V

    .line 145
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lijc;->b(Ljava/lang/CharSequence;)V

    .line 2827
    new-instance v0, Landroid/content/Intent;

    .line 3036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 2827
    const-class v4, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-virtual {v2, v0}, Lijc;->a(Landroid/content/Intent;)V

    .line 147
    iget-object v0, p0, Lelp;->c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 3184
    :cond_0
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v10

    .line 3188
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lbfd;->K()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3189
    const/4 v2, 0x1

    .line 3191
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v3

    .line 3192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3193
    invoke-static {v3}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3194
    invoke-static {v3}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v0

    move v8, v2

    .line 3208
    :goto_1
    const/4 v5, 0x0

    .line 3212
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lbfd;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3213
    const/4 v4, 0x1

    .line 3214
    invoke-virtual {v10}, Lbfd;->H()Ljava/lang/String;

    move-result-object v0

    .line 3215
    invoke-virtual {v10}, Lbfd;->v()Ljava/lang/String;

    move-result-object v5

    .line 3219
    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    .line 3221
    invoke-static {v5}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    move-object v5, v0

    move v0, v4

    .line 3236
    :goto_2
    if-eqz v8, :cond_17

    if-eqz v0, :cond_17

    .line 3237
    new-instance v4, Lelw;

    iget-object v0, p0, Lelp;->context:Lill;

    invoke-direct {v4, v0}, Lelw;-><init>(Landroid/content/Context;)V

    .line 3238
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jH:I

    invoke-virtual {v4, v0}, Lelw;->g(I)V

    .line 3239
    iget-object v0, p0, Lelp;->a:Leot;

    invoke-interface {v0}, Leot;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lelw;->a(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {v4}, Lelw;->h()Ljava/lang/String;

    move-result-object v0

    .line 3242
    if-eqz v0, :cond_1

    .line 3243
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3244
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3246
    :cond_1
    invoke-static {v6}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3247
    if-eqz v0, :cond_b

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3248
    invoke-virtual {v4, v5}, Lelw;->a(Ljava/lang/String;)V

    .line 3249
    iget-object v0, p0, Lelp;->a:Leot;

    invoke-interface {v0, v5}, Leot;->a(Ljava/lang/String;)V

    .line 3256
    :cond_2
    :goto_3
    invoke-virtual {v10}, Lbfd;->R()Z

    move-result v6

    .line 3332
    new-instance v8, Lhq;

    invoke-direct {v8}, Lhq;-><init>()V

    .line 3335
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_4
    const-string v10, "A null/empty GV phone number is unexpected here"

    invoke-static {v0, v10}, Laen;->b(ZLjava/lang/Object;)V

    .line 3337
    const-string v10, "auto"

    iget-object v0, p0, Lelp;->a:Leot;

    .line 3338
    invoke-interface {v0}, Leot;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3339
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jB:I

    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3337
    :goto_5
    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3343
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jG:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    .line 3344
    invoke-virtual {p0, v0, v10}, Lelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3343
    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3351
    if-eqz v6, :cond_f

    .line 3353
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jJ:I

    .line 3354
    :goto_7
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    .line 3352
    invoke-virtual {p0, v0, v10}, Lelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3351
    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    :goto_8
    iget-object v0, p0, Lelp;->a:Leot;

    invoke-interface {v0}, Leot;->d()Z

    move-result v10

    .line 3267
    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v10, :cond_12

    .line 3269
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jC:I

    .line 3268
    :goto_9
    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    if-eqz v6, :cond_13

    .line 3272
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jI:I

    .line 3271
    :goto_a
    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    const/4 v0, 0x2

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->jF:I

    .line 3273
    invoke-virtual {p0, v6}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v0

    .line 3267
    invoke-virtual {v4, v11}, Lelw;->b([Ljava/lang/CharSequence;)V

    .line 3277
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v10, :cond_14

    .line 3279
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jB:I

    .line 3278
    :goto_b
    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    const/4 v10, 0x1

    if-eqz v2, :cond_15

    move-object v0, v2

    .line 3282
    :goto_c
    aput-object v0, v6, v10

    const/4 v2, 0x2

    if-eqz v3, :cond_16

    move-object v0, v3

    .line 3284
    :goto_d
    aput-object v0, v6, v2

    .line 3277
    invoke-virtual {v4, v6}, Lelw;->a([Ljava/lang/CharSequence;)V

    .line 3288
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "auto"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v5, v0, v2

    const/4 v2, 0x2

    aput-object v7, v0, v2

    invoke-virtual {v4, v0}, Lelw;->c([Ljava/lang/CharSequence;)V

    .line 3294
    iget-object v0, p0, Lelp;->a:Leot;

    invoke-interface {v0}, Leot;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Lelw;->b(Ljava/lang/CharSequence;)V

    .line 3297
    new-instance v0, Lelr;

    invoke-direct {v0, p0, v4, v8}, Lelr;-><init>(Lelp;Lelw;Ljava/util/Map;)V

    invoke-virtual {v4, v0}, Lelw;->a(Lijg;)V

    move-object v0, v4

    .line 151
    :goto_e
    if-eqz v0, :cond_3

    .line 152
    iget-object v2, p0, Lelp;->c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 156
    :cond_3
    new-instance v0, Lijc;

    iget-object v2, p0, Lelp;->context:Lill;

    invoke-direct {v0, v2}, Lijc;-><init>(Landroid/content/Context;)V

    .line 157
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->H:I

    invoke-virtual {v0, v2}, Lijc;->g(I)V

    .line 158
    iget-object v2, p0, Lelp;->d:Lhpu;

    invoke-interface {v2}, Lhpu;->a()I

    move-result v2

    invoke-static {v2}, Laal;->d(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lijc;->a(Landroid/content/Intent;)V

    .line 159
    iget-object v2, p0, Lelp;->c:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 162
    iget-object v0, p0, Lelp;->context:Lill;

    const-class v2, Lika;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    .line 163
    invoke-interface {v0}, Lika;->b()Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0, v9}, Lelp;->a(Lijo;Z)V

    .line 167
    invoke-static {}, Lezm;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Lijc;->d(Z)V

    .line 168
    return-void

    .line 2103
    :cond_4
    new-instance v1, Lijc;

    iget-object v0, p0, Lelp;->context:Lill;

    invoke-direct {v1, v0}, Lijc;-><init>(Landroid/content/Context;)V

    .line 2104
    if-eqz v9, :cond_6

    .line 2107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_5

    .line 2108
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2113
    :goto_f
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jU:I

    invoke-virtual {v1, v2}, Lijc;->g(I)V

    .line 2114
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jT:I

    invoke-virtual {v1, v2}, Lijc;->h(I)V

    .line 2115
    invoke-virtual {v1, v0}, Lijc;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2110
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2111
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f

    .line 2117
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2118
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2119
    const-string v2, "package"

    const-string v3, "com.google.android.talk"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2120
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jS:I

    invoke-virtual {v1, v2}, Lijc;->g(I)V

    .line 2121
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jR:I

    invoke-virtual {v1, v2}, Lijc;->h(I)V

    .line 2122
    invoke-virtual {v1, v0}, Lijc;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3197
    :cond_7
    const-string v0, "unknown_sim_number"

    .line 3198
    const/4 v3, 0x0

    move-object v7, v0

    move v8, v2

    .line 3200
    goto/16 :goto_1

    .line 3201
    :cond_8
    const/4 v2, 0x0

    .line 3202
    const/4 v0, 0x0

    .line 3203
    const/4 v3, 0x0

    move-object v7, v0

    move v8, v2

    goto/16 :goto_1

    .line 3224
    :cond_9
    const/4 v4, 0x0

    .line 3225
    const/4 v0, 0x0

    .line 3226
    const/4 v2, 0x0

    move-object v6, v5

    move-object v5, v0

    move v0, v4

    .line 3228
    goto/16 :goto_2

    .line 3229
    :cond_a
    const/4 v4, 0x0

    .line 3230
    const/4 v0, 0x0

    .line 3231
    const/4 v2, 0x0

    move-object v6, v5

    move-object v5, v0

    move v0, v4

    goto/16 :goto_2

    .line 3251
    :cond_b
    const-string v0, "auto"

    invoke-virtual {v4, v0}, Lelw;->a(Ljava/lang/String;)V

    .line 3252
    iget-object v0, p0, Lelp;->a:Leot;

    const-string v6, "auto"

    invoke-interface {v0, v6}, Leot;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3335
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 3340
    :cond_d
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jz:I

    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 3346
    :cond_e
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jF:I

    .line 3347
    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3346
    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 3354
    :cond_f
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jE:I

    goto/16 :goto_7

    .line 3356
    :cond_10
    if-eqz v6, :cond_11

    .line 3358
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jI:I

    .line 3357
    :goto_10
    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3356
    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 3358
    :cond_11
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jD:I

    goto :goto_10

    .line 3270
    :cond_12
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jA:I

    goto/16 :goto_9

    .line 3272
    :cond_13
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jD:I

    goto/16 :goto_a

    .line 3280
    :cond_14
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jz:I

    goto/16 :goto_b

    .line 3282
    :cond_15
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jK:I

    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 3284
    :cond_16
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jK:I

    invoke-virtual {p0, v0}, Lelp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 3316
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_e
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lelp;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lelp;->d:Lhpu;

    .line 73
    iget-object v0, p0, Lelp;->binder:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lelp;->b:Lhpz;

    .line 74
    iget-object v0, p0, Lelp;->binder:Lilh;

    const-class v1, Leot;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Lelp;->a:Leot;

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Limg;->onResume()V

    .line 81
    invoke-virtual {p0}, Lelp;->b()V

    .line 82
    return-void
.end method
