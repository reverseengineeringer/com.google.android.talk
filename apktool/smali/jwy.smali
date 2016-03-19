.class public final Ljwy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lkcr;

.field public c:Lkcr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10452
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11457
    iput-object v0, p0, Ljwy;->a:Ljava/lang/Integer;

    .line 11458
    iput-object v0, p0, Ljwy;->b:Lkcr;

    .line 11459
    iput-object v0, p0, Ljwy;->c:Lkcr;

    .line 11460
    iput-object v0, p0, Ljwy;->eD:Llyd;

    .line 11461
    const/4 v0, -0x1

    iput v0, p0, Ljwy;->eE:I

    .line 10454
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11504
    sparse-switch v0, :sswitch_data_0

    .line 11508
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11509
    :sswitch_0
    return-object p0

    .line 11514
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11515
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11521
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwy;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 11527
    :sswitch_2
    iget-object v0, p0, Ljwy;->b:Lkcr;

    if-nez v0, :cond_1

    .line 11528
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljwy;->b:Lkcr;

    .line 11530
    :cond_1
    iget-object v0, p0, Ljwy;->b:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11534
    :sswitch_3
    iget-object v0, p0, Ljwy;->c:Lkcr;

    if-nez v0, :cond_2

    .line 11535
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljwy;->c:Lkcr;

    .line 11537
    :cond_2
    iget-object v0, p0, Ljwy;->c:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11504
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 11515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 10468
    iget-object v0, p0, Ljwy;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 10469
    const/4 v0, 0x1

    iget-object v1, p0, Ljwy;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 10471
    :cond_0
    iget-object v0, p0, Ljwy;->b:Lkcr;

    if-eqz v0, :cond_1

    .line 10472
    const/4 v0, 0x2

    iget-object v1, p0, Ljwy;->b:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10474
    :cond_1
    iget-object v0, p0, Ljwy;->c:Lkcr;

    if-eqz v0, :cond_2

    .line 10475
    const/4 v0, 0x3

    iget-object v1, p0, Ljwy;->c:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10477
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10478
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10482
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10483
    iget-object v1, p0, Ljwy;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 10484
    const/4 v1, 0x1

    iget-object v2, p0, Ljwy;->a:Ljava/lang/Integer;

    .line 10485
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10487
    :cond_0
    iget-object v1, p0, Ljwy;->b:Lkcr;

    if-eqz v1, :cond_1

    .line 10488
    const/4 v1, 0x2

    iget-object v2, p0, Ljwy;->b:Lkcr;

    .line 10489
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10491
    :cond_1
    iget-object v1, p0, Ljwy;->c:Lkcr;

    if-eqz v1, :cond_2

    .line 10492
    const/4 v1, 0x3

    iget-object v2, p0, Ljwy;->c:Lkcr;

    .line 10493
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10495
    :cond_2
    return v0
.end method
