.class final Lafu;
.super Lafs;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lafs;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafu;->h:Z

    .line 46
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lafs;-><init>(B)V

    .line 42
    iput-boolean v0, p0, Lafu;->h:Z

    .line 50
    return-void
.end method

.method private b(Lafx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v2, v1

    move-object v0, v3

    .line 226
    :goto_0
    if-ge v4, v5, :cond_6

    .line 227
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 228
    const/16 v7, 0x22

    if-ne v6, v7, :cond_2

    .line 229
    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lafx;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v2, v3

    .line 226
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto :goto_0

    .line 235
    :cond_0
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lafx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    const/4 v2, 0x1

    move v8, v2

    move-object v2, v0

    move v0, v8

    goto :goto_1

    .line 249
    :cond_2
    const/16 v7, 0x2c

    if-ne v6, v7, :cond_4

    if-nez v2, :cond_4

    .line 250
    if-nez v0, :cond_3

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Comma is used before actual string comes. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v2

    move-object v2, v0

    move v0, v8

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lafx;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    move-object v2, v3

    .line 255
    goto :goto_1

    .line 260
    :cond_4
    if-nez v0, :cond_5

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v2

    move-object v2, v0

    move v0, v8

    goto :goto_1

    .line 271
    :cond_6
    if-eqz v0, :cond_7

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lafx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    const-string v0, "ISO-8859-1"

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lafz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lafu;->g:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lafu;->d:Laft;

    invoke-virtual {v0}, Laft;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lafx;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 160
    :try_start_0
    invoke-super {p0, p1, p2}, Lafs;->a(Lafx;Ljava/lang/String;)V
    :try_end_0
    .catch Lagc; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    const-string v0, "="

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    array-length v1, v0

    if-ne v1, v2, :cond_0

    .line 165
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lafu;->a(Lafx;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Lagc;

    const-string v2, "Unknown params value: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lagc;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Lafx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3}, Lafu;->b(Lafx;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method protected a(Z)Z
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1}, Lafs;->a(Z)Z

    move-result v0

    return v0
.end method

.method protected b(Lafx;)V
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lafu;->h:Z

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafu;->h:Z

    .line 313
    :cond_0
    return-void
.end method

.method protected b(Lafx;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lafu;->c(Lafx;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v1

    .line 82
    :cond_0
    :goto_0
    iget-object v2, p0, Lafu;->d:Laft;

    invoke-virtual {v2}, Laft;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 83
    if-nez v2, :cond_3

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_1
    return-object v0

    .line 86
    :cond_1
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lafu;->g:Ljava/lang/String;

    goto :goto_1

    .line 91
    :cond_2
    new-instance v0, Lagc;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lagc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 93
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 95
    :cond_4
    iget-object v2, p0, Lafu;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lafu;->g:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    .line 101
    :cond_6
    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_7
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    iget-object v3, p0, Lafu;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iput-object v1, p0, Lafu;->g:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_8
    new-instance v0, Lagc;

    const-string v1, "Space exists at the beginning of the line"

    invoke-direct {v0, v1}, Lagc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_9
    iget-object v3, p0, Lafu;->g:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 128
    iput-object v2, p0, Lafu;->g:Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 133
    :cond_a
    iget-object v0, p0, Lafu;->g:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lafu;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_0
    invoke-virtual {p0}, Lafu;->a()Ljava/lang/String;

    move-result-object v1

    .line 327
    if-nez v1, :cond_0

    .line 328
    new-instance v0, Lagc;

    const-string v1, "File ended during parsing BASE64 binary"

    invoke-direct {v0, v1}, Lagc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    iput-object v1, p0, Lafu;->g:Ljava/lang/String;

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected c(Lafx;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    const-string v0, "TYPE"

    invoke-direct {p0, p1, v0, p2}, Lafu;->b(Lafx;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1357
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 1358
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1359
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    .line 1360
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1361
    const/16 v4, 0x6e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_1

    .line 1362
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1367
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1370
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    return-object v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "3.0"

    return-object v0
.end method

.method protected h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    sget-object v0, Lafw;->a:Ljava/util/Set;

    return-object v0
.end method
