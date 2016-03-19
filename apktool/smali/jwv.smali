.class public final Ljwv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkbh;

.field public b:Ljzl;

.field public c:Ljxr;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8039
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9044
    iput-object v1, p0, Ljwv;->responseHeader:Lkdp;

    .line 9045
    invoke-static {}, Lkbh;->d()[Lkbh;

    move-result-object v0

    iput-object v0, p0, Ljwv;->a:[Lkbh;

    .line 9046
    iput-object v1, p0, Ljwv;->b:Ljzl;

    .line 9047
    iput-object v1, p0, Ljwv;->c:Ljxr;

    .line 9048
    iput-object v1, p0, Ljwv;->d:Ljava/lang/Integer;

    .line 9049
    iput-object v1, p0, Ljwv;->e:Ljava/lang/Long;

    .line 9050
    iput-object v1, p0, Ljwv;->f:Ljava/lang/String;

    .line 9051
    iput-object v1, p0, Ljwv;->eD:Llyd;

    .line 9052
    const/4 v0, -0x1

    iput v0, p0, Ljwv;->eE:I

    .line 8041
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9133
    sparse-switch v0, :sswitch_data_0

    .line 9137
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9138
    :sswitch_0
    return-object p0

    .line 9143
    :sswitch_1
    iget-object v0, p0, Ljwv;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 9144
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Ljwv;->responseHeader:Lkdp;

    .line 9146
    :cond_1
    iget-object v0, p0, Ljwv;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9150
    :sswitch_2
    const/16 v0, 0x12

    .line 9151
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9152
    iget-object v0, p0, Ljwv;->a:[Lkbh;

    if-nez v0, :cond_3

    move v0, v1

    .line 9153
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbh;

    .line 9155
    if-eqz v0, :cond_2

    .line 9156
    iget-object v3, p0, Ljwv;->a:[Lkbh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9158
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 9159
    new-instance v3, Lkbh;

    invoke-direct {v3}, Lkbh;-><init>()V

    aput-object v3, v2, v0

    .line 9160
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9161
    invoke-virtual {p1}, Llxy;->a()I

    .line 9158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9152
    :cond_3
    iget-object v0, p0, Ljwv;->a:[Lkbh;

    array-length v0, v0

    goto :goto_1

    .line 9164
    :cond_4
    new-instance v3, Lkbh;

    invoke-direct {v3}, Lkbh;-><init>()V

    aput-object v3, v2, v0

    .line 9165
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9166
    iput-object v2, p0, Ljwv;->a:[Lkbh;

    goto :goto_0

    .line 9170
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwv;->e:Ljava/lang/Long;

    goto :goto_0

    .line 9174
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwv;->f:Ljava/lang/String;

    goto :goto_0

    .line 9178
    :sswitch_5
    iget-object v0, p0, Ljwv;->b:Ljzl;

    if-nez v0, :cond_5

    .line 9179
    new-instance v0, Ljzl;

    invoke-direct {v0}, Ljzl;-><init>()V

    iput-object v0, p0, Ljwv;->b:Ljzl;

    .line 9181
    :cond_5
    iget-object v0, p0, Ljwv;->b:Ljzl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9185
    :sswitch_6
    iget-object v0, p0, Ljwv;->c:Ljxr;

    if-nez v0, :cond_6

    .line 9186
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Ljwv;->c:Ljxr;

    .line 9188
    :cond_6
    iget-object v0, p0, Ljwv;->c:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 9192
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9193
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 9197
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwv;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 9133
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x40 -> :sswitch_7
    .end sparse-switch

    .line 9193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 8059
    iget-object v0, p0, Ljwv;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 8060
    const/4 v0, 0x1

    iget-object v1, p0, Ljwv;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8062
    :cond_0
    iget-object v0, p0, Ljwv;->a:[Lkbh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljwv;->a:[Lkbh;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 8063
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljwv;->a:[Lkbh;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 8064
    iget-object v1, p0, Ljwv;->a:[Lkbh;

    aget-object v1, v1, v0

    .line 8065
    if-eqz v1, :cond_1

    .line 8066
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 8063
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8070
    :cond_2
    iget-object v0, p0, Ljwv;->e:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 8071
    const/4 v0, 0x3

    iget-object v1, p0, Ljwv;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 8073
    :cond_3
    iget-object v0, p0, Ljwv;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 8074
    const/4 v0, 0x4

    iget-object v1, p0, Ljwv;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8076
    :cond_4
    iget-object v0, p0, Ljwv;->b:Ljzl;

    if-eqz v0, :cond_5

    .line 8077
    const/4 v0, 0x5

    iget-object v1, p0, Ljwv;->b:Ljzl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8079
    :cond_5
    iget-object v0, p0, Ljwv;->c:Ljxr;

    if-eqz v0, :cond_6

    .line 8080
    const/4 v0, 0x6

    iget-object v1, p0, Ljwv;->c:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8082
    :cond_6
    iget-object v0, p0, Ljwv;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 8083
    const/16 v0, 0x8

    iget-object v1, p0, Ljwv;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 8085
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8086
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 8090
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8091
    iget-object v1, p0, Ljwv;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 8092
    const/4 v1, 0x1

    iget-object v2, p0, Ljwv;->responseHeader:Lkdp;

    .line 8093
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8095
    :cond_0
    iget-object v1, p0, Ljwv;->a:[Lkbh;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljwv;->a:[Lkbh;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 8096
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljwv;->a:[Lkbh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 8097
    iget-object v2, p0, Ljwv;->a:[Lkbh;

    aget-object v2, v2, v0

    .line 8098
    if-eqz v2, :cond_1

    .line 8099
    const/4 v3, 0x2

    .line 8100
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8096
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8104
    :cond_3
    iget-object v1, p0, Ljwv;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 8105
    const/4 v1, 0x3

    iget-object v2, p0, Ljwv;->e:Ljava/lang/Long;

    .line 8106
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8108
    :cond_4
    iget-object v1, p0, Ljwv;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 8109
    const/4 v1, 0x4

    iget-object v2, p0, Ljwv;->f:Ljava/lang/String;

    .line 8110
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8112
    :cond_5
    iget-object v1, p0, Ljwv;->b:Ljzl;

    if-eqz v1, :cond_6

    .line 8113
    const/4 v1, 0x5

    iget-object v2, p0, Ljwv;->b:Ljzl;

    .line 8114
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8116
    :cond_6
    iget-object v1, p0, Ljwv;->c:Ljxr;

    if-eqz v1, :cond_7

    .line 8117
    const/4 v1, 0x6

    iget-object v2, p0, Ljwv;->c:Ljxr;

    .line 8118
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8120
    :cond_7
    iget-object v1, p0, Ljwv;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 8121
    const/16 v1, 0x8

    iget-object v2, p0, Ljwv;->d:Ljava/lang/Integer;

    .line 8122
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8124
    :cond_8
    return v0
.end method
