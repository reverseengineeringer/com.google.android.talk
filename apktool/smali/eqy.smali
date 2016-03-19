.class final Leqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leqx;


# direct methods
.method constructor <init>(Leqx;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Leqy;->a:Leqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Leqy;->a:Leqx;

    iget-object v2, v2, Leqx;->a:Lequ;

    .line 1098
    invoke-static {}, Lhbs;->a()V

    .line 1101
    iget-object v3, v2, Lequ;->b:Landroid/content/Context;

    invoke-static {v3}, Laal;->k(Landroid/content/Context;)Z

    move-result v3

    .line 1102
    iget-boolean v4, v2, Lequ;->e:Z

    if-eq v3, v4, :cond_1

    .line 1103
    const-string v4, "Babel_telephony"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "TeleCellMonitor.updateState, (%b) -> (%b)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v8, v2, Lequ;->e:Z

    .line 1104
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v0

    .line 1103
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    iput-boolean v3, v2, Lequ;->e:Z

    .line 1116
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v2, Lequ;->c:Leqv;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, v2, Lequ;->c:Leqv;

    iget-object v1, v2, Lequ;->d:Lerc;

    iget-boolean v2, v2, Lequ;->e:Z

    invoke-interface {v0, v1, v2}, Leqv;->a(Lerc;Z)V

    .line 162
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
