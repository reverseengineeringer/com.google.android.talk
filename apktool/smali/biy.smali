.class final Lbiy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lbiy;",
        ">;"
    }
.end annotation


# static fields
.field private static e:J


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lczb;

.field public final d:Legy;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lbiy;->a:J

    .line 50
    iput-object v2, p0, Lbiy;->c:Lczb;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbiy;->b:J

    .line 52
    iput-object v2, p0, Lbiy;->d:Legy;

    .line 53
    return-void
.end method

.method public constructor <init>(Legy;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lbiy;->d:Legy;

    .line 43
    invoke-virtual {p1}, Legy;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lbiy;->a:J

    .line 44
    invoke-virtual {p1}, Legy;->b()Lczb;

    move-result-object v0

    iput-object v0, p0, Lbiy;->c:Lczb;

    .line 1060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    .line 1061
    sget-wide v2, Lbiy;->e:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1062
    sget-wide v0, Lbiy;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1064
    :cond_0
    sput-wide v0, Lbiy;->e:J

    .line 45
    iput-wide v0, p0, Lbiy;->b:J

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 34
    check-cast p1, Lbiy;

    .line 1072
    iget-wide v0, p0, Lbiy;->a:J

    iget-wide v2, p1, Lbiy;->a:J

    sub-long/2addr v0, v2

    .line 1073
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 1074
    iget-wide v0, p0, Lbiy;->b:J

    iget-wide v2, p1, Lbiy;->b:J

    sub-long/2addr v0, v2

    .line 1075
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 1082
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 34
    goto :goto_0
.end method
