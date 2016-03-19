.class public final Lmlr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lmlr;


# instance fields
.field public a:[Lmkt;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1153
    invoke-static {}, Lmkt;->d()[Lmkt;

    move-result-object v0

    iput-object v0, p0, Lmlr;->a:[Lmkt;

    .line 1154
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lmlr;->eD:Llyd;

    .line 1156
    const/4 v0, -0x1

    iput v0, p0, Lmlr;->eE:I

    .line 150
    return-void
.end method

.method public static d()[Lmlr;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lmlr;->c:[Lmlr;

    if-nez v0, :cond_1

    .line 130
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lmlr;->c:[Lmlr;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    new-array v0, v0, [Lmlr;

    sput-object v0, Lmlr;->c:[Lmlr;

    .line 135
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    sget-object v0, Lmlr;->c:[Lmlr;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1216
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1217
    sparse-switch v0, :sswitch_data_0

    .line 1221
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    :sswitch_0
    return-object p0

    .line 1227
    :sswitch_1
    const/16 v0, 0xa

    .line 1228
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1229
    iget-object v0, p0, Lmlr;->a:[Lmkt;

    if-nez v0, :cond_2

    move v0, v1

    .line 1230
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkt;

    .line 1232
    if-eqz v0, :cond_1

    .line 1233
    iget-object v3, p0, Lmlr;->a:[Lmkt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1235
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1236
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1237
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1238
    invoke-virtual {p1}, Llxy;->a()I

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1229
    :cond_2
    iget-object v0, p0, Lmlr;->a:[Lmkt;

    array-length v0, v0

    goto :goto_1

    .line 1241
    :cond_3
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1242
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1243
    iput-object v2, p0, Lmlr;->a:[Lmkt;

    goto :goto_0

    .line 1247
    :sswitch_2
    const/16 v0, 0x12

    .line 1248
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1249
    iget-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 1250
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1251
    if-eqz v0, :cond_4

    .line 1252
    iget-object v3, p0, Lmlr;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1254
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1255
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1256
    invoke-virtual {p1}, Llxy;->a()I

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1249
    :cond_5
    iget-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 1259
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1260
    iput-object v2, p0, Lmlr;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1217
    nop

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

    .line 163
    iget-object v0, p0, Lmlr;->a:[Lmkt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlr;->a:[Lmkt;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 164
    :goto_0
    iget-object v2, p0, Lmlr;->a:[Lmkt;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 165
    iget-object v2, p0, Lmlr;->a:[Lmkt;

    aget-object v2, v2, v0

    .line 166
    if-eqz v2, :cond_0

    .line 167
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 172
    :goto_1
    iget-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 173
    iget-object v0, p0, Lmlr;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 174
    if-eqz v0, :cond_2

    .line 175
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 180
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 185
    iget-object v2, p0, Lmlr;->a:[Lmkt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmlr;->a:[Lmkt;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 186
    :goto_0
    iget-object v3, p0, Lmlr;->a:[Lmkt;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 187
    iget-object v3, p0, Lmlr;->a:[Lmkt;

    aget-object v3, v3, v0

    .line 188
    if-eqz v3, :cond_0

    .line 189
    const/4 v4, 0x1

    .line 190
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 194
    :cond_2
    iget-object v2, p0, Lmlr;->b:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmlr;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 197
    :goto_1
    iget-object v4, p0, Lmlr;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 198
    iget-object v4, p0, Lmlr;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 199
    if-eqz v4, :cond_3

    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 202
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 197
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_4
    add-int/2addr v0, v2

    .line 206
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 208
    :cond_5
    return v0
.end method
