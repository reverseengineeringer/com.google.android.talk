.class public final Liwi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:[Lixo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2778
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3783
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liwi;->a:[Ljava/lang/String;

    .line 3784
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liwi;->b:[Ljava/lang/String;

    .line 3785
    invoke-static {}, Lixo;->d()[Lixo;

    move-result-object v0

    iput-object v0, p0, Liwi;->c:[Lixo;

    .line 3786
    const/4 v0, 0x0

    iput-object v0, p0, Liwi;->eD:Llyd;

    .line 3787
    const/4 v0, -0x1

    iput v0, p0, Liwi;->eE:I

    .line 2780
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3869
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3870
    sparse-switch v0, :sswitch_data_0

    .line 3874
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3875
    :sswitch_0
    return-object p0

    .line 3880
    :sswitch_1
    const/16 v0, 0xa

    .line 3881
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3882
    iget-object v0, p0, Liwi;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3883
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3884
    if-eqz v0, :cond_1

    .line 3885
    iget-object v3, p0, Liwi;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3887
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3888
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3889
    invoke-virtual {p1}, Llxy;->a()I

    .line 3887
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3882
    :cond_2
    iget-object v0, p0, Liwi;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3892
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3893
    iput-object v2, p0, Liwi;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3897
    :sswitch_2
    const/16 v0, 0x12

    .line 3898
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3899
    iget-object v0, p0, Liwi;->b:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 3900
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3901
    if-eqz v0, :cond_4

    .line 3902
    iget-object v3, p0, Liwi;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3904
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3905
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3906
    invoke-virtual {p1}, Llxy;->a()I

    .line 3904
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3899
    :cond_5
    iget-object v0, p0, Liwi;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 3909
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3910
    iput-object v2, p0, Liwi;->b:[Ljava/lang/String;

    goto :goto_0

    .line 3914
    :sswitch_3
    const/16 v0, 0x1a

    .line 3915
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3916
    iget-object v0, p0, Liwi;->c:[Lixo;

    if-nez v0, :cond_8

    move v0, v1

    .line 3917
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lixo;

    .line 3919
    if-eqz v0, :cond_7

    .line 3920
    iget-object v3, p0, Liwi;->c:[Lixo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3922
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 3923
    new-instance v3, Lixo;

    invoke-direct {v3}, Lixo;-><init>()V

    aput-object v3, v2, v0

    .line 3924
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3925
    invoke-virtual {p1}, Llxy;->a()I

    .line 3922
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3916
    :cond_8
    iget-object v0, p0, Liwi;->c:[Lixo;

    array-length v0, v0

    goto :goto_5

    .line 3928
    :cond_9
    new-instance v3, Lixo;

    invoke-direct {v3}, Lixo;-><init>()V

    aput-object v3, v2, v0

    .line 3929
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3930
    iput-object v2, p0, Liwi;->c:[Lixo;

    goto/16 :goto_0

    .line 3870
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2794
    iget-object v0, p0, Liwi;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liwi;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 2795
    :goto_0
    iget-object v2, p0, Liwi;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2796
    iget-object v2, p0, Liwi;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 2797
    if-eqz v2, :cond_0

    .line 2798
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 2795
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2802
    :cond_1
    iget-object v0, p0, Liwi;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liwi;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 2803
    :goto_1
    iget-object v2, p0, Liwi;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2804
    iget-object v2, p0, Liwi;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 2805
    if-eqz v2, :cond_2

    .line 2806
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 2803
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2810
    :cond_3
    iget-object v0, p0, Liwi;->c:[Lixo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Liwi;->c:[Lixo;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 2811
    :goto_2
    iget-object v0, p0, Liwi;->c:[Lixo;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 2812
    iget-object v0, p0, Liwi;->c:[Lixo;

    aget-object v0, v0, v1

    .line 2813
    if-eqz v0, :cond_4

    .line 2814
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2811
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2818
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2819
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2823
    invoke-super {p0}, Llyb;->b()I

    move-result v4

    .line 2824
    iget-object v0, p0, Liwi;->a:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Liwi;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    .line 2827
    :goto_0
    iget-object v5, p0, Liwi;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 2828
    iget-object v5, p0, Liwi;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 2829
    if-eqz v5, :cond_0

    .line 2830
    add-int/lit8 v3, v3, 0x1

    .line 2832
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 2827
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2835
    :cond_1
    add-int v0, v4, v2

    .line 2836
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 2838
    :goto_1
    iget-object v2, p0, Liwi;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Liwi;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    .line 2841
    :goto_2
    iget-object v5, p0, Liwi;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 2842
    iget-object v5, p0, Liwi;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 2843
    if-eqz v5, :cond_2

    .line 2844
    add-int/lit8 v4, v4, 0x1

    .line 2846
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 2841
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2849
    :cond_3
    add-int/2addr v0, v3

    .line 2850
    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    .line 2852
    :cond_4
    iget-object v2, p0, Liwi;->c:[Lixo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Liwi;->c:[Lixo;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2853
    :goto_3
    iget-object v2, p0, Liwi;->c:[Lixo;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 2854
    iget-object v2, p0, Liwi;->c:[Lixo;

    aget-object v2, v2, v1

    .line 2855
    if-eqz v2, :cond_5

    .line 2856
    const/4 v3, 0x3

    .line 2857
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2853
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2861
    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method
