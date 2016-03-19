.class public Ldjw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private final h:Leot;

.field private final i:Lhba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldjw;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "phone_verification"

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const-string v1, "account_name"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldjw;->b:Ljava/lang/String;

    .line 94
    const-string v1, "phone_number"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldjw;->c:Ljava/lang/String;

    .line 95
    const-string v1, "verification_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Ldjw;->d:J

    .line 96
    const-string v1, "verification_state"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldjw;->e:I

    .line 97
    const-string v1, "last_successful_number"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldjw;->f:Ljava/lang/String;

    .line 98
    const-class v0, Leot;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Ldjw;->h:Leot;

    .line 99
    const-class v0, Lhba;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Ldjw;->i:Lhba;

    .line 100
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 329
    sget-boolean v0, Ldjw;->a:Z

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Setting verification state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    iput p1, p0, Ldjw;->e:I

    .line 334
    iput-object p2, p0, Ldjw;->b:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Ldjw;->c:Ljava/lang/String;

    .line 336
    iput-boolean p4, p0, Ldjw;->g:Z

    .line 2305
    iget-object v0, p0, Ldjw;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    .line 2306
    packed-switch p1, :pswitch_data_0

    .line 3036
    :goto_0
    :pswitch_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 340
    const-string v1, "phone_verification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    const-string v1, "account_name"

    iget-object v2, p0, Ldjw;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    const-string v1, "phone_number"

    iget-object v2, p0, Ldjw;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    const-string v1, "verification_state"

    iget v2, p0, Ldjw;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 350
    iget v1, p0, Ldjw;->e:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldjw;->d:J

    .line 352
    const-string v1, "verification_time"

    iget-wide v2, p0, Ldjw;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 357
    :cond_1
    const/16 v1, 0x68

    if-ne p1, v1, :cond_2

    .line 358
    iget-object v1, p0, Ldjw;->c:Ljava/lang/String;

    iput-object v1, p0, Ldjw;->f:Ljava/lang/String;

    .line 359
    const-string v1, "last_successful_number"

    iget-object v2, p0, Ldjw;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    return-void

    .line 2308
    :pswitch_1
    const/16 v1, 0x7fa

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 2311
    :pswitch_2
    const/16 v1, 0x7fc

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 2315
    :pswitch_3
    const/16 v1, 0x63e

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 2319
    :pswitch_4
    const/16 v1, 0x7fd

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 2306
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(IZ)V
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    if-eqz p2, :cond_0

    .line 188
    :try_start_0
    iget-object v0, p0, Ldjw;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    const/16 v1, 0x800

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 191
    :cond_0
    iget-object v0, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v1, p0, Ldjw;->c:Ljava/lang/String;

    iget-boolean v2, p0, Ldjw;->g:Z

    invoke-direct {p0, p1, v0, v1, v2}, Ldjw;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 193
    const/16 v0, 0x69

    if-ne p1, v0, :cond_3

    .line 1217
    const-string v0, "Babel"

    const-string v1, "Sending verification failure notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1218
    if-eqz p2, :cond_2

    .line 1220
    const-string v0, "phone_verification_failure_no_retry"

    invoke-static {v0}, Ldjw;->c(Ljava/lang/String;)V

    .line 198
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1223
    :cond_2
    const-string v0, "phone_verification_failure_retry"

    invoke-static {v0}, Ldjw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :cond_3
    const/16 v0, 0x68

    if-ne p1, v0, :cond_1

    .line 1231
    :try_start_1
    const-string v0, "Babel"

    const-string v1, "Sending verifcation success notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1232
    const-string v0, "phone_verification_success"

    invoke-static {v0}, Ldjw;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 206
    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "phone_verification_outcome"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v2, "phone_verification_result"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v0, v1}, Lfi;->a(Landroid/content/Intent;)Z

    .line 210
    return-void
.end method

