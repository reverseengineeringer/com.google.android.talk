.class final Lhch;
.super Lhcv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhcd;


# direct methods
.method constructor <init>(Lhcd;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lhch;->a:Lhcd;

    invoke-direct {p0}, Lhcv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhcs;)V
    .locals 7

    .prologue
    .line 567
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 7053
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhcd;->l:Z

    .line 569
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 8053
    invoke-virtual {v0}, Lhcd;->r()V

    .line 573
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 9053
    iget-object v0, v0, Lhcd;->k:Lhkt;

    .line 573
    invoke-virtual {v0}, Lhkt;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v6, p0, Lhch;->a:Lhcd;

    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 10053
    iget-object v0, v0, Lhcd;->b:Lhci;

    .line 574
    invoke-virtual {v0}, Lhci;->a()Lhcs;

    move-result-object v0

    .line 11496
    iget v1, v6, Lhcd;->m:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v6, Lhcd;->k:Lhkt;

    if-nez v1, :cond_1

    .line 11498
    :cond_0
    return-void

    .line 11500
    :cond_1
    iget-object v1, v6, Lhcd;->a:Landroid/content/Context;

    iget-object v2, v6, Lhcd;->k:Lhkt;

    .line 11501
    invoke-virtual {v2}, Lhkt;->c()I

    move-result v2

    iget-object v3, v6, Lhcd;->k:Lhkt;

    .line 11502
    invoke-virtual {v3}, Lhkt;->e()I

    move-result v3

    iget-object v4, v6, Lhcd;->b:Lhci;

    .line 11503
    invoke-virtual {v4}, Lhci;->b()Lhek;

    move-result-object v4

    iget-object v5, v6, Lhcd;->k:Lhkt;

    .line 11505
    invoke-virtual {v5}, Lhkt;->r()Ljava/lang/String;

    move-result-object v5

    .line 11500
    invoke-virtual/range {v0 .. v5}, Lhcs;->a(Landroid/content/Context;IILhek;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 11507
    new-instance v1, Lhel;

    iget-object v2, v6, Lhcd;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lhel;-><init>(Landroid/content/Context;)V

    .line 11508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkju;

    .line 11510
    iget-object v3, v6, Lhcd;->c:Lhlj;

    invoke-virtual {v3, v0}, Lhlj;->a(Lkju;)V

    .line 11512
    iget-object v3, v6, Lhcd;->k:Lhkt;

    invoke-virtual {v3}, Lhkt;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11513
    iget-object v3, v6, Lhcd;->k:Lhkt;

    invoke-virtual {v1, v3, v0}, Lhel;->a(Lhkt;Lkju;)V

    goto :goto_0
.end method

.method public a(Lhil;Latn;)V
    .locals 5

    .prologue
    .line 551
    instance-of v0, p2, Lhin;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 1053
    const/4 v1, 0x2

    iput v1, v0, Lhcd;->m:I

    .line 554
    const-string v0, "vclib"

    const-string v1, "Call joined; participant id = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lhch;->a:Lhcd;

    new-instance v1, Lhkw;

    iget-object v2, p0, Lhch;->a:Lhcd;

    .line 2053
    iget-object v2, v2, Lhcd;->b:Lhci;

    .line 556
    invoke-virtual {v2}, Lhci;->a()Lhcs;

    move-result-object v2

    invoke-virtual {v2}, Lhcs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lhkw;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhkw;->a(Ljava/lang/String;)Lhkw;

    move-result-object v1

    .line 3053
    iput-object v1, v0, Lhcd;->p:Lhkw;

    .line 559
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 4053
    iget-object v0, v0, Lhcd;->j:Lhiv;

    .line 559
    const/16 v1, 0xa82

    invoke-virtual {v0, v1}, Lhiv;->a(I)V

    .line 561
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 5053
    iget-object v0, v0, Lhcd;->c:Lhlj;

    .line 561
    iget-object v1, p0, Lhch;->a:Lhcd;

    .line 6053
    iget-object v1, v1, Lhcd;->p:Lhkw;

    .line 561
    invoke-virtual {v0, v1}, Lhlj;->a(Lhkw;)V

    .line 563
    :cond_0
    return-void
.end method

.method public b(Lhcs;)V
    .locals 6

    .prologue
    const/16 v1, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 580
    if-nez p1, :cond_2

    move v0, v1

    .line 583
    :goto_0
    iget-object v2, p0, Lhch;->a:Lhcd;

    .line 12053
    iget-object v2, v2, Lhcd;->p:Lhkw;

    .line 583
    if-nez v2, :cond_0

    .line 584
    if-ne v0, v1, :cond_3

    .line 585
    iget-object v1, p0, Lhch;->a:Lhcd;

    .line 13053
    iget-object v1, v1, Lhcd;->j:Lhiv;

    .line 585
    const/16 v2, 0xb5b

    invoke-virtual {v1, v2}, Lhiv;->a(I)V

    .line 590
    :cond_0
    :goto_1
    const-string v1, "vclib"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Call.onCallEnded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14081
    invoke-static {v5, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lhch;->a:Lhcd;

    .line 15053
    invoke-virtual {v1, p1}, Lhcd;->a(Lhcs;)V

    .line 592
    iget-object v1, p0, Lhch;->a:Lhcd;

    .line 16387
    iget-boolean v2, v1, Lhcd;->o:Z

    if-nez v2, :cond_1

    .line 16388
    invoke-virtual {v1, v4}, Lhcd;->a(Lhlb;)V

    .line 16389
    invoke-virtual {v1, v4}, Lhcd;->a(Lhkq;)V

    .line 16390
    invoke-virtual {v1, v4}, Lhcd;->a(Lhkr;)V

    .line 16392
    iget-object v2, v1, Lhcd;->i:Lhgo;

    invoke-virtual {v2}, Lhgo;->a()V

    .line 16393
    iget-object v2, v1, Lhcd;->f:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->a()V

    .line 16394
    iget-object v2, v1, Lhcd;->h:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a()V

    .line 16395
    iget-object v2, v1, Lhcd;->g:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->b()V

    .line 16396
    iget-object v2, v1, Lhcd;->d:Lhee;

    invoke-virtual {v2}, Lhee;->a()V

    .line 16397
    iget-object v2, v1, Lhcd;->e:Lhfo;

    invoke-virtual {v2}, Lhfo;->a()V

    .line 16398
    iget-object v2, v1, Lhcd;->j:Lhiv;

    invoke-virtual {v2}, Lhiv;->b()V

    .line 17074
    sget-object v2, Lhdf;->a:Lhdf;

    .line 16399
    invoke-virtual {v2}, Lhdf;->a()V

    .line 16402
    const/4 v2, 0x1

    iput-boolean v2, v1, Lhcd;->o:Z

    .line 593
    :cond_1
    iget-object v1, p0, Lhch;->a:Lhcd;

    .line 18053
    iget-object v1, v1, Lhcd;->c:Lhlj;

    .line 593
    invoke-virtual {v1, v0}, Lhlj;->a(I)V

    .line 594
    iget-object v0, p0, Lhch;->a:Lhcd;

    .line 19053
    iput v5, v0, Lhcd;->m:I

    .line 595
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lhgd;->a(Lhci;)V

    .line 596
    return-void

    .line 581
    :cond_2
    invoke-virtual {p1}, Lhcs;->p()I

    move-result v0

    goto/16 :goto_0

    .line 587
    :cond_3
    iget-object v1, p0, Lhch;->a:Lhcd;

    .line 14053
    iget-object v1, v1, Lhcd;->j:Lhiv;

    .line 587
    const/16 v2, 0xa83

    invoke-virtual {v1, v2}, Lhiv;->a(I)V

    goto :goto_1
.end method
