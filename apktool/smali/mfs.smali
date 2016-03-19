.class public final Lmfs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Integer;

.field public d:[Lmfy;

.field public e:Lmfv;

.field public f:[Lmfz;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Boolean;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 934
    invoke-direct {p0}, Llyb;-><init>()V

    .line 935
    iput-object v1, p0, Lmfs;->a:Ljava/lang/Boolean;

    .line 936
    iput-object v1, p0, Lmfs;->b:Ljava/lang/Boolean;

    .line 937
    iput-object v1, p0, Lmfs;->c:Ljava/lang/Integer;

    .line 938
    invoke-static {}, Lmfy;->d()[Lmfy;

    move-result-object v0

    iput-object v0, p0, Lmfs;->d:[Lmfy;

    .line 939
    iput-object v1, p0, Lmfs;->e:Lmfv;

    .line 940
    invoke-static {}, Lmfz;->d()[Lmfz;

    move-result-object v0

    iput-object v0, p0, Lmfs;->f:[Lmfz;

    .line 941
    iput-object v1, p0, Lmfs;->g:Ljava/lang/Boolean;

    .line 942
    iput-object v1, p0, Lmfs;->h:Ljava/lang/Boolean;

    .line 943
    iput-object v1, p0, Lmfs;->i:Ljava/lang/Boolean;

    .line 944
    const/high16 v0, -0x80000000

    iput v0, p0, Lmfs;->j:I

    .line 945
    iput-object v1, p0, Lmfs;->eD:Llyd;

    .line 946
    const/4 v0, -0x1

    iput v0, p0, Lmfs;->eE:I

    .line 947
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6052
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6053
    sparse-switch v0, :sswitch_data_0

    .line 6057
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6058
    :sswitch_0
    return-object p0

    .line 6063
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfs;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 6067
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfs;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 6071
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmfs;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 6075
    :sswitch_4
    const/16 v0, 0x22

    .line 6076
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6077
    iget-object v0, p0, Lmfs;->d:[Lmfy;

    if-nez v0, :cond_2

    move v0, v1

    .line 6078
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmfy;

    .line 6080
    if-eqz v0, :cond_1

    .line 6081
    iget-object v3, p0, Lmfs;->d:[Lmfy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6083
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6084
    new-instance v3, Lmfy;

    invoke-direct {v3}, Lmfy;-><init>()V

    aput-object v3, v2, v0

    .line 6085
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6086
    invoke-virtual {p1}, Llxy;->a()I

    .line 6083
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6077
    :cond_2
    iget-object v0, p0, Lmfs;->d:[Lmfy;

    array-length v0, v0

    goto :goto_1

    .line 6089
    :cond_3
    new-instance v3, Lmfy;

    invoke-direct {v3}, Lmfy;-><init>()V

    aput-object v3, v2, v0

    .line 6090
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6091
    iput-object v2, p0, Lmfs;->d:[Lmfy;

    goto :goto_0

    .line 6095
    :sswitch_5
    iget-object v0, p0, Lmfs;->e:Lmfv;

    if-nez v0, :cond_4

    .line 6096
    new-instance v0, Lmfv;

    invoke-direct {v0}, Lmfv;-><init>()V

    iput-object v0, p0, Lmfs;->e:Lmfv;

    .line 6098
    :cond_4
    iget-object v0, p0, Lmfs;->e:Lmfv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6102
    :sswitch_6
    const/16 v0, 0x32

    .line 6103
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6104
    iget-object v0, p0, Lmfs;->f:[Lmfz;

    if-nez v0, :cond_6

    move v0, v1

    .line 6105
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmfz;

    .line 6107
    if-eqz v0, :cond_5

    .line 6108
    iget-object v3, p0, Lmfs;->f:[Lmfz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6110
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 6111
    new-instance v3, Lmfz;

    invoke-direct {v3}, Lmfz;-><init>()V

    aput-object v3, v2, v0

    .line 6112
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6113
    invoke-virtual {p1}, Llxy;->a()I

    .line 6110
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6104
    :cond_6
    iget-object v0, p0, Lmfs;->f:[Lmfz;

    array-length v0, v0

    goto :goto_3

    .line 6116
    :cond_7
    new-instance v3, Lmfz;

    invoke-direct {v3}, Lmfz;-><init>()V

    aput-object v3, v2, v0

    .line 6117
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6118
    iput-object v2, p0, Lmfs;->f:[Lmfz;

    goto/16 :goto_0

    .line 6122
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfs;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6126
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfs;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6130
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfs;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 6134
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6135
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 6144
    :pswitch_0
    iput v0, p0, Lmfs;->j:I

    goto/16 :goto_0

    .line 6053
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    .line 6135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 952
    iget-object v0, p0, Lmfs;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x1

    iget-object v2, p0, Lmfs;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 955
    :cond_0
    iget-object v0, p0, Lmfs;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 956
    const/4 v0, 0x2

    iget-object v2, p0, Lmfs;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 958
    :cond_1
    const/4 v0, 0x3

    iget-object v2, p0, Lmfs;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 959
    iget-object v0, p0, Lmfs;->d:[Lmfy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmfs;->d:[Lmfy;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 960
    :goto_0
    iget-object v2, p0, Lmfs;->d:[Lmfy;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 961
    iget-object v2, p0, Lmfs;->d:[Lmfy;

    aget-object v2, v2, v0

    .line 962
    if-eqz v2, :cond_2

    .line 963
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 960
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_3
    iget-object v0, p0, Lmfs;->e:Lmfv;

    if-eqz v0, :cond_4

    .line 968
    const/4 v0, 0x5

    iget-object v2, p0, Lmfs;->e:Lmfv;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 970
    :cond_4
    iget-object v0, p0, Lmfs;->f:[Lmfz;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmfs;->f:[Lmfz;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 971
    :goto_1
    iget-object v0, p0, Lmfs;->f:[Lmfz;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 972
    iget-object v0, p0, Lmfs;->f:[Lmfz;

    aget-object v0, v0, v1

    .line 973
    if-eqz v0, :cond_5

    .line 974
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 971
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 978
    :cond_6
    iget-object v0, p0, Lmfs;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 979
    const/4 v0, 0x7

    iget-object v1, p0, Lmfs;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 981
    :cond_7
    iget-object v0, p0, Lmfs;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 982
    const/16 v0, 0x8

    iget-object v1, p0, Lmfs;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 984
    :cond_8
    iget-object v0, p0, Lmfs;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 985
    const/16 v0, 0x9

    iget-object v1, p0, Lmfs;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 987
    :cond_9
    iget v0, p0, Lmfs;->j:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_a

    .line 988
    const/16 v0, 0xa

    iget v1, p0, Lmfs;->j:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 990
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 991
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 995
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 996
    iget-object v2, p0, Lmfs;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 997
    const/4 v2, 0x1

    iget-object v3, p0, Lmfs;->a:Ljava/lang/Boolean;

    .line 998
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 998
    add-int/2addr v0, v2

    .line 1000
    :cond_0
    iget-object v2, p0, Lmfs;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 1001
    const/4 v2, 0x2

    iget-object v3, p0, Lmfs;->b:Ljava/lang/Boolean;

    .line 1002
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1002
    add-int/2addr v0, v2

    .line 1004
    :cond_1
    const/4 v2, 0x3

    iget-object v3, p0, Lmfs;->c:Ljava/lang/Integer;

    .line 1005
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1006
    iget-object v2, p0, Lmfs;->d:[Lmfy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmfs;->d:[Lmfy;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 1007
    :goto_0
    iget-object v3, p0, Lmfs;->d:[Lmfy;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1008
    iget-object v3, p0, Lmfs;->d:[Lmfy;

    aget-object v3, v3, v0

    .line 1009
    if-eqz v3, :cond_2

    .line 1010
    const/4 v4, 0x4

    .line 1011
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1007
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1015
    :cond_4
    iget-object v2, p0, Lmfs;->e:Lmfv;

    if-eqz v2, :cond_5

    .line 1016
    const/4 v2, 0x5

    iget-object v3, p0, Lmfs;->e:Lmfv;

    .line 1017
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1019
    :cond_5
    iget-object v2, p0, Lmfs;->f:[Lmfz;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmfs;->f:[Lmfz;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 1020
    :goto_1
    iget-object v2, p0, Lmfs;->f:[Lmfz;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1021
    iget-object v2, p0, Lmfs;->f:[Lmfz;

    aget-object v2, v2, v1

    .line 1022
    if-eqz v2, :cond_6

    .line 1023
    const/4 v3, 0x6

    .line 1024
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1020
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1028
    :cond_7
    iget-object v1, p0, Lmfs;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 1029
    const/4 v1, 0x7

    iget-object v2, p0, Lmfs;->g:Ljava/lang/Boolean;

    .line 1030
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1030
    add-int/2addr v0, v1

    .line 1032
    :cond_8
    iget-object v1, p0, Lmfs;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 1033
    const/16 v1, 0x8

    iget-object v2, p0, Lmfs;->h:Ljava/lang/Boolean;

    .line 1034
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1034
    add-int/2addr v0, v1

    .line 1036
    :cond_9
    iget-object v1, p0, Lmfs;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 1037
    const/16 v1, 0x9

    iget-object v2, p0, Lmfs;->i:Ljava/lang/Boolean;

    .line 1038
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1038
    add-int/2addr v0, v1

    .line 1040
    :cond_a
    iget v1, p0, Lmfs;->j:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_b

    .line 1041
    const/16 v1, 0xa

    iget v2, p0, Lmfs;->j:I

    .line 1042
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1044
    :cond_b
    return v0
.end method
