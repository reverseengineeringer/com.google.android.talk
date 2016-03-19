.class public final Laft;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 81
    iget-boolean v0, p0, Laft;->b:Z

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 85
    iget-wide v6, p0, Laft;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Laft;->a:J

    .line 87
    iput-object v2, p0, Laft;->c:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Laft;->b:Z

    .line 91
    :cond_0
    iget-object v0, p0, Laft;->c:Ljava/lang/String;

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 8

    .prologue
    .line 63
    iget-boolean v0, p0, Laft;->b:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Laft;->c:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Laft;->c:Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Laft;->b:Z

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 73
    iget-wide v6, p0, Laft;->a:J

    sub-long v2, v4, v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Laft;->a:J

    goto :goto_0
.end method
