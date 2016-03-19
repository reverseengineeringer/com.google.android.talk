.class public final Llvq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:[B

.field private final c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Llvq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llvq;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Llvq;->e:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Llvq;->f:Ljava/io/OutputStream;

    .line 64
    iput-object p1, p0, Llvq;->b:[B

    .line 65
    iput v1, p0, Llvq;->d:I

    .line 66
    add-int/lit8 v0, p3, 0x0

    iput v0, p0, Llvq;->c:I

    .line 67
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x4

    return v0
.end method

.method public static a(ILlwo;)I
    .locals 3

    .prologue
    .line 736
    const/4 v0, 0x1

    invoke-static {v0}, Llvq;->m(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 737
    invoke-static {p0}, Llvq;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9695
    const/4 v1, 0x3

    invoke-static {v1}, Llvq;->m(I)I

    move-result v1

    invoke-static {p1}, Llvq;->a(Llwo;)I

    move-result v2

    add-int/2addr v1, v2

    .line 738
    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Llwo;)I
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0}, Llwo;->b()I

    move-result v0

    .line 889
    invoke-static {v0}, Llvq;->s(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a([B)Llvq;
    .locals 3

    .prologue
    .line 100
    array-length v0, p0

    .line 2112
    new-instance v1, Llvq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Llvq;-><init>([BII)V

    .line 100
    return-object v1
.end method

.method private a([BI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    iget v0, p0, Llvq;->c:I

    iget v1, p0, Llvq;->d:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    .line 306
    iget-object v0, p0, Llvq;->b:[B

    iget v1, p0, Llvq;->d:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iget v0, p0, Llvq;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Llvq;->d:I

    .line 331
    :goto_0
    iget v0, p0, Llvq;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Llvq;->e:I

    .line 333
    return-void

    .line 312
    :cond_0
    iget v0, p0, Llvq;->c:I

    iget v1, p0, Llvq;->d:I

    sub-int/2addr v0, v1

    .line 313
    iget-object v1, p0, Llvq;->b:[B

    iget v2, p0, Llvq;->d:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    sub-int/2addr p2, v0

    .line 316
    iget v1, p0, Llvq;->c:I

    iput v1, p0, Llvq;->d:I

    .line 317
    iget v1, p0, Llvq;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Llvq;->e:I

    .line 318
    invoke-direct {p0}, Llvq;->i()V

    .line 323
    iget v1, p0, Llvq;->c:I

    if-gt p2, v1, :cond_1

    .line 325
    iget-object v1, p0, Llvq;->b:[B

    invoke-static {p1, v0, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iput p2, p0, Llvq;->d:I

    goto :goto_0

    .line 329
    :cond_1
    iget-object v1, p0, Llvq;->f:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x4

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 663
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    invoke-static {p1}, Llvq;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILlvk;)I
    .locals 2

    .prologue
    .line 671
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    invoke-static {p1}, Llvq;->b(Llvk;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 873
    :try_start_0
    invoke-static {p0}, Llxg;->a(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Llxj; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 880
    :goto_0
    invoke-static {v0}, Llvq;->s(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 876
    :catch_0
    move-exception v0

    sget-object v0, Llwg;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 877
    array-length v0, v0

    goto :goto_0
.end method

.method public static b(Llvk;)I
    .locals 2

    .prologue
    .line 897
    invoke-virtual {p0}, Llvk;->b()I

    move-result v0

    invoke-static {v0}, Llvq;->s(I)I

    move-result v0

    invoke-virtual {p0}, Llvk;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Llwp;)I
    .locals 2

    .prologue
    .line 921
    invoke-interface {p0}, Llwp;->m()I

    move-result v0

    .line 922
    invoke-static {v0}, Llvq;->s(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 822
    const/16 v0, 0x8

    return v0
.end method

.method public static c(ILlwp;)I
    .locals 2

    .prologue
    .line 703
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    invoke-static {p1}, Llvq;->b(Llwp;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c([B)I
    .locals 2

    .prologue
    .line 905
    array-length v0, p0

    invoke-static {v0}, Llvq;->s(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 830
    const/16 v0, 0x8

    return v0
.end method

.method public static d(II)I
    .locals 2

    .prologue
    .line 550
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    invoke-static {p1}, Llvq;->n(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(IJ)I
    .locals 3

    .prologue
    .line 590
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    .line 8798
    invoke-static {p1, p2}, Llvq;->k(J)I

    move-result v1

    .line 590
    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILlwp;)I
    .locals 2

    .prologue
    .line 712
    const/4 v0, 0x1

    invoke-static {v0}, Llvq;->m(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 713
    invoke-static {p0}, Llvq;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 714
    invoke-static {v1, p1}, Llvq;->c(ILlwp;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Llwp;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1240
    invoke-interface {p0}, Llwp;->m()I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x4

    return v0
.end method

.method public static e(IJ)I
    .locals 3

    .prologue
    .line 598
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    .line 8806
    invoke-static {p1, p2}, Llvq;->k(J)I

    move-result v1

    .line 598
    add-int/2addr v0, v1

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 846
    const/16 v0, 0x8

    return v0
.end method

.method public static f(ILlwp;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1231
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 11240
    invoke-interface {p1}, Llwp;->m()I

    move-result v1

    .line 1231
    add-int/2addr v0, v1

    return v0
.end method

.method public static f(J)I
    .locals 2

    .prologue
    .line 798
    invoke-static {p0, p1}, Llvq;->k(J)I

    move-result v0

    return v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x1

    return v0
.end method

.method public static g(J)I
    .locals 2

    .prologue
    .line 806
    invoke-static {p0, p1}, Llvq;->k(J)I

    move-result v0

    return v0
.end method

.method public static h(I)I
    .locals 1

    .prologue
    .line 574
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static h(J)I
    .locals 2

    .prologue
    .line 814
    invoke-static {p0, p1}, Llvq;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Llvq;->k(J)I

    move-result v0

    return v0
.end method

.method public static i(I)I
    .locals 1

    .prologue
    .line 614
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static i(J)J
    .locals 4

    .prologue
    .line 952
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1030
    iget-object v0, p0, Llvq;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Llvr;

    invoke-direct {v0}, Llvr;-><init>()V

    throw v0

    .line 1037
    :cond_0
    iget-object v0, p0, Llvq;->f:Ljava/io/OutputStream;

    iget-object v1, p0, Llvq;->b:[B

    iget v2, p0, Llvq;->d:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1038
    iput v3, p0, Llvq;->d:I

    .line 1039
    return-void
.end method

.method public static j(I)I
    .locals 1

    .prologue
    .line 638
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private j(J)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1270
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1271
    long-to-int v0, p1

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1272
    return-void

    .line 1274
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1275
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static k(I)I
    .locals 1

    .prologue
    .line 646
    invoke-static {p0}, Llvq;->m(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static k(J)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1312
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 1313
    const/4 v0, 0x1

    .line 1331
    :cond_0
    :goto_0
    return v0

    .line 1315
    :cond_1
    cmp-long v0, p0, v6

    if-gez v0, :cond_2

    .line 1316
    const/16 v0, 0xa

    goto :goto_0

    .line 1319
    :cond_2
    const/4 v0, 0x2

    .line 1320
    const-wide v2, -0x800000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 1321
    const/4 v0, 0x6

    .line 1322
    const/16 v1, 0x1c

    ushr-long v2, p0, v1

    .line 1324
    :goto_1
    const-wide/32 v4, -0x200000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 1325
    add-int/lit8 v0, v0, 0x2

    .line 1326
    const/16 v1, 0xe

    ushr-long/2addr v2, v1

    .line 1328
    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 1329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-wide v2, p0

    goto :goto_1
.end method

.method public static l(I)I
    .locals 2

    .prologue
    .line 655
    const/16 v0, 0x22

    invoke-static {v0}, Llvq;->m(I)I

    move-result v0

    .line 8863
    invoke-static {p0}, Llvq;->n(I)I

    move-result v1

    .line 655
    add-int/2addr v0, v1

    return v0
.end method

.method private l(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1354
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1355
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1356
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1357
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1358
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1359
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1360
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1361
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1362
    return-void
.end method

.method public static m(I)I
    .locals 1

    .prologue
    .line 10044
    shl-int/lit8 v0, p0, 0x3

    .line 745
    invoke-static {v0}, Llvq;->s(I)I

    move-result v0

    return v0
.end method

.method public static n(I)I
    .locals 1

    .prologue
    .line 753
    if-ltz p0, :cond_0

    .line 754
    invoke-static {p0}, Llvq;->s(I)I

    move-result v0

    .line 757
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static o(I)I
    .locals 1

    .prologue
    .line 766
    invoke-static {p0}, Llvq;->s(I)I

    move-result v0

    return v0
.end method

.method public static p(I)I
    .locals 1

    .prologue
    .line 774
    invoke-static {p0}, Llvq;->v(I)I

    move-result v0

    invoke-static {v0}, Llvq;->s(I)I

    move-result v0

    return v0
.end method

.method public static q(I)I
    .locals 1

    .prologue
    .line 863
    invoke-static {p0}, Llvq;->n(I)I

    move-result v0

    return v0
.end method

.method public static s(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1289
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 1290
    const/4 v0, 0x1

    .line 1301
    :goto_0
    return v0

    .line 1292
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    .line 1293
    const/4 v0, 0x2

    goto :goto_0

    .line 1295
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    .line 1296
    const/4 v0, 0x3

    goto :goto_0

    .line 1298
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    .line 1299
    const/4 v0, 0x4

    goto :goto_0

    .line 1301
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private t(I)V
    .locals 4

    .prologue
    .line 294
    int-to-byte v0, p1

    .line 3284
    iget v1, p0, Llvq;->d:I

    iget v2, p0, Llvq;->c:I

    if-ne v1, v2, :cond_0

    .line 3285
    invoke-direct {p0}, Llvq;->i()V

    .line 3288
    :cond_0
    iget-object v1, p0, Llvq;->b:[B

    iget v2, p0, Llvq;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Llvq;->d:I

    aput-byte v0, v1, v2

    .line 3289
    iget v0, p0, Llvq;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llvq;->e:I

    .line 295
    return-void
.end method

.method private static u(I)I
    .locals 2

    .prologue
    .line 558
    const/4 v0, 0x2

    invoke-static {v0}, Llvq;->m(I)I

    move-result v0

    .line 8766
    invoke-static {p0}, Llvq;->s(I)I

    move-result v1

    .line 558
    add-int/2addr v0, v1

    return v0
.end method

.method private static v(I)I
    .locals 2

    .prologue
    .line 937
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private w(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1341
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1342
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1343
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1344
    ushr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1345
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 3

    .prologue
    .line 453
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Llvq;->l(J)V

    .line 454
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 448
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-direct {p0, v0}, Llvq;->w(I)V

    .line 449
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 237
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Llvq;->a(II)V

    .line 238
    invoke-virtual {p0, p1}, Llvq;->g(I)V

    .line 239
    return-void
.end method

.method public a(ID)V
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 223
    invoke-virtual {p0, p2, p3}, Llvq;->a(D)V

    .line 224
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 3044
    shl-int/lit8 v0, p1, 0x3

    or-int/2addr v0, p2

    .line 151
    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 152
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 187
    invoke-virtual {p0, p2, p3}, Llvq;->a(J)V

    .line 188
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 244
    invoke-virtual {p0, p2}, Llvq;->a(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public a(ILlvk;)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 250
    invoke-virtual {p0, p2}, Llvq;->a(Llvk;)V

    .line 251
    return-void
.end method

.method public a(ILlwp;)V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 362
    invoke-virtual {p0, p2}, Llvq;->a(Llwp;)V

    .line 363
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 229
    invoke-virtual {p0, p2}, Llvq;->a(Z)V

    .line 230
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Llvq;->j(J)V

    .line 424
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 5064
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 5065
    invoke-static {v0}, Llvq;->s(I)I

    move-result v1

    .line 5069
    iget-object v2, p0, Llvq;->f:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    add-int v2, v1, v0

    iget v3, p0, Llvq;->c:I

    iget v4, p0, Llvq;->d:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 5074
    new-array v1, v0, [B

    .line 5075
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Llxg;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 5076
    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 5077
    invoke-direct {p0, v1, v0}, Llvq;->a([BI)V

    .line 5078
    :goto_0
    return-void

    .line 5081
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Llvq;->s(I)I

    move-result v0

    .line 5082
    iget v2, p0, Llvq;->d:I
    :try_end_0
    .catch Llxj; {:try_start_0 .. :try_end_0} :catch_0

    .line 5085
    if-ne v0, v1, :cond_1

    .line 5086
    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Llvq;->d:I

    .line 5087
    iget-object v1, p0, Llvq;->b:[B

    iget v3, p0, Llvq;->d:I

    iget v4, p0, Llvq;->c:I

    iget v5, p0, Llvq;->d:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Llxg;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 5090
    iput v2, p0, Llvq;->d:I

    .line 5091
    sub-int v3, v1, v2

    sub-int v0, v3, v0

    .line 5092
    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 5093
    iput v1, p0, Llvq;->d:I
    :try_end_1
    .catch Llxj; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5107
    :goto_1
    :try_start_2
    iget v1, p0, Llvq;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Llvq;->e:I
    :try_end_2
    .catch Llxj; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    sget-object v1, Llvq;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6047
    sget-object v0, Llwg;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 6048
    array-length v1, v0

    invoke-virtual {p0, v1}, Llvq;->r(I)V

    .line 6299
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Llvq;->a([BI)V

    goto :goto_0

    .line 5095
    :cond_1
    :try_start_3
    invoke-static {p1}, Llxg;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 5096
    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 5097
    iget-object v1, p0, Llvq;->b:[B

    iget v3, p0, Llvq;->d:I

    iget v4, p0, Llvq;->c:I

    iget v5, p0, Llvq;->d:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Llxg;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Llvq;->d:I
    :try_end_3
    .catch Llxj; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5099
    :catch_1
    move-exception v0

    .line 5102
    :try_start_4
    iput v2, p0, Llvq;->d:I

    .line 5103
    throw v0

    .line 5104
    :catch_2
    move-exception v0

    .line 5105
    new-instance v1, Llvr;

    invoke-direct {v1, v0}, Llvr;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Llxj; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public a(Llvk;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 483
    invoke-virtual {p1}, Llvk;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 6337
    invoke-virtual {p1}, Llvk;->b()I

    move-result v0

    .line 7169
    iget v1, p0, Llvq;->c:I

    iget v2, p0, Llvq;->d:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    .line 7171
    iget-object v1, p0, Llvq;->b:[B

    iget v2, p0, Llvq;->d:I

    invoke-virtual {p1, v1, v4, v2, v0}, Llvk;->a([BIII)V

    .line 7172
    iget v1, p0, Llvq;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Llvq;->d:I

    .line 7195
    :cond_0
    :goto_0
    iget v1, p0, Llvq;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Llvq;->e:I

    .line 485
    return-void

    .line 7177
    :cond_1
    iget v1, p0, Llvq;->c:I

    iget v2, p0, Llvq;->d:I

    sub-int/2addr v1, v2

    .line 7178
    iget-object v2, p0, Llvq;->b:[B

    iget v3, p0, Llvq;->d:I

    invoke-virtual {p1, v2, v4, v3, v1}, Llvk;->a([BIII)V

    .line 7180
    sub-int/2addr v0, v1

    .line 7181
    iget v2, p0, Llvq;->c:I

    iput v2, p0, Llvq;->d:I

    .line 7182
    iget v2, p0, Llvq;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Llvq;->e:I

    .line 7183
    invoke-direct {p0}, Llvq;->i()V

    .line 7188
    iget v2, p0, Llvq;->c:I

    if-gt v0, v2, :cond_2

    .line 7190
    iget-object v2, p0, Llvq;->b:[B

    invoke-virtual {p1, v2, v1, v4, v0}, Llvk;->a([BIII)V

    .line 7191
    iput v0, p0, Llvq;->d:I

    goto :goto_0

    .line 7193
    :cond_2
    iget-object v2, p0, Llvq;->f:Ljava/io/OutputStream;

    .line 7586
    add-int v3, v1, v0

    invoke-virtual {p1}, Llvk;->b()I

    move-result v4

    invoke-static {v1, v3, v4}, Llvk;->a(III)I

    .line 7587
    if-lez v0, :cond_0

    .line 7588
    invoke-virtual {p1, v2, v1, v0}, Llvk;->a(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method public a(Llwp;)V
    .locals 1

    .prologue
    .line 495
    invoke-interface {p1}, Llwp;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 496
    invoke-interface {p1, p0}, Llwp;->a(Llvq;)V

    .line 497
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 458
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 459
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 393
    if-ltz p1, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Llvq;->r(I)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Llvq;->j(J)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 157
    invoke-virtual {p0, p2}, Llvq;->b(I)V

    .line 158
    return-void
.end method

.method public b(IJ)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 193
    invoke-virtual {p0, p2, p3}, Llvq;->b(J)V

    .line 194
    return-void
.end method

.method public b(ILlwp;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 371
    invoke-virtual {p0, v2, v3}, Llvq;->a(II)V

    .line 4162
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Llvq;->a(II)V

    .line 4163
    invoke-virtual {p0, p1}, Llvq;->c(I)V

    .line 373
    invoke-virtual {p0, v3, p2}, Llvq;->a(ILlwp;)V

    .line 374
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Llvq;->a(II)V

    .line 375
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0, p1, p2}, Llvq;->j(J)V

    .line 429
    return-void
.end method

.method public b([B)V
    .locals 1

    .prologue
    .line 489
    array-length v0, p1

    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 8299
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Llvq;->a([BI)V

    .line 491
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Llvq;->r(I)V

    .line 404
    return-void
.end method

.method public c(II)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 175
    invoke-virtual {p0, p2}, Llvq;->e(I)V

    .line 176
    return-void
.end method

.method public c(IJ)V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 205
    invoke-virtual {p0, p2, p3}, Llvq;->d(J)V

    .line 206
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 433
    invoke-static {p1, p2}, Llvq;->i(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Llvq;->j(J)V

    .line 434
    return-void
.end method

.method public c(Llwp;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1220
    invoke-interface {p1, p0}, Llwp;->a(Llvq;)V

    .line 1221
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 408
    invoke-static {p1}, Llvq;->v(I)I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->r(I)V

    .line 409
    return-void
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Llvq;->l(J)V

    .line 439
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1}, Llvq;->w(I)V

    .line 414
    return-void
.end method

.method public e(ILlwp;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1208
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 1209
    invoke-virtual {p0, p2}, Llvq;->c(Llwp;)V

    .line 1210
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Llvq;->a(II)V

    .line 1211
    return-void
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Llvq;->l(J)V

    .line 444
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Llvq;->w(I)V

    .line 419
    return-void
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Llvq;->b(I)V

    .line 467
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 10972
    iget-object v0, p0, Llvq;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 10973
    iget v0, p0, Llvq;->c:I

    iget v1, p0, Llvq;->d:I

    sub-int/2addr v0, v1

    .line 989
    if-eqz v0, :cond_1

    .line 990
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10975
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1
    return-void
.end method

.method public r(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1252
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1253
    invoke-direct {p0, p1}, Llvq;->t(I)V

    .line 1254
    return-void

    .line 1256
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Llvq;->t(I)V

    .line 1257
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
