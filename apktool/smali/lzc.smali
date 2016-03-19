.class public final Llzc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Llzd;

.field public g:[Llza;

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1139
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2144
    iput-object v1, p0, Llzc;->a:Ljava/lang/Long;

    .line 2145
    iput-object v1, p0, Llzc;->b:Ljava/lang/String;

    .line 2146
    iput-object v1, p0, Llzc;->c:Ljava/lang/String;

    .line 2147
    iput-object v1, p0, Llzc;->d:Ljava/lang/String;

    .line 2148
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Llzc;->e:[Ljava/lang/String;

    .line 2149
    invoke-static {}, Llzd;->d()[Llzd;

    move-result-object v0

    iput-object v0, p0, Llzc;->f:[Llzd;

    .line 2150
    invoke-static {}, Llza;->d()[Llza;

    move-result-object v0

    iput-object v0, p0, Llzc;->g:[Llza;

    .line 2151
    iput-object v1, p0, Llzc;->h:[B

    .line 2152
    iput-object v1, p0, Llzc;->eD:Llyd;

    .line 2153
    const/4 v0, -0x1

    iput v0, p0, Llzc;->eE:I

    .line 1141
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2266
    sparse-switch v0, :sswitch_data_0

    .line 2270
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2271
    :sswitch_0
    return-object p0

    .line 2276
    :sswitch_1
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llzc;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2280
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzc;->b:Ljava/lang/String;

    goto :goto_0

    .line 2284
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzc;->c:Ljava/lang/String;

    goto :goto_0

    .line 2288
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzc;->d:Ljava/lang/String;

    goto :goto_0

    .line 2292
    :sswitch_5
    const/16 v0, 0x2a

    .line 2293
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2294
    iget-object v0, p0, Llzc;->e:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2295
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2296
    if-eqz v0, :cond_1

    .line 2297
    iget-object v3, p0, Llzc;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2299
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2300
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2301
    invoke-virtual {p1}, Llxy;->a()I

    .line 2299
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2294
    :cond_2
    iget-object v0, p0, Llzc;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2304
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2305
    iput-object v2, p0, Llzc;->e:[Ljava/lang/String;

    goto :goto_0

    .line 2309
    :sswitch_6
    const/16 v0, 0x32

    .line 2310
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2311
    iget-object v0, p0, Llzc;->f:[Llzd;

    if-nez v0, :cond_5

    move v0, v1

    .line 2312
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llzd;

    .line 2314
    if-eqz v0, :cond_4

    .line 2315
    iget-object v3, p0, Llzc;->f:[Llzd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2317
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2318
    new-instance v3, Llzd;

    invoke-direct {v3}, Llzd;-><init>()V

    aput-object v3, v2, v0

    .line 2319
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2320
    invoke-virtual {p1}, Llxy;->a()I

    .line 2317
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2311
    :cond_5
    iget-object v0, p0, Llzc;->f:[Llzd;

    array-length v0, v0

    goto :goto_3

    .line 2323
    :cond_6
    new-instance v3, Llzd;

    invoke-direct {v3}, Llzd;-><init>()V

    aput-object v3, v2, v0

    .line 2324
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2325
    iput-object v2, p0, Llzc;->f:[Llzd;

    goto/16 :goto_0

    .line 2329
    :sswitch_7
    const/16 v0, 0x3a

    .line 2330
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2331
    iget-object v0, p0, Llzc;->g:[Llza;

    if-nez v0, :cond_8

    move v0, v1

    .line 2332
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Llza;

    .line 2334
    if-eqz v0, :cond_7

    .line 2335
    iget-object v3, p0, Llzc;->g:[Llza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2337
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 2338
    new-instance v3, Llza;

    invoke-direct {v3}, Llza;-><init>()V

    aput-object v3, v2, v0

    .line 2339
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2340
    invoke-virtual {p1}, Llxy;->a()I

    .line 2337
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2331
    :cond_8
    iget-object v0, p0, Llzc;->g:[Llza;

    array-length v0, v0

    goto :goto_5

    .line 2343
    :cond_9
    new-instance v3, Llza;

    invoke-direct {v3}, Llza;-><init>()V

    aput-object v3, v2, v0

    .line 2344
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2345
    iput-object v2, p0, Llzc;->g:[Llza;

    goto/16 :goto_0

    .line 2349
    :sswitch_8
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Llzc;->h:[B

    goto/16 :goto_0

    .line 2266
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1160
    iget-object v0, p0, Llzc;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1161
    const/4 v0, 0x1

    iget-object v2, p0, Llzc;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1163
    :cond_0
    iget-object v0, p0, Llzc;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1164
    const/4 v0, 0x2

    iget-object v2, p0, Llzc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1166
    :cond_1
    iget-object v0, p0, Llzc;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1167
    const/4 v0, 0x3

    iget-object v2, p0, Llzc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1169
    :cond_2
    iget-object v0, p0, Llzc;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1170
    const/4 v0, 0x4

    iget-object v2, p0, Llzc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1172
    :cond_3
    iget-object v0, p0, Llzc;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llzc;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 1173
    :goto_0
    iget-object v2, p0, Llzc;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1174
    iget-object v2, p0, Llzc;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1175
    if-eqz v2, :cond_4

    .line 1176
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1173
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    :cond_5
    iget-object v0, p0, Llzc;->f:[Llzd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Llzc;->f:[Llzd;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 1181
    :goto_1
    iget-object v2, p0, Llzc;->f:[Llzd;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1182
    iget-object v2, p0, Llzc;->f:[Llzd;

    aget-object v2, v2, v0

    .line 1183
    if-eqz v2, :cond_6

    .line 1184
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1181
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1188
    :cond_7
    iget-object v0, p0, Llzc;->g:[Llza;

    if-eqz v0, :cond_9

    iget-object v0, p0, Llzc;->g:[Llza;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 1189
    :goto_2
    iget-object v0, p0, Llzc;->g:[Llza;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 1190
    iget-object v0, p0, Llzc;->g:[Llza;

    aget-object v0, v0, v1

    .line 1191
    if-eqz v0, :cond_8

    .line 1192
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1189
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1196
    :cond_9
    iget-object v0, p0, Llzc;->h:[B

    if-eqz v0, :cond_a

    .line 1197
    const/16 v0, 0x8

    iget-object v1, p0, Llzc;->h:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 1199
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1200
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1204
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1205
    iget-object v1, p0, Llzc;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1206
    const/4 v1, 0x1

    iget-object v3, p0, Llzc;->a:Ljava/lang/Long;

    .line 1207
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1209
    :cond_0
    iget-object v1, p0, Llzc;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1210
    const/4 v1, 0x2

    iget-object v3, p0, Llzc;->b:Ljava/lang/String;

    .line 1211
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1213
    :cond_1
    iget-object v1, p0, Llzc;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1214
    const/4 v1, 0x3

    iget-object v3, p0, Llzc;->c:Ljava/lang/String;

    .line 1215
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1217
    :cond_2
    iget-object v1, p0, Llzc;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1218
    const/4 v1, 0x4

    iget-object v3, p0, Llzc;->d:Ljava/lang/String;

    .line 1219
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1221
    :cond_3
    iget-object v1, p0, Llzc;->e:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Llzc;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 1224
    :goto_0
    iget-object v5, p0, Llzc;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 1225
    iget-object v5, p0, Llzc;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 1226
    if-eqz v5, :cond_4

    .line 1227
    add-int/lit8 v4, v4, 0x1

    .line 1229
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1224
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    :cond_5
    add-int/2addr v0, v3

    .line 1233
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 1235
    :cond_6
    iget-object v1, p0, Llzc;->f:[Llzd;

    if-eqz v1, :cond_9

    iget-object v1, p0, Llzc;->f:[Llzd;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    move v0, v2

    .line 1236
    :goto_1
    iget-object v3, p0, Llzc;->f:[Llzd;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 1237
    iget-object v3, p0, Llzc;->f:[Llzd;

    aget-object v3, v3, v0

    .line 1238
    if-eqz v3, :cond_7

    .line 1239
    const/4 v4, 0x6

    .line 1240
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1236
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 1244
    :cond_9
    iget-object v1, p0, Llzc;->g:[Llza;

    if-eqz v1, :cond_b

    iget-object v1, p0, Llzc;->g:[Llza;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 1245
    :goto_2
    iget-object v1, p0, Llzc;->g:[Llza;

    array-length v1, v1

    if-ge v2, v1, :cond_b

    .line 1246
    iget-object v1, p0, Llzc;->g:[Llza;

    aget-object v1, v1, v2

    .line 1247
    if-eqz v1, :cond_a

    .line 1248
    const/4 v3, 0x7

    .line 1249
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1245
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1253
    :cond_b
    iget-object v1, p0, Llzc;->h:[B

    if-eqz v1, :cond_c

    .line 1254
    const/16 v1, 0x8

    iget-object v2, p0, Llzc;->h:[B

    .line 1255
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    :cond_c
    return v0
.end method