.method private e()Z
    .locals 6

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Ldjw;->e:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    monitor-exit p0

    .line 119
    :goto_0
    return v0

    .line 111
    :cond_0
    const/16 v0, 0x65

    iget-object v1, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v2, p0, Ldjw;->c:Ljava/lang/String;

    iget-boolean v3, p0, Ldjw;->g:Z

    invoke-direct {p0, v0, v1, v2, v3}, Ldjw;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 113
    sget-boolean v0, Ldjw;->a:Z

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "Retrying phone verification.  Account: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v2, p0, Ldjw;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

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

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    invoke-direct {p0}, Ldjw;->f()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Ldjw;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    invoke-static {v1}, Ldvd;->d(Lbfd;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    const-string v2, "Babel"

    const-string v3, "Account not ready. Skip phone verification"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const/16 v2, 0x69

    invoke-direct {p0, v2, v0}, Ldjw;->b(IZ)V

    .line 153
    const/16 v2, 0x7fe

    invoke-static {v1, v2}, Laal;->a(Lbfd;I)V

    .line 165
    :goto_0
    return v0

    .line 158
    :cond_1
    sget-boolean v0, Ldjw;->a:Z

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "Starting phone verification.  Account: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v3, p0, Ldjw;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Phone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_2
    iget-object v0, p0, Ldjw;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Lbfd;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfd;)Ldjx;
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldjw;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Ldjw;->c:Ljava/lang/String;

    sget v1, Lezp;->c:I

    .line 392
    invoke-static {v0, v1}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Ldjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ldjx;

    const/16 v2, 0x66

    invoke-direct {v0, v2, v1}, Ldjx;-><init>(ILjava/lang/String;)V

    .line 425
    :goto_0
    return-object v0

    .line 399
    :cond_0
    invoke-virtual {p1}, Lbfd;->s()Ljava/util/ArrayList;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 404
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_1
    sget v3, Lezp;->c:I

    .line 407
    invoke-static {v0, v3}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 409
    :cond_2
    new-instance v0, Ldjx;

    const/16 v2, 0x64

    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ldjx;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_3
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 416
    iget-object v0, p0, Ldjw;->f:Ljava/lang/String;

    .line 419
    :cond_4
    const/4 v1, 0x0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 421
    sget v1, Lezp;->c:I

    .line 422
    invoke-static {v0, v1}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_2
    new-instance v1, Ldjx;

    const/16 v2, 0x65

    invoke-direct {v1, v2, v0}, Ldjx;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Ldjw;->b(IZ)V

    .line 177
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 240
    monitor-enter p0

    .line 242
    :try_start_0
    sget-boolean v0, Ldjw;->a:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "Finishing phone verification.  Account: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v2, p0, Ldjw;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

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

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Verification Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_0
    iget-object v0, p0, Ldjw;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    invoke-static {v0}, Ldvd;->d(Lbfd;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    :cond_1
    const-string v1, "Babel"

    const-string v2, "Account not ready. Abort phone verification"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    const/16 v1, 0x7fe

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 254
    const/16 v0, 0x69

    iget-object v1, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v2, p0, Ldjw;->c:Ljava/lang/String;

    iget-boolean v3, p0, Ldjw;->g:Z

    invoke-direct {p0, v0, v1, v2, v3}, Ldjw;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 255
    monitor-exit p0

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_2
    const/16 v1, 0x67

    iget-object v2, p0, Ldjw;->b:Ljava/lang/String;

    iget-object v3, p0, Ldjw;->c:Ljava/lang/String;

    iget-boolean v4, p0, Ldjw;->g:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ldjw;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 259
    iget-object v1, p0, Ldjw;->c:Ljava/lang/String;

    iget-boolean v2, p0, Ldjw;->g:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Ldjw;->e:I

    const/16 v1, 0x65

    if-lt v0, v1, :cond_0

    iget v0, p0, Ldjw;->e:I

    const/16 v1, 0x67

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Ldjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldjw;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Ldjw;->e()Z

    move-result v0

    monitor-exit p0

    .line 142
    :goto_0
    return v0

    .line 140
    :cond_0
    const/16 v0, 0x65

    invoke-direct {p0, v0, p2, p1, p3}, Ldjw;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 142
    invoke-direct {p0}, Ldjw;->f()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget v0, p0, Ldjw;->e:I

    monitor-exit p0

    return v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Ldjw;->c:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public b(Lbfd;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-static {}, Lezm;->e()Z

    move-result v0

    .line 431
    iget-object v3, p0, Ldjw;->i:Lhba;

    .line 432
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v4

    invoke-interface {v3, v4}, Lhba;->a(I)Lhaw;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 435
    const/16 v0, 0x8f7

    .line 433
    :goto_0
    invoke-interface {v3, v0}, Lhaw;->a(I)Lhax;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 437
    invoke-interface {v0, v3}, Lhax;->a(Ljava/util/concurrent/TimeUnit;)V

    .line 440
    invoke-virtual {p1}, Lbfd;->C()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3107
    invoke-static {}, Ldvd;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 3108
    invoke-virtual {v0}, Lbfd;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 441
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Ldjw;->h:Leot;

    .line 442
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    invoke-interface {v0, v3}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 443
    invoke-virtual {p1}, Lbfd;->y()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    return v0

    .line 436
    :cond_1
    const/16 v0, 0x8f8

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3112
    goto :goto_1

    :cond_3
    move v0, v2

    .line 443
    goto :goto_2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ldjw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Ldjw;->f:Ljava/lang/String;

    return-object v0
.end method
