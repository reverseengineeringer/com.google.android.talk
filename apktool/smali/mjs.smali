.class public final Lmjs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmiv;

.field public b:[Lmiv;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:[Lmiv;

.field public g:[Lmjt;

.field public h:[Lmjy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1058
    invoke-static {}, Lmiv;->d()[Lmiv;

    move-result-object v0

    iput-object v0, p0, Lmjs;->a:[Lmiv;

    .line 1059
    invoke-static {}, Lmiv;->d()[Lmiv;

    move-result-object v0

    iput-object v0, p0, Lmjs;->b:[Lmiv;

    .line 1060
    iput-object v1, p0, Lmjs;->c:Ljava/lang/Integer;

    .line 1061
    iput-object v1, p0, Lmjs;->d:Ljava/lang/Integer;

    .line 1062
    iput-object v1, p0, Lmjs;->e:Ljava/lang/Integer;

    .line 1063
    invoke-static {}, Lmiv;->d()[Lmiv;

    move-result-object v0

    iput-object v0, p0, Lmjs;->f:[Lmiv;

    .line 1064
    invoke-static {}, Lmjt;->d()[Lmjt;

    move-result-object v0

    iput-object v0, p0, Lmjs;->g:[Lmjt;

    .line 1065
    invoke-static {}, Lmjy;->d()[Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmjs;->h:[Lmjy;

    .line 1066
    iput-object v1, p0, Lmjs;->eD:Llyd;

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lmjs;->eE:I

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1195
    sparse-switch v0, :sswitch_data_0

    .line 1199
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    :sswitch_0
    return-object p0

    .line 1205
    :sswitch_1
    const/16 v0, 0xa

    .line 1206
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1207
    iget-object v0, p0, Lmjs;->a:[Lmiv;

    if-nez v0, :cond_2

    move v0, v1

    .line 1208
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmiv;

    .line 1210
    if-eqz v0, :cond_1

    .line 1211
    iget-object v3, p0, Lmjs;->a:[Lmiv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1213
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1214
    new-instance v3, Lmiv;

    invoke-direct {v3}, Lmiv;-><init>()V

    aput-object v3, v2, v0

    .line 1215
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1216
    invoke-virtual {p1}, Llxy;->a()I

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1207
    :cond_2
    iget-object v0, p0, Lmjs;->a:[Lmiv;

    array-length v0, v0

    goto :goto_1

    .line 1219
    :cond_3
    new-instance v3, Lmiv;

    invoke-direct {v3}, Lmiv;-><init>()V

    aput-object v3, v2, v0

    .line 1220
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1221
    iput-object v2, p0, Lmjs;->a:[Lmiv;

    goto :goto_0

    .line 1225
    :sswitch_2
    const/16 v0, 0x12

    .line 1226
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1227
    iget-object v0, p0, Lmjs;->b:[Lmiv;

    if-nez v0, :cond_5

    move v0, v1

    .line 1228
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmiv;

    .line 1230
    if-eqz v0, :cond_4

    .line 1231
    iget-object v3, p0, Lmjs;->b:[Lmiv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1234
    new-instance v3, Lmiv;

    invoke-direct {v3}, Lmiv;-><init>()V

    aput-object v3, v2, v0

    .line 1235
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1236
    invoke-virtual {p1}, Llxy;->a()I

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1227
    :cond_5
    iget-object v0, p0, Lmjs;->b:[Lmiv;

    array-length v0, v0

    goto :goto_3

    .line 1239
    :cond_6
    new-instance v3, Lmiv;

    invoke-direct {v3}, Lmiv;-><init>()V

    aput-object v3, v2, v0

    .line 1240
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1241
    iput-object v2, p0, Lmjs;->b:[Lmiv;

    goto/16 :goto_0

    .line 1245
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmjs;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1249
    :sswitch_4
    const/16 v0, 0x22

    .line 1250
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1251
    iget-object v0, p0, Lmjs;->f:[Lmiv;

    if-nez v0, :cond_8

    move v0, v1

    .line 1252
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lmiv;

    .line 1254
    if-eqz v0, :cond_7

    .line 1255
    iget-object v3, p0, Lmjs;->f:[Lmiv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1258
    new-instance v3, Lmiv;

    invoke-direct {v3}, Lmiv;-><init>()V

    aput-object v3, v2, v0

    .line 1259
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1260
    invoke-virtual {p1}, Llxy;->a()I

    .line 1257
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1251
    :cond_8
    iget-object v0, p0, Lmjs;->f:[Lmiv;

    array-length v0, v0

    goto :goto_5

    .line 1263
    :cond_9
    new-instance v3, Lmiv;

    invoke-direct {v3}, Lmiv;-><init>()V

    aput-object v3, v2, v0

    .line 1264
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1265
    iput-object v2, p0, Lmjs;->f:[Lmiv;

    goto/16 :goto_0

    .line 1269
    :sswitch_5
    const/16 v0, 0x2a

    .line 1270
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1271
    iget-object v0, p0, Lmjs;->g:[Lmjt;

    if-nez v0, :cond_b

    move v0, v1

    .line 1272
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjt;

    .line 1274
    if-eqz v0, :cond_a

    .line 1275
    iget-object v3, p0, Lmjs;->g:[Lmjt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1277
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 1278
    new-instance v3, Lmjt;

    invoke-direct {v3}, Lmjt;-><init>()V

    aput-object v3, v2, v0

    .line 1279
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1280
    invoke-virtual {p1}, Llxy;->a()I

    .line 1277
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1271
    :cond_b
    iget-object v0, p0, Lmjs;->g:[Lmjt;

    array-length v0, v0

    goto :goto_7

    .line 1283
    :cond_c
    new-instance v3, Lmjt;

    invoke-direct {v3}, Lmjt;-><init>()V

    aput-object v3, v2, v0

    .line 1284
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1285
    iput-object v2, p0, Lmjs;->g:[Lmjt;

    goto/16 :goto_0

    .line 1289
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmjs;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1293
    :sswitch_7
    const/16 v0, 0x3a

    .line 1294
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1295
    iget-object v0, p0, Lmjs;->h:[Lmjy;

    if-nez v0, :cond_e

    move v0, v1

    .line 1296
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjy;

    .line 1298
    if-eqz v0, :cond_d

    .line 1299
    iget-object v3, p0, Lmjs;->h:[Lmjy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    .line 1302
    new-instance v3, Lmjy;

    invoke-direct {v3}, Lmjy;-><init>()V

    aput-object v3, v2, v0

    .line 1303
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1304
    invoke-virtual {p1}, Llxy;->a()I

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1295
    :cond_e
    iget-object v0, p0, Lmjs;->h:[Lmjy;

    array-length v0, v0

    goto :goto_9

    .line 1307
    :cond_f
    new-instance v3, Lmjy;

    invoke-direct {v3}, Lmjy;-><init>()V

    aput-object v3, v2, v0

    .line 1308
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1309
    iput-object v2, p0, Lmjs;->h:[Lmjy;

    goto/16 :goto_0

    .line 1313
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmjs;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lmjs;->a:[Lmiv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmjs;->a:[Lmiv;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 75
    :goto_0
    iget-object v2, p0, Lmjs;->a:[Lmiv;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 76
    iget-object v2, p0, Lmjs;->a:[Lmiv;

    aget-object v2, v2, v0

    .line 77
    if-eqz v2, :cond_0

    .line 78
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lmjs;->b:[Lmiv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmjs;->b:[Lmiv;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 83
    :goto_1
    iget-object v2, p0, Lmjs;->b:[Lmiv;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 84
    iget-object v2, p0, Lmjs;->b:[Lmiv;

    aget-object v2, v2, v0

    .line 85
    if-eqz v2, :cond_2

    .line 86
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lmjs;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 91
    const/4 v0, 0x3

    iget-object v2, p0, Lmjs;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 93
    :cond_4
    iget-object v0, p0, Lmjs;->f:[Lmiv;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmjs;->f:[Lmiv;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 94
    :goto_2
    iget-object v2, p0, Lmjs;->f:[Lmiv;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 95
    iget-object v2, p0, Lmjs;->f:[Lmiv;

    aget-object v2, v2, v0

    .line 96
    if-eqz v2, :cond_5

    .line 97
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_6
    iget-object v0, p0, Lmjs;->g:[Lmjt;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmjs;->g:[Lmjt;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 102
    :goto_3
    iget-object v2, p0, Lmjs;->g:[Lmjt;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 103
    iget-object v2, p0, Lmjs;->g:[Lmjt;

    aget-object v2, v2, v0

    .line 104
    if-eqz v2, :cond_7

    .line 105
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 102
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 109
    :cond_8
    iget-object v0, p0, Lmjs;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 110
    const/4 v0, 0x6

    iget-object v2, p0, Lmjs;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 112
    :cond_9
    iget-object v0, p0, Lmjs;->h:[Lmjy;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmjs;->h:[Lmjy;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 113
    :goto_4
    iget-object v0, p0, Lmjs;->h:[Lmjy;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 114
    iget-object v0, p0, Lmjs;->h:[Lmjy;

    aget-object v0, v0, v1

    .line 115
    if-eqz v0, :cond_a

    .line 116
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 113
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 120
    :cond_b
    iget-object v0, p0, Lmjs;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 121
    const/16 v0, 0x8

    iget-object v1, p0, Lmjs;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 123
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 124
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 129
    iget-object v2, p0, Lmjs;->a:[Lmiv;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmjs;->a:[Lmiv;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 130
    :goto_0
    iget-object v3, p0, Lmjs;->a:[Lmiv;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 131
    iget-object v3, p0, Lmjs;->a:[Lmiv;

    aget-object v3, v3, v0

    .line 132
    if-eqz v3, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 134
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 138
    :cond_2
    iget-object v2, p0, Lmjs;->b:[Lmiv;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmjs;->b:[Lmiv;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 139
    :goto_1
    iget-object v3, p0, Lmjs;->b:[Lmiv;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 140
    iget-object v3, p0, Lmjs;->b:[Lmiv;

    aget-object v3, v3, v0

    .line 141
    if-eqz v3, :cond_3

    .line 142
    const/4 v4, 0x2

    .line 143
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 139
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 147
    :cond_5
    iget-object v2, p0, Lmjs;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 148
    const/4 v2, 0x3

    iget-object v3, p0, Lmjs;->c:Ljava/lang/Integer;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    :cond_6
    iget-object v2, p0, Lmjs;->f:[Lmiv;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmjs;->f:[Lmiv;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 152
    :goto_2
    iget-object v3, p0, Lmjs;->f:[Lmiv;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 153
    iget-object v3, p0, Lmjs;->f:[Lmiv;

    aget-object v3, v3, v0

    .line 154
    if-eqz v3, :cond_7

    .line 155
    const/4 v4, 0x4

    .line 156
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 152
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 160
    :cond_9
    iget-object v2, p0, Lmjs;->g:[Lmjt;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmjs;->g:[Lmjt;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    .line 161
    :goto_3
    iget-object v3, p0, Lmjs;->g:[Lmjt;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 162
    iget-object v3, p0, Lmjs;->g:[Lmjt;

    aget-object v3, v3, v0

    .line 163
    if-eqz v3, :cond_a

    .line 164
    const/4 v4, 0x5

    .line 165
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 161
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v2

    .line 169
    :cond_c
    iget-object v2, p0, Lmjs;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 170
    const/4 v2, 0x6

    iget-object v3, p0, Lmjs;->d:Ljava/lang/Integer;

    .line 171
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 173
    :cond_d
    iget-object v2, p0, Lmjs;->h:[Lmjy;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lmjs;->h:[Lmjy;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 174
    :goto_4
    iget-object v2, p0, Lmjs;->h:[Lmjy;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 175
    iget-object v2, p0, Lmjs;->h:[Lmjy;

    aget-object v2, v2, v1

    .line 176
    if-eqz v2, :cond_e

    .line 177
    const/4 v3, 0x7

    .line 178
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 174
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 182
    :cond_f
    iget-object v1, p0, Lmjs;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 183
    const/16 v1, 0x8

    iget-object v2, p0, Lmjs;->e:Ljava/lang/Integer;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_10
    return v0
.end method
