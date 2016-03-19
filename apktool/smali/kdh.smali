.class public final Lkdh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzr;

.field public b:Lkcr;

.field public c:[B

.field public d:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8451
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9456
    iput-object v0, p0, Lkdh;->requestHeader:Lkdo;

    .line 9457
    iput-object v0, p0, Lkdh;->a:Ljzr;

    .line 9458
    iput-object v0, p0, Lkdh;->b:Lkcr;

    .line 9459
    iput-object v0, p0, Lkdh;->c:[B

    .line 9460
    iput-object v0, p0, Lkdh;->d:Ljava/lang/Long;

    .line 9461
    iput-object v0, p0, Lkdh;->eD:Llyd;

    .line 9462
    const/4 v0, -0x1

    iput v0, p0, Lkdh;->eE:I

    .line 8453
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 9518
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9519
    sparse-switch v0, :sswitch_data_0

    .line 9523
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9524
    :sswitch_0
    return-object p0

    .line 9529
    :sswitch_1
    iget-object v0, p0, Lkdh;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 9530
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdh;->requestHeader:Lkdo;

    .line 9532
    :cond_1
    iget-object v0, p0, Lkdh;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9536
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkdh;->c:[B

    goto :goto_0

    .line 9540
    :sswitch_3
    iget-object v0, p0, Lkdh;->b:Lkcr;

    if-nez v0, :cond_2

    .line 9541
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkdh;->b:Lkcr;

    .line 9543
    :cond_2
    iget-object v0, p0, Lkdh;->b:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9547
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdh;->d:Ljava/lang/Long;

    goto :goto_0

    .line 9551
    :sswitch_5
    iget-object v0, p0, Lkdh;->a:Ljzr;

    if-nez v0, :cond_3

    .line 9552
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    iput-object v0, p0, Lkdh;->a:Ljzr;

    .line 9554
    :cond_3
    iget-object v0, p0, Lkdh;->a:Ljzr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9519
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 8469
    iget-object v0, p0, Lkdh;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 8470
    const/4 v0, 0x1

    iget-object v1, p0, Lkdh;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8472
    :cond_0
    iget-object v0, p0, Lkdh;->c:[B

    if-eqz v0, :cond_1

    .line 8473
    const/4 v0, 0x2

    iget-object v1, p0, Lkdh;->c:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 8475
    :cond_1
    iget-object v0, p0, Lkdh;->b:Lkcr;

    if-eqz v0, :cond_2

    .line 8476
    const/4 v0, 0x3

    iget-object v1, p0, Lkdh;->b:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8478
    :cond_2
    iget-object v0, p0, Lkdh;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 8479
    const/4 v0, 0x4

    iget-object v1, p0, Lkdh;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 8481
    :cond_3
    iget-object v0, p0, Lkdh;->a:Ljzr;

    if-eqz v0, :cond_4

    .line 8482
    const/4 v0, 0x5

    iget-object v1, p0, Lkdh;->a:Ljzr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8484
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8485
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 8489
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8490
    iget-object v1, p0, Lkdh;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 8491
    const/4 v1, 0x1

    iget-object v2, p0, Lkdh;->requestHeader:Lkdo;

    .line 8492
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8494
    :cond_0
    iget-object v1, p0, Lkdh;->c:[B

    if-eqz v1, :cond_1

    .line 8495
    const/4 v1, 0x2

    iget-object v2, p0, Lkdh;->c:[B

    .line 8496
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8498
    :cond_1
    iget-object v1, p0, Lkdh;->b:Lkcr;

    if-eqz v1, :cond_2

    .line 8499
    const/4 v1, 0x3

    iget-object v2, p0, Lkdh;->b:Lkcr;

    .line 8500
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8502
    :cond_2
    iget-object v1, p0, Lkdh;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 8503
    const/4 v1, 0x4

    iget-object v2, p0, Lkdh;->d:Ljava/lang/Long;

    .line 8504
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8506
    :cond_3
    iget-object v1, p0, Lkdh;->a:Ljzr;

    if-eqz v1, :cond_4

    .line 8507
    const/4 v1, 0x5

    iget-object v2, p0, Lkdh;->a:Ljzr;

    .line 8508
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8510
    :cond_4
    return v0
.end method
