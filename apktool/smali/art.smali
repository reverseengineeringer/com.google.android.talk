.class public final Lart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lars;


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lart;->a:Ljava/io/InputStream;

    .line 463
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lart;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lart;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a([BI)I
    .locals 3

    .prologue
    move v0, p2

    .line 506
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lart;->a:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 507
    sub-int/2addr v0, v1

    goto :goto_0

    .line 509
    :cond_0
    sub-int v0, p2, v0

    return v0
.end method

.method public a(J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 477
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 499
    :goto_0
    return-wide v0

    :cond_0
    move-wide v2, p1

    .line 482
    :goto_1
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 483
    iget-object v4, p0, Lart;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 484
    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 485
    sub-long/2addr v2, v4

    goto :goto_1

    .line 491
    :cond_1
    iget-object v4, p0, Lart;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 492
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 495
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 498
    goto :goto_1

    .line 499
    :cond_2
    sub-long v0, p1, v2

    goto :goto_0
.end method

.method public b()S
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lart;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lart;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
