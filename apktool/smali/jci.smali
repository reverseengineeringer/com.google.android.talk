.class public final Ljci;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljci;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6362
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7367
    iput-object v0, p0, Ljci;->a:Ljava/lang/Boolean;

    .line 7368
    iput-object v0, p0, Ljci;->b:Ljava/lang/Boolean;

    .line 7369
    iput-object v0, p0, Ljci;->c:Ljava/lang/Boolean;

    .line 7370
    iput-object v0, p0, Ljci;->d:Ljava/lang/Boolean;

    .line 7371
    iput-object v0, p0, Ljci;->e:Ljava/lang/Boolean;

    .line 7372
    iput-object v0, p0, Ljci;->f:Ljava/lang/Boolean;

    .line 7373
    iput-object v0, p0, Ljci;->g:Ljava/lang/Boolean;

    .line 7374
    iput-object v0, p0, Ljci;->h:Ljava/lang/Boolean;

    .line 7375
    iput-object v0, p0, Ljci;->i:Ljava/lang/Boolean;

    .line 7376
    iput-object v0, p0, Ljci;->j:Ljava/lang/Boolean;

    .line 7377
    iput-object v0, p0, Ljci;->k:Ljava/lang/Boolean;

    .line 7378
    iput-object v0, p0, Ljci;->eD:Llyd;

    .line 7379
    const/4 v0, -0x1

    iput v0, p0, Ljci;->eE:I

    .line 6364
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 18477
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 18478
    sparse-switch v0, :sswitch_data_0

    .line 18482
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18483
    :sswitch_0
    return-object p0

    .line 18488
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 18492
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 18496
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 18500
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 18504
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 18508
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 18512
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 18516
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 18520
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 18524
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->j:Ljava/lang/Boolean;

    goto :goto_0

    .line 18528
    :sswitch_b
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljci;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 18478
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6386
    iget-object v0, p0, Ljci;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 6387
    const/4 v0, 0x1

    iget-object v1, p0, Ljci;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6389
    :cond_0
    iget-object v0, p0, Ljci;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 6390
    const/4 v0, 0x2

    iget-object v1, p0, Ljci;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6392
    :cond_1
    iget-object v0, p0, Ljci;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6393
    const/4 v0, 0x3

    iget-object v1, p0, Ljci;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6395
    :cond_2
    iget-object v0, p0, Ljci;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 6396
    const/4 v0, 0x5

    iget-object v1, p0, Ljci;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6398
    :cond_3
    iget-object v0, p0, Ljci;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 6399
    const/4 v0, 0x6

    iget-object v1, p0, Ljci;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6401
    :cond_4
    iget-object v0, p0, Ljci;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 6402
    const/4 v0, 0x7

    iget-object v1, p0, Ljci;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6404
    :cond_5
    iget-object v0, p0, Ljci;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 6405
    const/16 v0, 0x8

    iget-object v1, p0, Ljci;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6407
    :cond_6
    iget-object v0, p0, Ljci;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 6408
    const/16 v0, 0x9

    iget-object v1, p0, Ljci;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6410
    :cond_7
    iget-object v0, p0, Ljci;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 6411
    const/16 v0, 0xa

    iget-object v1, p0, Ljci;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6413
    :cond_8
    iget-object v0, p0, Ljci;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 6414
    const/16 v0, 0xb

    iget-object v1, p0, Ljci;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6416
    :cond_9
    iget-object v0, p0, Ljci;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 6417
    const/16 v0, 0xc

    iget-object v1, p0, Ljci;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6419
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6420
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6424
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6425
    iget-object v1, p0, Ljci;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 6426
    const/4 v1, 0x1

    iget-object v2, p0, Ljci;->a:Ljava/lang/Boolean;

    .line 6427
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6427
    add-int/2addr v0, v1

    .line 6429
    :cond_0
    iget-object v1, p0, Ljci;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 6430
    const/4 v1, 0x2

    iget-object v2, p0, Ljci;->b:Ljava/lang/Boolean;

    .line 6431
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6431
    add-int/2addr v0, v1

    .line 6433
    :cond_1
    iget-object v1, p0, Ljci;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 6434
    const/4 v1, 0x3

    iget-object v2, p0, Ljci;->c:Ljava/lang/Boolean;

    .line 6435
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6435
    add-int/2addr v0, v1

    .line 6437
    :cond_2
    iget-object v1, p0, Ljci;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 6438
    const/4 v1, 0x5

    iget-object v2, p0, Ljci;->d:Ljava/lang/Boolean;

    .line 6439
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6439
    add-int/2addr v0, v1

    .line 6441
    :cond_3
    iget-object v1, p0, Ljci;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 6442
    const/4 v1, 0x6

    iget-object v2, p0, Ljci;->e:Ljava/lang/Boolean;

    .line 6443
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6443
    add-int/2addr v0, v1

    .line 6445
    :cond_4
    iget-object v1, p0, Ljci;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 6446
    const/4 v1, 0x7

    iget-object v2, p0, Ljci;->f:Ljava/lang/Boolean;

    .line 6447
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6447
    add-int/2addr v0, v1

    .line 6449
    :cond_5
    iget-object v1, p0, Ljci;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 6450
    const/16 v1, 0x8

    iget-object v2, p0, Ljci;->g:Ljava/lang/Boolean;

    .line 6451
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6451
    add-int/2addr v0, v1

    .line 6453
    :cond_6
    iget-object v1, p0, Ljci;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 6454
    const/16 v1, 0x9

    iget-object v2, p0, Ljci;->h:Ljava/lang/Boolean;

    .line 6455
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6455
    add-int/2addr v0, v1

    .line 6457
    :cond_7
    iget-object v1, p0, Ljci;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 6458
    const/16 v1, 0xa

    iget-object v2, p0, Ljci;->i:Ljava/lang/Boolean;

    .line 6459
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6459
    add-int/2addr v0, v1

    .line 6461
    :cond_8
    iget-object v1, p0, Ljci;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 6462
    const/16 v1, 0xb

    iget-object v2, p0, Ljci;->j:Ljava/lang/Boolean;

    .line 6463
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6463
    add-int/2addr v0, v1

    .line 6465
    :cond_9
    iget-object v1, p0, Ljci;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 6466
    const/16 v1, 0xc

    iget-object v2, p0, Ljci;->k:Ljava/lang/Boolean;

    .line 6467
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6467
    add-int/2addr v0, v1

    .line 6469
    :cond_a
    return v0
.end method
