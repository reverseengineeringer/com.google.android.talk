.class public final Lbax;
.super Let;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Let",
        "<",
        "Lazo;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:I

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Let;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbax;->f:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbax;->h:Z

    .line 27
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iput v0, p0, Lbax;->g:I

    .line 28
    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1032
    iget-object v0, p0, Lbax;->f:Landroid/content/Context;

    iget v2, p0, Lbax;->g:I

    invoke-static {v0, v2}, Laal;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    iget-object v0, p0, Lbax;->f:Landroid/content/Context;

    iget v2, p0, Lbax;->g:I

    .line 1034
    invoke-static {v0, v2}, Lazq;->a(Landroid/content/Context;I)Lazo;

    move-result-object v2

    .line 1035
    iget-boolean v0, p0, Lbax;->h:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1036
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1039
    iget-object v0, p0, Lbax;->f:Landroid/content/Context;

    const-class v3, Lbdp;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    const-string v3, "babel_dialer_callerid_dialer_redisplay_interval_ms"

    sget-wide v6, Lazu;->b:J

    .line 1040
    invoke-interface {v0, v3, v6, v7}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1042
    invoke-virtual {v2}, Lazo;->b()J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v0, v8, v6

    if-ltz v0, :cond_1

    .line 1044
    invoke-virtual {v2, v4, v5}, Lazo;->a(J)V

    :cond_0
    move-object v0, v2

    .line 1050
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 1047
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 15
    goto :goto_0
.end method
