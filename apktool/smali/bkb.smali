.class public final Lbkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjp;
.implements Lioo;
.implements Lioq;
.implements Liow;
.implements Lioz;
.implements Lipa;


# instance fields
.field final a:Lav;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Lilh;

.field final e:Laxq;

.field final f:Lbkw;

.field g:Lhpu;

.field h:Lbdy;

.field final i:Lbjv;

.field private j:Z

.field private k:Lhty;

.field private l:Lbfw;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private final p:Lbjs;

.field private final q:Lbjm;

.field private final r:Lbju;

.field private s:Lbjt;

.field private final t:Lbjo;

.field private final u:Lhtx;


# direct methods
.method constructor <init>(Landroid/content/Context;Liog;ILav;Laxq;Lbkw;)V
    .locals 4

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lbkc;

    invoke-direct {v0, p0}, Lbkc;-><init>(Lbkb;)V

    iput-object v0, p0, Lbkb;->s:Lbjt;

    .line 111
    new-instance v0, Lbkd;

    invoke-direct {v0, p0}, Lbkd;-><init>(Lbkb;)V

    iput-object v0, p0, Lbkb;->t:Lbjo;

    .line 178
    new-instance v0, Lbke;

    invoke-direct {v0, p0}, Lbke;-><init>(Lbkb;)V

    iput-object v0, p0, Lbkb;->i:Lbjv;

    .line 211
    new-instance v0, Lbkf;

    invoke-direct {v0, p0}, Lbkf;-><init>(Lbkb;)V

    iput-object v0, p0, Lbkb;->u:Lhtx;

    .line 240
    const-string v0, "Can\'t create ConversationCreator with null participants model."

    invoke-static {p5, v0}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "Babel_ConvCreator"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Conversation creator created with conversation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iput-object p4, p0, Lbkb;->a:Lav;

    .line 246
    new-instance v0, Lill;

    invoke-direct {v0, p1}, Lill;-><init>(Landroid/content/Context;)V

    .line 247
    iput-object v0, p0, Lbkb;->b:Landroid/content/Context;

    .line 248
    iput p3, p0, Lbkb;->c:I

    .line 249
    iput-object p5, p0, Lbkb;->e:Laxq;

    .line 250
    iput-object p6, p0, Lbkb;->f:Lbkw;

    .line 252
    invoke-virtual {v0}, Lill;->getBinder()Lilh;

    move-result-object v0

    iput-object v0, p0, Lbkb;->d:Lilh;

    .line 253
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjt;

    iget-object v2, p0, Lbkb;->s:Lbjt;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 254
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjo;

    iget-object v2, p0, Lbkb;->t:Lbjo;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 255
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjv;

    iget-object v2, p0, Lbkb;->i:Lbjv;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 257
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lhty;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhty;

    iput-object v0, p0, Lbkb;->k:Lhty;

    .line 258
    iget-object v0, p0, Lbkb;->k:Lhty;

    iget-object v1, p0, Lbkb;->u:Lhtx;

    invoke-virtual {v0, v1}, Lhty;->a(Lhtx;)Lhty;

    .line 260
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lbkb;->g:Lhpu;

    .line 261
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 267
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjr;

    .line 268
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p3}, Lbjr;->a(Landroid/content/Context;Liog;I)Lbjs;

    move-result-object v0

    iput-object v0, p0, Lbkb;->p:Lbjs;

    .line 270
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjr;

    .line 271
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    .line 272
    invoke-virtual {p4}, Lav;->getFragmentManager()Lbg;

    move-result-object v2

    .line 271
    invoke-interface {v0, v1, p2, p3, v2}, Lbjr;->a(Landroid/content/Context;Liog;ILbg;)Lbjm;

    move-result-object v0

    iput-object v0, p0, Lbkb;->q:Lbjm;

    .line 273
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjr;

    .line 274
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    .line 275
    invoke-virtual {p4}, Lav;->getFragmentManager()Lbg;

    move-result-object v2

    .line 274
    invoke-interface {v0, v1, p2, v2}, Lbjr;->a(Landroid/content/Context;Liog;Lbg;)Lbju;

    move-result-object v0

    iput-object v0, p0, Lbkb;->r:Lbju;

    .line 276
    return-void
