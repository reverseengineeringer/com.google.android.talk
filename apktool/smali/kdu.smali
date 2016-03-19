.class public final Lkdu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljzh;

.field public b:Ljava/lang/Boolean;

.field public c:[Ljya;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28382
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29387
    iput-object v1, p0, Lkdu;->responseHeader:Lkdp;

    .line 29388
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkdu;->a:[Ljzh;

    .line 29389
    iput-object v1, p0, Lkdu;->b:Ljava/lang/Boolean;

    .line 29390
    invoke-static {}, Ljya;->d()[Ljya;

    move-result-object v0

    iput-object v0, p0, Lkdu;->c:[Ljya;

    .line 29391
    iput-object v1, p0, Lkdu;->eD:Llyd;

    .line 29392
    const/4 v0, -0x1

    iput v0, p0, Lkdu;->eE:I

    .line 28384
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30462
    sparse-switch v0, :sswitch_data_0

    .line 30466
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30467
    :sswitch_0
    return-object p0

    .line 30472
    :sswitch_1
    iget-object v0, p0, Lkdu;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 30473
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdu;->responseHeader:Lkdp;

    .line 30475
    :cond_1
    iget-object v0, p0, Lkdu;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30479
    :sswitch_2
    const/16 v0, 0x12

    .line 30480
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30481
    iget-object v0, p0, Lkdu;->a:[Ljzh;

    if-nez v0, :cond_3

    move v0, v1

    .line 30482
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 30484
    if-eqz v0, :cond_2

    .line 30485
    iget-object v3, p0, Lkdu;->a:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30487
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 30488
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 30489
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30490
    invoke-virtual {p1}, Llxy;->a()I

    .line 30487
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 30481
    :cond_3
    iget-object v0, p0, Lkdu;->a:[Ljzh;

    array-length v0, v0

    goto :goto_1

    .line 30493
    :cond_4
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 30494
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30495
    iput-object v2, p0, Lkdu;->a:[Ljzh;

    goto :goto_0

    .line 30499
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkdu;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 30503
    :sswitch_4
    const/16 v0, 0x22

    .line 30504
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30505
    iget-object v0, p0, Lkdu;->c:[Ljya;

    if-nez v0, :cond_6

    move v0, v1

    .line 30506
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljya;

    .line 30508
    if-eqz v0, :cond_5

    .line 30509
    iget-object v3, p0, Lkdu;->c:[Ljya;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30511
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 30512
    new-instance v3, Ljya;

    invoke-direct {v3}, Ljya;-><init>()V

    aput-object v3, v2, v0

    .line 30513
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30514
    invoke-virtual {p1}, Llxy;->a()I

    .line 30511
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 30505
    :cond_6
    iget-object v0, p0, Lkdu;->c:[Ljya;

    array-length v0, v0

    goto :goto_3

    .line 30517
    :cond_7
    new-instance v3, Ljya;

    invoke-direct {v3}, Ljya;-><init>()V

    aput-object v3, v2, v0

    .line 30518
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30519
    iput-object v2, p0, Lkdu;->c:[Ljya;

    goto/16 :goto_0

    .line 30462
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28399
    iget-object v0, p0, Lkdu;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 28400
    const/4 v0, 0x1

    iget-object v2, p0, Lkdu;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 28402
    :cond_0
    iget-object v0, p0, Lkdu;->a:[Ljzh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkdu;->a:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 28403
    :goto_0
    iget-object v2, p0, Lkdu;->a:[Ljzh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 28404
    iget-object v2, p0, Lkdu;->a:[Ljzh;

    aget-object v2, v2, v0

    .line 28405
    if-eqz v2, :cond_1

    .line 28406
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 28403
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28410
    :cond_2
    iget-object v0, p0, Lkdu;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 28411
    const/4 v0, 0x3

    iget-object v2, p0, Lkdu;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 28413
    :cond_3
    iget-object v0, p0, Lkdu;->c:[Ljya;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkdu;->c:[Ljya;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 28414
    :goto_1
    iget-object v0, p0, Lkdu;->c:[Ljya;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 28415
    iget-object v0, p0, Lkdu;->c:[Ljya;

    aget-object v0, v0, v1

    .line 28416
    if-eqz v0, :cond_4

    .line 28417
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 28414
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28421
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 28422
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 28426
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 28427
    iget-object v2, p0, Lkdu;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 28428
    const/4 v2, 0x1

    iget-object v3, p0, Lkdu;->responseHeader:Lkdp;

    .line 28429
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28431
    :cond_0
    iget-object v2, p0, Lkdu;->a:[Ljzh;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkdu;->a:[Ljzh;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 28432
    :goto_0
    iget-object v3, p0, Lkdu;->a:[Ljzh;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 28433
    iget-object v3, p0, Lkdu;->a:[Ljzh;

    aget-object v3, v3, v0

    .line 28434
    if-eqz v3, :cond_1

    .line 28435
    const/4 v4, 0x2

    .line 28436
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 28432
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 28440
    :cond_3
    iget-object v2, p0, Lkdu;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 28441
    const/4 v2, 0x3

    iget-object v3, p0, Lkdu;->b:Ljava/lang/Boolean;

    .line 28442
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 28442
    add-int/2addr v0, v2

    .line 28444
    :cond_4
    iget-object v2, p0, Lkdu;->c:[Ljya;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkdu;->c:[Ljya;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 28445
    :goto_1
    iget-object v2, p0, Lkdu;->c:[Ljya;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 28446
    iget-object v2, p0, Lkdu;->c:[Ljya;

    aget-object v2, v2, v1

    .line 28447
    if-eqz v2, :cond_5

    .line 28448
    const/4 v3, 0x4

    .line 28449
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28445
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28453
    :cond_6
    return v0
.end method
