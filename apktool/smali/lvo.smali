.class Llvo;
.super Llvn;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final c:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 1169
    invoke-direct {p0}, Llvn;-><init>()V

    .line 1170
    iput-object p1, p0, Llvo;->c:[B

    .line 1171
    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Llvo;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final a(II)Llvk;
    .locals 4

    .prologue
    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0}, Llvo;->b()I

    move-result v1

    invoke-static {v0, p2, v1}, Llvo;->a(III)I

    move-result v1

    .line 1193
    if-nez v1, :cond_0

    .line 1194
    sget-object v0, Llvk;->a:Llvk;

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llvl;

    iget-object v2, p0, Llvo;->c:[B

    invoke-virtual {p0}, Llvo;->d()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Llvl;-><init>([BII)V

    goto :goto_0
.end method

.method final a(Ljava/io/OutputStream;II)V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Llvo;->c:[B

    invoke-virtual {p0}, Llvo;->d()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1236
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Llvo;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected final b(II)I
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Llvo;->c:[B

    invoke-virtual {p0}, Llvo;->d()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Llwg;->a(I[BII)I

    move-result v0

    return v0
.end method

.method protected b([BIII)V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Llvo;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    return-void
.end method

.method public final c()Llvp;
    .locals 4

    .prologue
    .line 1349
    iget-object v0, p0, Llvo;->c:[B

    .line 1350
    invoke-virtual {p0}, Llvo;->d()I

    move-result v1

    invoke-virtual {p0}, Llvo;->b()I

    move-result v2

    const/4 v3, 0x1

    .line 1349
    invoke-static {v0, v1, v2, v3}, Llvp;->a([BIIZ)Llvp;

    move-result-object v0

    return-object v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1263
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 3326
    :goto_0
    return v0

    .line 1266
    :cond_0
    instance-of v0, p1, Llvk;

    if-nez v0, :cond_1

    move v0, v2

    .line 1267
    goto :goto_0

    .line 1270
    :cond_1
    invoke-virtual {p0}, Llvo;->b()I

    move-result v3

    move-object v0, p1

    check-cast v0, Llvk;

    invoke-virtual {v0}, Llvk;->b()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    .line 1271
    goto :goto_0

    .line 1273
    :cond_2
    invoke-virtual {p0}, Llvo;->b()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1274
    goto :goto_0

    .line 1277
    :cond_3
    instance-of v0, p1, Llvo;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 1278
    check-cast v0, Llvo;

    .line 2084
    iget v3, p0, Llvk;->b:I

    .line 3084
    iget v0, v0, Llvk;->b:I

    .line 1283
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-eq v3, v0, :cond_4

    move v0, v2

    .line 1284
    goto :goto_0

    .line 1287
    :cond_4
    check-cast p1, Llvo;

    invoke-virtual {p0}, Llvo;->b()I

    move-result v0

    .line 3305
    invoke-virtual {p1}, Llvk;->b()I

    move-result v3

    if-le v0, v3, :cond_5

    .line 3306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Llvo;->b()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Length too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3308
    :cond_5
    invoke-virtual {p1}, Llvk;->b()I

    move-result v3

    if-le v0, v3, :cond_6

    .line 3309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 3310
    invoke-virtual {p1}, Llvk;->b()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ran off end of other: 0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3313
    :cond_6
    instance-of v3, p1, Llvo;

    if-eqz v3, :cond_9

    .line 3314
    check-cast p1, Llvo;

    .line 3315
    iget-object v4, p0, Llvo;->c:[B

    .line 3316
    iget-object v5, p1, Llvo;->c:[B

    .line 3317
    invoke-virtual {p0}, Llvo;->d()I

    move-result v3

    add-int v6, v3, v0

    .line 3319
    invoke-virtual {p0}, Llvo;->d()I

    move-result v3

    .line 3320
    invoke-virtual {p1}, Llvo;->d()I

    move-result v0

    .line 3321
    :goto_1
    if-ge v3, v6, :cond_8

    .line 3322
    aget-byte v7, v4, v3

    aget-byte v8, v5, v0

    if-eq v7, v8, :cond_7

    move v0, v2

    .line 3323
    goto/16 :goto_0

    .line 3321
    :cond_7
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 3326
    goto/16 :goto_0

    .line 3329
    :cond_9
    invoke-virtual {p1, v2, v0}, Llvk;->a(II)Llvk;

    move-result-object v1

    invoke-virtual {p0, v2, v0}, Llvo;->a(II)Llvk;

    move-result-object v0

    invoke-virtual {v1, v0}, Llvk;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 1290
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
