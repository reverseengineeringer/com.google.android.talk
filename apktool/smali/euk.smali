.class final Leuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leuj;


# direct methods
.method constructor <init>(Leuj;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Leuk;->a:Leuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 173
    iget-object v0, p0, Leuk;->a:Leuj;

    iget-object v0, v0, Leuj;->a:Leuh;

    .line 1126
    invoke-static {}, Lhbs;->a()V

    .line 1127
    iget-object v1, v0, Leuh;->b:Landroid/content/Context;

    invoke-static {v1}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v1

    .line 1128
    iget-object v2, v0, Leuh;->d:Leum;

    invoke-virtual {v1, v2}, Leum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1129
    const-string v2, "Babel_telephony"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "TeleWifiMonitor.updateSignalState, (%s) -> (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Leuh;->d:Leum;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    iput-object v1, v0, Leuh;->d:Leum;

    .line 1132
    iget-object v1, v0, Leuh;->c:Leui;

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, v0, Leuh;->c:Leui;

    iget-object v0, v0, Leuh;->d:Leum;

    invoke-interface {v1, v0}, Leui;->a(Leum;)V

    .line 174
    :cond_0
    return-void
.end method
