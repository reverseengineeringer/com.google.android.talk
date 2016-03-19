.class public final Llnk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lltz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1535
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2540
    invoke-static {}, Lltz;->d()[Lltz;

    move-result-object v0

    iput-object v0, p0, Llnk;->a:[Lltz;

    .line 2541
    const/4 v0, 0x0

    iput-object v0, p0, Llnk;->eD:Llyd;

    .line 2542
    const/4 v0, -0x1

    iput v0, p0, Llnk;->eE:I

    .line 1537
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2580
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2581
    sparse-switch v0, :sswitch_data_0

    .line 2585
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2586
    :sswitch_0
    return-object p0

    .line 2591
    :sswitch_1
    const/16 v0, 0xa

    .line 2592
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2593
    iget-object v0, p0, Llnk;->a:[Lltz;

    if-nez v0, :cond_2

    move v0, v1

    .line 2594
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lltz;

    .line 2596
    if-eqz v0, :cond_1

    .line 2597
    iget-object v3, p0, Llnk;->a:[Lltz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2599
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2600
    new-instance v3, Lltz;

    invoke-direct {v3}, Lltz;-><init>()V

    aput-object v3, v2, v0

    .line 2601
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2602
    invoke-virtual {p1}, Llxy;->a()I

    .line 2599
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2593
    :cond_2
    iget-object v0, p0, Llnk;->a:[Lltz;

    array-length v0, v0

    goto :goto_1

    .line 2605
    :cond_3
    new-instance v3, Lltz;

    invoke-direct {v3}, Lltz;-><init>()V

    aput-object v3, v2, v0

    .line 2606
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2607
    iput-object v2, p0, Llnk;->a:[Lltz;

    goto :goto_0

    .line 2581
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1549
    iget-object v0, p0, Llnk;->a:[Lltz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llnk;->a:[Lltz;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1550
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llnk;->a:[Lltz;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1551
    iget-object v1, p0, Llnk;->a:[Lltz;

    aget-object v1, v1, v0

    .line 1552
    if-eqz v1, :cond_0

    .line 1553
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1557
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1558
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1562
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 1563
    iget-object v0, p0, Llnk;->a:[Lltz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llnk;->a:[Lltz;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1564
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llnk;->a:[Lltz;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1565
    iget-object v2, p0, Llnk;->a:[Lltz;

    aget-object v2, v2, v0

    .line 1566
    if-eqz v2, :cond_0

    .line 1567
    const/4 v3, 0x1

    .line 1568
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1572
    :cond_1
    return v1
.end method
