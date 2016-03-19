.class public final Llvb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llvb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1556
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2561
    iput-object v0, p0, Llvb;->a:Ljava/lang/Integer;

    .line 2562
    iput-object v0, p0, Llvb;->b:Ljava/lang/Integer;

    .line 2563
    iput-object v0, p0, Llvb;->eD:Llyd;

    .line 2564
    const/4 v0, -0x1

    iput v0, p0, Llvb;->eE:I

    .line 1558
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2599
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2600
    sparse-switch v0, :sswitch_data_0

    .line 2604
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2605
    :sswitch_0
    return-object p0

    .line 2610
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llvb;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2614
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llvb;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2600
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p0, Llvb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1572
    const/4 v0, 0x1

    iget-object v1, p0, Llvb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1574
    :cond_0
    iget-object v0, p0, Llvb;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1575
    const/4 v0, 0x2

    iget-object v1, p0, Llvb;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1577
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1578
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1582
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1583
    iget-object v1, p0, Llvb;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1584
    const/4 v1, 0x1

    iget-object v2, p0, Llvb;->a:Ljava/lang/Integer;

    .line 1585
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1587
    :cond_0
    iget-object v1, p0, Llvb;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1588
    const/4 v1, 0x2

    iget-object v2, p0, Llvb;->b:Ljava/lang/Integer;

    .line 1589
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1591
    :cond_1
    return v0
.end method
