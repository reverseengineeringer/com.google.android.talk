.class public final Lkcv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:[Ljyu;

.field public d:Lkci;

.field public e:Lkaz;

.field public f:Ljyv;

.field public g:Ljyt;

.field public h:Ljxd;

.field public i:Lkfc;

.field public j:Lkbp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18869
    invoke-direct {p0}, Llyb;-><init>()V

    .line 19874
    iput-object v1, p0, Lkcv;->a:Ljava/lang/Boolean;

    .line 19875
    iput-object v1, p0, Lkcv;->b:Ljava/lang/Boolean;

    .line 19876
    invoke-static {}, Ljyu;->d()[Ljyu;

    move-result-object v0

    iput-object v0, p0, Lkcv;->c:[Ljyu;

    .line 19877
    iput-object v1, p0, Lkcv;->d:Lkci;

    .line 19878
    iput-object v1, p0, Lkcv;->e:Lkaz;

    .line 19879
    iput-object v1, p0, Lkcv;->f:Ljyv;

    .line 19880
    iput-object v1, p0, Lkcv;->g:Ljyt;

    .line 19881
    iput-object v1, p0, Lkcv;->h:Ljxd;

    .line 19882
    iput-object v1, p0, Lkcv;->i:Lkfc;

    .line 19883
    iput-object v1, p0, Lkcv;->j:Lkbp;

    .line 19884
    iput-object v1, p0, Lkcv;->eD:Llyd;

    .line 19885
    const/4 v0, -0x1

    iput v0, p0, Lkcv;->eE:I

    .line 18871
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21986
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21987
    sparse-switch v0, :sswitch_data_0

    .line 21991
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21992
    :sswitch_0
    return-object p0

    .line 21997
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkcv;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 22001
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkcv;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 22005
    :sswitch_3
    const/16 v0, 0x1a

    .line 22006
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 22007
    iget-object v0, p0, Lkcv;->c:[Ljyu;

    if-nez v0, :cond_2

    move v0, v1

    .line 22008
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljyu;

    .line 22010
    if-eqz v0, :cond_1

    .line 22011
    iget-object v3, p0, Lkcv;->c:[Ljyu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22013
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 22014
    new-instance v3, Ljyu;

    invoke-direct {v3}, Ljyu;-><init>()V

    aput-object v3, v2, v0

    .line 22015
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 22016
    invoke-virtual {p1}, Llxy;->a()I

    .line 22013
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 22007
    :cond_2
    iget-object v0, p0, Lkcv;->c:[Ljyu;

    array-length v0, v0

    goto :goto_1

    .line 22019
    :cond_3
    new-instance v3, Ljyu;

    invoke-direct {v3}, Ljyu;-><init>()V

    aput-object v3, v2, v0

    .line 22020
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 22021
    iput-object v2, p0, Lkcv;->c:[Ljyu;

    goto :goto_0

    .line 22025
    :sswitch_4
    iget-object v0, p0, Lkcv;->d:Lkci;

    if-nez v0, :cond_4

    .line 22026
    new-instance v0, Lkci;

    invoke-direct {v0}, Lkci;-><init>()V

    iput-object v0, p0, Lkcv;->d:Lkci;

    .line 22028
    :cond_4
    iget-object v0, p0, Lkcv;->d:Lkci;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 22032
    :sswitch_5
    iget-object v0, p0, Lkcv;->e:Lkaz;

    if-nez v0, :cond_5

    .line 22033
    new-instance v0, Lkaz;

    invoke-direct {v0}, Lkaz;-><init>()V

    iput-object v0, p0, Lkcv;->e:Lkaz;

    .line 22035
    :cond_5
    iget-object v0, p0, Lkcv;->e:Lkaz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 22039
    :sswitch_6
    iget-object v0, p0, Lkcv;->f:Ljyv;

    if-nez v0, :cond_6

    .line 22040
    new-instance v0, Ljyv;

    invoke-direct {v0}, Ljyv;-><init>()V

    iput-object v0, p0, Lkcv;->f:Ljyv;

    .line 22042
    :cond_6
    iget-object v0, p0, Lkcv;->f:Ljyv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 22046
    :sswitch_7
    iget-object v0, p0, Lkcv;->g:Ljyt;

    if-nez v0, :cond_7

    .line 22047
    new-instance v0, Ljyt;

    invoke-direct {v0}, Ljyt;-><init>()V

    iput-object v0, p0, Lkcv;->g:Ljyt;

    .line 22049
    :cond_7
    iget-object v0, p0, Lkcv;->g:Ljyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 22053
    :sswitch_8
    iget-object v0, p0, Lkcv;->h:Ljxd;

    if-nez v0, :cond_8

    .line 22054
    new-instance v0, Ljxd;

    invoke-direct {v0}, Ljxd;-><init>()V

    iput-object v0, p0, Lkcv;->h:Ljxd;

    .line 22056
    :cond_8
    iget-object v0, p0, Lkcv;->h:Ljxd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 22060
    :sswitch_9
    iget-object v0, p0, Lkcv;->i:Lkfc;

    if-nez v0, :cond_9

    .line 22061
    new-instance v0, Lkfc;

    invoke-direct {v0}, Lkfc;-><init>()V

    iput-object v0, p0, Lkcv;->i:Lkfc;

    .line 22063
    :cond_9
    iget-object v0, p0, Lkcv;->i:Lkfc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 22067
    :sswitch_a
    iget-object v0, p0, Lkcv;->j:Lkbp;

    if-nez v0, :cond_a

    .line 22068
    new-instance v0, Lkbp;

    invoke-direct {v0}, Lkbp;-><init>()V

    iput-object v0, p0, Lkcv;->j:Lkbp;

    .line 22070
    :cond_a
    iget-object v0, p0, Lkcv;->j:Lkbp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 21987
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 18892
    iget-object v0, p0, Lkcv;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 18893
    const/4 v0, 0x1

    iget-object v1, p0, Lkcv;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 18895
    :cond_0
    iget-object v0, p0, Lkcv;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 18896
    const/4 v0, 0x2

    iget-object v1, p0, Lkcv;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 18898
    :cond_1
    iget-object v0, p0, Lkcv;->c:[Ljyu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkcv;->c:[Ljyu;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 18899
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkcv;->c:[Ljyu;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 18900
    iget-object v1, p0, Lkcv;->c:[Ljyu;

    aget-object v1, v1, v0

    .line 18901
    if-eqz v1, :cond_2

    .line 18902
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 18899
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18906
    :cond_3
    iget-object v0, p0, Lkcv;->d:Lkci;

    if-eqz v0, :cond_4

    .line 18907
    const/4 v0, 0x4

    iget-object v1, p0, Lkcv;->d:Lkci;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18909
    :cond_4
    iget-object v0, p0, Lkcv;->e:Lkaz;

    if-eqz v0, :cond_5

    .line 18910
    const/4 v0, 0x5

    iget-object v1, p0, Lkcv;->e:Lkaz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18912
    :cond_5
    iget-object v0, p0, Lkcv;->f:Ljyv;

    if-eqz v0, :cond_6

    .line 18913
    const/4 v0, 0x6

    iget-object v1, p0, Lkcv;->f:Ljyv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18915
    :cond_6
    iget-object v0, p0, Lkcv;->g:Ljyt;

    if-eqz v0, :cond_7

    .line 18916
    const/4 v0, 0x7

    iget-object v1, p0, Lkcv;->g:Ljyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18918
    :cond_7
    iget-object v0, p0, Lkcv;->h:Ljxd;

    if-eqz v0, :cond_8

    .line 18919
    const/16 v0, 0x8

    iget-object v1, p0, Lkcv;->h:Ljxd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18921
    :cond_8
    iget-object v0, p0, Lkcv;->i:Lkfc;

    if-eqz v0, :cond_9

    .line 18922
    const/16 v0, 0x9

    iget-object v1, p0, Lkcv;->i:Lkfc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18924
    :cond_9
    iget-object v0, p0, Lkcv;->j:Lkbp;

    if-eqz v0, :cond_a

    .line 18925
    const/16 v0, 0xa

    iget-object v1, p0, Lkcv;->j:Lkbp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18927
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 18928
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 18932
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 18933
    iget-object v1, p0, Lkcv;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 18934
    const/4 v1, 0x1

    iget-object v2, p0, Lkcv;->a:Ljava/lang/Boolean;

    .line 18935
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 18935
    add-int/2addr v0, v1

    .line 18937
    :cond_0
    iget-object v1, p0, Lkcv;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 18938
    const/4 v1, 0x2

    iget-object v2, p0, Lkcv;->b:Ljava/lang/Boolean;

    .line 18939
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 18939
    add-int/2addr v0, v1

    .line 18941
    :cond_1
    iget-object v1, p0, Lkcv;->c:[Ljyu;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkcv;->c:[Ljyu;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 18942
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkcv;->c:[Ljyu;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 18943
    iget-object v2, p0, Lkcv;->c:[Ljyu;

    aget-object v2, v2, v0

    .line 18944
    if-eqz v2, :cond_2

    .line 18945
    const/4 v3, 0x3

    .line 18946
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18942
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 18950
    :cond_4
    iget-object v1, p0, Lkcv;->d:Lkci;

    if-eqz v1, :cond_5

    .line 18951
    const/4 v1, 0x4

    iget-object v2, p0, Lkcv;->d:Lkci;

    .line 18952
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18954
    :cond_5
    iget-object v1, p0, Lkcv;->e:Lkaz;

    if-eqz v1, :cond_6

    .line 18955
    const/4 v1, 0x5

    iget-object v2, p0, Lkcv;->e:Lkaz;

    .line 18956
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18958
    :cond_6
    iget-object v1, p0, Lkcv;->f:Ljyv;

    if-eqz v1, :cond_7

    .line 18959
    const/4 v1, 0x6

    iget-object v2, p0, Lkcv;->f:Ljyv;

    .line 18960
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18962
    :cond_7
    iget-object v1, p0, Lkcv;->g:Ljyt;

    if-eqz v1, :cond_8

    .line 18963
    const/4 v1, 0x7

    iget-object v2, p0, Lkcv;->g:Ljyt;

    .line 18964
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18966
    :cond_8
    iget-object v1, p0, Lkcv;->h:Ljxd;

    if-eqz v1, :cond_9

    .line 18967
    const/16 v1, 0x8

    iget-object v2, p0, Lkcv;->h:Ljxd;

    .line 18968
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18970
    :cond_9
    iget-object v1, p0, Lkcv;->i:Lkfc;

    if-eqz v1, :cond_a

    .line 18971
    const/16 v1, 0x9

    iget-object v2, p0, Lkcv;->i:Lkfc;

    .line 18972
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18974
    :cond_a
    iget-object v1, p0, Lkcv;->j:Lkbp;

    if-eqz v1, :cond_b

    .line 18975
    const/16 v1, 0xa

    iget-object v2, p0, Lkcv;->j:Lkbp;

    .line 18976
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18978
    :cond_b
    return v0
.end method
