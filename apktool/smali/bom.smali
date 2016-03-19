.class final Lbom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjq;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lbom;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lbom;->a:Lbng;

    .line 10486
    iput-object v1, v0, Lbng;->al:Lbkw;

    .line 10487
    iput v2, v0, Lbng;->am:I

    .line 10488
    iput-object v1, v0, Lbng;->an:Laxq;

    .line 10489
    iput-object v1, v0, Lbng;->ao:Ljava/util/ArrayList;

    .line 10490
    iput v2, v0, Lbng;->ap:I

    .line 10491
    iput-object v1, v0, Lbng;->aq:Lbjp;

    .line 463
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 424
    if-eqz p1, :cond_0

    .line 426
    sget-object v0, Lbov;->a:[I

    iget-object v1, p0, Lbom;->a:Lbng;

    .line 5285
    iget-object v1, v1, Lbng;->al:Lbkw;

    .line 426
    invoke-virtual {v1}, Lbkw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lbom;->a:Lbng;

    .line 6285
    iget-object v1, v1, Lbng;->al:Lbkw;

    .line 435
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown conversation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v5, v6

    .line 438
    :goto_0
    iget-object v0, p0, Lbom;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->br:Lbmm;

    .line 8021
    invoke-virtual {v0}, Lbmm;->a()Z

    move-result v0

    .line 438
    if-nez v0, :cond_1

    move v4, v6

    .line 439
    :goto_1
    if-eqz v4, :cond_2

    .line 441
    const/16 v7, 0x3f

    .line 444
    :goto_2
    new-instance v0, Ldjm;

    iget-object v1, p0, Lbom;->a:Lbng;

    .line 445
    invoke-virtual {v1}, Lbng;->getActivity()Lba;

    move-result-object v1

    iget-object v2, p0, Lbom;->a:Lbng;

    .line 8285
    iget-object v2, v2, Lbng;->at:Lbfd;

    move-object v3, p1

    move v9, v8

    move v10, v8

    .line 446
    invoke-direct/range {v0 .. v10}, Ldjm;-><init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZIZIIZZ)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 455
    invoke-virtual {v0, v1}, Ldjm;->a([Ljava/lang/Object;)Lhbw;

    .line 457
    :cond_0
    iget-object v0, p0, Lbom;->a:Lbng;

    .line 9486
    iput-object v11, v0, Lbng;->al:Lbkw;

    .line 9487
    iput v8, v0, Lbng;->am:I

    .line 9488
    iput-object v11, v0, Lbng;->an:Laxq;

    .line 9489
    iput-object v11, v0, Lbng;->ao:Ljava/util/ArrayList;

    .line 9490
    iput v8, v0, Lbng;->ap:I

    .line 9491
    iput-object v11, v0, Lbng;->aq:Lbjp;

    .line 458
    return-void

    .line 431
    :pswitch_1
    const/4 v5, 0x2

    .line 432
    goto :goto_0

    :cond_1
    move v4, v8

    .line 438
    goto :goto_1

    .line 442
    :cond_2
    const/16 v7, 0x3a

    goto :goto_2

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 415
    if-eqz p1, :cond_0

    .line 416
    iget-object v0, p0, Lbom;->a:Lbng;

    .line 3285
    invoke-virtual {v0}, Lbng;->A()V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lbom;->a:Lbng;

    .line 4486
    iput-object v1, v0, Lbng;->al:Lbkw;

    .line 4487
    iput v2, v0, Lbng;->am:I

    .line 4488
    iput-object v1, v0, Lbng;->an:Laxq;

    .line 4489
    iput-object v1, v0, Lbng;->ao:Ljava/util/ArrayList;

    .line 4490
    iput v2, v0, Lbng;->ap:I

    .line 4491
    iput-object v1, v0, Lbng;->aq:Lbjp;

    goto :goto_0
.end method
