.class public Ldpe;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public j:I

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B


# direct methods
.method public constructor <init>(IIIII[B[B[B[B[B)V
    .locals 0

    .prologue
    .line 2228
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2229
    iput p1, p0, Ldpe;->a:I

    .line 2230
    iput p2, p0, Ldpe;->b:I

    .line 2231
    iput p3, p0, Ldpe;->c:I

    .line 2232
    iput p4, p0, Ldpe;->d:I

    .line 2233
    iput p5, p0, Ldpe;->j:I

    .line 2234
    iput-object p6, p0, Ldpe;->k:[B

    .line 2235
    iput-object p7, p0, Ldpe;->l:[B

    .line 2236
    iput-object p8, p0, Ldpe;->m:[B

    .line 2237
    iput-object p9, p0, Ldpe;->n:[B

    .line 2238
    iput-object p10, p0, Ldpe;->o:[B

    .line 2239
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2316
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    .line 2247
    new-instance v6, Lkar;

    invoke-direct {v6}, Lkar;-><init>()V

    .line 2250
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lkar;->c:Ljava/lang/Boolean;

    .line 2251
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Ldpe;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lkar;->requestHeader:Lkdo;

    .line 2254
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    .line 2256
    iget v1, p0, Ldpe;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkas;->a:Ljava/lang/Integer;

    .line 2257
    iget-object v1, p0, Ldpe;->k:[B

    if-eqz v1, :cond_0

    .line 2258
    iget-object v1, p0, Ldpe;->k:[B

    iget-object v2, p0, Ldpe;->k:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lkas;->b:[B

    .line 2260
    :cond_0
    iput-object v0, v6, Lkar;->f:Lkas;

    .line 2262
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    .line 2264
    iget v1, p0, Ldpe;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkas;->a:Ljava/lang/Integer;

    .line 2265
    iget-object v1, p0, Ldpe;->l:[B

    if-eqz v1, :cond_1

    .line 2266
    iget-object v1, p0, Ldpe;->l:[B

    iget-object v2, p0, Ldpe;->l:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lkas;->b:[B

    .line 2268
    :cond_1
    iput-object v0, v6, Lkar;->g:Lkas;

    .line 2270
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    .line 2272
    iget v1, p0, Ldpe;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkas;->a:Ljava/lang/Integer;

    .line 2273
    iget-object v1, p0, Ldpe;->m:[B

    if-eqz v1, :cond_2

    .line 2274
    iget-object v1, p0, Ldpe;->m:[B

    iget-object v2, p0, Ldpe;->m:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lkas;->b:[B

    .line 2277
    :cond_2
    iput-object v0, v6, Lkar;->h:Lkas;

    .line 2279
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    .line 2281
    iget v1, p0, Ldpe;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkas;->a:Ljava/lang/Integer;

    .line 2282
    iget-object v1, p0, Ldpe;->n:[B

    if-eqz v1, :cond_3

    .line 2283
    iget-object v1, p0, Ldpe;->n:[B

    iget-object v2, p0, Ldpe;->n:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lkas;->b:[B

    .line 2286
    :cond_3
    iput-object v0, v6, Lkar;->i:Lkas;

    .line 2288
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    .line 2290
    iget v1, p0, Ldpe;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkas;->a:Ljava/lang/Integer;

    .line 2291
    iget-object v1, p0, Ldpe;->o:[B

    if-eqz v1, :cond_4

    .line 2292
    iget-object v1, p0, Ldpe;->o:[B

    iget-object v2, p0, Ldpe;->o:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lkas;->b:[B

    .line 2295
    :cond_4
    iput-object v0, v6, Lkar;->k:Lkas;

    .line 2297
    return-object v6
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2308
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Lecx;->b(I)Lecx;

    move-result-object v1

    .line 2309
    const-string v2, "Babel_RequestWriter"

    const-string v3, "SyncBaselineSuggestedContactsOperation failed: "

    .line 2310
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 2309
    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2311
    invoke-virtual {v1, v5}, Lecx;->a(I)V

    .line 2312
    return-void

    .line 2310
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 2321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2322
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2302
    const-string v0, "contacts/getsuggestedentities"

    return-object v0
.end method
