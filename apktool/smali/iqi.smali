.class public final Liqi;
.super Lipw;
.source "SourceFile"


# static fields
.field private static g:Liqh;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/security/PrivateKey;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Liqh;

    invoke-direct {v0}, Liqh;-><init>()V

    sput-object v0, Liqi;->g:Liqh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Liqj;

    invoke-direct {v0}, Liqj;-><init>()V

    invoke-direct {p0, v0}, Liqi;-><init>(Liqj;)V

    .line 307
    return-void
.end method

.method private constructor <init>(Liqj;)V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lipw;-><init>(Lipy;)V

    .line 316
    iget-object v0, p1, Liqj;->k:Ljava/security/PrivateKey;

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p1, Liqj;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Liqj;->j:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p1, Liqj;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1037
    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 326
    :goto_1
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p1, Liqj;->i:Ljava/lang/String;

    .line 1127
    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Liqi;->h:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Liqj;->j:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Liqi;->i:Ljava/util/Collection;

    .line 322
    iget-object v0, p1, Liqj;->k:Ljava/security/PrivateKey;

    iput-object v0, p0, Liqi;->j:Ljava/security/PrivateKey;

    .line 323
    iget-object v0, p1, Liqj;->l:Ljava/lang/String;

    iput-object v0, p0, Liqi;->k:Ljava/lang/String;

    .line 324
    iget-object v0, p1, Liqj;->m:Ljava/lang/String;

    iput-object v0, p0, Liqi;->l:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public synthetic a(Liqe;)Lipw;
    .locals 1

    .prologue
    .line 5355
    invoke-super {p0, p1}, Lipw;->a(Liqe;)Lipw;

    move-result-object v0

    check-cast v0, Liqi;

    .line 168
    return-object v0
.end method

.method public synthetic a(Ljava/lang/Long;)Lipw;
    .locals 1

    .prologue
    .line 7345
    invoke-super {p0, p1}, Lipw;->a(Ljava/lang/Long;)Lipw;

    move-result-object v0

    check-cast v0, Liqi;

    .line 168
    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Lipw;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Liqi;->c(Ljava/lang/String;)Liqi;

    move-result-object v0

    return-object v0
.end method

.method protected a()Liqe;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 361
    iget-object v0, p0, Liqi;->j:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 362
    invoke-super {p0}, Lipw;->a()Liqe;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 365
    :cond_0
    new-instance v0, Liqs;

    invoke-direct {v0}, Liqs;-><init>()V

    .line 366
    const-string v1, "RS256"

    invoke-virtual {v0, v1}, Liqs;->b(Ljava/lang/String;)Liqs;

    .line 367
    const-string v1, "JWT"

    invoke-virtual {v0, v1}, Liqs;->a(Ljava/lang/String;)Liqs;

    .line 368
    iget-object v1, p0, Liqi;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liqs;->c(Ljava/lang/String;)Liqs;

    .line 369
    new-instance v1, Liqv;

    invoke-direct {v1}, Liqv;-><init>()V

    .line 1332
    iget-object v2, p0, Lipw;->b:Liro;

    .line 370
    invoke-interface {v2}, Liro;->a()J

    move-result-wide v2

    .line 371
    iget-object v4, p0, Liqi;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Liqv;->a(Ljava/lang/String;)Liqv;

    .line 1350
    iget-object v4, p0, Lipw;->f:Ljava/lang/String;

    .line 372
    invoke-virtual {v1, v4}, Liqv;->a(Ljava/lang/Object;)Liqv;

    .line 373
    div-long v4, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Liqv;->b(Ljava/lang/Long;)Liqv;

    .line 374
    div-long/2addr v2, v6

    const-wide/16 v4, 0xe10

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Liqv;->a(Ljava/lang/Long;)Liqv;

    .line 375
    iget-object v2, p0, Liqi;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Liqv;->b(Ljava/lang/String;)Liqv;

    .line 376
    const-string v2, "scope"

    .line 2039
    new-instance v3, Lisc;

    const/16 v4, 0x20

    invoke-static {v4}, Lknk;->a(C)Lknk;

    move-result-object v4

    invoke-direct {v3, v4}, Lisc;-><init>(Lknk;)V

    .line 376
    iget-object v4, p0, Liqi;->i:Ljava/util/Collection;

    .line 2054
    iget-object v3, v3, Lisc;->a:Lknk;

    invoke-virtual {v3, v4}, Lknk;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual {v1, v2, v3}, Liqv;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :try_start_0
    iget-object v2, p0, Liqi;->j:Ljava/security/PrivateKey;

    .line 2345
    iget-object v3, p0, Lipw;->e:Lcom/google/api/client/json/JsonFactory;

    .line 2634
    invoke-virtual {v3, v0}, Lcom/google/api/client/json/JsonFactory;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    .line 3079
    invoke-static {v0}, Liqx;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 2634
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    invoke-virtual {v3, v1}, Lcom/google/api/client/json/JsonFactory;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 4079
    invoke-static {v1}, Liqx;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 2635
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2636
    invoke-static {v0}, Lisr;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 4131
    const-string v3, "SHA256withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 4145
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 4146
    invoke-virtual {v3, v1}, Ljava/security/Signature;->update([B)V

    .line 4147
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 5079
    invoke-static {v1}, Liqx;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 2639
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Liqb;

    .line 5337
    iget-object v2, p0, Lipw;->c:Lcom/google/api/client/http/HttpTransport;

    .line 5345
    iget-object v3, p0, Lipw;->e:Lcom/google/api/client/json/JsonFactory;

    .line 381
    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    .line 5350
    iget-object v5, p0, Lipw;->f:Ljava/lang/String;

    .line 381
    invoke-direct {v4, v5}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    const-string v5, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    invoke-direct {v1, v2, v3, v4, v5}, Liqb;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 383
    const-string v2, "assertion"

    invoke-virtual {v1, v2, v0}, Liqb;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {v1}, Liqb;->a()Liqe;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 387
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 388
    throw v1
.end method

.method public synthetic b(Ljava/lang/Long;)Lipw;
    .locals 1

    .prologue
    .line 6350
    invoke-super {p0, p1}, Lipw;->b(Ljava/lang/Long;)Lipw;

    move-result-object v0

    check-cast v0, Liqi;

    .line 168
    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Lipw;
    .locals 2

    .prologue
    .line 8335
    if-eqz p1, :cond_0

    .line 8345
    iget-object v0, p0, Lipw;->e:Lcom/google/api/client/json/JsonFactory;

    .line 8337
    if-eqz v0, :cond_1

    .line 9337
    iget-object v0, p0, Lipw;->c:Lcom/google/api/client/http/HttpTransport;

    .line 8337
    if-eqz v0, :cond_1

    .line 9455
    iget-object v0, p0, Lipw;->d:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 8337
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Please use the Builder and call setJsonFactory, setTransport and setClientSecrets"

    .line 10049
    invoke-static {v0, v1}, Lfii;->a(ZLjava/lang/Object;)V

    .line 8340
    :cond_0
    invoke-super {p0, p1}, Lipw;->b(Ljava/lang/String;)Lipw;

    move-result-object v0

    check-cast v0, Liqi;

    .line 168
    return-object v0

    .line 8337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Liqi;
    .locals 1

    .prologue
    .line 330
    invoke-super {p0, p1}, Lipw;->a(Ljava/lang/String;)Lipw;

    move-result-object v0

    check-cast v0, Liqi;

    return-object v0
.end method
