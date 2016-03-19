.class final Lerd;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lerb;

.field private c:Landroid/telephony/ServiceState;

.field private d:Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;Lerb;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 249
    iput-object p1, p0, Lerd;->a:Landroid/content/Context;

    .line 250
    iput-object p2, p0, Lerd;->b:Lerb;

    .line 251
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lerd;->c:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lerd;->d:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lerd;->b:Lerb;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lerd;->b:Lerb;

    iget-object v1, p0, Lerd;->a:Landroid/content/Context;

    iget-object v2, p0, Lerd;->c:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    iget-object v3, p0, Lerd;->d:Landroid/telephony/SignalStrength;

    .line 270
    invoke-static {v3}, Lera;->a(Landroid/telephony/SignalStrength;)I

    move-result v3

    .line 269
    invoke-static {v1, v2, v3}, Lera;->a(Landroid/content/Context;II)Lerc;

    move-result-object v1

    invoke-interface {v0, v1}, Lerb;->a(Lerc;)V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lerd;->b:Lerb;

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .prologue
    .line 255
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CellStateListener.onServiceStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iput-object p1, p0, Lerd;->c:Landroid/telephony/ServiceState;

    .line 257
    invoke-direct {p0}, Lerd;->a()V

    .line 258
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    .prologue
    .line 262
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CellStateListener.onSignalStrengthsChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iput-object p1, p0, Lerd;->d:Landroid/telephony/SignalStrength;

    .line 264
    invoke-direct {p0}, Lerd;->a()V

    .line 265
    return-void
.end method
