.class public final Lexs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lejb;
.implements Ljava/lang/Runnable;


# static fields
.field private static T:Lext;

.field private static U:Landroid/os/Handler;

.field private static final W:[B

.field static final a:[B

.field private static final aa:Ljava/lang/Object;


# instance fields
.field A:I

.field final B:Landroid/os/Handler;

.field C:Z

.field D:Z

.field final E:[B

.field F:I

.field G:I

.field H:[I

.field public I:I

.field public final J:[I

.field public K:I

.field L:I

.field M:Z

.field private final N:Lexb;

.field private O:J

.field private P:Z

.field private Q:I

.field private R:Z

.field private S:Z

.field private V:Z

.field private X:Z

.field private Y:I

.field private Z:Lexv;

.field volatile b:Z

.field volatile c:Z

.field d:I

.field e:Z

.field f:I

.field g:[I

.field h:[I

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field final o:[B

.field p:I

.field q:Z

.field r:I

.field final s:[S

.field final t:[B

.field final u:[B

.field v:[B

.field w:Z

.field x:[I

.field y:I

.field z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lexs;->a:[B

    .line 122
    const/16 v0, 0x300

    new-array v0, v0, [B

    sput-object v0, Lexs;->W:[B

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lexs;->aa:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BLexv;Lexb;)V
    .locals 7

    .prologue
    const/16 v3, 0x1000

    const/16 v4, 0x100

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-array v0, v4, [B

    iput-object v0, p0, Lexs;->o:[B

    .line 85
    iput v6, p0, Lexs;->p:I

    .line 90
    new-array v0, v3, [S

    iput-object v0, p0, Lexs;->s:[S

    .line 91
    new-array v0, v3, [B

    iput-object v0, p0, Lexs;->t:[B

    .line 92
    const/16 v0, 0x1001

    new-array v0, v0, [B

    iput-object v0, p0, Lexs;->u:[B

    .line 108
    iput-boolean v2, p0, Lexs;->S:Z

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lexs;->B:Landroid/os/Handler;

    .line 126
    new-array v0, v4, [I

    iput-object v0, p0, Lexs;->J:[I

    .line 146
    iput-object p3, p0, Lexs;->N:Lexb;

    .line 149
    iput-boolean v2, p0, Lexs;->M:Z

    .line 152
    sget-object v3, Lexs;->aa:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    sget-object v0, Lexs;->T:Lext;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lext;

    invoke-direct {v0}, Lext;-><init>()V

    .line 155
    sput-object v0, Lexs;->T:Lext;

    invoke-virtual {v0}, Lext;->start()V

    .line 156
    new-instance v0, Landroid/os/Handler;

    sget-object v4, Lexs;->T:Lext;

    invoke-virtual {v4}, Lext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    sget-object v5, Lexs;->T:Lext;

    invoke-direct {v0, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lexs;->U:Landroid/os/Handler;

    .line 158
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iput-object p2, p0, Lexs;->Z:Lexv;

    .line 161
    iput-object p1, p0, Lexs;->E:[B

    .line 162
    new-instance v3, Lexu;

    .line 1349
    invoke-direct {v3, p0, p1}, Lexu;-><init>(Lexs;[B)V

    .line 2247
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0x47

    if-ne v0, v4, :cond_2

    move v0, v2

    .line 2248
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0x49

    if-ne v0, v4, :cond_3

    move v0, v2

    .line 2249
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0x46

    if-ne v0, v4, :cond_4

    move v0, v2

    .line 2250
    :goto_2
    if-nez v0, :cond_5

    .line 2251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexs;->b:Z

    .line 2252
    const-string v0, "Babel"

    const-string v4, "Not a valid Gif."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_1
    :goto_3
    invoke-virtual {v3}, Lexu;->a()I

    move-result v0

    iput v0, p0, Lexs;->I:I

    .line 166
    iget v0, p0, Lexs;->I:I

    iput v0, p0, Lexs;->L:I

    .line 167
    iget v0, p0, Lexs;->F:I

    iput v0, p0, Lexs;->n:I

    iput v0, p0, Lexs;->l:I

    .line 168
    iget v0, p0, Lexs;->G:I

    iput v0, p0, Lexs;->m:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    .line 172
    :goto_4
    if-nez v1, :cond_7

    .line 174
    :try_start_2
    iget-object v4, p0, Lexs;->N:Lexb;

    iget v5, p0, Lexs;->F:I

    iget v6, p0, Lexs;->G:I

    invoke-virtual {v4, v5, v6}, Lexb;->b(II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lexs;->z:Landroid/graphics/Bitmap;

    .line 175
    const/4 v4, 0x0

    iput-boolean v4, p0, Lexs;->C:Z

    .line 176
    iget v4, p0, Lexs;->F:I

    iget v5, p0, Lexs;->G:I

    mul-int/2addr v4, v5

    .line 177
    new-array v5, v4, [I

    iput-object v5, p0, Lexs;->H:[I

    .line 178
    new-array v4, v4, [B

    iput-object v4, p0, Lexs;->v:[B

    .line 181
    sget-object v4, Lexs;->U:Landroid/os/Handler;

    sget-object v5, Lexs;->U:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v2

    .line 193
    goto :goto_4

    .line 158
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 2247
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2248
    goto :goto_1

    :cond_4
    move v0, v1

    .line 2249
    goto :goto_2

    .line 2257
    :cond_5
    const-wide/16 v4, 0x3

    :try_start_4
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 2278
    invoke-static {v3}, Lexs;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lexs;->F:I

    .line 2279
    invoke-static {v3}, Lexs;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lexs;->G:I

    .line 2280
    iget v0, p0, Lexs;->F:I

    if-lez v0, :cond_6

    iget v0, p0, Lexs;->G:I

    if-gtz v0, :cond_8

    .line 2281
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexs;->b:Z

    .line 2282
    const-string v0, "Babel"

    const-string v4, "Not a valid Gif. Width or height is 0"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2261
    :goto_5
    iget-boolean v0, p0, Lexs;->X:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lexs;->b:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v0, :cond_1

    .line 2263
    :try_start_5
    iget-object v0, p0, Lexs;->J:[I

    iget v4, p0, Lexs;->Y:I

    invoke-static {v3, v0, v4}, Lexs;->a(Ljava/io/InputStream;[II)Z

    .line 2264
    iget-object v0, p0, Lexs;->J:[I

    iget v4, p0, Lexs;->K:I

    aget v0, v0, v4

    iput v0, p0, Lexs;->d:I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 2265
    :catch_0
    move-exception v0

    .line 2267
    const/4 v4, 0x1

    :try_start_6
    iput-boolean v4, p0, Lexs;->b:Z

    .line 2268
    const-string v4, "Babel"

    const-string v5, "Not a valid Gif."

    invoke-static {v4, v5, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 195
    :catch_1
    move-exception v0

    .line 196
    iput-boolean v2, p0, Lexs;->b:Z

    .line 197
    const-string v1, "Babel"

    const-string v2, "Could not read input stream from the gif."

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_7
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Lexu;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 209
    :goto_7
    return-void

    .line 2286
    :cond_8
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 2287
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_9

    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lexs;->X:Z

    .line 2290
    and-int/lit8 v0, v4, 0x7

    shl-int v0, v6, v0

    iput v0, p0, Lexs;->Y:I

    .line 2291
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lexs;->K:I

    .line 2292
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 198
    :catch_2
    move-exception v0

    .line 200
    iput-boolean v2, p0, Lexs;->b:Z

    .line 201
    const-string v1, "Babel"

    const-string v2, "Gif has invalid arguments"

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    move v0, v1

    .line 2287
    goto :goto_8

    .line 184
    :catch_3
    move-exception v4

    :try_start_9
    const-string v4, "Babel"

    const-string v5, "Out of memory trying to create bitmap to use for Gif."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    if-gt v0, v2, :cond_a

    .line 187
    sget-object v4, Lhbu;->a:Lhbu;

    invoke-virtual {v4}, Lhbu;->a()V

    goto/16 :goto_4

    .line 190
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lexs;->b:Z

    .line 191
    const-string v1, "Babel"

    const-string v4, "Out of Memory. Failed to create bitmap to use for Gif. Aborting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2

    move v1, v2

    .line 193
    goto/16 :goto_4

    .line 209
    :catch_4
    move-exception v0

    goto :goto_7
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static a([B[III)I
    .locals 5

    .prologue
    .line 322
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 323
    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p0, p3

    and-int/lit16 v2, v2, 0xff

    .line 324
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 325
    add-int/lit8 p3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 326
    const/high16 v4, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, p1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return p3
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lexs;->B:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexs;->P:Z

    .line 384
    return-void
.end method

.method private static a(Ljava/io/InputStream;[II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 302
    sget-object v1, Lexs;->W:[B

    monitor-enter v1

    .line 303
    mul-int/lit8 v2, p2, 0x3

    .line 304
    :try_start_0
    sget-object v3, Lexs;->W:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 305
    if-ge v3, v2, :cond_0

    .line 306
    monitor-exit v1

    .line 311
    :goto_0
    return v0

    .line 308
    :cond_0
    sget-object v0, Lexs;->W:[B

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2}, Lexs;->a([B[III)I

    .line 310
    monitor-exit v1

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a([B)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public a(Lexv;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lexs;->Z:Lexv;

    .line 238
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lexs;->V:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lexs;->Z:Lexv;

    iget-object v1, p0, Lexs;->z:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lexv;->a(Landroid/graphics/Bitmap;)V

    .line 241
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lexs;->S:Z

    if-ne v0, p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    iput-boolean p1, p0, Lexs;->S:Z

    .line 421
    iget-boolean v0, p0, Lexs;->S:Z

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lexs;->g()V

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lexs;->h()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lexs;->E:[B

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lexs;->F:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lexs;->G:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lexs;->b:Z

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lexs;->P:Z

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexs;->P:Z

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lexs;->O:J

    .line 364
    invoke-virtual {p0}, Lexs;->run()V

    .line 366
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lexs;->P:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0, p0}, Lexs;->a(Ljava/lang/Runnable;)V

    .line 372
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 899
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 900
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lexs;->Q:I

    .line 901
    iget-object v0, p0, Lexs;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lexs;->z:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lexs;->H:[I

    iget v3, p0, Lexs;->F:I

    iget v6, p0, Lexs;->F:I

    iget v7, p0, Lexs;->G:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 903
    iput-boolean v8, p0, Lexs;->V:Z

    .line 904
    iput-boolean v2, p0, Lexs;->R:Z

    .line 906
    iget-object v0, p0, Lexs;->Z:Lexv;

    if-eqz v0, :cond_1

    .line 2672
    iget-boolean v0, p0, Lexs;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lexs;->V:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lexs;->C:Z

    if-nez v0, :cond_0

    iget v0, p0, Lexs;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lexs;->m:I

    if-lez v0, :cond_0

    move v2, v8

    .line 906
    :cond_0
    if-eqz v2, :cond_1

    .line 907
    iget-object v0, p0, Lexs;->Z:Lexv;

    iget-object v1, p0, Lexs;->z:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lexv;->a(Landroid/graphics/Bitmap;)V

    .line 2917
    iget-boolean v0, p0, Lexs;->P:Z

    if-eqz v0, :cond_3

    .line 2918
    iget-boolean v0, p0, Lexs;->R:Z

    if-nez v0, :cond_1

    .line 2922
    iget-wide v0, p0, Lexs;->O:J

    iget v2, p0, Lexs;->Q:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    add-long/2addr v2, v4

    .line 2923
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lexs;->O:J

    .line 2926
    iget-wide v0, p0, Lexs;->O:J

    .line 3375
    iget-boolean v2, p0, Lexs;->S:Z

    if-eqz v2, :cond_1

    .line 3376
    iget-object v2, p0, Lexs;->B:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3377
    iput-boolean v8, p0, Lexs;->R:Z

    :cond_1
    :goto_0
    move v2, v8

    .line 913
    :cond_2
    return v2

    .line 2929
    :cond_3
    invoke-direct {p0, p0}, Lexs;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 649
    iget-boolean v0, p0, Lexs;->w:Z

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lexs;->x:[I

    if-nez v0, :cond_2

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lexs;->x:[I

    .line 656
    :try_start_0
    iget-object v0, p0, Lexs;->H:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lexs;->x:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_2
    :goto_1
    iget-object v0, p0, Lexs;->x:[I

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lexs;->H:[I

    iget-object v1, p0, Lexs;->x:[I

    iget-object v2, p0, Lexs;->H:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexs;->w:Z

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    const-string v1, "Babel"

    const-string v2, "Gif backupFrame threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public j()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lexs;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lexs;->N:Lexb;

    iget-object v1, p0, Lexs;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lexb;->a(Landroid/graphics/Bitmap;)V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lexs;->z:Landroid/graphics/Bitmap;

    .line 680
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexs;->C:Z

    .line 681
    return-void
.end method

.method k()I
    .locals 5

    .prologue
    .line 867
    iget-object v0, p0, Lexs;->E:[B

    iget v1, p0, Lexs;->L:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexs;->L:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 868
    if-lez v0, :cond_0

    .line 869
    iget-object v1, p0, Lexs;->E:[B

    iget v2, p0, Lexs;->L:I

    iget-object v3, p0, Lexs;->o:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    iget v1, p0, Lexs;->L:I

    add-int/2addr v1, v0

    iput v1, p0, Lexs;->L:I

    .line 872
    :cond_0
    return v0
.end method

.method l()I
    .locals 4

    .prologue
    .line 880
    iget-object v0, p0, Lexs;->E:[B

    iget v1, p0, Lexs;->L:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexs;->L:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 881
    iget-object v1, p0, Lexs;->E:[B

    iget v2, p0, Lexs;->L:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lexs;->L:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 882
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method m()V
    .locals 3

    .prologue
    .line 892
    :cond_0
    iget-object v0, p0, Lexs;->E:[B

    iget v1, p0, Lexs;->L:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexs;->L:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 893
    iget v1, p0, Lexs;->L:I

    add-int/2addr v1, v0

    iput v1, p0, Lexs;->L:I

    .line 894
    if-gtz v0, :cond_0

    .line 895
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 391
    iget-boolean v0, p0, Lexs;->C:Z

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-boolean v0, p0, Lexs;->c:Z

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Lexs;->U:Landroid/os/Handler;

    sget-object v1, Lexs;->U:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
