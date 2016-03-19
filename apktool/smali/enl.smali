.class public final Lenl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lezi;->r:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lenl;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;)Ladw;
    .locals 3

    .prologue
    .line 398
    sget-boolean v0, Lenl;->a:Z

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "MmsTransaction.downloadMmsViaMmsSendReceiveManager: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {p0}, Lene;->b(Landroid/content/Context;)Leol;

    move-result-object v1

    .line 407
    invoke-static {p0, v1, p2}, Lene;->a(Landroid/content/Context;Leol;Ljava/lang/String;)Ladg;

    move-result-object v0

    .line 409
    if-nez v0, :cond_2

    .line 410
    new-instance v0, Lend;

    const/16 v1, 0x89

    const-string v2, "MmsTransactions: retrieve: get empty or invalid response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lene;->c(Landroid/content/Context;)V

    throw v0

    .line 399
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    :try_start_1
    instance-of v2, v0, Ladw;

    if-nez v2, :cond_3

    .line 416
    const/16 v0, 0x84

    invoke-static {p0, v1, p1, p2, v0}, Lenl;->a(Landroid/content/Context;Leol;[BLjava/lang/String;I)V

    .line 418
    new-instance v0, Lenk;

    const-string v1, "MmsTransactions: retrieve: get invalid response type"

    invoke-direct {v0, v1}, Lenk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_3
    const/16 v2, 0x81

    invoke-static {p0, v1, p1, p2, v2}, Lenl;->a(Landroid/content/Context;Leol;[BLjava/lang/String;I)V

    .line 424
    check-cast v0, Ladw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-static {p0}, Lene;->c(Landroid/content/Context;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lady;)Lenm;
    .locals 6

    .prologue
    .line 134
    sget-boolean v0, Lenl;->a:Z

    if-eqz v0, :cond_3

    .line 136
    const-string v0, "====> from="

    invoke-virtual {p1}, Lady;->c()Ladf;

    move-result-object v1

    invoke-virtual {v1}, Ladf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :goto_0
    invoke-virtual {p1}, Lady;->e()[Ladf;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 138
    const-string v4, "====> to="

    invoke-virtual {v3}, Ladf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_2
    invoke-virtual {p1}, Lady;->f()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "====> size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Lady;->d()Ladj;

    move-result-object v0

    invoke-virtual {v0}, Ladj;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "====> parts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    :cond_3
    invoke-static {p0}, Lenn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const-class v0, Leni;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leni;

    .line 146
    invoke-virtual {v0, p0, p1}, Leni;->a(Landroid/content/Context;Lady;)Ladx;

    move-result-object v1

    .line 147
    new-instance v0, Lenm;

    invoke-direct {v0, p1, v1}, Lenm;-><init>(Lady;Ladx;)V

    .line 149
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, p1}, Lenl;->b(Landroid/content/Context;Lady;)Lenm;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lenm;
    .locals 4

    .prologue
    .line 2198
    const-string v0, "Expected non-null"

    invoke-static {v0, p0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTransactions: forwardMessage: no recipient"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTransactions: forwardMessage: no mms uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2326
    :cond_2
    :try_start_0
    new-instance v0, Lady;

    invoke-direct {v0}, Lady;-><init>()V

    .line 2328
    invoke-static {p0}, Laee;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2329
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2330
    new-instance v2, Ladf;

    invoke-direct {v2, v1}, Ladf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lady;->a(Ladf;)V

    .line 2333
    :cond_3
    invoke-static {p1}, Ladf;->a([Ljava/lang/String;)[Ladf;

    move-result-object v1

    .line 2334
    if-eqz v1, :cond_4

    .line 2335
    invoke-virtual {v0, v1}, Lady;->a([Ladf;)V

    .line 2338
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2339
    new-instance v1, Ladf;

    invoke-direct {v1, p2}, Ladf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lady;->b(Ladf;)V

    .line 2342
    :cond_5
    const-wide/32 v2, 0xf4240

    div-long v2, p4, v2

    invoke-virtual {v0, v2, v3}, Lady;->a(J)V

    .line 2344
    invoke-static {p0, p3}, Lenn;->a(Landroid/content/Context;Ljava/lang/String;)Lenq;

    move-result-object v1

    .line 2345
    iget v2, v1, Lenq;->a:I

    if-gtz v2, :cond_6

    .line 2351
    const/16 v2, 0x418

    iput v2, v1, Lenq;->a:I

    .line 2353
    :cond_6
    iget-object v2, v1, Lenq;->b:Ladj;

    invoke-virtual {v0, v2}, Lady;->a(Ladj;)V

    .line 2355
    iget v1, v1, Lenq;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lady;->c(J)V

    .line 2357
    const-string v1, "personal"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lady;->b([B)V

    .line 2359
    const-wide/32 v2, 0x93a80

    invoke-virtual {v0, v2, v3}, Lady;->b(J)V

    .line 2361
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lady;->d(I)V

    .line 2363
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lady;->e(I)V

    .line 2365
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lady;->f(I)V
    :try_end_0
    .catch Ladc; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    invoke-static {p0, v0}, Lenl;->a(Landroid/content/Context;Lady;)Lenm;

    move-result-object v0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lend;

    const-string v2, "Fail to create forward SendReq"

    invoke-direct {v1, v2, v0}, Lend;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJ)Lenm;
    .locals 9

    .prologue
    .line 1198
    const-string v0, "Expected non-null"

    invoke-static {v0, p0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTransactions: send: no recipient"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTransactions: send: no content (subject or text or image)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 68
    aget-object v2, p1, v0

    .line 69
    aget-object v3, p1, v0

    invoke-static {v3}, Lbzq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    aput-object v2, v1, v0

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {v2}, Lenl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 1278
    :cond_4
    new-instance v7, Lady;

    invoke-direct {v7}, Lady;-><init>()V

    .line 1280
    invoke-static {p0}, Laee;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1282
    new-instance v2, Ladf;

    invoke-direct {v2, v0}, Ladf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lady;->a(Ladf;)V

    .line 1285
    :cond_5
    invoke-static {v1}, Ladf;->a([Ljava/lang/String;)[Ladf;

    move-result-object v0

    .line 1286
    if-eqz v0, :cond_6

    .line 1287
    invoke-virtual {v7, v0}, Lady;->a([Ladf;)V

    .line 1290
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1291
    new-instance v0, Ladf;

    invoke-direct {v0, p2}, Ladf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lady;->b(Ladf;)V

    .line 1294
    :cond_7
    const-wide/32 v0, 0xf4240

    div-long v0, p9, v0

    invoke-virtual {v7, v0, v1}, Lady;->a(J)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1296
    invoke-static/range {v0 .. v6}, Lenn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lenq;

    move-result-object v0

    .line 1298
    iget v1, v0, Lenq;->a:I

    if-gtz v1, :cond_8

    .line 1299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTransactions: send: zero size body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_8
    iget-object v1, v0, Lenq;->b:Ladj;

    invoke-virtual {v7, v1}, Lady;->a(Ladj;)V

    .line 1303
    iget v0, v0, Lenq;->a:I

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Lady;->c(J)V

    .line 1305
    const-string v0, "personal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lady;->b([B)V

    .line 1307
    const-wide/32 v0, 0x93a80

    invoke-virtual {v7, v0, v1}, Lady;->b(J)V

    .line 1309
    const/16 v0, 0x81

    invoke-virtual {v7, v0}, Lady;->d(I)V

    .line 1311
    const/16 v0, 0x81

    invoke-virtual {v7, v0}, Lady;->e(I)V

    .line 1313
    const/16 v0, 0x81

    invoke-virtual {v7, v0}, Lady;->f(I)V

    .line 80
    invoke-static {p0, v7}, Lenl;->a(Landroid/content/Context;Lady;)Lenm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 95
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    .line 96
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Leol;[BLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 435
    sget-boolean v0, Lenl;->a:Z

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "MmsTransaction.sendNotifyResponse: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    :cond_0
    :goto_0
    new-instance v0, Ladg;

    invoke-direct {v0, p2, p4}, Ladg;-><init>([BI)V

    .line 443
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v1

    invoke-virtual {v1}, Laei;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    :goto_1
    invoke-static {p0, p1, v0, p3}, Lene;->a(Landroid/content/Context;Leol;Ladg;Ljava/lang/String;)Ladg;

    .line 444
    return-void

    .line 436
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_2
    const/4 p3, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lady;)Lenm;
    .locals 5

    .prologue
    const/16 v2, 0x80

    .line 161
    :try_start_0
    invoke-static {p0}, Lene;->b(Landroid/content/Context;)Leol;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lene;->a(Landroid/content/Context;Leol;Ladg;Ljava/lang/String;)Ladg;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lenk;

    const-string v1, "MmsTransactions: send: get empty response"

    invoke-direct {v0, v1}, Lenk;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :catch_0
    move-exception v0

    .line 259
    :try_start_1
    new-instance v1, Lenk;

    invoke-direct {v1, v0}, Lenk;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lene;->c(Landroid/content/Context;)V

    throw v0

    .line 168
    :cond_0
    :try_start_2
    instance-of v1, v0, Ladx;

    if-nez v1, :cond_1

    .line 169
    new-instance v0, Lenk;

    const-string v1, "MmsTransactions: send: get invalid response type"

    invoke-direct {v0, v1}, Lenk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    check-cast v0, Ladx;

    .line 173
    invoke-virtual {v0}, Ladx;->e()I

    move-result v1

    .line 174
    if-eq v1, v2, :cond_2

    .line 175
    const-string v2, "Babel_SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MMS error, status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 252
    new-instance v0, Lenk;

    const-string v1, "MmsTransactions: send: resp error"

    invoke-direct {v0, v1}, Lenk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :sswitch_0
    new-instance v1, Lenm;

    invoke-direct {v1, p1, v0}, Lenm;-><init>(Lady;Ladx;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    invoke-static {p0}, Lene;->c(Landroid/content/Context;)V

    return-object v1

    .line 184
    :sswitch_1
    :try_start_3
    new-instance v0, Lend;

    const/16 v1, 0x77

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 190
    :sswitch_2
    new-instance v0, Lend;

    const/16 v1, 0x80

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 197
    :sswitch_3
    new-instance v0, Lend;

    const/16 v1, 0x7f

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 203
    :sswitch_4
    new-instance v0, Lend;

    const/16 v1, 0x81

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 210
    :sswitch_5
    new-instance v0, Lend;

    const/16 v1, 0x7d

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 215
    :sswitch_6
    new-instance v0, Lend;

    const/16 v1, 0x7e

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 221
    :sswitch_7
    new-instance v0, Lend;

    const/16 v1, 0x7c

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 226
    :sswitch_8
    new-instance v0, Lend;

    const/16 v1, 0x82

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 234
    :sswitch_9
    new-instance v0, Lend;

    const/16 v1, 0x83

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 239
    :sswitch_a
    new-instance v0, Lend;

    const/16 v1, 0x84

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0

    .line 244
    :sswitch_b
    new-instance v0, Lend;

    const/16 v1, 0x85

    const-string v2, "mms error response"

    invoke-direct {v0, v1, v2}, Lend;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_7
        0x83 -> :sswitch_2
        0x84 -> :sswitch_5
        0x85 -> :sswitch_3
        0x86 -> :sswitch_6
        0x87 -> :sswitch_4
        0x88 -> :sswitch_8
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_3
        0xe0 -> :sswitch_1
        0xe1 -> :sswitch_7
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_5
        0xe4 -> :sswitch_3
        0xe5 -> :sswitch_4
        0xe6 -> :sswitch_9
        0xe7 -> :sswitch_9
        0xe8 -> :sswitch_9
        0xe9 -> :sswitch_9
        0xea -> :sswitch_a
        0xeb -> :sswitch_b
    .end sparse-switch
.end method
