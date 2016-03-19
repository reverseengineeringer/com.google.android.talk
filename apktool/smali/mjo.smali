.class public final Lmjo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmjj;

.field public c:[Lmks;

.field public d:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1154
    iput-object v1, p0, Lmjo;->a:Lmmm;

    .line 1155
    invoke-static {}, Lmjj;->d()[Lmjj;

    move-result-object v0

    iput-object v0, p0, Lmjo;->b:[Lmjj;

    .line 1156
    invoke-static {}, Lmks;->d()[Lmks;

    move-result-object v0

    iput-object v0, p0, Lmjo;->c:[Lmks;

    .line 1157
    iput-object v1, p0, Lmjo;->d:Lmks;

    .line 1158
    iput-object v1, p0, Lmjo;->eD:Llyd;

    .line 1159
    const/4 v0, -0x1

    iput v0, p0, Lmjo;->eE:I

    .line 151
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1229
    sparse-switch v0, :sswitch_data_0

    .line 1233
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    :sswitch_0
    return-object p0

    .line 1239
    :sswitch_1
    iget-object v0, p0, Lmjo;->a:Lmmm;

    if-nez v0, :cond_1

    .line 1240
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmjo;->a:Lmmm;

    .line 1242
    :cond_1
    iget-object v0, p0, Lmjo;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1246
    :sswitch_2
    const/16 v0, 0x12

    .line 1247
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1248
    iget-object v0, p0, Lmjo;->b:[Lmjj;

    if-nez v0, :cond_3

    move v0, v1

    .line 1249
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjj;

    .line 1251
    if-eqz v0, :cond_2

    .line 1252
    iget-object v3, p0, Lmjo;->b:[Lmjj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1254
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1255
    new-instance v3, Lmjj;

    invoke-direct {v3}, Lmjj;-><init>()V

    aput-object v3, v2, v0

    .line 1256
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1257
    invoke-virtual {p1}, Llxy;->a()I

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1248
    :cond_3
    iget-object v0, p0, Lmjo;->b:[Lmjj;

    array-length v0, v0

    goto :goto_1

    .line 1260
    :cond_4
    new-instance v3, Lmjj;

    invoke-direct {v3}, Lmjj;-><init>()V

    aput-object v3, v2, v0

    .line 1261
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1262
    iput-object v2, p0, Lmjo;->b:[Lmjj;

    goto :goto_0

    .line 1266
    :sswitch_3
    const/16 v0, 0x1a

    .line 1267
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1268
    iget-object v0, p0, Lmjo;->c:[Lmks;

    if-nez v0, :cond_6

    move v0, v1

    .line 1269
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmks;

    .line 1271
    if-eqz v0, :cond_5

    .line 1272
    iget-object v3, p0, Lmjo;->c:[Lmks;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1275
    new-instance v3, Lmks;

    invoke-direct {v3}, Lmks;-><init>()V

    aput-object v3, v2, v0

    .line 1276
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1277
    invoke-virtual {p1}, Llxy;->a()I

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1268
    :cond_6
    iget-object v0, p0, Lmjo;->c:[Lmks;

    array-length v0, v0

    goto :goto_3

    .line 1280
    :cond_7
    new-instance v3, Lmks;

    invoke-direct {v3}, Lmks;-><init>()V

    aput-object v3, v2, v0

    .line 1281
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1282
    iput-object v2, p0, Lmjo;->c:[Lmks;

    goto/16 :goto_0

    .line 1286
    :sswitch_4
    iget-object v0, p0, Lmjo;->d:Lmks;

    if-nez v0, :cond_8

    .line 1287
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmjo;->d:Lmks;

    .line 1289
    :cond_8
    iget-object v0, p0, Lmjo;->d:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1229
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lmjo;->a:Lmmm;

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    iget-object v2, p0, Lmjo;->a:Lmmm;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lmjo;->b:[Lmjj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmjo;->b:[Lmjj;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 170
    :goto_0
    iget-object v2, p0, Lmjo;->b:[Lmjj;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 171
    iget-object v2, p0, Lmjo;->b:[Lmjj;

    aget-object v2, v2, v0

    .line 172
    if-eqz v2, :cond_1

    .line 173
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lmjo;->c:[Lmks;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmjo;->c:[Lmks;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 178
    :goto_1
    iget-object v0, p0, Lmjo;->c:[Lmks;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 179
    iget-object v0, p0, Lmjo;->c:[Lmks;

    aget-object v0, v0, v1

    .line 180
    if-eqz v0, :cond_3

    .line 181
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 178
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lmjo;->d:Lmks;

    if-eqz v0, :cond_5

    .line 186
    const/4 v0, 0x4

    iget-object v1, p0, Lmjo;->d:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 188
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 189
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 194
    iget-object v2, p0, Lmjo;->a:Lmmm;

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, 0x1

    iget-object v3, p0, Lmjo;->a:Lmmm;

    .line 196
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 198
    :cond_0
    iget-object v2, p0, Lmjo;->b:[Lmjj;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmjo;->b:[Lmjj;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 199
    :goto_0
    iget-object v3, p0, Lmjo;->b:[Lmjj;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 200
    iget-object v3, p0, Lmjo;->b:[Lmjj;

    aget-object v3, v3, v0

    .line 201
    if-eqz v3, :cond_1

    .line 202
    const/4 v4, 0x2

    .line 203
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 207
    :cond_3
    iget-object v2, p0, Lmjo;->c:[Lmks;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmjo;->c:[Lmks;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 208
    :goto_1
    iget-object v2, p0, Lmjo;->c:[Lmks;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 209
    iget-object v2, p0, Lmjo;->c:[Lmks;

    aget-object v2, v2, v1

    .line 210
    if-eqz v2, :cond_4

    .line 211
    const/4 v3, 0x3

    .line 212
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 208
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_5
    iget-object v1, p0, Lmjo;->d:Lmks;

    if-eqz v1, :cond_6

    .line 217
    const/4 v1, 0x4

    iget-object v2, p0, Lmjo;->d:Lmks;

    .line 218
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_6
    return v0
.end method
