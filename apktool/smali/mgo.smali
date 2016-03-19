.class public final Lmgo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Lmgc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1517
    iput-object v0, p0, Lmgo;->a:Ljava/lang/Integer;

    .line 1518
    iput-object v0, p0, Lmgo;->b:Ljava/lang/Integer;

    .line 1519
    iput-object v0, p0, Lmgo;->c:Lmgc;

    .line 1520
    iput-object v0, p0, Lmgo;->eD:Llyd;

    .line 1521
    const/4 v0, -0x1

    iput v0, p0, Lmgo;->eE:I

    .line 514
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1563
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1564
    sparse-switch v0, :sswitch_data_0

    .line 1568
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    :sswitch_0
    return-object p0

    .line 1574
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgo;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1578
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgo;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1582
    :sswitch_3
    iget-object v0, p0, Lmgo;->c:Lmgc;

    if-nez v0, :cond_1

    .line 1583
    new-instance v0, Lmgc;

    invoke-direct {v0}, Lmgc;-><init>()V

    iput-object v0, p0, Lmgo;->c:Lmgc;

    .line 1585
    :cond_1
    iget-object v0, p0, Lmgo;->c:Lmgc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1564
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lmgo;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x1

    iget-object v1, p0, Lmgo;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 531
    :cond_0
    iget-object v0, p0, Lmgo;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 532
    const/4 v0, 0x2

    iget-object v1, p0, Lmgo;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 534
    :cond_1
    iget-object v0, p0, Lmgo;->c:Lmgc;

    if-eqz v0, :cond_2

    .line 535
    const/4 v0, 0x3

    iget-object v1, p0, Lmgo;->c:Lmgc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 537
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 538
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 542
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 543
    iget-object v1, p0, Lmgo;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    iget-object v2, p0, Lmgo;->a:Ljava/lang/Integer;

    .line 545
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_0
    iget-object v1, p0, Lmgo;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 548
    const/4 v1, 0x2

    iget-object v2, p0, Lmgo;->b:Ljava/lang/Integer;

    .line 549
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_1
    iget-object v1, p0, Lmgo;->c:Lmgc;

    if-eqz v1, :cond_2

    .line 552
    const/4 v1, 0x3

    iget-object v2, p0, Lmgo;->c:Lmgc;

    .line 553
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_2
    return v0
.end method
