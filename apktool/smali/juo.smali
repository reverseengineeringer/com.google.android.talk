.class public final Ljuo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljuo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljuo;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1707
    iput-object v1, p0, Ljuo;->a:Ljava/lang/String;

    .line 1708
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljuo;->b:[I

    .line 1709
    iput-object v1, p0, Ljuo;->eD:Llyd;

    .line 1710
    const/4 v0, -0x1

    iput v0, p0, Ljuo;->eE:I

    .line 704
    return-void
.end method

.method public static d()[Ljuo;
    .locals 2

    .prologue
    .line 683
    sget-object v0, Ljuo;->c:[Ljuo;

    if-nez v0, :cond_1

    .line 684
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    sget-object v0, Ljuo;->c:[Ljuo;

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x0

    new-array v0, v0, [Ljuo;

    sput-object v0, Ljuo;->c:[Ljuo;

    .line 689
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    :cond_1
    sget-object v0, Ljuo;->c:[Ljuo;

    return-object v0

    .line 689
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1749
    sparse-switch v0, :sswitch_data_0

    .line 1753
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1754
    :sswitch_0
    return-object p0

    .line 1759
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuo;->a:Ljava/lang/String;

    goto :goto_0

    .line 1763
    :sswitch_2
    const/16 v0, 0x1fd

    .line 1764
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1765
    iget-object v0, p0, Ljuo;->b:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 1766
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1767
    if-eqz v0, :cond_1

    .line 1768
    iget-object v3, p0, Ljuo;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1770
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1771
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v2, v0

    .line 1772
    invoke-virtual {p1}, Llxy;->a()I

    .line 1770
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1765
    :cond_2
    iget-object v0, p0, Ljuo;->b:[I

    array-length v0, v0

    goto :goto_1

    .line 1775
    :cond_3
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v2, v0

    .line 1776
    iput-object v2, p0, Ljuo;->b:[I

    goto :goto_0

    .line 1780
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1781
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1782
    div-int/lit8 v3, v0, 0x4

    .line 1783
    iget-object v0, p0, Ljuo;->b:[I

    if-nez v0, :cond_5

    move v0, v1

    .line 1784
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [I

    .line 1785
    if-eqz v0, :cond_4

    .line 1786
    iget-object v4, p0, Ljuo;->b:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1788
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1789
    invoke-virtual {p1}, Llxy;->h()I

    move-result v4

    aput v4, v3, v0

    .line 1788
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1783
    :cond_5
    iget-object v0, p0, Ljuo;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 1791
    :cond_6
    iput-object v3, p0, Ljuo;->b:[I

    .line 1792
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto :goto_0

    .line 1749
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f2 -> :sswitch_1
        0x1fa -> :sswitch_3
        0x1fd -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Ljuo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 718
    const/16 v0, 0x3e

    iget-object v1, p0, Ljuo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 720
    :cond_0
    iget-object v0, p0, Ljuo;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljuo;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 721
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljuo;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 722
    const/16 v1, 0x3f

    iget-object v2, p0, Ljuo;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->b(II)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 726
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 730
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 731
    iget-object v1, p0, Ljuo;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 732
    const/16 v1, 0x3e

    iget-object v2, p0, Ljuo;->a:Ljava/lang/String;

    .line 733
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 735
    :cond_0
    iget-object v1, p0, Ljuo;->b:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljuo;->b:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 736
    iget-object v1, p0, Ljuo;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 737
    add-int/2addr v0, v1

    .line 738
    iget-object v1, p0, Ljuo;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 740
    :cond_1
    return v0
.end method
