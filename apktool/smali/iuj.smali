.class public final Liuj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Liuk;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 416
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1421
    iput-object v0, p0, Liuj;->a:Ljava/lang/String;

    .line 1422
    iput-object v0, p0, Liuj;->b:Ljava/lang/Integer;

    .line 1423
    iput-object v0, p0, Liuj;->c:Liuk;

    .line 1424
    iput-object v0, p0, Liuj;->d:Ljava/lang/String;

    .line 1425
    iput-object v0, p0, Liuj;->eD:Llyd;

    .line 1426
    const/4 v0, -0x1

    iput v0, p0, Liuj;->eE:I

    .line 418
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1475
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1476
    sparse-switch v0, :sswitch_data_0

    .line 1480
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    :sswitch_0
    return-object p0

    .line 1486
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuj;->a:Ljava/lang/String;

    goto :goto_0

    .line 1490
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1491
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1496
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liuj;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1502
    :sswitch_3
    iget-object v0, p0, Liuj;->c:Liuk;

    if-nez v0, :cond_1

    .line 1503
    new-instance v0, Liuk;

    invoke-direct {v0}, Liuk;-><init>()V

    iput-object v0, p0, Liuj;->c:Liuk;

    .line 1505
    :cond_1
    iget-object v0, p0, Liuj;->c:Liuk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1509
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuj;->d:Ljava/lang/String;

    goto :goto_0

    .line 1476
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Liuj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iget-object v1, p0, Liuj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 436
    :cond_0
    iget-object v0, p0, Liuj;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 437
    const/4 v0, 0x2

    iget-object v1, p0, Liuj;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 439
    :cond_1
    iget-object v0, p0, Liuj;->c:Liuk;

    if-eqz v0, :cond_2

    .line 440
    const/4 v0, 0x3

    iget-object v1, p0, Liuj;->c:Liuk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 442
    :cond_2
    iget-object v0, p0, Liuj;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 443
    const/4 v0, 0x4

    iget-object v1, p0, Liuj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 445
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 446
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 450
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 451
    iget-object v1, p0, Liuj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 452
    const/4 v1, 0x1

    iget-object v2, p0, Liuj;->a:Ljava/lang/String;

    .line 453
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_0
    iget-object v1, p0, Liuj;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 456
    const/4 v1, 0x2

    iget-object v2, p0, Liuj;->b:Ljava/lang/Integer;

    .line 457
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    :cond_1
    iget-object v1, p0, Liuj;->c:Liuk;

    if-eqz v1, :cond_2

    .line 460
    const/4 v1, 0x3

    iget-object v2, p0, Liuj;->c:Liuk;

    .line 461
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_2
    iget-object v1, p0, Liuj;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 464
    const/4 v1, 0x4

    iget-object v2, p0, Liuj;->d:Ljava/lang/String;

    .line 465
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    :cond_3
    return v0
.end method
