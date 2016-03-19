.class public final Lkkh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2771
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3776
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkkh;->a:[Ljava/lang/String;

    .line 3777
    const/4 v0, 0x0

    iput-object v0, p0, Lkkh;->eD:Llyd;

    .line 3778
    const/4 v0, -0x1

    iput v0, p0, Lkkh;->eE:I

    .line 2773
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3821
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3822
    sparse-switch v0, :sswitch_data_0

    .line 3826
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3827
    :sswitch_0
    return-object p0

    .line 3832
    :sswitch_1
    const/16 v0, 0xa

    .line 3833
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3834
    iget-object v0, p0, Lkkh;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3835
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3836
    if-eqz v0, :cond_1

    .line 3837
    iget-object v3, p0, Lkkh;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3839
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3840
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3841
    invoke-virtual {p1}, Llxy;->a()I

    .line 3839
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3834
    :cond_2
    iget-object v0, p0, Lkkh;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3844
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3845
    iput-object v2, p0, Lkkh;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3822
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2785
    iget-object v0, p0, Lkkh;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkkh;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2786
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkkh;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2787
    iget-object v1, p0, Lkkh;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2788
    if-eqz v1, :cond_0

    .line 2789
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2786
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2793
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2794
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2798
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 2799
    iget-object v1, p0, Lkkh;->a:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkkh;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    .line 2802
    :goto_0
    iget-object v4, p0, Lkkh;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 2803
    iget-object v4, p0, Lkkh;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 2804
    if-eqz v4, :cond_0

    .line 2805
    add-int/lit8 v2, v2, 0x1

    .line 2807
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 2802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2810
    :cond_1
    add-int v0, v3, v1

    .line 2811
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 2813
    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method
