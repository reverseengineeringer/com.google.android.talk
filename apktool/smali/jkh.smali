.class public final Ljkh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljku;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6636
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7641
    invoke-static {}, Ljku;->d()[Ljku;

    move-result-object v0

    iput-object v0, p0, Ljkh;->a:[Ljku;

    .line 7642
    const/4 v0, 0x0

    iput-object v0, p0, Ljkh;->eD:Llyd;

    .line 7643
    const/4 v0, -0x1

    iput v0, p0, Ljkh;->eE:I

    .line 6638
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7682
    sparse-switch v0, :sswitch_data_0

    .line 7686
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7687
    :sswitch_0
    return-object p0

    .line 7692
    :sswitch_1
    const/16 v0, 0xa

    .line 7693
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7694
    iget-object v0, p0, Ljkh;->a:[Ljku;

    if-nez v0, :cond_2

    move v0, v1

    .line 7695
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljku;

    .line 7697
    if-eqz v0, :cond_1

    .line 7698
    iget-object v3, p0, Ljkh;->a:[Ljku;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7700
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 7701
    new-instance v3, Ljku;

    invoke-direct {v3}, Ljku;-><init>()V

    aput-object v3, v2, v0

    .line 7702
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 7703
    invoke-virtual {p1}, Llxy;->a()I

    .line 7700
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7694
    :cond_2
    iget-object v0, p0, Ljkh;->a:[Ljku;

    array-length v0, v0

    goto :goto_1

    .line 7706
    :cond_3
    new-instance v3, Ljku;

    invoke-direct {v3}, Ljku;-><init>()V

    aput-object v3, v2, v0

    .line 7707
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 7708
    iput-object v2, p0, Ljkh;->a:[Ljku;

    goto :goto_0

    .line 7682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 6650
    iget-object v0, p0, Ljkh;->a:[Ljku;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljkh;->a:[Ljku;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 6651
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljkh;->a:[Ljku;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 6652
    iget-object v1, p0, Ljkh;->a:[Ljku;

    aget-object v1, v1, v0

    .line 6653
    if-eqz v1, :cond_0

    .line 6654
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 6651
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6658
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6659
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 6663
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 6664
    iget-object v0, p0, Ljkh;->a:[Ljku;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljkh;->a:[Ljku;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 6665
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljkh;->a:[Ljku;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 6666
    iget-object v2, p0, Ljkh;->a:[Ljku;

    aget-object v2, v2, v0

    .line 6667
    if-eqz v2, :cond_0

    .line 6668
    const/4 v3, 0x1

    .line 6669
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6665
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6673
    :cond_1
    return v1
.end method