.end method

.method static a(Lbdy;Lbjn;)Laxt;
    .locals 3

    .prologue
    .line 550
    iget-object v0, p1, Lbjn;->b:Lbee;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p1, Lbjn;->b:Lbee;

    invoke-virtual {v0}, Lbee;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldtw;->a(Ljava/lang/String;)Ldtw;

    move-result-object v0

    .line 553
    :goto_0
    invoke-virtual {p0}, Lbdy;->e()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-virtual {p0}, Lbdy;->f()Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-static {v0, v1, v2}, Laxt;->a(Ldtw;Ljava/lang/String;Ljava/lang/String;)Laxt;

    move-result-object v1

    .line 556
    invoke-virtual {p0}, Lbdy;->d()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p0}, Lbdy;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdw;

    .line 558
    invoke-virtual {v0}, Lbdw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laxt;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 552
    :cond_0
    iget-object v0, p1, Lbjn;->a:Lbdx;

    invoke-virtual {v0}, Lbdx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbdy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldtw;->a(Ljava/lang/String;Ljava/lang/String;)Ldtw;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lbdy;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lbdy;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbee;

    .line 563
    invoke-virtual {v0}, Lbee;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laxt;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 566
    :cond_2
    iget-object v0, p0, Lbdy;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Laxt;->a(Ljava/lang/String;)V

    .line 568
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbkb;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 460
    iget-object v0, p0, Lbkb;->b:Landroid/content/Context;

    const-class v2, Ldty;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldty;

    .line 461
    iget-object v2, p0, Lbkb;->g:Lhpu;

    invoke-interface {v2}, Lhpu;->a()I

    move-result v2

    .line 464
    iget-object v5, p0, Lbkb;->f:Lbkw;

    sget-object v7, Lbkw;->c:Lbkw;

    if-ne v5, v7, :cond_7

    .line 1531
    iget-object v5, p0, Lbkb;->e:Laxq;

    invoke-virtual {v5}, Laxq;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laxt;

    .line 1532
    invoke-virtual {v5}, Laxt;->b()Ldtw;

    move-result-object v5

    iget-object v5, v5, Ldtw;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 464
    :goto_0
    if-eqz v5, :cond_7

    .line 466
    iget-object v5, p0, Lbkb;->b:Landroid/content/Context;

    invoke-interface {v0, v5}, Ldty;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v5, Leot;

    .line 467
    invoke-virtual {v0, v5}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0, v2}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2498
    const-string v2, "Audio calling to multiple phone numbers is not supported"

    iget-object v0, p0, Lbkb;->e:Laxq;

    .line 2499
    invoke-virtual {v0}, Laxq;->e()I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    .line 2498
    :goto_1
    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 2500
    const-string v0, "Babel_ConvCreator"

    const-string v2, "Making outbound audio call"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2502
    iget-object v0, p0, Lbkb;->g:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v9

    .line 2503
    iget-object v0, p0, Lbkb;->e:Laxq;

    invoke-virtual {v0}, Laxq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Laxt;

    .line 2505
    new-instance v0, Ldvv;

    .line 2506
    invoke-virtual {v6}, Laxt;->b()Ldtw;

    move-result-object v2

    iget-object v2, v2, Ldtw;->d:Ljava/lang/String;

    .line 2507
    invoke-virtual {v6}, Laxt;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Laxt;->g()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x78

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Ldvv;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2510
    iget-object v1, p0, Lbkb;->a:Lav;

    invoke-virtual {v1}, Lav;->getActivity()Lba;

    move-result-object v1

    .line 2511
    invoke-virtual {v9}, Lbfd;->g()I

    move-result v2

    invoke-virtual {v9}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    .line 2510
    invoke-static {v1, v0, v2, v4}, Laal;->a(Lba;Ldvv;ILjava/lang/String;)V

    .line 475
    :cond_1
    :goto_2
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjq;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjq;

    invoke-interface {v0, v3}, Lbjq;->a(Ljava/lang/String;)V

    .line 495
    :goto_3
    return-void

    :cond_2
    move v5, v4

    .line 1536
    goto :goto_0

    :cond_3
    move v0, v4

    .line 2499
    goto :goto_1

    .line 469
    :cond_4
    invoke-static {}, Lezm;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2515
    const-string v0, "Audio calling to multiple phone numbers is not supported"

    iget-object v1, p0, Lbkb;->e:Laxq;

    .line 2516
    invoke-virtual {v1}, Laxq;->e()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 2515
    :goto_4
    invoke-static {v0, v6}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 2518
    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    iget-object v2, p0, Lbkb;->b:Landroid/content/Context;

    iget-object v0, p0, Lbkb;->e:Laxq;

    .line 2519
    invoke-virtual {v0}, Laxq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxt;

    invoke-virtual {v0}, Laxt;->b()Ldtw;

    move-result-object v0

    iget-object v0, v0, Ldtw;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2518
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    move v6, v4

    .line 2516
    goto :goto_4

    .line 2523
    :cond_6
    iget-object v0, p0, Lbkb;->b:Landroid/content/Context;

    const-class v1, Lbbx;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbx;

    .line 2524
    if-eqz v0, :cond_1

    .line 2525
    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lbbx;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2526
    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 477
    :cond_7
    const-string v0, "Babel_ConvCreator"

    const-string v3, "Conversation creation background task started"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lbkb;->f:Lbkw;

    sget-object v3, Lbkw;->b:Lbkw;

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lbkb;->e:Laxq;

    .line 479
    invoke-virtual {v0}, Laxq;->e()I

    move-result v0

    if-le v0, v6, :cond_8

    if-ne p1, v1, :cond_8

    .line 482
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lhba;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 483
    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xa97

    .line 484
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Lhax;->d()V

    .line 488
    :cond_8
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjr;

    .line 489
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    const-string v1, "conversation_creation"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lbkb;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lbkb;->e:Laxq;

    .line 490
    invoke-virtual {v3}, Laxq;->a()Lihb;

    move-result-object v3

    iget-object v4, p0, Lbkb;->l:Lbfw;

    iget-object v5, p0, Lbkb;->f:Lbkw;

    iget-boolean v7, p0, Lbkb;->m:Z

    iget-object v8, p0, Lbkb;->n:Ljava/lang/String;

    iget v9, p0, Lbkb;->o:I

    move v6, p1

    .line 489
    invoke-interface/range {v0 .. v9}, Lbjr;->a(Ljava/lang/String;ILihb;Lbfw;Lbkw;IZLjava/lang/String;I)Lhtu;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lbkb;->k:Lhty;

    invoke-virtual {v1, v0}, Lhty;->b(Lhtu;)V

    goto/16 :goto_3
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    if-eqz p1, :cond_0

    .line 281
    const-string v0, "Babel_ConvCreator"

    const-string v1, "Conversation creator restored from saved state"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const-string v0, "creation_completed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 287
    if-nez v0, :cond_1

    .line 288
    const-string v0, "current_contact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbdy;

    iput-object v0, p0, Lbkb;->h:Lbdy;

    .line 289
    const-string v0, "lookup_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbfw;

    iput-object v0, p0, Lbkb;->l:Lbfw;

    .line 290
    const-string v0, "force_group_conversation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbkb;->m:Z

    .line 291
    const-string v0, "invite_token_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbkb;->n:Ljava/lang/String;

    .line 292
    const-string v0, "impression_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbkb;->o:I

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v0, "Babel_ConvCreator"

    const-string v1, "Not restoring instance state since the last creation was completed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lbdy;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-boolean v0, p0, Lbkb;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Should not add new contact after conversation has been created."

    invoke-static {v0, v2}, Lfii;->b(ZLjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lbkb;->h:Lbdy;

    if-eqz v0, :cond_1

    .line 330
    const-string v0, "Babel_ConvCreator"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x41

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "addContact for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " skipped because previous addition hasn\'t finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v2, Lbjq;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjq;

    invoke-interface {v0, v1}, Lbjq;->a(Z)V

    .line 340
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 323
    goto :goto_0

    .line 336
    :cond_1
    const-string v2, "Babel_ConvCreator"

    const-string v3, "addContact called with "

    invoke-virtual {p1}, Lbdy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iput-object p1, p0, Lbkb;->h:Lbdy;

    .line 339
    iget-object v0, p0, Lbkb;->p:Lbjs;

    iget-object v1, p0, Lbkb;->f:Lbkw;

    invoke-interface {v0, p1, v1}, Lbjs;->a(Lbdy;Lbkw;)V

    goto :goto_1

    .line 336
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lbfw;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    iget-boolean v0, p0, Lbkb;->j:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Can\'t create conversation more than once."

    invoke-static {v0, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lbkb;->h:Lbdy;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Contact adding should be finished before creating conversation"

    invoke-static {v0, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 368
    const-string v0, "Babel_ConvCreator"

    const-string v3, "create called without known conversationId"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iput-object p1, p0, Lbkb;->l:Lbfw;

    .line 371
    iput-boolean v2, p0, Lbkb;->m:Z

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lbkb;->n:Ljava/lang/String;

    .line 373
    iput p2, p0, Lbkb;->o:I

    .line 387
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v2, Leot;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 388
    iget-object v2, p0, Lbkb;->f:Lbkw;

    sget-object v3, Lbkw;->b:Lbkw;

    if-ne v2, v3, :cond_2

    .line 389
    invoke-static {}, Lezm;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-interface {v0}, Leot;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-interface {v0}, Leot;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbkb;->e:Laxq;

    .line 392
    invoke-virtual {v0}, Laxq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 393
    new-instance v0, Lbkg;

    invoke-direct {v0, p0}, Lbkg;-><init>(Lbkb;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 404
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 364
    goto :goto_0

    :cond_1
    move v0, v2

    .line 365
    goto :goto_1

    .line 402
    :cond_2
    iget-object v0, p0, Lbkb;->r:Lbju;

    iget-object v1, p0, Lbkb;->f:Lbkw;

    iget-object v2, p0, Lbkb;->e:Laxq;

    invoke-virtual {v2}, Laxq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbju;->a(Lbkw;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Create called with empty conversation ID"

    .line 408
    invoke-static {v0, v3}, Lfii;->a(ZLjava/lang/Object;)V

    .line 410
    iget-boolean v0, p0, Lbkb;->j:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Can\'t create conversation more than once"

    invoke-static {v0, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lbkb;->h:Lbdy;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Contact adding should be finished before creating conversation"

    invoke-static {v0, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 414
    const-string v3, "Babel_ConvCreator"

    const-string v4, "create called with existing conversationId "

    .line 415
    invoke-static {p1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 414
    invoke-static {v3, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v2, Lhba;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v2, p0, Lbkb;->g:Lhpu;

    .line 418
    invoke-interface {v2}, Lhpu;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 419
    invoke-interface {v0, p2}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Lhax;->d()V

    .line 422
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v2, Lbjq;

    .line 423
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjq;

    .line 424
    invoke-interface {v0, p1}, Lbjq;->a(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, v1}, Lbkb;->b(Z)V

    .line 426
    return-void

    :cond_0
    move v0, v2

    .line 409
    goto :goto_0

    :cond_1
    move v0, v2

    .line 410
    goto :goto_1

    :cond_2
    move v0, v2

    .line 411
    goto :goto_2

    .line 415
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lbkb;->h:Lbdy;

    .line 441
    iget-object v0, p0, Lbkb;->d:Lilh;

    const-class v1, Lbjq;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjq;

    invoke-interface {v0, p1}, Lbjq;->a(Z)V

    .line 442
    return-void
.end method

.method b()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lbkb;->h:Lbdy;

    iget-object v3, p0, Lbkb;->f:Lbkw;

    invoke-static {v0, v3}, Laal;->a(Lbdy;Lbkw;)Z

    move-result v4

    .line 430
    if-eqz v4, :cond_5

    iget-object v3, p0, Lbkb;->b:Landroid/content/Context;

    iget-object v5, p0, Lbkb;->h:Lbdy;

    .line 1060
    const-class v0, Lhpu;

    invoke-static {v3, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v6

    .line 1061
    const-class v0, Lawo;

    invoke-static {v3, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    invoke-interface {v0, v6}, Lawo;->d(I)Z

    move-result v0

    .line 1065
    invoke-virtual {v5}, Lbdy;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lezm;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1066
    :goto_0
    invoke-virtual {v5}, Lbdy;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 1067
    :goto_1
    if-nez v0, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    move v0, v1

    .line 430
    :goto_2
    if-nez v0, :cond_5

    .line 431
    iget-object v0, p0, Lbkb;->b:Landroid/content/Context;

    sget v3, Laal;->jq:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lbkb;->h:Lbdy;

    invoke-virtual {v4}, Lbdy;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lbkb;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    invoke-virtual {p0, v2}, Lbkb;->a(Z)V

    .line 437
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 1065
    goto :goto_0

    :cond_3
    move v3, v2

    .line 1066
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1067
    goto :goto_2

    .line 435
    :cond_5
    iget-object v0, p0, Lbkb;->q:Lbjm;

    iget-object v1, p0, Lbkb;->h:Lbdy;

    iget-object v2, p0, Lbkb;->f:Lbkw;

    invoke-interface {v0, v1, v2, v4}, Lbjm;->a(Lbdy;Lbkw;Z)V

    goto :goto_3
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 306
    const-string v0, "Babel_ConvCreator"

    const-string v1, "Saving state of conversation creator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-string v0, "current_contact"

    iget-object v1, p0, Lbkb;->h:Lbdy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 309
    const-string v0, "creation_completed"

    iget-boolean v1, p0, Lbkb;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    const-string v0, "lookup_mode"

    iget-object v1, p0, Lbkb;->l:Lbfw;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 311
    const-string v0, "force_group_conversation"

    iget-boolean v1, p0, Lbkb;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    const-string v0, "invite_token_url"

    iget-object v1, p0, Lbkb;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "impression_id"

    iget v1, p0, Lbkb;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method public b(Lbdy;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-boolean v0, p0, Lbkb;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Should not remove contact after conversation has been created."

    invoke-static {v0, v2}, Lfii;->b(ZLjava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lbkb;->h:Lbdy;

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "Babel_ConvCreator"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x44

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "removeContact for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " skipped because previous addition hasn\'t finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 344
    goto :goto_0

    .line 356
    :cond_1
    const-string v2, "Babel_ConvCreator"

    const-string v3, "removeContact called with "

    invoke-virtual {p1}, Lbdy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lbkb;->e:Laxq;

    invoke-virtual {v0, p1}, Laxq;->a(Lbdy;)V

    goto :goto_1

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 541
    iput-boolean p1, p0, Lbkb;->j:Z

    .line 542
    if-eqz p1, :cond_0

    .line 543
    iget-object v0, p0, Lbkb;->k:Lhty;

    iget-object v1, p0, Lbkb;->u:Lhtx;

    invoke-virtual {v0, v1}, Lhty;->b(Lhtx;)Lhty;

    .line 545
    :cond_0
    return-void
.end method

.method public h_()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lbkb;->k:Lhty;

    iget-object v1, p0, Lbkb;->u:Lhtx;

    invoke-virtual {v0, v1}, Lhty;->b(Lhtx;)Lhty;

    .line 319
    return-void
.end method
