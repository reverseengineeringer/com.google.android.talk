.class public Ldqv;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method private constructor <init>(Liys;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 1583
    iget-object v0, p1, Liys;->apiHeader:Liye;

    invoke-direct {p0, v0}, Ldqf;-><init>(Liye;)V

    .line 1578
    iput-object v2, p0, Ldqv;->g:Ljava/lang/String;

    .line 1579
    iput-object v2, p0, Ldqv;->h:Ljava/lang/String;

    .line 1586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 1587
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ldqv;->i:J

    .line 1589
    iget-object v0, p1, Liys;->a:Llon;

    iget-object v0, v0, Llon;->b:[Llny;

    .line 1590
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1591
    aget-object v0, v0, v1

    .line 1592
    if-eqz v0, :cond_0

    iget-object v2, v0, Llny;->d:Llnw;

    iget-object v2, v2, Llnw;->a:Ljava/lang/Integer;

    .line 2043
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1592
    if-ne v2, v6, :cond_0

    .line 1594
    iget-object v2, v0, Llny;->b:Llmo;

    .line 1598
    if-eqz v2, :cond_0

    iget-object v3, v2, Llmo;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1599
    iget-object v2, v2, Llmo;->a:Ljava/lang/String;

    iput-object v2, p0, Ldqv;->h:Ljava/lang/String;

    .line 1600
    iget-object v0, v0, Llny;->d:Llnw;

    iget-object v0, v0, Llnw;->d:Llhs;

    .line 1601
    iget-object v2, v0, Llhs;->a:Ljava/lang/Integer;

    .line 3043
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1601
    if-ne v2, v6, :cond_0

    .line 1603
    iget-object v0, v0, Llhs;->c:Llht;

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    iget-object v2, v0, Llht;->b:[Llhu;

    .line 1606
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 1607
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1608
    if-eqz v4, :cond_1

    iget-object v5, v4, Llhu;->b:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1609
    iget-object v0, v4, Llhu;->b:Ljava/lang/String;

    iput-object v0, p0, Ldqv;->g:Ljava/lang/String;

    .line 1611
    :try_start_0
    iget-object v0, p0, Ldqv;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1612
    const-string v2, "expire"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1613
    if-eqz v0, :cond_0

    .line 1615
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Ldqv;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    :cond_0
    :goto_1
    return-void

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    const-string v2, "Babel"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ldqv;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " exception while parsing audio url. url = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1607
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1634
    new-instance v0, Liys;

    invoke-direct {v0}, Liys;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1635
    check-cast v0, Liys;

    .line 1636
    iget-object v1, v0, Liys;->apiHeader:Liye;

    invoke-static {v1}, Ldqv;->a(Liye;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1637
    new-instance v1, Ldqs;

    iget-object v0, v0, Liys;->apiHeader:Liye;

    invoke-direct {v1, v0}, Ldqs;-><init>(Liye;)V

    move-object v0, v1

    .line 1639
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqv;

    invoke-direct {v1, v0}, Ldqv;-><init>(Liys;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 7

    .prologue
    .line 1646
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 3232
    sget-boolean v0, Ldqf;->a:Z

    .line 1647
    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Ldqv;->h:Ljava/lang/String;

    iget-object v1, p0, Ldqv;->g:Ljava/lang/String;

    iget-wide v2, p0, Ldqv;->i:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x79

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "GetAudioDataResponse.processResponse: retrieved audio with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with stream url of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and expiration of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1651
    :cond_0
    iget-object v0, p0, Ldqv;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldqv;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1652
    iget-object v0, p0, Ldqv;->h:Ljava/lang/String;

    iget-object v1, p0, Ldqv;->g:Ljava/lang/String;

    iget-wide v2, p0, Ldqv;->i:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1653
    iget-object v0, p0, Ldqv;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 1655
    :cond_1
    return-void
.end method
