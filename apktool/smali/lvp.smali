.class public final Llvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:La;


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Llvp;->h:Z

    .line 925
    const v0, 0x7fffffff

    iput v0, p0, Llvp;->j:I

    .line 929
    const/16 v0, 0x64

    iput v0, p0, Llvp;->l:I

    .line 932
    const/high16 v0, 0x4000000

    iput v0, p0, Llvp;->m:I

    .line 1097
    iput-object v1, p0, Llvp;->n:La;

    .line 940
    iput-object p1, p0, Llvp;->a:[B

    .line 941
    add-int v0, p2, p3

    iput v0, p0, Llvp;->c:I

    .line 942
    iput p2, p0, Llvp;->e:I

    .line 943
    neg-int v0, p2

    iput v0, p0, Llvp;->i:I

    .line 944
    iput-object v1, p0, Llvp;->f:Ljava/io/InputStream;

    .line 945
    iput-boolean p4, p0, Llvp;->b:Z

    .line 946
    return-void
.end method

.method static a([BIIZ)Llvp;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Llvp;

    invoke-direct {v0, p0, p1, p2, p3}, Llvp;-><init>([BIIZ)V

    .line 60
    :try_start_0
    invoke-virtual {v0, p2}, Llvp;->b(I)I
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Llvp;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 1111
    :cond_0
    return-void
.end method

.method private e(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1122
    :cond_0
    iget v1, p0, Llvp;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Llvp;->c:I

    if-gt v1, v2, :cond_1

    .line 1123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_1
    iget v1, p0, Llvp;->i:I

    iget v2, p0, Llvp;->e:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Llvp;->j:I

    if-le v1, v2, :cond_3

    .line 1165
    :cond_2
    :goto_0
    return v0

    .line 1137
    :cond_3
    iget-object v1, p0, Llvp;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 1138
    iget v1, p0, Llvp;->e:I

    .line 1139
    if-lez v1, :cond_5

    .line 1140
    iget v2, p0, Llvp;->c:I

    if-le v2, v1, :cond_4

    .line 1141
    iget-object v2, p0, Llvp;->a:[B

    iget-object v3, p0, Llvp;->a:[B

    iget v4, p0, Llvp;->c:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    :cond_4
    iget v2, p0, Llvp;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Llvp;->i:I

    .line 1144
    iget v2, p0, Llvp;->c:I

    sub-int v1, v2, v1

    iput v1, p0, Llvp;->c:I

    .line 1145
    iput v0, p0, Llvp;->e:I

    .line 1148
    :cond_5
    iget-object v1, p0, Llvp;->f:Ljava/io/InputStream;

    iget-object v2, p0, Llvp;->a:[B

    iget v3, p0, Llvp;->c:I

    iget-object v4, p0, Llvp;->a:[B

    array-length v4, v4

    iget v5, p0, Llvp;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1149
    if-eqz v1, :cond_6

    const/4 v2, -0x1

    if-lt v1, v2, :cond_6

    iget-object v2, p0, Llvp;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_7

    .line 1150
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_7
    if-lez v1, :cond_2

    .line 1155
    iget v2, p0, Llvp;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Llvp;->c:I

    .line 1157
    iget v1, p0, Llvp;->i:I

    add-int/2addr v1, p1

    iget v2, p0, Llvp;->m:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_8

    .line 1158
    invoke-static {}, Llwk;->f()Llwk;

    move-result-object v0

    throw v0

    .line 1160
    :cond_8
    invoke-direct {p0}, Llvp;->y()V

    .line 1161
    iget v1, p0, Llvp;->c:I

    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f(I)[B
    .locals 11

    .prologue
    const/16 v10, 0x1000

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 1202
    if-gtz p1, :cond_1

    .line 1203
    if-nez p1, :cond_0

    .line 1204
    sget-object v0, Llwg;->c:[B

    .line 1300
    :goto_0
    return-object v0

    .line 1206
    :cond_0
    invoke-static {}, Llwk;->c()Llwk;

    move-result-object v0

    throw v0

    .line 1211
    :cond_1
    iget v0, p0, Llvp;->i:I

    iget v1, p0, Llvp;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 1212
    iget v1, p0, Llvp;->m:I

    if-le v0, v1, :cond_2

    .line 1213
    invoke-static {}, Llwk;->f()Llwk;

    move-result-object v0

    throw v0

    .line 1217
    :cond_2
    iget v1, p0, Llvp;->j:I

    if-le v0, v1, :cond_3

    .line 1219
    iget v0, p0, Llvp;->j:I

    iget v1, p0, Llvp;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Llvp;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Llvp;->g(I)V

    .line 1220
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 1224
    :cond_3
    iget-object v0, p0, Llvp;->f:Ljava/io/InputStream;

    if-nez v0, :cond_4

    .line 1225
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 1228
    :cond_4
    iget v4, p0, Llvp;->e:I

    .line 1229
    iget v0, p0, Llvp;->c:I

    iget v1, p0, Llvp;->e:I

    sub-int/2addr v0, v1

    .line 1232
    iget v1, p0, Llvp;->i:I

    iget v3, p0, Llvp;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Llvp;->i:I

    .line 1233
    iput v2, p0, Llvp;->e:I

    .line 1234
    iput v2, p0, Llvp;->c:I

    .line 1237
    sub-int v1, p1, v0

    .line 1239
    if-lt v1, v10, :cond_5

    iget-object v3, p0, Llvp;->f:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gt v1, v3, :cond_8

    .line 1242
    :cond_5
    new-array v1, p1, [B

    .line 1245
    iget-object v3, p0, Llvp;->a:[B

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1249
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 1250
    iget-object v2, p0, Llvp;->f:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1251
    if-ne v2, v9, :cond_6

    .line 1252
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 1254
    :cond_6
    iget v3, p0, Llvp;->i:I

    add-int/2addr v3, v2

    iput v3, p0, Llvp;->i:I

    .line 1255
    add-int/2addr v0, v2

    .line 1256
    goto :goto_1

    :cond_7
    move-object v0, v1

    .line 1258
    goto :goto_0

    .line 1268
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 1270
    :goto_2
    if-lez v3, :cond_b

    .line 1272
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v6, v1, [B

    move v1, v2

    .line 1274
    :goto_3
    array-length v7, v6

    if-ge v1, v7, :cond_a

    .line 1275
    iget-object v7, p0, Llvp;->f:Ljava/io/InputStream;

    array-length v8, v6

    sub-int/2addr v8, v1

    invoke-virtual {v7, v6, v1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 1276
    if-ne v7, v9, :cond_9

    .line 1277
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 1279
    :cond_9
    iget v8, p0, Llvp;->i:I

    add-int/2addr v8, v7

    iput v8, p0, Llvp;->i:I

    .line 1280
    add-int/2addr v1, v7

    .line 1281
    goto :goto_3

    .line 1282
    :cond_a
    array-length v1, v6

    sub-int v1, v3, v1

    .line 1283
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    .line 1284
    goto :goto_2

    .line 1287
    :cond_b
    new-array v3, p1, [B

    .line 1290
    iget-object v1, p0, Llvp;->a:[B

    invoke-static {v1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1294
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1295
    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1297
    goto :goto_4

    :cond_c
    move-object v0, v3

    .line 1300
    goto/16 :goto_0
.end method

.method private g(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1310
    iget v0, p0, Llvp;->c:I

    iget v1, p0, Llvp;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 1312
    iget v0, p0, Llvp;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Llvp;->e:I

    .line 1316
    :goto_0
    return-void

    .line 8323
    :cond_0
    if-gez p1, :cond_1

    .line 8324
    invoke-static {}, Llwk;->c()Llwk;

    move-result-object v0

    throw v0

    .line 8327
    :cond_1
    iget v0, p0, Llvp;->i:I

    iget v1, p0, Llvp;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Llvp;->j:I

    if-le v0, v1, :cond_2

    .line 8329
    iget v0, p0, Llvp;->j:I

    iget v1, p0, Llvp;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Llvp;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Llvp;->g(I)V

    .line 8331
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 8335
    :cond_2
    iget v0, p0, Llvp;->c:I

    iget v1, p0, Llvp;->e:I

    sub-int/2addr v0, v1

    .line 8336
    iget v1, p0, Llvp;->c:I

    iput v1, p0, Llvp;->e:I

    .line 8340
    invoke-direct {p0, v3}, Llvp;->d(I)V

    .line 8341
    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Llvp;->c:I

    if-le v1, v2, :cond_3

    .line 8342
    iget v1, p0, Llvp;->c:I

    add-int/2addr v0, v1

    .line 8343
    iget v1, p0, Llvp;->c:I

    iput v1, p0, Llvp;->e:I

    .line 8344
    invoke-direct {p0, v3}, Llvp;->d(I)V

    goto :goto_1

    .line 8347
    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Llvp;->e:I

    goto :goto_0
.end method

.method private u()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 777
    iget v0, p0, Llvp;->e:I

    .line 779
    iget v1, p0, Llvp;->c:I

    if-eq v1, v0, :cond_9

    .line 783
    iget-object v4, p0, Llvp;->a:[B

    .line 786
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    if-ltz v0, :cond_0

    .line 787
    iput v1, p0, Llvp;->e:I

    .line 788
    int-to-long v0, v0

    .line 819
    :goto_0
    return-wide v0

    .line 789
    :cond_0
    iget v2, p0, Llvp;->c:I

    sub-int/2addr v2, v1

    const/16 v3, 0x9

    if-lt v2, v3, :cond_9

    .line 791
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 792
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    .line 816
    :cond_1
    :goto_1
    iput v2, p0, Llvp;->e:I

    goto :goto_0

    .line 793
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v4, v2

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 794
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move v2, v3

    goto :goto_1

    .line 795
    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v4, v3

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    .line 796
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_1

    .line 797
    :cond_4
    int-to-long v0, v0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x1c

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_5

    .line 798
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    .line 799
    :cond_5
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v6, v3

    const/16 v3, 0x23

    shl-long/2addr v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_6

    .line 800
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v0, v4

    goto :goto_1

    .line 801
    :cond_6
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x2a

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_7

    .line 802
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    .line 803
    :cond_7
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v6, v3

    const/16 v3, 0x31

    shl-long/2addr v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_8

    .line 804
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v0, v4

    goto :goto_1

    .line 807
    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x38

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    .line 808
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    .line 810
    cmp-long v2, v0, v8

    if-gez v2, :cond_a

    .line 811
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v4, v3

    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    .line 819
    :cond_9
    invoke-direct {p0}, Llvp;->v()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto/16 :goto_1
.end method

.method private v()J
    .locals 6

    .prologue
    .line 825
    const-wide/16 v2, 0x0

    .line 826
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 7175
    iget v1, p0, Llvp;->e:I

    iget v4, p0, Llvp;->c:I

    if-ne v1, v4, :cond_0

    .line 7176
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Llvp;->d(I)V

    .line 7178
    :cond_0
    iget-object v1, p0, Llvp;->a:[B

    iget v4, p0, Llvp;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Llvp;->e:I

    aget-byte v1, v1, v4

    .line 828
    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 829
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 830
    return-wide v2

    .line 826
    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 8056
    :cond_2
    new-instance v0, Llwk;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Llwk;-><init>(Ljava/lang/String;)V

    .line 833
    throw v0
.end method

.method private w()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 838
    iget v0, p0, Llvp;->e:I

    .line 841
    iget v1, p0, Llvp;->c:I

    sub-int/2addr v1, v0

    if-ge v1, v2, :cond_0

    .line 842
    invoke-direct {p0, v2}, Llvp;->d(I)V

    .line 843
    iget v0, p0, Llvp;->e:I

    .line 846
    :cond_0
    iget-object v1, p0, Llvp;->a:[B

    .line 847
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Llvp;->e:I

    .line 848
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private x()J
    .locals 10

    .prologue
    const/16 v6, 0x8

    const-wide/16 v8, 0xff

    .line 856
    iget v0, p0, Llvp;->e:I

    .line 859
    iget v1, p0, Llvp;->c:I

    sub-int/2addr v1, v0

    if-ge v1, v6, :cond_0

    .line 860
    invoke-direct {p0, v6}, Llvp;->d(I)V

    .line 861
    iget v0, p0, Llvp;->e:I

    .line 864
    :cond_0
    iget-object v1, p0, Llvp;->a:[B

    .line 865
    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Llvp;->e:I

    .line 866
    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 1042
    iget v0, p0, Llvp;->c:I

    iget v1, p0, Llvp;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Llvp;->c:I

    .line 1043
    iget v0, p0, Llvp;->i:I

    iget v1, p0, Llvp;->c:I

    add-int/2addr v0, v1

    .line 1044
    iget v1, p0, Llvp;->j:I

    if-le v0, v1, :cond_0

    .line 1046
    iget v1, p0, Llvp;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Llvp;->d:I

    .line 1047
    iget v0, p0, Llvp;->c:I

    iget v1, p0, Llvp;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Llvp;->c:I

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Llvp;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2082
    iget v2, p0, Llvp;->e:I

    iget v3, p0, Llvp;->c:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1}, Llvp;->e(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    :goto_0
    if-eqz v1, :cond_1

    .line 105
    iput v0, p0, Llvp;->g:I

    .line 115
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 2082
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    iput v0, p0, Llvp;->g:I

    .line 110
    iget v0, p0, Llvp;->g:I

    .line 3039
    ushr-int/lit8 v0, v0, 0x3

    .line 110
    if-nez v0, :cond_2

    .line 3061
    new-instance v0, Llwk;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Llwk;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0

    .line 115
    :cond_2
    iget v0, p0, Llvp;->g:I

    goto :goto_1
.end method

.method public a(ILlvy;Llvt;)Llvy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Llvy",
            "<TT;*>;>(ITT;",
            "Llvt;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 430
    iget v0, p0, Llvp;->k:I

    iget v1, p0, Llvp;->l:I

    if-lt v0, v1, :cond_0

    .line 431
    invoke-static {}, Llwk;->e()Llwk;

    move-result-object v0

    throw v0

    .line 433
    :cond_0
    iget v0, p0, Llvp;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llvp;->k:I

    .line 434
    invoke-static {p2, p0, p3}, Llvy;->a(Llvy;Llvp;Llvt;)Llvy;

    move-result-object v0

    .line 6044
    shl-int/lit8 v1, p1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 435
    invoke-virtual {p0, v1}, Llvp;->a(I)V

    .line 437
    iget v1, p0, Llvp;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llvp;->k:I

    .line 438
    return-object v0
.end method

.method public a(Llvy;Llvt;)Llvy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Llvy",
            "<TT;*>;>(TT;",
            "Llvt;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    .line 520
    iget v1, p0, Llvp;->k:I

    iget v2, p0, Llvp;->l:I

    if-lt v1, v2, :cond_0

    .line 521
    invoke-static {}, Llwk;->e()Llwk;

    move-result-object v0

    throw v0

    .line 523
    :cond_0
    invoke-virtual {p0, v0}, Llvp;->b(I)I

    move-result v0

    .line 524
    iget v1, p0, Llvp;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llvp;->k:I

    .line 525
    invoke-static {p1, p0, p2}, Llvy;->a(Llvy;Llvp;Llvt;)Llvy;

    move-result-object v1

    .line 526
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Llvp;->a(I)V

    .line 527
    iget v2, p0, Llvp;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Llvp;->k:I

    .line 528
    invoke-virtual {p0, v0}, Llvp;->c(I)V

    .line 529
    return-object v1
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Llvp;->g:I

    if-eq v0, p1, :cond_0

    .line 3066
    new-instance v0, Llwk;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Llwk;-><init>(Ljava/lang/String;)V

    .line 129
    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method public a(ILlwq;Llvt;)V
    .locals 2

    .prologue
    .line 395
    iget v0, p0, Llvp;->k:I

    iget v1, p0, Llvp;->l:I

    if-lt v0, v1, :cond_0

    .line 396
    invoke-static {}, Llwk;->e()Llwk;

    move-result-object v0

    throw v0

    .line 398
    :cond_0
    iget v0, p0, Llvp;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llvp;->k:I

    .line 399
    invoke-interface {p2, p0, p3}, Llwq;->b(Llvp;Llvt;)Llwq;

    .line 5044
    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x4

    .line 400
    invoke-virtual {p0, v0}, Llvp;->a(I)V

    .line 402
    iget v0, p0, Llvp;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llvp;->k:I

    .line 403
    return-void
.end method

.method public a(Llwq;Llvt;)V
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    .line 483
    iget v1, p0, Llvp;->k:I

    iget v2, p0, Llvp;->l:I

    if-lt v1, v2, :cond_0

    .line 484
    invoke-static {}, Llwk;->e()Llwk;

    move-result-object v0

    throw v0

    .line 486
    :cond_0
    invoke-virtual {p0, v0}, Llvp;->b(I)I

    move-result v0

    .line 487
    iget v1, p0, Llvp;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llvp;->k:I

    .line 488
    invoke-interface {p1, p0, p2}, Llwq;->b(Llvp;Llvt;)Llwq;

    .line 489
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Llvp;->a(I)V

    .line 490
    iget v1, p0, Llvp;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llvp;->k:I

    .line 491
    invoke-virtual {p0, v0}, Llvp;->c(I)V

    .line 492
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Llvp;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 1026
    if-gez p1, :cond_0

    .line 1027
    invoke-static {}, Llwk;->c()Llwk;

    move-result-object v0

    throw v0

    .line 1029
    :cond_0
    iget v0, p0, Llvp;->i:I

    iget v1, p0, Llvp;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 1030
    iget v1, p0, Llvp;->j:I

    .line 1031
    if-le v0, v1, :cond_1

    .line 1032
    invoke-static {}, Llwk;->b()Llwk;

    move-result-object v0

    throw v0

    .line 1034
    :cond_1
    iput v0, p0, Llvp;->j:I

    .line 1036
    invoke-direct {p0}, Llvp;->y()V

    .line 1038
    return v1
.end method

.method public c()F
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Llvp;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 1059
    iput p1, p0, Llvp;->j:I

    .line 1060
    invoke-direct {p0}, Llvp;->y()V

    .line 1061
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Llvp;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0}, Llvp;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0}, Llvp;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Llvp;->w()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 4

    .prologue
    .line 338
    invoke-direct {p0}, Llvp;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 347
    invoke-virtual {p0}, Llvp;->s()I

    move-result v1

    .line 348
    iget v0, p0, Llvp;->c:I

    iget v2, p0, Llvp;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Llvp;->a:[B

    iget v3, p0, Llvp;->e:I

    sget-object v4, Llwg;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 352
    iget v2, p0, Llvp;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Llvp;->e:I

    .line 358
    :goto_0
    return-object v0

    .line 354
    :cond_0
    if-nez v1, :cond_1

    .line 355
    const-string v0, ""

    goto :goto_0

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Llvp;->f(I)[B

    move-result-object v1

    sget-object v2, Llwg;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-virtual {p0}, Llvp;->s()I

    move-result v3

    .line 370
    iget v0, p0, Llvp;->e:I

    .line 371
    iget v2, p0, Llvp;->c:I

    sub-int/2addr v2, v0

    if-gt v3, v2, :cond_1

    if-lez v3, :cond_1

    .line 374
    iget-object v2, p0, Llvp;->a:[B

    .line 375
    add-int v4, v0, v3

    iput v4, p0, Llvp;->e:I

    .line 384
    :goto_0
    add-int v4, v0, v3

    .line 3139
    sget-object v5, Llxg;->b:Llxh;

    .line 3358
    invoke-virtual {v5, v2, v0, v4}, Llxh;->a([BII)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 384
    :cond_0
    if-nez v1, :cond_3

    .line 4092
    new-instance v0, Llwk;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Llwk;-><init>(Ljava/lang/String;)V

    .line 385
    throw v0

    .line 376
    :cond_1
    if-nez v3, :cond_2

    .line 377
    const-string v0, ""

    .line 387
    :goto_1
    return-object v0

    .line 380
    :cond_2
    invoke-direct {p0, v3}, Llvp;->f(I)[B

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 381
    goto :goto_0

    .line 387
    :cond_3
    new-instance v1, Ljava/lang/String;

    sget-object v4, Llwg;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public l()Llvk;
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Llvp;->s()I

    move-result v1

    .line 554
    iget v0, p0, Llvp;->c:I

    iget v2, p0, Llvp;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    if-lez v1, :cond_1

    .line 557
    iget-boolean v0, p0, Llvp;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llvp;->h:Z

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Llvp;->a:[B

    iget v2, p0, Llvp;->e:I

    invoke-static {v0, v2, v1}, Llvk;->b([BII)Llvk;

    move-result-object v0

    .line 560
    :goto_0
    iget v2, p0, Llvp;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Llvp;->e:I

    .line 566
    :goto_1
    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Llvp;->a:[B

    iget v2, p0, Llvp;->e:I

    invoke-static {v0, v2, v1}, Llvk;->a([BII)Llvk;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_1
    if-nez v1, :cond_2

    .line 563
    sget-object v0, Llvk;->a:Llvk;

    goto :goto_1

    .line 566
    :cond_2
    invoke-direct {p0, v1}, Llvp;->f(I)[B

    move-result-object v0

    invoke-static {v0}, Llvk;->a([B)Llvk;

    move-result-object v0

    goto :goto_1
.end method

.method public m()I
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Llvp;->w()I

    move-result v0

    return v0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 629
    invoke-direct {p0}, Llvp;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 2

    .prologue
    .line 634
    invoke-virtual {p0}, Llvp;->s()I

    move-result v0

    .line 6887
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 634
    return v0
.end method

.method public r()J
    .locals 6

    .prologue
    .line 639
    invoke-direct {p0}, Llvp;->u()J

    move-result-wide v0

    .line 6901
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    .line 639
    return-wide v0
.end method

.method public s()I
    .locals 5

    .prologue
    .line 651
    iget v0, p0, Llvp;->e:I

    .line 653
    iget v1, p0, Llvp;->c:I

    if-eq v1, v0, :cond_5

    .line 657
    iget-object v3, p0, Llvp;->a:[B

    .line 659
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    if-ltz v0, :cond_0

    .line 660
    iput v2, p0, Llvp;->e:I

    .line 686
    :goto_0
    return v0

    .line 662
    :cond_0
    iget v1, p0, Llvp;->c:I

    sub-int/2addr v1, v2

    const/16 v4, 0x9

    if-lt v1, v4, :cond_5

    .line 664
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2

    .line 665
    xor-int/lit8 v0, v0, -0x80

    .line 683
    :cond_1
    :goto_1
    iput v1, p0, Llvp;->e:I

    goto :goto_0

    .line 666
    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 667
    xor-int/lit16 v0, v0, 0x3f80

    move v1, v2

    goto :goto_1

    .line 668
    :cond_3
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4

    .line 669
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    .line 671
    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    .line 672
    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    .line 673
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 674
    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    .line 686
    :cond_5
    invoke-direct {p0}, Llvp;->v()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public t()I
    .locals 2

    .prologue
    .line 1068
    iget v0, p0, Llvp;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1069
    const/4 v0, -0x1

    .line 1073
    :goto_0
    return v0

    .line 1072
    :cond_0
    iget v0, p0, Llvp;->i:I

    iget v1, p0, Llvp;->e:I

    add-int/2addr v0, v1

    .line 1073
    iget v1, p0, Llvp;->j:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
