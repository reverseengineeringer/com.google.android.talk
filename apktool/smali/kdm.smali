.class public final Lkdm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public d:[I

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22947
    invoke-direct {p0}, Llyb;-><init>()V

    .line 23952
    iput-object v1, p0, Lkdm;->requestHeader:Lkdo;

    .line 23953
    iput-object v1, p0, Lkdm;->a:Ljxw;

    .line 23954
    iput-object v1, p0, Lkdm;->b:Ljava/lang/Long;

    .line 23955
    iput-object v1, p0, Lkdm;->c:Ljava/lang/Integer;

    .line 23956
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkdm;->d:[I

    .line 23957
    iput-object v1, p0, Lkdm;->eD:Llyd;

    .line 23958
    const/4 v0, -0x1

    iput v0, p0, Lkdm;->eE:I

    .line 22949
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 24022
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 24023
    sparse-switch v0, :sswitch_data_0

    .line 24027
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24028
    :sswitch_0
    return-object p0

    .line 24033
    :sswitch_1
    iget-object v0, p0, Lkdm;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 24034
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdm;->requestHeader:Lkdo;

    .line 24036
    :cond_1
    iget-object v0, p0, Lkdm;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24040
    :sswitch_2
    iget-object v0, p0, Lkdm;->a:Ljxw;

    if-nez v0, :cond_2

    .line 24041
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkdm;->a:Ljxw;

    .line 24043
    :cond_2
    iget-object v0, p0, Lkdm;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24047
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 24048
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 24052
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdm;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 24058
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdm;->b:Ljava/lang/Long;

    goto :goto_0

    .line 24062
    :sswitch_5
    const/16 v0, 0x28

    .line 24063
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 24064
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 24066
    :goto_1
    if-ge v3, v4, :cond_4

    .line 24067
    if-eqz v3, :cond_3

    .line 24068
    invoke-virtual {p1}, Llxy;->a()I

    .line 24070
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 24071
    packed-switch v6, :pswitch_data_1

    move v0, v1

    .line 24066
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 24074
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 24078
    :cond_4
    if-eqz v1, :cond_0

    .line 24079
    iget-object v0, p0, Lkdm;->d:[I

    if-nez v0, :cond_5

    move v0, v2

    .line 24080
    :goto_3
    if-nez v0, :cond_6

    array-length v3, v5

    if-ne v1, v3, :cond_6

    .line 24081
    iput-object v5, p0, Lkdm;->d:[I

    goto :goto_0

    .line 24079
    :cond_5
    iget-object v0, p0, Lkdm;->d:[I

    array-length v0, v0

    goto :goto_3

    .line 24083
    :cond_6
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 24084
    if-eqz v0, :cond_7

    .line 24085
    iget-object v4, p0, Lkdm;->d:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24087
    :cond_7
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24088
    iput-object v3, p0, Lkdm;->d:[I

    goto/16 :goto_0

    .line 24094
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 24095
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 24098
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 24099
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_8

    .line 24100
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_4

    .line 24103
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 24107
    :cond_8
    if-eqz v0, :cond_c

    .line 24108
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 24109
    iget-object v1, p0, Lkdm;->d:[I

    if-nez v1, :cond_a

    move v1, v2

    .line 24110
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 24111
    if-eqz v1, :cond_9

    .line 24112
    iget-object v0, p0, Lkdm;->d:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24114
    :cond_9
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_b

    .line 24115
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 24116
    packed-switch v5, :pswitch_data_3

    goto :goto_6

    .line 24119
    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 24109
    :cond_a
    iget-object v1, p0, Lkdm;->d:[I

    array-length v1, v1

    goto :goto_5

    .line 24123
    :cond_b
    iput-object v4, p0, Lkdm;->d:[I

    .line 24125
    :cond_c
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 24023
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch

    .line 24048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 24071
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 24100
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 24116
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 22965
    iget-object v0, p0, Lkdm;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 22966
    const/4 v0, 0x1

    iget-object v1, p0, Lkdm;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 22968
    :cond_0
    iget-object v0, p0, Lkdm;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 22969
    const/4 v0, 0x2

    iget-object v1, p0, Lkdm;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 22971
    :cond_1
    iget-object v0, p0, Lkdm;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 22972
    const/4 v0, 0x3

    iget-object v1, p0, Lkdm;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 22974
    :cond_2
    iget-object v0, p0, Lkdm;->b:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 22975
    const/4 v0, 0x4

    iget-object v1, p0, Lkdm;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 22977
    :cond_3
    iget-object v0, p0, Lkdm;->d:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkdm;->d:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 22978
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkdm;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 22979
    const/4 v1, 0x5

    iget-object v2, p0, Lkdm;->d:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 22978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22982
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 22983
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 22987
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 22988
    iget-object v2, p0, Lkdm;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 22989
    const/4 v2, 0x1

    iget-object v3, p0, Lkdm;->requestHeader:Lkdo;

    .line 22990
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22992
    :cond_0
    iget-object v2, p0, Lkdm;->a:Ljxw;

    if-eqz v2, :cond_1

    .line 22993
    const/4 v2, 0x2

    iget-object v3, p0, Lkdm;->a:Ljxw;

    .line 22994
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22996
    :cond_1
    iget-object v2, p0, Lkdm;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 22997
    const/4 v2, 0x3

    iget-object v3, p0, Lkdm;->c:Ljava/lang/Integer;

    .line 22998
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23000
    :cond_2
    iget-object v2, p0, Lkdm;->b:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 23001
    const/4 v2, 0x4

    iget-object v3, p0, Lkdm;->b:Ljava/lang/Long;

    .line 23002
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23004
    :cond_3
    iget-object v2, p0, Lkdm;->d:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkdm;->d:[I

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    .line 23006
    :goto_0
    iget-object v3, p0, Lkdm;->d:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 23007
    iget-object v3, p0, Lkdm;->d:[I

    aget v3, v3, v1

    .line 23009
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 23006
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23011
    :cond_4
    add-int/2addr v0, v2

    .line 23012
    iget-object v1, p0, Lkdm;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 23014
    :cond_5
    return v0
.end method
