.class final Lesq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lerb;
.implements Letr;
.implements Levi;
.implements Lfin;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lerb;",
        "Letr;",
        "Levi;",
        "Lfin",
        "<",
        "Lfzs;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lesr;

.field private c:Lfic;

.field private d:Lerc;

.field private e:Z

.field private f:Leum;

.field private g:Lest;

.field private h:Z

.field private i:Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

.field private j:Z

.field private k:Letq;

.field private l:Z

.field private m:J

.field private n:Z

.field private o:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lesr;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lesq;->a:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lesq;->b:Lesr;

    .line 76
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-static {}, Laal;->w()V

    .line 187
    iget-boolean v0, p0, Lesq;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lesq;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lesq;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lesq;->n:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 189
    :goto_0
    iget-object v1, p0, Lesq;->b:Lesr;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lesq;->o:Z

    if-eqz v0, :cond_2

    .line 2089
    :cond_0
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v9, p0, Lesq;->b:Lesr;

    .line 192
    iput-object v2, p0, Lesq;->b:Lesr;

    .line 193
    iget-object v0, p0, Lesq;->k:Letq;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lesq;->k:Letq;

    invoke-virtual {v0}, Letq;->b()V

    .line 195
    iput-object v2, p0, Lesq;->k:Letq;

    .line 2105
    :cond_1
    new-instance v0, Less;

    iget-object v1, p0, Lesq;->d:Lerc;

    iget-object v2, p0, Lesq;->f:Leum;

    iget-object v3, p0, Lesq;->g:Lest;

    iget-object v4, p0, Lesq;->i:Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    iget-boolean v5, p0, Lesq;->l:Z

    iget-wide v6, p0, Lesq;->m:J

    iget-boolean v8, p0, Lesq;->o:Z

    invoke-direct/range {v0 .. v8}, Less;-><init>(Lerc;Leum;Lest;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;ZJZ)V

    .line 197
    invoke-interface {v9, v0}, Lesr;->a(Less;)V

    .line 199
    :cond_2
    return-void

    .line 187
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    const-string v0, "Babel_telephony"

    const-string v1, "TeleNetworkSelectionUtils.fetchState"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lest;

    iget-object v1, p0, Lesq;->a:Landroid/content/Context;

    iget-object v2, p0, Lesq;->a:Landroid/content/Context;

    .line 93
    invoke-static {v2}, Letj;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lesq;->g:Lest;

    .line 95
    iget-object v0, p0, Lesq;->a:Landroid/content/Context;

    invoke-static {v0}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v0

    iput-object v0, p0, Lesq;->f:Leum;

    .line 96
    iget-object v0, p0, Lesq;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lera;->a(Landroid/content/Context;Lerb;)V

    .line 97
    iget-object v0, p0, Lesq;->a:Landroid/content/Context;

    .line 1049
    const-string v1, "Babel_telephony"

    const-string v2, "TeleTychoController.isOnHomeVoiceNetwork"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    new-instance v1, Levh;

    invoke-direct {v1, v0, p0}, Levh;-><init>(Landroid/content/Context;Levi;)V

    invoke-static {v0, v1}, Laal;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 1170
    new-instance v0, Lfid;

    iget-object v1, p0, Lesq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfid;-><init>(Landroid/content/Context;)V

    sget-object v1, Lfzp;->b:Lfhw;

    .line 1171
    invoke-virtual {v0, v1}, Lfid;->a(Lfhw;)Lfid;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    iput-object v0, p0, Lesq;->c:Lfic;

    .line 1174
    iget-object v0, p0, Lesq;->c:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 1175
    sget-object v0, Lfzp;->c:Lfzr;

    iget-object v1, p0, Lesq;->c:Lfic;

    invoke-virtual {v0, v1}, Lfzr;->a(Lfic;)Lfij;

    move-result-object v0

    invoke-interface {v0, p0}, Lfij;->a(Lfin;)V

    .line 99
    new-instance v0, Letq;

    iget-object v1, p0, Lesq;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Letq;-><init>(Landroid/content/Context;Letr;)V

    iput-object v0, p0, Lesq;->k:Letq;

    .line 100
    iget-object v0, p0, Lesq;->k:Letq;

    invoke-virtual {v0}, Letq;->a()V

    .line 1179
    iget-object v0, p0, Lesq;->a:Landroid/content/Context;

    const-string v1, "babel_network_selection_state_fetch_timeout_millis"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1182
    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 102
    return-void
.end method

.method public a(Lerc;)V
    .locals 4

    .prologue
    .line 115
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleNetworkSelectionUtils.onCellState, cellState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lesq;->d:Lerc;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lesq;->e:Z

    .line 118
    invoke-direct {p0}, Lesq;->b()V

    .line 119
    return-void
.end method

.method public synthetic a(Lfim;)V
    .locals 4

    .prologue
    .line 19
    check-cast p1, Lfzs;

    .line 2141
    const-string v0, "Babel_telephony"

    .line 2142
    invoke-virtual {p1}, Lfzs;->a()Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleNetworkSelectionUtils.onResult, network quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2141
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    invoke-virtual {p1}, Lfzs;->a()Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    move-result-object v0

    iput-object v0, p0, Lesq;->i:Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    .line 2144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lesq;->j:Z

    .line 2145
    iget-object v0, p0, Lesq;->c:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    .line 2146
    invoke-direct {p0}, Lesq;->b()V

    .line 19
    return-void
.end method

.method public a(ZJ)V
    .locals 4

    .prologue
    .line 160
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x63

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleNetworkSelectionUtils.onPingComplete, wasSuccessful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latencyMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lesq;->n:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lesq;->k:Letq;

    .line 164
    iput-boolean p1, p0, Lesq;->l:Z

    .line 165
    iput-wide p2, p0, Lesq;->m:J

    .line 166
    invoke-direct {p0}, Lesq;->b()V

    .line 167
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 124
    const-string v0, "Babel_telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleNetworkSelectionUtils.onHomeVoiceNetworkResult, success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOnHomeVoiceNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    if-eqz p1, :cond_1

    .line 128
    if-eqz p2, :cond_0

    .line 129
    const/4 v0, 0x2

    .line 133
    :goto_0
    new-instance v2, Lest;

    iget-object v3, p0, Lesq;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lest;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lesq;->g:Lest;

    .line 134
    iput-boolean v1, p0, Lesq;->h:Z

    .line 135
    invoke-direct {p0}, Lesq;->b()V

    .line 136
    return-void

    :cond_0
    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lesq;->a:Landroid/content/Context;

    invoke-static {v0}, Letj;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lesq;->b:Lesr;

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "Babel_telephony"

    const-string v1, "TeleNetworkSelectionUtils.run, fetching state timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lesq;->o:Z

    .line 154
    invoke-direct {p0}, Lesq;->b()V

    .line 156
    :cond_0
    return-void
.end method
