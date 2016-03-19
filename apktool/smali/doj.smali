.class public Ldoj;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkju;)V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 401
    iput-object p1, p0, Ldoj;->a:Ljava/lang/String;

    .line 402
    new-instance v0, Lkiy;

    invoke-direct {v0}, Lkiy;-><init>()V

    .line 403
    iput-object p2, v0, Lkiy;->b:Lkju;

    .line 404
    invoke-static {v0}, Lkiy;->a(Llyi;)[B

    move-result-object v0

    iput-object v0, p0, Ldoj;->b:[B

    .line 405
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 4

    .prologue
    .line 411
    :try_start_0
    new-instance v0, Lkiy;

    invoke-direct {v0}, Lkiy;-><init>()V

    iget-object v1, p0, Ldoj;->b:[B

    .line 1131
    array-length v2, v1

    invoke-static {v0, v1, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 411
    check-cast v0, Lkiy;

    .line 412
    iget-object v1, p0, Ldoj;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkiy;->requestHeader:Lkdo;

    .line 414
    iget-object v1, p0, Ldoj;->a:Ljava/lang/String;

    iput-object v1, v0, Lkiy;->a:Ljava/lang/String;

    .line 415
    iget-object v1, v0, Lkiy;->b:Lkju;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lkju;->u:Ljava/lang/Long;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const/16 v1, 0x7df

    invoke-static {v1}, Laal;->c(I)V

    .line 420
    :goto_0
    return-object v0

    .line 417
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 430
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    const-string v0, "media_sessions/log"

    return-object v0
.end method
