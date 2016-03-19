.class public final Ljlv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljlv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:[Llzt;

.field public e:Ljava/lang/Integer;

.field public f:[Llzq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Llyb;-><init>()V

    .line 53
    const/high16 v0, -0x80000000

    iput v0, p0, Ljlv;->a:I

    .line 54
    iput-object v1, p0, Ljlv;->b:Ljava/lang/Long;

    .line 55
    iput-object v1, p0, Ljlv;->c:Ljava/lang/Long;

    .line 1021
    sget-object v0, Llzt;->b:[Llzt;

    .line 56
    iput-object v0, p0, Ljlv;->d:[Llzt;

    .line 57
    iput-object v1, p0, Ljlv;->e:Ljava/lang/Integer;

    .line 58
    invoke-static {}, Llzq;->d()[Llzq;

    move-result-object v0

    iput-object v0, p0, Ljlv;->f:[Llzq;

    .line 59
    iput-object v1, p0, Ljlv;->eD:Llyd;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljlv;->eE:I

    .line 61
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1143
    sparse-switch v0, :sswitch_data_0

    .line 1147
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    :sswitch_0
    return-object p0

    .line 1153
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1154
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1160
    :pswitch_0
    iput v0, p0, Ljlv;->a:I

    goto :goto_0

    .line 1166
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljlv;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1170
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljlv;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1174
    :sswitch_4
    const/16 v0, 0x22

    .line 1175
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1176
    iget-object v0, p0, Ljlv;->d:[Llzt;

    if-nez v0, :cond_2

    move v0, v1

    .line 1177
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzt;

    .line 1179
    if-eqz v0, :cond_1

    .line 1180
    iget-object v3, p0, Ljlv;->d:[Llzt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1182
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1183
    new-instance v3, Llzt;

    invoke-direct {v3}, Llzt;-><init>()V

    aput-object v3, v2, v0

    .line 1184
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1185
    invoke-virtual {p1}, Llxy;->a()I

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1176
    :cond_2
    iget-object v0, p0, Ljlv;->d:[Llzt;

    array-length v0, v0

    goto :goto_1

    .line 1188
    :cond_3
    new-instance v3, Llzt;

    invoke-direct {v3}, Llzt;-><init>()V

    aput-object v3, v2, v0

    .line 1189
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1190
    iput-object v2, p0, Ljlv;->d:[Llzt;

    goto :goto_0

    .line 1194
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljlv;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 1198
    :sswitch_6
    const/16 v0, 0x32

    .line 1199
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1200
    iget-object v0, p0, Ljlv;->f:[Llzq;

    if-nez v0, :cond_5

    move v0, v1

    .line 1201
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llzq;

    .line 1203
    if-eqz v0, :cond_4

    .line 1204
    iget-object v3, p0, Ljlv;->f:[Llzq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1206
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1207
    new-instance v3, Llzq;

    invoke-direct {v3}, Llzq;-><init>()V

    aput-object v3, v2, v0

    .line 1208
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1209
    invoke-virtual {p1}, Llxy;->a()I

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1200
    :cond_5
    iget-object v0, p0, Ljlv;->f:[Llzq;

    array-length v0, v0

    goto :goto_3

    .line 1212
    :cond_6
    new-instance v3, Llzq;

    invoke-direct {v3}, Llzq;-><init>()V

    aput-object v3, v2, v0

    .line 1213
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1214
    iput-object v2, p0, Ljlv;->f:[Llzq;

    goto/16 :goto_0

    .line 1143
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1154
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 66
    iget v0, p0, Ljlv;->a:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    .line 67
    const/4 v0, 0x1

    iget v2, p0, Ljlv;->a:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 69
    :cond_0
    iget-object v0, p0, Ljlv;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x2

    iget-object v2, p0, Ljlv;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 72
    :cond_1
    iget-object v0, p0, Ljlv;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x3

    iget-object v2, p0, Ljlv;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 75
    :cond_2
    iget-object v0, p0, Ljlv;->d:[Llzt;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljlv;->d:[Llzt;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, Ljlv;->d:[Llzt;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 77
    iget-object v2, p0, Ljlv;->d:[Llzt;

    aget-object v2, v2, v0

    .line 78
    if-eqz v2, :cond_3

    .line 79
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Ljlv;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 84
    const/4 v0, 0x5

    iget-object v2, p0, Ljlv;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 86
    :cond_5
    iget-object v0, p0, Ljlv;->f:[Llzq;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljlv;->f:[Llzq;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 87
    :goto_1
    iget-object v0, p0, Ljlv;->f:[Llzq;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 88
    iget-object v0, p0, Ljlv;->f:[Llzq;

    aget-object v0, v0, v1

    .line 89
    if-eqz v0, :cond_6

    .line 90
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 87
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 95
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 100
    iget v2, p0, Ljlv;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 101
    const/4 v2, 0x1

    iget v3, p0, Ljlv;->a:I

    .line 102
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 104
    :cond_0
    iget-object v2, p0, Ljlv;->b:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 105
    const/4 v2, 0x2

    iget-object v3, p0, Ljlv;->b:Ljava/lang/Long;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 108
    :cond_1
    iget-object v2, p0, Ljlv;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 109
    const/4 v2, 0x3

    iget-object v3, p0, Ljlv;->c:Ljava/lang/Long;

    .line 110
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 112
    :cond_2
    iget-object v2, p0, Ljlv;->d:[Llzt;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljlv;->d:[Llzt;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 113
    :goto_0
    iget-object v3, p0, Ljlv;->d:[Llzt;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 114
    iget-object v3, p0, Ljlv;->d:[Llzt;

    aget-object v3, v3, v0

    .line 115
    if-eqz v3, :cond_3

    .line 116
    const/4 v4, 0x4

    .line 117
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 121
    :cond_5
    iget-object v2, p0, Ljlv;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 122
    const/4 v2, 0x5

    iget-object v3, p0, Ljlv;->e:Ljava/lang/Integer;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 125
    :cond_6
    iget-object v2, p0, Ljlv;->f:[Llzq;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljlv;->f:[Llzq;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 126
    :goto_1
    iget-object v2, p0, Ljlv;->f:[Llzq;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 127
    iget-object v2, p0, Ljlv;->f:[Llzq;

    aget-object v2, v2, v1

    .line 128
    if-eqz v2, :cond_7

    .line 129
    const/4 v3, 0x6

    .line 130
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_8
    return v0
.end method
