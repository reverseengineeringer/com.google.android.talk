.class public final Lbrz;
.super Lech;
.source "SourceFile"


# instance fields
.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {p3}, Lbrz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lech;-><init>(Landroid/content/Context;Ljava/lang/String;Lbfd;Ljava/lang/String;)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbrz;->c:J

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const-string v0, "UpdateWatermarkTask"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected b()Ldom;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldom",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-wide v0, p0, Lbrz;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldtj;

    iget-object v1, p0, Lbrz;->a:Lbfd;

    iget-object v2, p0, Lbrz;->b:Ljava/lang/String;

    iget-wide v4, p0, Lbrz;->c:J

    invoke-direct {v0, v1, v2, v4, v5}, Ldtj;-><init>(Lbfd;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected c()V
    .locals 7

    .prologue
    .line 37
    new-instance v3, Ldyy;

    invoke-direct {v3}, Ldyy;-><init>()V

    .line 38
    new-instance v1, Lbfz;

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 40
    iget-object v2, p0, Lbrz;->a:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lbrz;->b:Ljava/lang/String;

    iget-wide v4, p0, Lbrz;->c:J

    const/4 v6, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lbft;->a(Lbfz;Ljava/lang/String;Ldyy;JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lbrz;->c:J

    .line 45
    invoke-virtual {p0}, Lbrz;->d()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcyh;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    iget-object v1, p0, Lbrz;->a:Lbfd;

    .line 46
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-virtual {v3}, Ldyy;->f()Ldza;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcyh;->a(ILdza;)V

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    const-string v0, "UpdateWatermarkTask"

    iget-wide v2, p0, Lbrz;->c:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "latestReadTimestamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbrz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
