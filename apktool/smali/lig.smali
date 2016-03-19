.class public final Llig;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llig;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llkn;

.field public b:Lljs;

.field public c:Llkg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1448
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2453
    iput-object v0, p0, Llig;->a:Llkn;

    .line 2454
    iput-object v0, p0, Llig;->b:Lljs;

    .line 2455
    iput-object v0, p0, Llig;->c:Llkg;

    .line 2456
    iput-object v0, p0, Llig;->eD:Llyd;

    .line 2457
    const/4 v0, -0x1

    iput v0, p0, Llig;->eE:I

    .line 1450
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2499
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2500
    sparse-switch v0, :sswitch_data_0

    .line 2504
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2505
    :sswitch_0
    return-object p0

    .line 2510
    :sswitch_1
    iget-object v0, p0, Llig;->a:Llkn;

    if-nez v0, :cond_1

    .line 2511
    new-instance v0, Llkn;

    invoke-direct {v0}, Llkn;-><init>()V

    iput-object v0, p0, Llig;->a:Llkn;

    .line 2513
    :cond_1
    iget-object v0, p0, Llig;->a:Llkn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2517
    :sswitch_2
    iget-object v0, p0, Llig;->b:Lljs;

    if-nez v0, :cond_2

    .line 2518
    new-instance v0, Lljs;

    invoke-direct {v0}, Lljs;-><init>()V

    iput-object v0, p0, Llig;->b:Lljs;

    .line 2520
    :cond_2
    iget-object v0, p0, Llig;->b:Lljs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2524
    :sswitch_3
    iget-object v0, p0, Llig;->c:Llkg;

    if-nez v0, :cond_3

    .line 2525
    new-instance v0, Llkg;

    invoke-direct {v0}, Llkg;-><init>()V

    iput-object v0, p0, Llig;->c:Llkg;

    .line 2527
    :cond_3
    iget-object v0, p0, Llig;->c:Llkg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2500
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Llig;->a:Llkn;

    if-eqz v0, :cond_0

    .line 1465
    const/4 v0, 0x1

    iget-object v1, p0, Llig;->a:Llkn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1467
    :cond_0
    iget-object v0, p0, Llig;->b:Lljs;

    if-eqz v0, :cond_1

    .line 1468
    const/4 v0, 0x2

    iget-object v1, p0, Llig;->b:Lljs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1470
    :cond_1
    iget-object v0, p0, Llig;->c:Llkg;

    if-eqz v0, :cond_2

    .line 1471
    const/4 v0, 0x3

    iget-object v1, p0, Llig;->c:Llkg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1473
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1474
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1478
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1479
    iget-object v1, p0, Llig;->a:Llkn;

    if-eqz v1, :cond_0

    .line 1480
    const/4 v1, 0x1

    iget-object v2, p0, Llig;->a:Llkn;

    .line 1481
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1483
    :cond_0
    iget-object v1, p0, Llig;->b:Lljs;

    if-eqz v1, :cond_1

    .line 1484
    const/4 v1, 0x2

    iget-object v2, p0, Llig;->b:Lljs;

    .line 1485
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1487
    :cond_1
    iget-object v1, p0, Llig;->c:Llkg;

    if-eqz v1, :cond_2

    .line 1488
    const/4 v1, 0x3

    iget-object v2, p0, Llig;->c:Llkg;

    .line 1489
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1491
    :cond_2
    return v0
.end method
