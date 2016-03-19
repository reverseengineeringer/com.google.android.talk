.class public final Liys;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liys;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llon;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1535
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2540
    iput-object v0, p0, Liys;->apiHeader:Liye;

    .line 2541
    iput-object v0, p0, Liys;->a:Llon;

    .line 2542
    iput-object v0, p0, Liys;->eD:Llyd;

    .line 2543
    const/4 v0, -0x1

    iput v0, p0, Liys;->eE:I

    .line 1537
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2578
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2579
    sparse-switch v0, :sswitch_data_0

    .line 2583
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2584
    :sswitch_0
    return-object p0

    .line 2589
    :sswitch_1
    iget-object v0, p0, Liys;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 2590
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liys;->apiHeader:Liye;

    .line 2592
    :cond_1
    iget-object v0, p0, Liys;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2596
    :sswitch_2
    iget-object v0, p0, Liys;->a:Llon;

    if-nez v0, :cond_2

    .line 2597
    new-instance v0, Llon;

    invoke-direct {v0}, Llon;-><init>()V

    iput-object v0, p0, Liys;->a:Llon;

    .line 2599
    :cond_2
    iget-object v0, p0, Liys;->a:Llon;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2579
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1550
    iget-object v0, p0, Liys;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 1551
    const/4 v0, 0x1

    iget-object v1, p0, Liys;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1553
    :cond_0
    iget-object v0, p0, Liys;->a:Llon;

    if-eqz v0, :cond_1

    .line 1554
    const/4 v0, 0x2

    iget-object v1, p0, Liys;->a:Llon;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1556
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1557
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1561
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1562
    iget-object v1, p0, Liys;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 1563
    const/4 v1, 0x1

    iget-object v2, p0, Liys;->apiHeader:Liye;

    .line 1564
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1566
    :cond_0
    iget-object v1, p0, Liys;->a:Llon;

    if-eqz v1, :cond_1

    .line 1567
    const/4 v1, 0x2

    iget-object v2, p0, Liys;->a:Llon;

    .line 1568
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1570
    :cond_1
    return v0
.end method
