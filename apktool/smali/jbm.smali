.class public final Ljbm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljbd;

.field public f:[Ljbd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3923
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4928
    iput-object v1, p0, Ljbm;->a:Ljbn;

    .line 4929
    iput-object v1, p0, Ljbm;->b:Ljava/lang/String;

    .line 4930
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljbm;->c:[Ljava/lang/String;

    .line 4931
    iput-object v1, p0, Ljbm;->d:Ljava/lang/String;

    .line 4932
    iput-object v1, p0, Ljbm;->e:Ljbd;

    .line 4933
    invoke-static {}, Ljbd;->d()[Ljbd;

    move-result-object v0

    iput-object v0, p0, Ljbm;->f:[Ljbd;

    .line 4934
    iput-object v1, p0, Ljbm;->eD:Llyd;

    .line 4935
    const/4 v0, -0x1

    iput v0, p0, Ljbm;->eE:I

    .line 3925
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5023
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5024
    sparse-switch v0, :sswitch_data_0

    .line 5028
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5029
    :sswitch_0
    return-object p0

    .line 5034
    :sswitch_1
    iget-object v0, p0, Ljbm;->a:Ljbn;

    if-nez v0, :cond_1

    .line 5035
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbm;->a:Ljbn;

    .line 5037
    :cond_1
    iget-object v0, p0, Ljbm;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5041
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbm;->b:Ljava/lang/String;

    goto :goto_0

    .line 5045
    :sswitch_3
    const/16 v0, 0x1a

    .line 5046
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5047
    iget-object v0, p0, Ljbm;->c:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 5048
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 5049
    if-eqz v0, :cond_2

    .line 5050
    iget-object v3, p0, Ljbm;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5052
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 5053
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5054
    invoke-virtual {p1}, Llxy;->a()I

    .line 5052
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5047
    :cond_3
    iget-object v0, p0, Ljbm;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 5057
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5058
    iput-object v2, p0, Ljbm;->c:[Ljava/lang/String;

    goto :goto_0

    .line 5062
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbm;->d:Ljava/lang/String;

    goto :goto_0

    .line 5066
    :sswitch_5
    iget-object v0, p0, Ljbm;->e:Ljbd;

    if-nez v0, :cond_5

    .line 5067
    new-instance v0, Ljbd;

    invoke-direct {v0}, Ljbd;-><init>()V

    iput-object v0, p0, Ljbm;->e:Ljbd;

    .line 5069
    :cond_5
    iget-object v0, p0, Ljbm;->e:Ljbd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5073
    :sswitch_6
    const/16 v0, 0x32

    .line 5074
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5075
    iget-object v0, p0, Ljbm;->f:[Ljbd;

    if-nez v0, :cond_7

    move v0, v1

    .line 5076
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljbd;

    .line 5078
    if-eqz v0, :cond_6

    .line 5079
    iget-object v3, p0, Ljbm;->f:[Ljbd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5081
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 5082
    new-instance v3, Ljbd;

    invoke-direct {v3}, Ljbd;-><init>()V

    aput-object v3, v2, v0

    .line 5083
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5084
    invoke-virtual {p1}, Llxy;->a()I

    .line 5081
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5075
    :cond_7
    iget-object v0, p0, Ljbm;->f:[Ljbd;

    array-length v0, v0

    goto :goto_3

    .line 5087
    :cond_8
    new-instance v3, Ljbd;

    invoke-direct {v3}, Ljbd;-><init>()V

    aput-object v3, v2, v0

    .line 5088
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5089
    iput-object v2, p0, Ljbm;->f:[Ljbd;

    goto/16 :goto_0

    .line 5024
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3942
    iget-object v0, p0, Ljbm;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 3943
    const/4 v0, 0x1

    iget-object v2, p0, Ljbm;->a:Ljbn;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 3945
    :cond_0
    iget-object v0, p0, Ljbm;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3946
    const/4 v0, 0x2

    iget-object v2, p0, Ljbm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 3948
    :cond_1
    iget-object v0, p0, Ljbm;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljbm;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 3949
    :goto_0
    iget-object v2, p0, Ljbm;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 3950
    iget-object v2, p0, Ljbm;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 3951
    if-eqz v2, :cond_2

    .line 3952
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 3949
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3956
    :cond_3
    iget-object v0, p0, Ljbm;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3957
    const/4 v0, 0x4

    iget-object v2, p0, Ljbm;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 3959
    :cond_4
    iget-object v0, p0, Ljbm;->e:Ljbd;

    if-eqz v0, :cond_5

    .line 3960
    const/4 v0, 0x5

    iget-object v2, p0, Ljbm;->e:Ljbd;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 3962
    :cond_5
    iget-object v0, p0, Ljbm;->f:[Ljbd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljbm;->f:[Ljbd;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 3963
    :goto_1
    iget-object v0, p0, Ljbm;->f:[Ljbd;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 3964
    iget-object v0, p0, Ljbm;->f:[Ljbd;

    aget-object v0, v0, v1

    .line 3965
    if-eqz v0, :cond_6

    .line 3966
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 3963
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3970
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3971
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3975
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3976
    iget-object v1, p0, Ljbm;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 3977
    const/4 v1, 0x1

    iget-object v3, p0, Ljbm;->a:Ljbn;

    .line 3978
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3980
    :cond_0
    iget-object v1, p0, Ljbm;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3981
    const/4 v1, 0x2

    iget-object v3, p0, Ljbm;->b:Ljava/lang/String;

    .line 3982
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3984
    :cond_1
    iget-object v1, p0, Ljbm;->c:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljbm;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 3987
    :goto_0
    iget-object v5, p0, Ljbm;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 3988
    iget-object v5, p0, Ljbm;->c:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 3989
    if-eqz v5, :cond_2

    .line 3990
    add-int/lit8 v4, v4, 0x1

    .line 3992
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 3987
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3995
    :cond_3
    add-int/2addr v0, v3

    .line 3996
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 3998
    :cond_4
    iget-object v1, p0, Ljbm;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3999
    const/4 v1, 0x4

    iget-object v3, p0, Ljbm;->d:Ljava/lang/String;

    .line 4000
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4002
    :cond_5
    iget-object v1, p0, Ljbm;->e:Ljbd;

    if-eqz v1, :cond_6

    .line 4003
    const/4 v1, 0x5

    iget-object v3, p0, Ljbm;->e:Ljbd;

    .line 4004
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4006
    :cond_6
    iget-object v1, p0, Ljbm;->f:[Ljbd;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ljbm;->f:[Ljbd;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 4007
    :goto_1
    iget-object v1, p0, Ljbm;->f:[Ljbd;

    array-length v1, v1

    if-ge v2, v1, :cond_8

    .line 4008
    iget-object v1, p0, Ljbm;->f:[Ljbd;

    aget-object v1, v1, v2

    .line 4009
    if-eqz v1, :cond_7

    .line 4010
    const/4 v3, 0x6

    .line 4011
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4007
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4015
    :cond_8
    return v0
.end method
