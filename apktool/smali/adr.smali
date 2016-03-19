.class public final Ladr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[B

.field static final b:[B

.field static final c:[B


# instance fields
.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/net/Uri;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "from-data"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Ladr;->a:[B

    .line 98
    const-string v0, "attachment"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Ladr;->b:[B

    .line 99
    const-string v0, "inline"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Ladr;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    .line 116
    iput-object v0, p0, Ladr;->e:Landroid/net/Uri;

    .line 121
    iput-object v0, p0, Ladr;->f:[B

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    .line 130
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x81

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Ladr;->e:Landroid/net/Uri;

    .line 168
    return-void
.end method

.method public a([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ladr;->f:[B

    .line 143
    iget-object v0, p0, Ladr;->f:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public a()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Ladr;->f:[B

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Ladr;->f:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 157
    iget-object v1, p0, Ladr;->f:[B

    iget-object v2, p0, Ladr;->f:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ladr;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public b([B)V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v4, 0x3e

    const/16 v1, 0x3c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Id may not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    array-length v0, p1

    if-le v0, v3, :cond_2

    aget-byte v0, p1, v2

    int-to-char v0, v0

    if-ne v0, v1, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    int-to-char v0, v0

    if-ne v0, v4, :cond_2

    .line 194
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 200
    aput-byte v1, v0, v2

    .line 201
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v4, v0, v1

    .line 202
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v1, p0, Ladr;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public c([B)V
    .locals 2

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-location"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    return-void
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 231
    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public d([B)V
    .locals 2

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-disposition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method public e([B)V
    .locals 2

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    return-void
.end method

.method public e()[B
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public f([B)V
    .locals 2

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-transfer-encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    return-void
.end method

.method public f()[B
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public g([B)V
    .locals 2

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x97

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    return-void
.end method

.method public g()[B
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public h([B)V
    .locals 2

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x98

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method public h()[B
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public i()[B
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public j()[B
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Ladr;->d:Landroid/util/SparseArray;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
