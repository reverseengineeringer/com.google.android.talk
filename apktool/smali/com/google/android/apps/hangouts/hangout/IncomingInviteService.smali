.class public final Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;
.super Leaw;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/PowerManager$WakeLock;

.field private static final f:J

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->f:J

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Leaw;-><init>()V

    return-void
.end method

.method private static a(Lith;Lbfd;)Lcgs;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 404
    iget-object v0, p0, Lith;->d:Ljava/lang/Integer;

    .line 405
    invoke-static {v0}, Lezc;->a(Ljava/lang/Integer;)I

    move-result v0

    .line 406
    const-string v1, "Babel_IncomingInviteSvc"

    const-string v2, "Using start context hangout type=%d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v1, Lcgu;

    .line 408
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcgu;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lith;->K:Ljava/lang/Integer;

    .line 410
    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 409
    invoke-virtual {v1, v0}, Lcgu;->a(I)Lcgu;

    move-result-object v0

    iget-object v1, p0, Lith;->a:Ljava/lang/String;

    .line 412
    invoke-virtual {v0, v1}, Lcgu;->e(Ljava/lang/String;)Lcgu;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lith;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Lcgu;->a(Ljava/lang/String;)Lcgu;

    .line 415
    iget-object v1, p0, Lith;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcgu;->b(Ljava/lang/String;)Lcgu;

    .line 417
    :cond_0
    iget-object v1, p0, Lith;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    iget-object v1, p0, Lith;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcgu;->h(Ljava/lang/String;)Lcgu;

    .line 420
    :cond_1
    invoke-virtual {v0}, Lcgu;->a()Lcgs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;)Litg;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 386
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    if-nez v0, :cond_0

    .line 389
    const-string v0, "Babel_IncomingInviteSvc"

    const-string v2, "Missing HangoutInviteNotification: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 398
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 395
    :try_start_0
    new-instance v2, Litg;

    invoke-direct {v2}, Litg;-><init>()V

    .line 12131
    array-length v3, v0

    invoke-static {v2, v0, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 395
    check-cast v0, Litg;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    const-string v0, "Babel_IncomingInviteSvc"

    const-string v2, "Invalid BatchCommand message received"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 398
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    const-class v0, Lhba;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 133
    invoke-interface {v0}, Lhba;->a()Lhaw;

    move-result-object v0

    const/16 v1, 0xbc9

    .line 134
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lhax;->d()V

    .line 136
    return-void
.end method

.method private static a(Lbfd;Litg;I)V
    .locals 6

    .prologue
    .line 517
    new-instance v0, Lkkp;

    invoke-direct {v0}, Lkkp;-><init>()V

    .line 518
    if-eqz p1, :cond_0

    .line 519
    iget-object v1, p1, Litg;->a:Ljava/lang/Long;

    iput-object v1, v0, Lkkp;->a:Ljava/lang/Long;

    .line 520
    iget-object v1, p1, Litg;->b:Lith;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p1, Litg;->b:Lith;

    iget-object v1, v1, Lith;->a:Ljava/lang/String;

    iput-object v1, v0, Lkkp;->b:Ljava/lang/String;

    .line 524
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkkp;->c:Ljava/lang/Long;

    .line 525
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkkp;->e:Ljava/lang/Integer;

    .line 527
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Lkkp;)I

    .line 528
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 140
    const-class v0, Lhba;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 141
    invoke-interface {v0}, Lhba;->a()Lhaw;

    move-result-object v0

    const/16 v1, 0xbca

    .line 142
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Lhax;->d()V

    .line 144
    return-void
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    sget-object v2, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    sget-object v3, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 120
    const-string v0, "Babel_IncomingInviteSvc"

    const-string v3, "initializing wakelock"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 122
    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 123
    const/4 v3, 0x1

    const-string v4, "babel_hoinv"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    .line 124
    monitor-exit v2

    move v0, v1

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public J_()Z
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Leaw;->J_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Landroid/content/Context;)V

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()I
    .locals 2

    .prologue
    .line 84
    sget-wide v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->f:J

    long-to-int v0, v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Leaw;->d()V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->b(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Leaw;->e()V

    .line 166
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "Babel_IncomingInviteSvc"

    const-string v1, "Wake lock held when shutting down."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 169
    const-class v0, Lhba;

    invoke-static {v1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 170
    invoke-interface {v0}, Lhba;->a()Lhaw;

    move-result-object v0

    const/16 v2, 0xbc8

    .line 171
    invoke-interface {v0, v2}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lhax;->d()V

    .line 178
    invoke-static {v1}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->b(Landroid/content/Context;)V

    .line 179
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 11144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 507
    invoke-super {p0}, Leaw;->onCreate()V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->b(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->o()V

    .line 510
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 26

    .prologue
    .line 93
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "onStartCommand with intent %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "acquiring wakelock in onStartCommand %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Landroid/content/Context;)V

    .line 99
    :cond_0
    sget-object v2, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    .line 1134
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v2}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(I)V

    .line 1198
    const-string v2, "Expected non-null"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Hangout Invitation Receiver got invitation GCM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    const-string v2, "focus_account_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2202
    invoke-static {v2}, Lczb;->a(Ljava/lang/String;)Lczb;

    move-result-object v2

    invoke-static {v2}, Ldvd;->a(Lczb;)Lbfd;

    move-result-object v4

    .line 2208
    const-string v2, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2209
    if-nez v2, :cond_2

    .line 2210
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Missing hangoutInviteId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2211
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v4, v2, v3}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2212
    const/4 v2, 0x1

    .line 105
    :goto_0
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->b(Landroid/content/Context;)V

    .line 111
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->d()V

    .line 113
    const/4 v2, 0x2

    return v2

    .line 2216
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Landroid/content/Intent;)Litg;

    move-result-object v5

    .line 2217
    if-nez v5, :cond_3

    .line 2218
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring null hangoutInviteNotification"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v4, v2, v3}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2220
    const/4 v2, 0x1

    goto :goto_0

    .line 2223
    :cond_3
    iget-object v3, v5, Litg;->b:Lith;

    .line 2224
    invoke-static {v3, v4}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lith;Lbfd;)Lcgs;

    move-result-object v14

    .line 2226
    iget-object v2, v5, Litg;->d:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 2227
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring hangoutInviteNotification without any command"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    const/4 v2, 0x2

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2230
    const/4 v2, 0x1

    goto :goto_0

    .line 2233
    :cond_4
    iget-object v2, v5, Litg;->d:Ljava/lang/Integer;

    .line 3043
    const/4 v6, 0x0

    invoke-static {v2, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 2233
    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    .line 2235
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring due to dismiss"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3455
    iget-object v2, v5, Litg;->b:Lith;

    .line 3456
    const-string v3, "Babel_IncomingInviteSvc"

    const-string v6, "Got hangoutInviteNotification DISMISS: reason: %s HangoutId: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v5, Litg;->g:Ljava/lang/Integer;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v2, Lith;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3462
    invoke-static {v2, v4}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lith;Lbfd;)Lcgs;

    move-result-object v3

    .line 3463
    iget-object v2, v5, Litg;->g:Ljava/lang/Integer;

    .line 4043
    const/4 v5, 0x0

    invoke-static {v2, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 3464
    const-class v2, Lchj;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 3465
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchj;

    .line 3466
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v7

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v3, v5}, Lchj;->a(Landroid/content/Context;ILcgs;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3467
    const-string v3, "Babel_IncomingInviteSvc"

    const-string v4, "Hangout ringing cancelled by handler: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2237
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 4180
    :cond_6
    sget-object v2, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 3473
    if-eqz v2, :cond_7

    .line 3474
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->d()Lcgs;

    move-result-object v4

    .line 3476
    invoke-virtual {v4, v3}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3477
    const-string v4, "Babel_IncomingInviteSvc"

    const-string v5, "Cancelling hangout ringing."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3478
    invoke-virtual {v3}, Lcgs;->n()Ljava/lang/String;

    move-result-object v3

    .line 4188
    const-string v4, "Expected null"

    invoke-static {v4, v3}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3479
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->m()V

    goto :goto_1

    .line 3484
    :cond_7
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v2

    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v2

    .line 3485
    const/4 v4, 0x3

    if-ne v5, v4, :cond_9

    if-eqz v2, :cond_9

    .line 3487
    invoke-virtual {v2}, Lcgw;->e()Lcgs;

    move-result-object v4

    .line 3488
    invoke-virtual {v4, v3}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3489
    invoke-virtual {v2}, Lcgw;->H()I

    move-result v3

    .line 3490
    invoke-virtual {v2}, Lcgw;->H()I

    move-result v4

    if-nez v4, :cond_8

    .line 3491
    const-string v4, "Babel_IncomingInviteSvc"

    const-string v5, "Ending hangout because inviter canceled and hangout is empty."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3492
    const/16 v4, 0x3f1

    invoke-virtual {v2, v4}, Lcgw;->b(I)V

    .line 3494
    :cond_8
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v4, "Ignoring canceled notification because %d remote end points are already connected."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 3497
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 3494
    invoke-static {v2, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3502
    :cond_9
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring dismiss command because no matching ring activity or hangout found."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2240
    :cond_a
    iget-object v0, v3, Lith;->o:Litj;

    move-object/from16 v18, v0

    .line 2242
    if-nez v18, :cond_b

    .line 2243
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring hangoutStartContext without invitation"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2244
    const/4 v2, 0x2

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2246
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2249
    :cond_b
    move-object/from16 v0, v18

    iget-object v6, v0, Litj;->b:Ljava/lang/String;

    .line 2251
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, v18

    iget-object v2, v0, Litj;->a:Ljava/lang/Long;

    if-nez v2, :cond_d

    .line 2252
    :cond_c
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring hangoutStartContext without invitation data"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    const/4 v2, 0x2

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2255
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2258
    :cond_d
    move-object/from16 v0, v18

    iget-object v2, v0, Litj;->c:Ljava/lang/Integer;

    .line 5043
    const/4 v7, 0x0

    invoke-static {v2, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 2260
    if-eqz v2, :cond_e

    const/4 v7, 0x1

    if-eq v2, v7, :cond_e

    const/4 v7, 0x2

    if-eq v2, v7, :cond_e

    .line 2263
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring unsupported InvitationType %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    iget-object v8, v0, Litj;->c:Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-static {v2, v3, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2264
    const/4 v2, 0x4

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2268
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2271
    :cond_e
    invoke-virtual {v14}, Lcgs;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    .line 2272
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring null invitee nick"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2273
    const/4 v2, 0x2

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2275
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2278
    :cond_f
    invoke-virtual {v4}, Lbfd;->T()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2279
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Ignoring calling not enabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2280
    const/4 v2, 0x2

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2282
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2285
    :cond_10
    iget-object v2, v3, Lith;->z:Ljava/lang/String;

    .line 2286
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2287
    iget-object v7, v3, Lith;->z:Ljava/lang/String;

    .line 2289
    :goto_2
    iget-object v2, v5, Litg;->a:Ljava/lang/Long;

    .line 5051
    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 2290
    move-object/from16 v0, v18

    iget-object v2, v0, Litj;->a:Ljava/lang/Long;

    .line 6051
    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 2290
    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 2291
    iget-object v2, v5, Litg;->e:Ljava/lang/Integer;

    .line 7043
    const/4 v12, 0x0

    invoke-static {v2, v12}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 2291
    if-eqz v2, :cond_12

    .line 2293
    new-instance v2, Lchi;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lchi;-><init>(Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;Lbfd;Litg;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v2}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 2314
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2288
    :cond_11
    const/4 v7, 0x0

    goto :goto_2

    .line 2317
    :cond_12
    move-object/from16 v0, v18

    iget-object v2, v0, Litj;->h:Ljava/lang/Boolean;

    .line 8015
    const/4 v10, 0x0

    invoke-static {v2, v10}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 2318
    if-eqz v2, :cond_14

    .line 2319
    move-object/from16 v0, v18

    iget-object v15, v0, Litj;->g:Ljava/lang/String;

    .line 2321
    :goto_3
    const-string v2, "105250506097979753968"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2322
    const-class v2, Lchj;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 2323
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lchj;

    move-object/from16 v11, p0

    move-object/from16 v12, p0

    move-object v13, v4

    move-wide/from16 v16, v8

    .line 2324
    invoke-interface/range {v10 .. v17}, Lchj;->a(Landroid/content/Context;Leaw;Lbfd;Lcgs;Ljava/lang/String;J)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2326
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Incoming PSTN ring handled by handler: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2327
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2320
    :cond_14
    const/4 v15, 0x0

    goto :goto_3

    .line 8424
    :cond_15
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v2

    invoke-virtual {v2}, Lcfc;->c()Z

    move-result v2

    .line 8432
    if-eqz v2, :cond_16

    .line 8433
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v2

    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 8434
    const/4 v2, 0x1

    .line 2332
    :goto_4
    if-eqz v2, :cond_19

    .line 2333
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Downgrading ring to ding because of ongoing ring/call"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2334
    const/4 v2, 0x1

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2338
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 9180
    :cond_16
    sget-object v2, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 8438
    if-eqz v2, :cond_17

    .line 8439
    const/4 v2, 0x1

    goto :goto_4

    .line 8442
    :cond_17
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_18

    .line 8444
    const/4 v2, 0x1

    goto :goto_4

    .line 8447
    :cond_18
    const/4 v2, 0x0

    goto :goto_4

    .line 10036
    :cond_19
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 9381
    const-class v10, Lekq;

    invoke-static {v2, v10}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekq;

    .line 9382
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v10

    invoke-virtual {v2, v10}, Lekq;->c(I)Z

    move-result v2

    .line 2341
    if-nez v2, :cond_1a

    .line 2342
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v3, "Downgrading ring to ding because of user does not want to be notified"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2343
    const/16 v2, 0x9

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Lbfd;Litg;I)V

    .line 2347
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2350
    :cond_1a
    const-string v2, "Babel_IncomingInviteSvc"

    const-string v4, "Got ring hangoutInviteNotification: InviterGaiaId: %s HangoutId: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v10, 0x1

    iget-object v3, v3, Lith;->a:Ljava/lang/String;

    aput-object v3, v5, v10

    invoke-static {v2, v4, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2358
    move-object/from16 v0, v18

    iget-object v2, v0, Litj;->h:Ljava/lang/Boolean;

    .line 11015
    const/4 v3, 0x0

    invoke-static {v2, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 2359
    if-eqz v2, :cond_1b

    .line 2360
    const/16 v24, 0x0

    .line 2362
    :goto_5
    const-string v2, "inviter_jid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v17, p0

    move-wide/from16 v18, v8

    move-object/from16 v20, v14

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v15

    .line 2364
    invoke-static/range {v17 .. v25}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->a(Leaw;JLcgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2361
    :cond_1b
    move-object/from16 v0, v18

    iget-object v0, v0, Litj;->d:Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_5
.end method
