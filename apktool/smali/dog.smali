.class public Ldog;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 448
    iput-object p1, p0, Ldog;->a:[B

    .line 449
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 4

    .prologue
    .line 453
    new-instance v1, Lkkq;

    invoke-direct {v1}, Lkkq;-><init>()V

    .line 455
    :try_start_0
    new-instance v0, Lkkp;

    invoke-direct {v0}, Lkkp;-><init>()V

    iget-object v2, p0, Ldog;->a:[B

    .line 1131
    array-length v3, v2

    invoke-static {v0, v2, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 455
    check-cast v0, Lkkp;

    .line 459
    iget-object v2, p0, Ldog;->h:Lfak;

    invoke-static {p1, p2, p3, v2}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v2

    iput-object v2, v1, Lkkq;->requestHeader:Lkdo;

    .line 461
    iput-object v0, v1, Lkkq;->a:Lkkp;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 466
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v1, "Babel"

    const-string v2, "Parse failed"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 476
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    const-string v0, "hangout_invitations/ack"

    return-object v0
.end method
