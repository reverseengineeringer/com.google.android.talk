.class final Lbvq;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkdw;",
        "Lkdx;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final v:I

.field private final w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/http/InputStreamContent;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/google/api/client/http/MultipartContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lbvq;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;Lefh;ILbvx;)V
    .locals 7

    .prologue
    .line 103
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 104
    invoke-virtual {p2}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    new-instance v1, Lihp;

    invoke-direct {v1}, Lihp;-><init>()V

    invoke-virtual {v0, v1}, Lihx;->a(Lihp;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const-string v3, "conversations/sendchatmessage"

    new-instance v5, Lkdw;

    invoke-direct {v5}, Lkdw;-><init>()V

    new-instance v6, Lkdx;

    invoke-direct {v6}, Lkdx;-><init>()V

    move-object v0, p0

    move-object v2, p5

    move-object v4, p3

    .line 103
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 111
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Lbvq;->v:I

    .line 112
    iput-object p1, p0, Lbvq;->b:Landroid/content/Context;

    .line 113
    iput p4, p0, Lbvq;->w:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbvq;->x:Ljava/util/List;

    .line 115
    return-void
.end method

.method private static a(Landroid/content/Context;Lblb;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 406
    iget-object v0, p1, Lblb;->a:Ljava/lang/String;

    const-string v2, "Error: Input media with null URI"

    invoke-static {v0, v2}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-wide/16 v4, 0x0

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    const-string v2, "image/gif"

    iget-object v3, p1, Lblb;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lblb;->d:Ljava/lang/String;

    .line 5084
    invoke-static {v2}, Laal;->b(Ljava/lang/String;)Z

    move-result v2

    .line 411
    if-nez v2, :cond_1

    .line 413
    :cond_0
    :try_start_0
    iget-object v2, p1, Lblb;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 414
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 415
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v4

    move-wide v10, v4

    move-object v4, v2

    move-wide v2, v10

    .line 461
    :goto_0
    if-nez v4, :cond_c

    .line 462
    const-string v2, "Babel_SendMediaMessage"

    const-string v3, "We could not create an inputStream for the uri: "

    iget-object v0, p1, Lblb;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 467
    :goto_2
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 417
    :goto_3
    const-string v3, "Babel_SendMediaMessage"

    const-string v6, "FileNotFoundException trying to detect how large the attachment is"

    invoke-static {v3, v6, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v10, v4

    move-object v4, v2

    move-wide v2, v10

    .line 419
    goto :goto_0

    .line 422
    :cond_1
    const-string v0, "babel_thumbnail_photo_upload_size"

    const/16 v2, 0x140

    .line 423
    invoke-static {p0, v0, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 425
    invoke-static {}, Leye;->a()Lexb;

    move-result-object v2

    .line 427
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p1, Lblb;->a:Ljava/lang/String;

    .line 428
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 429
    invoke-static {v3}, Leye;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 430
    if-eqz v3, :cond_2

    array-length v6, v3

    if-nez v6, :cond_4

    .line 431
    :cond_2
    const-string v2, "Babel_SendMediaMessage"

    const-string v3, "Could not parse uri for input stream: "

    iget-object v0, p1, Lblb;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 432
    goto :goto_2

    .line 431
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 457
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    .line 458
    :goto_5
    const-string v6, "Babel_SendMediaMessage"

    const-string v7, "Could not open file corresponding to uri "

    iget-object v0, p1, Lblb;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v6, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v10, v4

    move-object v4, v3

    move-wide v2, v10

    goto/16 :goto_0

    .line 434
    :cond_4
    :try_start_3
    iget-object v6, p1, Lblb;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/apps/hangouts/content/EsProvider;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 436
    const-string v0, "Babel_SendMediaMessage"

    const-string v2, "Sending cache file."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 438
    :try_start_4
    array-length v0, v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    int-to-long v4, v0

    move-wide v10, v4

    move-object v4, v2

    move-wide v2, v10

    goto/16 :goto_0

    .line 442
    :cond_5
    :try_start_5
    iget v6, p1, Lblb;->g:I

    invoke-virtual {v2, v3, v0, v0, v6}, Lexb;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    if-nez v0, :cond_6

    .line 445
    const-string v0, "Babel_SendMediaMessage"

    const-string v2, "Null bitmap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 446
    goto/16 :goto_2

    .line 448
    :cond_6
    const/16 v3, 0x46

    invoke-static {v0, v3}, Leye;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 449
    invoke-virtual {v2, v0}, Lexb;->a(Landroid/graphics/Bitmap;)V

    .line 450
    if-eqz v3, :cond_7

    array-length v0, v3

    if-nez v0, :cond_9

    .line 451
    :cond_7
    const-string v2, "Babel_SendMediaMessage"

    const-string v3, "Could not parse uri for bitmap: "

    iget-object v0, p1, Lblb;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 452
    goto/16 :goto_2

    .line 451
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 454
    :cond_9
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 455
    :try_start_6
    array-length v0, v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    int-to-long v4, v0

    move-wide v10, v4

    move-object v4, v2

    move-wide v2, v10

    .line 459
    goto/16 :goto_0

    .line 458
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 462
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    :cond_c
    new-instance v0, Lcom/google/api/client/http/InputStreamContent;

    iget-object v1, p1, Lblb;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 466
    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    goto/16 :goto_2

    .line 457
    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_5

    .line 416
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method private a(Lbvx;I)V
    .locals 4

    .prologue
    .line 3219
    new-instance v0, Lcsn;

    .line 4040
    invoke-direct {v0}, Lcsn;-><init>()V

    .line 395
    invoke-virtual {p1}, Lbvx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lbvx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 4361
    iget-object v1, p0, Lihi;->q:Liht;

    .line 397
    invoke-virtual {v1}, Liht;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsn;->d(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 398
    iget v1, p0, Lbvq;->v:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p2, v0}, Laen;->a(IJILcsn;)V

    .line 399
    return-void
.end method

.method private a(Lkdw;)V
    .locals 12

    .prologue
    .line 2115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 164
    check-cast v0, Lbvx;

    .line 165
    invoke-virtual {v0}, Lbvx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbvq;->a(Ljava/lang/String;)V

    .line 2180
    new-instance v2, Ljzr;

    invoke-direct {v2}, Ljzr;-><init>()V

    .line 2183
    invoke-virtual {v0}, Lbvx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Ljzr;->b:Ljava/lang/Long;

    .line 2184
    iget-object v1, p0, Lbvq;->b:Landroid/content/Context;

    const-string v3, "babel_contingency_mode_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2187
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lbvx;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2189
    invoke-virtual {v0}, Lbvx;->b()Ljava/lang/String;

    move-result-object v1

    .line 2188
    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v2, Ljzr;->a:Ljxw;

    .line 2191
    :cond_0
    invoke-virtual {v0}, Lbvx;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2192
    const/4 v1, 0x1

    .line 2191
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljzr;->c:Ljava/lang/Integer;

    .line 2194
    new-instance v1, Ljyp;

    invoke-direct {v1}, Ljyp;-><init>()V

    .line 2195
    invoke-virtual {v0}, Lbvx;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Ljyp;->a:Ljava/lang/Integer;

    .line 2196
    invoke-virtual {v0}, Lbvx;->m()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2197
    new-instance v3, Llcf;

    invoke-direct {v3}, Llcf;-><init>()V

    iput-object v3, v1, Ljyp;->b:Llcf;

    .line 2198
    iget-object v3, v1, Ljyp;->b:Llcf;

    invoke-virtual {v0}, Lbvx;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Llcf;->a:Ljava/lang/String;

    .line 2200
    :cond_1
    iput-object v1, v2, Ljzr;->d:Ljyp;

    .line 2201
    invoke-virtual {v0}, Lbvx;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljzr;->e:Ljava/lang/Integer;

    .line 2202
    iput-object v2, p1, Lkdw;->a:Ljzr;

    .line 2204
    invoke-virtual {v0}, Lbvx;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2205
    new-instance v1, Lkbi;

    invoke-direct {v1}, Lkbi;-><init>()V

    iput-object v1, p1, Lkdw;->d:Lkbi;

    .line 2206
    iget-object v1, p1, Lkdw;->d:Lkbi;

    invoke-virtual {v0}, Lbvx;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lkbi;->a:Ljava/lang/String;

    .line 2209
    :cond_2
    new-instance v1, Ljxk;

    invoke-direct {v1}, Ljxk;-><init>()V

    .line 2211
    invoke-virtual {v0}, Lbvx;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ljxk;->a:Ljava/lang/Long;

    .line 2212
    new-instance v2, Ldmn;

    invoke-direct {v2}, Ldmn;-><init>()V

    iget v3, p0, Lbvq;->v:I

    .line 2213
    invoke-virtual {v2, v3}, Ldmn;->a(I)Ldmn;

    move-result-object v2

    iget v3, p0, Lbvq;->w:I

    .line 2214
    invoke-virtual {v2, v3}, Ldmn;->b(I)Ldmn;

    move-result-object v2

    .line 2215
    invoke-virtual {v2}, Ldmn;->a()Ldmn;

    move-result-object v2

    .line 2216
    invoke-virtual {v2, v1}, Ldmn;->a(Ljxk;)Ldmn;

    move-result-object v1

    .line 2217
    invoke-virtual {v1}, Ldmn;->b()Ldmm;

    move-result-object v1

    .line 2219
    invoke-virtual {p0, v1}, Lbvq;->a(Ldmm;)Lkdo;

    move-result-object v1

    iput-object v1, p1, Lkdw;->requestHeader:Lkdo;

    .line 2225
    new-instance v4, Lkcd;

    invoke-direct {v4}, Lkcd;-><init>()V

    .line 2226
    invoke-virtual {v0}, Lbvx;->f()Lksf;

    move-result-object v5

    .line 2227
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 2228
    if-lez v6, :cond_c

    .line 2229
    new-array v7, v6, [Lmel;

    .line 2230
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_b

    .line 2231
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefx;

    .line 2232
    new-instance v8, Lmel;

    invoke-direct {v8}, Lmel;-><init>()V

    .line 2233
    iget-object v2, v1, Lefx;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2234
    iget-object v2, v1, Lefx;->b:Ljava/lang/String;

    iput-object v2, v8, Lmel;->b:Ljava/lang/String;

    .line 2236
    :cond_3
    iget-object v2, v1, Lefx;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2237
    new-instance v2, Lmek;

    invoke-direct {v2}, Lmek;-><init>()V

    iput-object v2, v8, Lmel;->d:Lmek;

    .line 2238
    iget-object v2, v8, Lmel;->d:Lmek;

    iget-object v9, v1, Lefx;->d:Ljava/lang/String;

    iput-object v9, v2, Lmek;->a:Ljava/lang/String;

    .line 2239
    iget-object v2, v1, Lefx;->b:Ljava/lang/String;

    iput-object v2, v8, Lmel;->b:Ljava/lang/String;

    .line 2241
    :cond_4
    iget v2, v1, Lefx;->c:I

    if-eqz v2, :cond_5

    .line 2242
    new-instance v9, Lmei;

    invoke-direct {v9}, Lmei;-><init>()V

    .line 2243
    iget v2, v1, Lefx;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v9, Lmei;->a:Ljava/lang/Boolean;

    .line 2244
    iget v2, v1, Lefx;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v9, Lmei;->b:Ljava/lang/Boolean;

    .line 2245
    iget v2, v1, Lefx;->c:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 2246
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v9, Lmei;->c:Ljava/lang/Boolean;

    .line 2247
    iget v2, v1, Lefx;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v9, Lmei;->d:Ljava/lang/Boolean;

    .line 2248
    iput-object v9, v8, Lmel;->c:Lmei;

    .line 2250
    :cond_5
    iget v1, v1, Lefx;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lmel;->a:Ljava/lang/Integer;

    .line 2251
    aput-object v8, v7, v3

    .line 2230
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 2193
    :cond_6
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 2243
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 2244
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 2245
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 2247
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 2253
    :cond_b
    iput-object v7, v4, Lkcd;->a:[Lmel;

    .line 2255
    :cond_c
    iput-object v4, p1, Lkdw;->e:Lkcd;

    .line 2262
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2263
    const/4 v3, 0x0

    .line 2264
    const/4 v1, 0x0

    .line 2265
    invoke-virtual {v0}, Lbvx;->g()Lksf;

    move-result-object v2

    invoke-virtual {v2}, Lksf;->a()Lkyp;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbkq;

    .line 2266
    new-instance v7, Ljxi;

    invoke-direct {v7}, Ljxi;-><init>()V

    .line 2268
    iget-object v4, v1, Lbkq;->c:Lbkr;

    .line 2270
    sget-object v2, Lbkr;->b:Lbkr;

    iget-object v8, v1, Lbkq;->c:Lbkr;

    invoke-virtual {v2, v8}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lbkr;->c:Lbkr;

    iget-object v8, v1, Lbkq;->c:Lbkr;

    .line 2271
    invoke-virtual {v2, v8}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2272
    :cond_d
    check-cast v1, Lblb;

    .line 2273
    iget-object v2, p0, Lbvq;->b:Landroid/content/Context;

    .line 2274
    invoke-static {v2, v1}, Lbvq;->a(Landroid/content/Context;Lblb;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/InputStreamContent;

    .line 2275
    if-eqz v1, :cond_e

    .line 2276
    iget-object v2, p0, Lbvq;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2356
    :cond_e
    :goto_7
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    .line 2357
    goto :goto_6

    .line 2279
    :cond_f
    sget-object v2, Lbkr;->d:Lbkr;

    iget-object v8, v1, Lbkq;->c:Lbkr;

    invoke-virtual {v2, v8}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2280
    check-cast v1, Lblj;

    .line 2281
    invoke-virtual {v0}, Lbvx;->h()Lksf;

    move-result-object v8

    .line 2282
    new-instance v2, Lkbx;

    invoke-direct {v2}, Lkbx;-><init>()V

    iput-object v2, v7, Ljxi;->b:Lkbx;

    .line 2283
    iget-object v2, v7, Ljxi;->b:Lkbx;

    new-instance v9, Lkbz;

    invoke-direct {v9}, Lkbz;-><init>()V

    iput-object v9, v2, Lkbx;->b:Lkbz;

    .line 2284
    iget-object v2, v7, Ljxi;->b:Lkbx;

    iget-object v2, v2, Lkbx;->b:Lkbz;

    iget-object v9, v1, Lblj;->e:Ljava/lang/String;

    iput-object v9, v2, Lkbz;->b:Ljava/lang/String;

    .line 2286
    if-eqz v8, :cond_10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_10

    .line 2287
    iget-object v2, v7, Ljxi;->b:Lkbx;

    iget-object v9, v2, Lkbx;->b:Lkbz;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v9, Lkbz;->a:Ljava/lang/String;

    .line 2289
    :cond_10
    iget-object v2, v7, Ljxi;->b:Lkbx;

    iget-object v2, v2, Lkbx;->b:Lkbz;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v2, Lkbz;->d:Ljava/lang/Boolean;

    .line 2291
    new-instance v9, Ljzs;

    invoke-direct {v9}, Ljzs;-><init>()V

    .line 2292
    new-instance v2, Ljzu;

    invoke-direct {v2}, Ljzu;-><init>()V

    iput-object v2, v9, Ljzs;->b:Ljzu;

    .line 2293
    iget-object v2, v9, Ljzs;->b:Ljzu;

    iget-object v1, v1, Lblj;->e:Ljava/lang/String;

    iput-object v1, v2, Ljzu;->b:Ljava/lang/String;

    .line 2295
    if-eqz v8, :cond_19

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_19

    .line 2296
    iget-object v10, v9, Ljzs;->b:Ljzu;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Ljzu;->a:Ljava/lang/String;

    move v1, v2

    .line 2298
    :goto_8
    iget-object v2, v9, Ljzs;->b:Ljzu;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Ljzu;->d:Ljava/lang/Boolean;

    .line 2299
    iput-object v9, p1, Lkdw;->f:Ljzs;

    move v3, v1

    .line 2301
    goto :goto_7

    :cond_11
    sget-object v2, Lbkr;->e:Lbkr;

    iget-object v8, v1, Lbkq;->c:Lbkr;

    invoke-virtual {v2, v8}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2302
    check-cast v1, Lbkz;

    .line 2303
    iget-object v2, v1, Lbkz;->e:Lgeo;

    .line 2304
    new-instance v1, Llzi;

    invoke-direct {v1}, Llzi;-><init>()V

    .line 2305
    invoke-interface {v2}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v1, Llzi;->n:Ljava/lang/Double;

    .line 2306
    invoke-interface {v2}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v1, Llzi;->o:Ljava/lang/Double;

    .line 2308
    new-instance v8, Llyt;

    invoke-direct {v8}, Llyt;-><init>()V

    .line 2309
    sget-object v9, Llzi;->a:Llyc;

    invoke-virtual {v8, v9, v1}, Llyt;->a(Llyc;Ljava/lang/Object;)Llyb;

    .line 2311
    new-instance v9, Llzp;

    invoke-direct {v9}, Llzp;-><init>()V

    .line 2312
    iget-object v1, p0, Lbvq;->b:Landroid/content/Context;

    const-class v10, Lcrv;

    invoke-static {v1, v10}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrv;

    .line 2313
    invoke-interface {v1, v2}, Lcrv;->a(Lgeo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Llzp;->c:Ljava/lang/String;

    .line 2315
    new-instance v1, Llyt;

    invoke-direct {v1}, Llyt;-><init>()V

    .line 2316
    sget-object v10, Llzp;->a:Llyc;

    invoke-virtual {v1, v10, v9}, Llyt;->a(Llyc;Ljava/lang/Object;)Llyb;

    .line 2318
    new-instance v9, Lmaq;

    invoke-direct {v9}, Lmaq;-><init>()V

    .line 2319
    invoke-interface {v2}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lmaq;->s:Ljava/lang/String;

    .line 2321
    new-instance v10, Llyt;

    invoke-direct {v10}, Llyt;-><init>()V

    .line 2322
    sget-object v11, Lmaq;->a:Llyc;

    invoke-virtual {v10, v11, v9}, Llyt;->a(Llyc;Ljava/lang/Object;)Llyb;

    .line 2324
    new-instance v9, Lkbs;

    invoke-direct {v9}, Lkbs;-><init>()V

    iput-object v9, v7, Ljxi;->c:Lkbs;

    .line 2325
    iget-object v9, v7, Ljxi;->c:Lkbs;

    new-instance v11, Llzv;

    invoke-direct {v11}, Llzv;-><init>()V

    iput-object v11, v9, Lkbs;->a:Llzv;

    .line 2326
    invoke-interface {v2}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2327
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 2328
    iget-object v11, v7, Ljxi;->c:Lkbs;

    iget-object v11, v11, Lkbs;->a:Llzv;

    iput-object v9, v11, Llzv;->e:Ljava/lang/String;

    .line 2330
    :cond_12
    iget-object v9, v7, Ljxi;->c:Lkbs;

    iget-object v9, v9, Lkbs;->a:Llzv;

    iput-object v1, v9, Llzv;->w:Llyt;

    .line 2331
    iget-object v9, v7, Ljxi;->c:Lkbs;

    iget-object v9, v9, Lkbs;->a:Llzv;

    iput-object v8, v9, Llzv;->o:Llyt;

    .line 2332
    iget-object v9, v7, Ljxi;->c:Lkbs;

    iget-object v9, v9, Lkbs;->a:Llzv;

    iput-object v10, v9, Llzv;->n:Llyt;

    .line 2334
    new-instance v9, Lkbs;

    invoke-direct {v9}, Lkbs;-><init>()V

    .line 2335
    new-instance v11, Llzv;

    invoke-direct {v11}, Llzv;-><init>()V

    iput-object v11, v9, Lkbs;->a:Llzv;

    .line 2336
    invoke-interface {v2}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2337
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 2338
    iget-object v11, v9, Lkbs;->a:Llzv;

    iput-object v2, v11, Llzv;->e:Ljava/lang/String;

    .line 2340
    :cond_13
    iget-object v2, v9, Lkbs;->a:Llzv;

    iput-object v1, v2, Llzv;->w:Llyt;

    .line 2341
    iget-object v1, v9, Lkbs;->a:Llzv;

    iput-object v8, v1, Llzv;->o:Llyt;

    .line 2342
    iget-object v1, v9, Lkbs;->a:Llzv;

    iput-object v10, v1, Llzv;->n:Llyt;

    .line 2343
    iput-object v9, p1, Lkdw;->g:Lkbs;

    goto/16 :goto_7

    .line 2344
    :cond_14
    sget-object v2, Lbkr;->f:Lbkr;

    iget-object v8, v1, Lbkq;->c:Lbkr;

    invoke-virtual {v2, v8}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2345
    check-cast v1, Lblh;

    .line 2351
    new-instance v2, Ljzs;

    invoke-direct {v2}, Ljzs;-><init>()V

    .line 2352
    new-instance v8, Ljzu;

    invoke-direct {v8}, Ljzu;-><init>()V

    iput-object v8, v2, Ljzs;->b:Ljzu;

    .line 2353
    iget-object v8, v2, Ljzs;->b:Ljzu;

    iget-object v1, v1, Lblh;->e:Ljava/lang/String;

    iput-object v1, v8, Ljzu;->b:Ljava/lang/String;

    .line 2354
    iput-object v2, p1, Lkdw;->f:Ljzs;

    goto/16 :goto_7

    .line 2358
    :cond_15
    sget-object v0, Lbkr;->e:Lbkr;

    invoke-virtual {v0, v1}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lbkr;->d:Lbkr;

    .line 2359
    invoke-virtual {v0, v1}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2360
    :cond_16
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljxi;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxi;

    iput-object v0, p1, Lkdw;->c:[Ljxi;

    .line 171
    :cond_17
    iget-object v0, p0, Lbvq;->x:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbvq;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_18

    .line 172
    new-instance v1, Lcom/google/api/client/http/MultipartContent;

    invoke-direct {v1}, Lcom/google/api/client/http/MultipartContent;-><init>()V

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/api/client/http/HttpContent;

    const/4 v0, 0x0

    new-instance v3, Ldnd;

    invoke-direct {v3, p1}, Ldnd;-><init>(Llyi;)V

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lbvq;->x:Ljava/util/List;

    const/4 v4, 0x0

    .line 173
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpContent;

    aput-object v0, v2, v3

    .line 172
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/MultipartContent;->setContentParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;

    move-result-object v0

    iput-object v0, p0, Lbvq;->y:Lcom/google/api/client/http/MultipartContent;

    .line 175
    :cond_18
    return-void

    :cond_19
    move v1, v3

    goto/16 :goto_8
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 84
    check-cast p1, Lkdx;

    .line 5370
    invoke-static {p1}, Ldsj;->parseFrom(Lkdx;)Ldqf;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Ldom;->a()V

    .line 1115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 120
    check-cast v0, Lbvx;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lbvq;->a(Lbvx;I)V

    .line 121
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lbvq;->e()Ldqf;

    move-result-object v0

    .line 376
    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 380
    :cond_0
    iget v1, p0, Lbvq;->v:I

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILdqf;)V

    .line 3115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 382
    check-cast v0, Lbvx;

    .line 384
    invoke-virtual {v0}, Lbvx;->o()Ljava/lang/String;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_1

    .line 386
    const-string v2, "Sending stress message succeeded:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    :cond_1
    :goto_1
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lbvq;->a(Lbvx;I)V

    goto :goto_0

    .line 386
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lbvq;->y:Lcom/google/api/client/http/MultipartContent;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lbvq;->y:Lcom/google/api/client/http/MultipartContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "application/x-protobuf"

    goto :goto_0
.end method

.method protected synthetic b(Llyi;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lkdw;

    invoke-direct {p0, p1}, Lbvq;->a(Lkdw;)V

    return-void
.end method

.method public c()[B
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lbvq;->u:Llyi;

    check-cast v0, Lkdw;

    invoke-direct {p0, v0}, Lbvq;->a(Lkdw;)V

    .line 136
    sget-boolean v0, Lbvq;->a:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lbvq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbvq;->u:Llyi;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "getPostData of url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    iget-object v0, p0, Lbvq;->y:Lcom/google/api/client/http/MultipartContent;

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 142
    :try_start_0
    iget-object v1, p0, Lbvq;->y:Lcom/google/api/client/http/MultipartContent;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/MultipartContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create a byte array stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 148
    :cond_1
    iget-object v0, p0, Lbvq;->u:Llyi;

    invoke-static {v0}, Llyi;->a(Llyi;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Ldom;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lbvq;->y:Lcom/google/api/client/http/MultipartContent;

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "uploadType"

    const-string v2, "multipart"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    return-object v0
.end method
