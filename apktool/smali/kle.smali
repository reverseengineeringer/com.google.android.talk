.class public final Lkle;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkle;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2421
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3426
    iput-object v0, p0, Lkle;->a:Ljava/lang/Integer;

    .line 3427
    iput-object v0, p0, Lkle;->b:Ljava/lang/String;

    .line 3428
    iput-object v0, p0, Lkle;->c:Ljava/lang/Integer;

    .line 3429
    iput-object v0, p0, Lkle;->d:Ljava/lang/Integer;

    .line 3430
    iput-object v0, p0, Lkle;->e:Ljum;

    .line 3431
    iput-object v0, p0, Lkle;->eD:Llyd;

    .line 3432
    const/4 v0, -0x1

    iput v0, p0, Lkle;->eE:I

    .line 2423
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3488
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3489
    sparse-switch v0, :sswitch_data_0

    .line 3493
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3494
    :sswitch_0
    return-object p0

    .line 3499
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkle;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3503
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkle;->b:Ljava/lang/String;

    goto :goto_0

    .line 3507
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkle;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3511
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkle;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3515
    :sswitch_5
    iget-object v0, p0, Lkle;->e:Ljum;

    if-nez v0, :cond_1

    .line 3516
    new-instance v0, Ljum;

    invoke-direct {v0}, Ljum;-><init>()V

    iput-object v0, p0, Lkle;->e:Ljum;

    .line 3518
    :cond_1
    iget-object v0, p0, Lkle;->e:Ljum;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3489
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lkle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2440
    const/4 v0, 0x1

    iget-object v1, p0, Lkle;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2442
    :cond_0
    iget-object v0, p0, Lkle;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2443
    const/4 v0, 0x2

    iget-object v1, p0, Lkle;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2445
    :cond_1
    iget-object v0, p0, Lkle;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2446
    const/4 v0, 0x3

    iget-object v1, p0, Lkle;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2448
    :cond_2
    iget-object v0, p0, Lkle;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2449
    const/4 v0, 0x4

    iget-object v1, p0, Lkle;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2451
    :cond_3
    iget-object v0, p0, Lkle;->e:Ljum;

    if-eqz v0, :cond_4

    .line 2452
    const/4 v0, 0x5

    iget-object v1, p0, Lkle;->e:Ljum;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2454
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2455
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2459
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2460
    iget-object v1, p0, Lkle;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2461
    const/4 v1, 0x1

    iget-object v2, p0, Lkle;->a:Ljava/lang/Integer;

    .line 2462
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2464
    :cond_0
    iget-object v1, p0, Lkle;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2465
    const/4 v1, 0x2

    iget-object v2, p0, Lkle;->b:Ljava/lang/String;

    .line 2466
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2468
    :cond_1
    iget-object v1, p0, Lkle;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2469
    const/4 v1, 0x3

    iget-object v2, p0, Lkle;->c:Ljava/lang/Integer;

    .line 2470
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2472
    :cond_2
    iget-object v1, p0, Lkle;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2473
    const/4 v1, 0x4

    iget-object v2, p0, Lkle;->d:Ljava/lang/Integer;

    .line 2474
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2476
    :cond_3
    iget-object v1, p0, Lkle;->e:Ljum;

    if-eqz v1, :cond_4

    .line 2477
    const/4 v1, 0x5

    iget-object v2, p0, Lkle;->e:Ljum;

    .line 2478
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2480
    :cond_4
    return v0
.end method
