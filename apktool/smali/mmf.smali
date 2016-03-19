.class public final Lmmf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmmf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmme;

.field public b:[Lmme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1166
    invoke-static {}, Lmme;->d()[Lmme;

    move-result-object v0

    iput-object v0, p0, Lmmf;->a:[Lmme;

    .line 1167
    invoke-static {}, Lmme;->d()[Lmme;

    move-result-object v0

    iput-object v0, p0, Lmmf;->b:[Lmme;

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lmmf;->eD:Llyd;

    .line 1169
    const/4 v0, -0x1

    iput v0, p0, Lmmf;->eE:I

    .line 163
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1224
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1225
    sparse-switch v0, :sswitch_data_0

    .line 1229
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    :sswitch_0
    return-object p0

    .line 1235
    :sswitch_1
    const/16 v0, 0xa

    .line 1236
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1237
    iget-object v0, p0, Lmmf;->a:[Lmme;

    if-nez v0, :cond_2

    move v0, v1

    .line 1238
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmme;

    .line 1240
    if-eqz v0, :cond_1

    .line 1241
    iget-object v3, p0, Lmmf;->a:[Lmme;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1243
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1244
    new-instance v3, Lmme;

    invoke-direct {v3}, Lmme;-><init>()V

    aput-object v3, v2, v0

    .line 1245
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1246
    invoke-virtual {p1}, Llxy;->a()I

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1237
    :cond_2
    iget-object v0, p0, Lmmf;->a:[Lmme;

    array-length v0, v0

    goto :goto_1

    .line 1249
    :cond_3
    new-instance v3, Lmme;

    invoke-direct {v3}, Lmme;-><init>()V

    aput-object v3, v2, v0

    .line 1250
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1251
    iput-object v2, p0, Lmmf;->a:[Lmme;

    goto :goto_0

    .line 1255
    :sswitch_2
    const/16 v0, 0x12

    .line 1256
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1257
    iget-object v0, p0, Lmmf;->b:[Lmme;

    if-nez v0, :cond_5

    move v0, v1

    .line 1258
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmme;

    .line 1260
    if-eqz v0, :cond_4

    .line 1261
    iget-object v3, p0, Lmmf;->b:[Lmme;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1264
    new-instance v3, Lmme;

    invoke-direct {v3}, Lmme;-><init>()V

    aput-object v3, v2, v0

    .line 1265
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1266
    invoke-virtual {p1}, Llxy;->a()I

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1257
    :cond_5
    iget-object v0, p0, Lmmf;->b:[Lmme;

    array-length v0, v0

    goto :goto_3

    .line 1269
    :cond_6
    new-instance v3, Lmme;

    invoke-direct {v3}, Lmme;-><init>()V

    aput-object v3, v2, v0

    .line 1270
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1271
    iput-object v2, p0, Lmmf;->b:[Lmme;

    goto/16 :goto_0

    .line 1225
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lmmf;->a:[Lmme;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmf;->a:[Lmme;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 177
    :goto_0
    iget-object v2, p0, Lmmf;->a:[Lmme;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lmmf;->a:[Lmme;

    aget-object v2, v2, v0

    .line 179
    if-eqz v2, :cond_0

    .line 180
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lmmf;->b:[Lmme;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmmf;->b:[Lmme;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 185
    :goto_1
    iget-object v0, p0, Lmmf;->b:[Lmme;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 186
    iget-object v0, p0, Lmmf;->b:[Lmme;

    aget-object v0, v0, v1

    .line 187
    if-eqz v0, :cond_2

    .line 188
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 193
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 198
    iget-object v2, p0, Lmmf;->a:[Lmme;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmmf;->a:[Lmme;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 199
    :goto_0
    iget-object v3, p0, Lmmf;->a:[Lmme;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 200
    iget-object v3, p0, Lmmf;->a:[Lmme;

    aget-object v3, v3, v0

    .line 201
    if-eqz v3, :cond_0

    .line 202
    const/4 v4, 0x1

    .line 203
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 207
    :cond_2
    iget-object v2, p0, Lmmf;->b:[Lmme;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmmf;->b:[Lmme;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 208
    :goto_1
    iget-object v2, p0, Lmmf;->b:[Lmme;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 209
    iget-object v2, p0, Lmmf;->b:[Lmme;

    aget-object v2, v2, v1

    .line 210
    if-eqz v2, :cond_3

    .line 211
    const/4 v3, 0x2

    .line 212
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 208
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_4
    return v0
.end method
