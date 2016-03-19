.class public final Libp;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lhqm;
.implements Lhtx;
.implements Liad;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:I

.field private am:Z

.field private an:Ljava/lang/Runnable;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:[Ljava/lang/String;

.field private at:Levf;

.field private b:Libw;

.field private c:Lhpz;

.field private d:Lhql;

.field private e:Liao;

.field private final f:Lhty;

.field private final g:Lhwj;

.field private h:Liaj;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "update_account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "prepare_accounts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "logout_during_login"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "logout"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "load_accounts_add"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "load_accounts_add_account_activity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "are_accounts_ready_for_login"

    aput-object v2, v0, v1

    sput-object v0, Libp;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Limg;-><init>()V

    .line 100
    new-instance v0, Lhty;

    iget-object v1, p0, Libp;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Lhty;-><init>(Lav;Liog;)V

    .line 101
    invoke-virtual {v0, p0}, Lhty;->a(Lhtx;)Lhty;

    move-result-object v0

    iput-object v0, p0, Libp;->f:Lhty;

    .line 102
    new-instance v0, Lhwj;

    iget-object v1, p0, Libp;->lifecycle:Linz;

    invoke-direct {v0, v1}, Lhwj;-><init>(Liog;)V

    iput-object v0, p0, Libp;->g:Lhwj;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Libp;->al:I

    return-void
.end method

.method static a(Liba;)Lhus;
    .locals 4

    .prologue
    .line 935
    new-instance v0, Lhus;

    iget-boolean v1, p0, Liba;->a:Z

    invoke-direct {v0, v1}, Lhus;-><init>(Z)V

    .line 936
    invoke-virtual {v0}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "has_recoverable_error"

    iget-boolean v3, p0, Liba;->b:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 938
    invoke-virtual {v0}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "has_irrecoverable_error"

    iget-boolean v3, p0, Liba;->c:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 940
    invoke-virtual {v0}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account_id"

    iget v3, p0, Liba;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    return-object v0
.end method

.method public static a(Lbg;)Libp;
    .locals 3

    .prologue
    .line 126
    const-string v0, "login.fragment"

    .line 127
    invoke-virtual {p0, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Libp;

    .line 128
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Libp;

    invoke-direct {v0}, Libp;-><init>()V

    .line 130
    invoke-virtual {p0}, Lbg;->a()Lbz;

    move-result-object v1

    .line 131
    const-string v2, "login.fragment"

    invoke-virtual {v1, v0, v2}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    .line 132
    invoke-virtual {v1}, Lbz;->b()I

    .line 133
    invoke-virtual {p0}, Lbg;->b()Z

    .line 135
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 773
    iget-object v0, p0, Libp;->h:Liaj;

    iget-object v0, v0, Liaj;->b:Ljava/lang/String;

    .line 774
    const-string v1, "com.google.android.libraries.social.login.LoginRequest.DEFAULT_ERROR_TOAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v0, p0, Libp;->aj:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Libp;->aj:Ljava/lang/String;

    .line 777
    :goto_0
    iget-object v1, p0, Libp;->context:Lill;

    sget v2, Laal;->us:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_0
    invoke-virtual {p0, v0, p1}, Libp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Libp;->h:Liaj;

    iget-object v0, v0, Liaj;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    sget-object v2, Libp;->a:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 154
    iget-object v5, p0, Libp;->f:Lhty;

    invoke-virtual {v5, v4}, Lhty;->b(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Libp;->x()V

    .line 157
    iput-boolean v1, p0, Libp;->ap:Z

    .line 158
    iput-boolean v1, p0, Libp;->aq:Z

    .line 159
    if-nez p1, :cond_1

    .line 1139
    invoke-virtual {p0}, Libp;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {p0}, Libp;->getFragmentManager()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 1141
    invoke-virtual {v0, p0}, Lbz;->a(Lav;)Lbz;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Lbz;->b()I

    .line 162
    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 382
    invoke-direct {p0, p1}, Libp;->b(I)V

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Libp;->c:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Not a valid account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Libp;->a(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Libp;->c:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 394
    const-string v1, "account_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "effective_gaia_id"

    .line 395
    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p0, v1, v0}, Libp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 636
    iget-object v0, p0, Libp;->binder:Lilh;

    const-class v2, Liax;

    invoke-virtual {v0, v2}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liax;

    .line 637
    invoke-interface {v0}, Liax;->a()I

    move-result v0

    .line 638
    if-eq v0, v1, :cond_0

    .line 643
    :cond_1
    if-eq v0, v1, :cond_2

    if-eq v0, p1, :cond_2

    .line 3657
    iput p1, p0, Libp;->al:I

    .line 3658
    new-instance v1, Libt;

    const-string v2, "logout_during_login"

    iget-object v3, p0, Libp;->b:Libw;

    invoke-direct {v1, v2, v0, v3}, Libt;-><init>(Ljava/lang/String;ILibw;)V

    .line 3660
    iget-object v0, p0, Libp;->f:Lhty;

    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 654
    :goto_0
    return-void

    .line 648
    :cond_2
    iget-object v0, p0, Libp;->h:Liaj;

    iget-boolean v0, v0, Liaj;->g:Z

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Libp;->c:Lhpz;

    iget-object v1, p0, Libp;->h:Liaj;

    iget-object v1, v1, Liaj;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lhpz;->a(Ljava/lang/String;I)V

    .line 652
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Libp;->a(Z)V

    .line 653
    iget-object v0, p0, Libp;->b:Libw;

    iget-object v1, p0, Libp;->h:Liaj;

    iget-object v2, p0, Libp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Libw;->a(Liaj;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Libp;->c:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->c(Ljava/lang/String;)I

    move-result v0

    .line 456
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 457
    const-string v0, "Viewer account id invalid"

    invoke-direct {p0, v0}, Libp;->a(Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Libp;->c:Lhpz;

    invoke-interface {v1, v0}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "account_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p0, v0, p2}, Libp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Libp;->am:Z

    .line 231
    iget-object v0, p0, Libp;->an:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Libq;

    invoke-direct {v0, p0}, Libq;-><init>(Libp;)V

    invoke-static {v0}, Ljua;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Libp;->an:Ljava/lang/Runnable;

    .line 239
    :cond_0
    iget-object v0, p0, Libp;->g:Lhwj;

    iget-object v1, p0, Libp;->an:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhwj;->a(Ljava/lang/Runnable;)Levf;

    move-result-object v0

    iput-object v0, p0, Libp;->at:Levf;

    .line 240
    return-void
.end method

.method private q()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-boolean v1, p0, Libp;->ao:Z

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-object v1, p0, Libp;->f:Lhty;

    const-string v2, "are_accounts_ready_for_login"

    invoke-virtual {v1, v2}, Lhty;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Libp;->h:Liaj;

    iget-boolean v1, v1, Liaj;->j:Z

    if-eqz v1, :cond_2

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Libp;->f:Lhty;

    new-instance v2, Libr;

    const-string v3, "are_accounts_ready_for_login"

    iget-object v4, p0, Libp;->b:Libw;

    invoke-direct {v2, v3, v4}, Libr;-><init>(Ljava/lang/String;Libw;)V

    invoke-virtual {v1, v2}, Lhty;->a(Lhtu;)V

    goto :goto_0
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0}, Libp;->x()V

    .line 1373
    iget-object v2, p0, Libp;->aj:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1374
    iget-object v2, p0, Libp;->aj:Ljava/lang/String;

    iget-object v3, p0, Libp;->ak:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Libp;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 337
    :goto_0
    if-eqz v2, :cond_2

    .line 370
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 1377
    goto :goto_0

    .line 341
    :cond_2
    iget-object v2, p0, Libp;->h:Liaj;

    iget v2, v2, Liaj;->c:I

    invoke-direct {p0, v2}, Libp;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1433
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->o:Ljava/lang/String;

    .line 1434
    iget-object v3, p0, Libp;->h:Liaj;

    iget-object v3, v3, Liaj;->p:Ljava/lang/String;

    .line 1435
    if-eqz v2, :cond_4

    .line 1436
    iget-object v4, p0, Libp;->c:Lhpz;

    invoke-interface {v4, v2, v3}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 1437
    invoke-virtual {p0, v2, v3}, Libp;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v0

    .line 345
    :goto_3
    if-nez v2, :cond_0

    .line 1447
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->q:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1448
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->q:Ljava/lang/String;

    iget-object v3, p0, Libp;->h:Liaj;

    iget-object v3, v3, Liaj;->p:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Libp;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 349
    :goto_4
    if-nez v2, :cond_0

    .line 2410
    iget-object v2, p0, Libp;->h:Liaj;

    iget-boolean v2, v2, Liaj;->h:Z

    if-eqz v2, :cond_8

    .line 2414
    iget-object v2, p0, Libp;->h:Liaj;

    iget v2, v2, Liaj;->k:I

    if-eq v2, v5, :cond_6

    .line 2415
    iget-object v2, p0, Libp;->h:Liaj;

    iget v2, v2, Liaj;->k:I

    invoke-direct {p0, v2}, Libp;->b(I)V

    move v2, v0

    .line 353
    :goto_5
    if-nez v2, :cond_0

    .line 2466
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->r:Lhzu;

    if-eqz v2, :cond_9

    .line 2467
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->r:Lhzu;

    invoke-interface {v2}, Lhzu;->a()I

    move-result v2

    .line 2468
    if-eq v2, v5, :cond_9

    .line 2469
    invoke-direct {p0, v2}, Libp;->b(I)V

    move v2, v0

    .line 357
    :goto_6
    if-nez v2, :cond_0

    .line 3399
    iget-object v2, p0, Libp;->h:Liaj;

    iget-boolean v2, v2, Liaj;->f:Z

    if-eqz v2, :cond_a

    .line 3400
    iget-object v2, p0, Libp;->c:Lhpz;

    iget-object v3, p0, Libp;->h:Liaj;

    iget-object v3, v3, Liaj;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Lhpz;->d(Ljava/lang/String;)I

    move-result v2

    .line 3402
    iget-object v3, p0, Libp;->b:Libw;

    iget-object v4, p0, Libp;->h:Liaj;

    invoke-virtual {v3, v4, v2}, Libw;->a(Liaj;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3403
    invoke-direct {p0, v2}, Libp;->a(I)Z

    move-result v2

    .line 361
    :goto_7
    if-nez v2, :cond_0

    .line 3477
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->s:Ljava/lang/Class;

    if-eqz v2, :cond_b

    .line 3478
    iput-boolean v0, p0, Libp;->ar:Z

    .line 3479
    invoke-direct {p0}, Libp;->s()V

    .line 365
    :goto_8
    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Libp;->c()V

    goto/16 :goto_1

    .line 1439
    :cond_3
    const-string v2, "Account not found"

    invoke-direct {p0, v2}, Libp;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v2, v1

    .line 1443
    goto :goto_3

    :cond_5
    move v2, v1

    .line 1451
    goto :goto_4

    .line 2419
    :cond_6
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->l:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2420
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->l:Ljava/lang/String;

    iget-object v3, p0, Libp;->h:Liaj;

    iget-object v3, v3, Liaj;->m:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Libp;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 2421
    goto :goto_5

    .line 2424
    :cond_7
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->n:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2425
    iget-object v2, p0, Libp;->h:Liaj;

    iget-object v2, v2, Liaj;->n:Ljava/lang/String;

    iget-object v3, p0, Libp;->h:Liaj;

    iget-object v3, v3, Liaj;->m:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Libp;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 2426
    goto :goto_5

    :cond_8
    move v2, v1

    .line 2429
    goto :goto_5

    :cond_9
    move v2, v1

    .line 2473
    goto :goto_6

    :cond_a
    move v2, v1

    .line 3406
    goto :goto_7

    :cond_b
    move v0, v1

    .line 3482
    goto :goto_8
.end method

.method private s()V
    .locals 4

    .prologue
    .line 486
    iget-boolean v0, p0, Libp;->ar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Libp;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Libp;->x()V

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Libp;->ar:Z

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Libp;->aq:Z

    .line 491
    iget-object v0, p0, Libp;->binder:Lilh;

    iget-object v1, p0, Libp;->h:Liaj;

    iget-object v1, v1, Liaj;->s:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzw;

    .line 3498
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3499
    invoke-virtual {p0}, Libp;->getChildFragmentManager()Lbg;

    move-result-object v3

    .line 3500
    invoke-virtual {v3, v2}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v1

    .line 3501
    if-nez v1, :cond_1

    .line 3502
    iget-object v1, p0, Libp;->h:Liaj;

    iget-object v1, v1, Liaj;->t:Landroid/os/Bundle;

    .line 3503
    invoke-interface {v0, v1}, Lhzw;->a(Landroid/os/Bundle;)Lav;

    move-result-object v0

    .line 3504
    invoke-virtual {v0, v1}, Lav;->setArguments(Landroid/os/Bundle;)V

    .line 3505
    invoke-virtual {v3}, Lbg;->a()Lbz;

    move-result-object v1

    .line 3506
    invoke-virtual {v1, v0, v2}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    move-result-object v1

    .line 3507
    invoke-virtual {v1}, Lbz;->b()I

    .line 3508
    invoke-virtual {v3}, Lbg;->b()Z

    .line 3511
    :goto_0
    check-cast v0, Lhzx;

    .line 493
    iget-object v1, p0, Libp;->h:Liaj;

    invoke-interface {v0, v1}, Lhzx;->a(Liaj;)V

    .line 495
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Libp;->al:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 665
    iget v0, p0, Libp;->al:I

    invoke-direct {p0, v0}, Libp;->c(I)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Libp;->c()V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Libp;->a(Z)V

    .line 678
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Libp;->e:Liao;

    invoke-virtual {p0}, Libp;->getChildFragmentManager()Lbg;

    move-result-object v1

    invoke-interface {v0, v1}, Liao;->b(Lbg;)V

    .line 785
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 794
    invoke-virtual {p0}, Libp;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Libp;->ao:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Libp;->ap:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Libp;->aq:Z

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Libp;->h:Liaj;

    iget-object v0, v0, Liaj;->a:Ljava/lang/String;

    .line 6928
    if-eqz v0, :cond_2

    .line 7789
    :goto_0
    iget-object v1, p0, Libp;->e:Liao;

    .line 7790
    invoke-virtual {p0}, Libp;->getChildFragmentManager()Lbg;

    move-result-object v2

    iget-object v3, p0, Libp;->h:Liaj;

    iget-boolean v3, v3, Liaj;->i:Z

    invoke-interface {v1, v2, v0, v3}, Liao;->a(Lbg;Ljava/lang/String;Z)V

    .line 797
    :cond_1
    return-void

    .line 6930
    :cond_2
    iget-object v0, p0, Libp;->context:Lill;

    sget v1, Laal;->uu:I

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Libp;->e:Liao;

    invoke-virtual {p0}, Libp;->getChildFragmentManager()Lbg;

    move-result-object v1

    invoke-interface {v0, v1}, Liao;->a(Lbg;)V

    .line 802
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Libp;->f:Lhty;

    new-instance v1, Libs;

    const-string v2, "load_accounts_add_account_activity"

    iget-object v3, p0, Libp;->d:Lhql;

    invoke-direct {v1, v2, v3}, Libs;-><init>(Ljava/lang/String;Lhql;)V

    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 725
    return-void
.end method

.method public a(Liaj;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 214
    iget-boolean v0, p0, Libp;->ap:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v3}, Libp;->a(Z)V

    .line 216
    iget-object v0, p0, Libp;->b:Libw;

    iget-object v1, p0, Libp;->h:Liaj;

    iget-object v2, p0, Libp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Libw;->a(Liaj;Ljava/lang/String;)V

    .line 219
    :cond_0
    iput-boolean v3, p0, Libp;->ap:Z

    .line 220
    iput-object p1, p0, Libp;->h:Liaj;

    .line 221
    iput-object p2, p0, Libp;->i:Ljava/lang/String;

    .line 222
    iput-object v4, p0, Libp;->aj:Ljava/lang/String;

    .line 223
    iput-object v4, p0, Libp;->ak:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Libp;->al:I

    .line 226
    invoke-direct {p0}, Libp;->f()V

    .line 227
    return-void
.end method

.method public a(Ljava/lang/String;Lhus;Lhuo;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 683
    invoke-virtual {p3, v0}, Lhuo;->a(Z)V

    .line 685
    const-string v1, "update_account"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4574
    if-nez p2, :cond_1

    .line 4575
    invoke-direct {p0}, Libp;->v()V

    .line 6310
    :cond_0
    :goto_0
    return-void

    .line 4579
    :cond_1
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4580
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "has_irrecoverable_error"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4581
    iget-object v0, p0, Libp;->b:Libw;

    invoke-virtual {v0, v1}, Libw;->g(I)Landroid/content/Intent;

    move-result-object v0

    .line 4582
    if-eqz v0, :cond_2

    .line 4583
    invoke-virtual {p0, v0, v3}, Libp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4586
    :cond_2
    iget-object v0, p0, Libp;->e:Liao;

    invoke-virtual {p0}, Libp;->getChildFragmentManager()Lbg;

    move-result-object v1

    invoke-interface {v0, v1}, Liao;->c(Lbg;)V

    goto :goto_0

    .line 4589
    :cond_3
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "has_recoverable_error"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4590
    invoke-direct {p0}, Libp;->v()V

    goto :goto_0

    .line 4594
    :cond_4
    iget-object v0, p0, Libp;->b:Libw;

    iget-object v2, p0, Libp;->h:Liaj;

    .line 4595
    invoke-virtual {v0, v2, v1}, Libw;->a(Liaj;I)Z

    move-result v0

    .line 4597
    if-nez v0, :cond_7

    .line 4598
    iget-object v0, p0, Libp;->c:Lhpz;

    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4599
    iget-object v0, p0, Libp;->b:Libw;

    iget-object v2, p0, Libp;->h:Liaj;

    .line 4600
    invoke-virtual {v0, v2, v1}, Libw;->b(Liaj;I)Lial;

    move-result-object v2

    .line 4601
    if-eqz v2, :cond_6

    .line 4619
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4620
    invoke-virtual {p0}, Libp;->getChildFragmentManager()Lbg;

    move-result-object v4

    .line 4621
    invoke-virtual {v4, v3}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    .line 4622
    if-nez v0, :cond_5

    .line 4623
    invoke-interface {v2}, Lial;->a()Lav;

    move-result-object v0

    .line 4625
    invoke-virtual {v4}, Lbg;->a()Lbz;

    move-result-object v2

    .line 4626
    invoke-virtual {v2, v0, v3}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    move-result-object v2

    .line 4627
    invoke-virtual {v2}, Lbz;->b()I

    .line 4628
    invoke-virtual {v4}, Lbg;->b()Z

    .line 4631
    :cond_5
    check-cast v0, Liam;

    .line 4603
    if-eqz v0, :cond_6

    .line 4604
    invoke-interface {v0, v1}, Liam;->a(I)V

    goto/16 :goto_0

    .line 4610
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Login request not satisfied for account: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Libp;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4614
    :cond_7
    invoke-direct {p0, v1}, Libp;->c(I)V

    goto/16 :goto_0

    .line 687
    :cond_8
    const-string v1, "prepare_accounts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5330
    iput-boolean v0, p0, Libp;->ao:Z

    .line 6312
    :cond_9
    invoke-direct {p0}, Libp;->r()V

    goto/16 :goto_0

    .line 689
    :cond_a
    const-string v1, "logout_during_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 690
    invoke-direct {p0}, Libp;->t()V

    goto/16 :goto_0

    .line 691
    :cond_b
    const-string v1, "logout"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 692
    invoke-direct {p0}, Libp;->u()V

    goto/16 :goto_0

    .line 693
    :cond_c
    const-string v1, "load_accounts_add"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5703
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lhus;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5704
    :cond_d
    if-nez p2, :cond_e

    .line 5705
    :goto_1
    iget-object v1, p0, Libp;->context:Lill;

    sget v2, Laal;->ut:I

    .line 5706
    invoke-virtual {v1, v2}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Load accounts for add account task failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5705
    invoke-virtual {p0, v1, v0}, Libp;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5704
    :cond_e
    invoke-virtual {p2}, Lhus;->a()I

    move-result v0

    goto :goto_1

    .line 5710
    :cond_f
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_name_array"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Libp;->as:[Ljava/lang/String;

    .line 5711
    iget-object v0, p0, Libp;->d:Lhql;

    invoke-interface {v0, p0}, Lhql;->a(Lav;)V

    goto/16 :goto_0

    .line 695
    :cond_10
    const-string v1, "load_accounts_add_account_activity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5728
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lhus;->f()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5729
    :cond_11
    if-nez p2, :cond_12

    .line 5730
    :goto_2
    iget-object v1, p0, Libp;->context:Lill;

    sget v2, Laal;->ut:I

    .line 5731
    invoke-virtual {v1, v2}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Load accounts for add account activity failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5730
    invoke-virtual {p0, v1, v0}, Libp;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5729
    :cond_12
    invoke-virtual {p2}, Lhus;->a()I

    move-result v0

    goto :goto_2

    .line 5736
    :cond_13
    new-instance v0, Ljava/util/HashSet;

    .line 5737
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account_name_array"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5738
    iget-object v1, p0, Libp;->as:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5739
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 5740
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Libp;->aj:Ljava/lang/String;

    .line 5741
    invoke-direct {p0}, Libp;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5742
    iget-object v0, p0, Libp;->aj:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Libp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5745
    :cond_14
    invoke-virtual {p0}, Libp;->c()V

    goto/16 :goto_0

    .line 697
    :cond_15
    const-string v0, "are_accounts_ready_for_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6299
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lhus;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6300
    :cond_16
    iget-object v0, p0, Libp;->context:Lill;

    sget v1, Laal;->ut:I

    .line 6301
    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task result has error"

    .line 6300
    invoke-virtual {p0, v0, v1}, Libp;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6307
    :cond_17
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "are_accounts_ready_for_login"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6308
    if-nez v0, :cond_9

    .line 6317
    iget-boolean v0, p0, Libp;->ao:Z

    if-nez v0, :cond_0

    .line 6322
    iput-boolean v3, p0, Libp;->ao:Z

    .line 6323
    invoke-direct {p0}, Libp;->w()V

    .line 6324
    new-instance v0, Libu;

    const-string v1, "prepare_accounts"

    iget-object v2, p0, Libp;->b:Libw;

    invoke-direct {v0, v1, v2}, Libu;-><init>(Ljava/lang/String;Libw;)V

    .line 6326
    iget-object v1, p0, Libp;->f:Lhty;

    invoke-virtual {v1, v0}, Lhty;->a(Lhtu;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 516
    iput-object p1, p0, Libp;->aj:Ljava/lang/String;

    .line 517
    iput-object p2, p0, Libp;->ak:Ljava/lang/String;

    .line 3538
    iget-object v0, p0, Libp;->c:Lhpz;

    invoke-interface {v0, p1, p2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3539
    iget-object v1, p0, Libp;->c:Lhpz;

    invoke-interface {v1, v0}, Lhpz;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3540
    iget-object v1, p0, Libp;->b:Libw;

    iget-object v2, p0, Libp;->h:Liaj;

    invoke-virtual {v1, v2, v0}, Libw;->a(Liaj;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3541
    invoke-direct {p0, v0}, Libp;->c(I)V

    .line 3542
    const/4 v0, 0x1

    .line 519
    :goto_0
    if-eqz v0, :cond_1

    .line 530
    :goto_1
    return-void

    .line 3545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Libp;->h:Liaj;

    iget-boolean v0, v0, Liaj;->j:Z

    if-eqz v0, :cond_2

    .line 525
    const-string v0, "RPCs disallowed"

    invoke-direct {p0, v0}, Libp;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 3549
    :cond_2
    invoke-direct {p0}, Libp;->w()V

    .line 3551
    new-instance v0, Libv;

    const-string v1, "update_account"

    iget-object v2, p0, Libp;->aj:Ljava/lang/String;

    iget-object v3, p0, Libp;->ak:Ljava/lang/String;

    iget-object v4, p0, Libp;->b:Libw;

    iget-object v5, p0, Libp;->h:Liaj;

    invoke-direct/range {v0 .. v5}, Libv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Libw;Liaj;)V

    .line 3559
    iget-object v1, p0, Libp;->f:Lhty;

    invoke-virtual {v1, v0}, Lhty;->a(Lhtu;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 716
    iget-object v0, p0, Libp;->f:Lhty;

    new-instance v1, Libs;

    const-string v2, "load_accounts_add"

    iget-object v3, p0, Libp;->d:Lhql;

    invoke-direct {v1, v2, v3}, Libs;-><init>(Ljava/lang/String;Lhql;)V

    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 718
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 759
    const-string v1, "LoginHelperFragment"

    const-string v2, "Login failed: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    sget-object v0, Libo;->a:Limx;

    .line 766
    if-eqz p1, :cond_0

    .line 767
    iget-object v0, p0, Libp;->context:Lill;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 769
    :cond_0
    invoke-virtual {p0}, Libp;->c()V

    .line 770
    return-void

    .line 759
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 751
    iget-boolean v0, p0, Libp;->ap:Z

    if-eqz v0, :cond_0

    .line 752
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Libp;->a(Z)V

    .line 753
    iget-object v0, p0, Libp;->b:Libw;

    iget-object v1, p0, Libp;->h:Liaj;

    iget-object v2, p0, Libp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Libw;->a(Liaj;Ljava/lang/String;)V

    .line 755
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 806
    invoke-virtual {p0}, Libp;->e()V

    .line 807
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Libp;->am:Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Libp;->an:Ljava/lang/Runnable;

    .line 268
    invoke-direct {p0}, Libp;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Libp;->r()V

    .line 271
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 565
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 566
    invoke-direct {p0}, Libp;->f()V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0}, Libp;->c()V

    goto :goto_0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Libp;->binder:Lilh;

    const-class v1, Liaf;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libw;

    iput-object v0, p0, Libp;->b:Libw;

    .line 168
    iget-object v0, p0, Libp;->binder:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Libp;->c:Lhpz;

    .line 169
    iget-object v0, p0, Libp;->binder:Lilh;

    const-class v1, Lhql;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhql;

    iput-object v0, p0, Libp;->d:Lhql;

    .line 170
    iget-object v0, p0, Libp;->binder:Lilh;

    const-class v1, Liao;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liao;

    iput-object v0, p0, Libp;->e:Liao;

    .line 172
    iget-object v0, p0, Libp;->binder:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 179
    if-eqz p1, :cond_1

    .line 180
    const-string v0, "logging_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Libp;->ap:Z

    .line 181
    const-string v0, "login_pending"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Libp;->am:Z

    .line 182
    iget-boolean v0, p0, Libp;->am:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Libp;->f()V

    .line 185
    :cond_0
    const-string v0, "interactive_login_pending"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Libp;->ar:Z

    .line 186
    const-string v0, "logging_in_interactively"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Libp;->aq:Z

    .line 187
    const-string v0, "preparing_accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Libp;->ao:Z

    .line 188
    const-string v0, "account_names_snapshot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Libp;->as:[Ljava/lang/String;

    .line 189
    const-string v0, "login_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Liaj;

    iput-object v0, p0, Libp;->h:Liaj;

    .line 190
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Libp;->i:Ljava/lang/String;

    .line 191
    const-string v0, "selected_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Libp;->aj:Ljava/lang/String;

    .line 192
    const-string v0, "selected_effective_gaia_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Libp;->ak:Ljava/lang/String;

    .line 193
    const-string v0, "account_id_to_login"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Libp;->al:I

    .line 195
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Limg;->onResume()V

    .line 245
    invoke-direct {p0}, Libp;->w()V

    .line 246
    invoke-direct {p0}, Libp;->s()V

    .line 247
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0, p1}, Limg;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string v0, "logging_in"

    iget-boolean v1, p0, Libp;->ap:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string v0, "login_pending"

    iget-boolean v1, p0, Libp;->am:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const-string v0, "preparing_accounts"

    iget-boolean v1, p0, Libp;->ao:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v0, "login_request"

    iget-object v1, p0, Libp;->h:Liaj;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 204
    const-string v0, "tag"

    iget-object v1, p0, Libp;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "selected_account_name"

    iget-object v1, p0, Libp;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "selected_effective_gaia_id"

    iget-object v1, p0, Libp;->ak:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "account_id_to_login"

    iget v1, p0, Libp;->al:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v0, "account_names_snapshot"

    iget-object v1, p0, Libp;->as:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    const-string v0, "interactive_login_pending"

    iget-boolean v1, p0, Libp;->ar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v0, "logging_in_interactively"

    iget-boolean v1, p0, Libp;->aq:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Limg;->onStart()V

    .line 252
    iget-boolean v0, p0, Libp;->am:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Libp;->at:Levf;

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Libp;->f()V

    .line 255
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Limg;->onStop()V

    .line 260
    iget-object v0, p0, Libp;->g:Lhwj;

    iget-object v1, p0, Libp;->at:Levf;

    invoke-virtual {v0, v1}, Lhwj;->a(Levf;)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Libp;->at:Levf;

    .line 262
    return-void
.end method
