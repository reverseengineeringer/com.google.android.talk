.class public Ldoh;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 309
    iput-object p1, p0, Ldoh;->a:[B

    .line 310
    iput-object p2, p0, Ldoh;->b:[B

    .line 311
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 4

    .prologue
    .line 315
    new-instance v1, Lkgp;

    invoke-direct {v1}, Lkgp;-><init>()V

    .line 316
    iget-object v0, p0, Ldoh;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v1, Lkgp;->requestHeader:Lkdo;

    .line 319
    :try_start_0
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    iget-object v2, p0, Ldoh;->a:[B

    .line 1131
    array-length v3, v2

    invoke-static {v0, v2, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 319
    check-cast v0, Lkgd;

    iput-object v0, v1, Lkgp;->a:Lkgd;

    .line 320
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iget-object v2, p0, Ldoh;->b:[B

    .line 2131
    array-length v3, v2

    invoke-static {v0, v2, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 320
    check-cast v0, Lkii;

    iput-object v0, v1, Lkgp;->b:Lkii;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 327
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "Babel"

    const-string v2, "Parse failed"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcgw;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const-string v0, "broadcasts/modify"

    return-object v0
.end method
