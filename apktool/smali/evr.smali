.class public final Levr;
.super Leap;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Levt;

.field private final c:I

.field private d:I

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILevt;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Leap;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Levr;->d:I

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Levr;->e:Landroid/os/Handler;

    .line 27
    new-instance v0, Levs;

    invoke-direct {v0, p0}, Levs;-><init>(Levr;)V

    iput-object v0, p0, Levr;->f:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Levr;->a:Landroid/content/Context;

    .line 43
    iput p2, p0, Levr;->c:I

    .line 44
    iput-object p3, p0, Levr;->b:Levt;

    .line 45
    return-void
.end method


# virtual methods
.method public a(ILbfd;Leau;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    iget v1, p0, Levr;->d:I

    if-ne v1, p1, :cond_0

    .line 81
    invoke-virtual {p3}, Leau;->c()Ldqf;

    move-result-object v1

    .line 82
    iget-object v1, v1, Ldqf;->c:Ldsf;

    iget v1, v1, Ldsf;->b:I

    .line 83
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Levr;->a(Z)V

    .line 85
    :cond_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILbfd;Leff;Ldvn;)V
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Levr;->d:I

    if-ne v0, p1, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levr;->a(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 67
    iget-object v0, p0, Levr;->e:Landroid/os/Handler;

    iget-object v1, p0, Levr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget-object v0, p0, Levr;->b:Levt;

    if-eqz v0, :cond_0

    .line 69
    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Levr;->b:Levt;

    invoke-virtual {v0}, Levt;->a()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Levr;->b:Levt;

    invoke-virtual {v0}, Levt;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 48
    iget v0, p0, Levr;->c:I

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f(I)I

    move-result v0

    iput v0, p0, Levr;->d:I

    .line 49
    iget v0, p0, Levr;->d:I

    if-gez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levr;->a(Z)V

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Levr;->a:Landroid/content/Context;

    const-string v1, "babel_wifi_call_enable_voice_calling_request_timeout"

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 55
    iget-object v1, p0, Levr;->e:Landroid/os/Handler;

    iget-object v2, p0, Levr;->f:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Levr;->b:Levt;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levr;->a(Z)V

    .line 63
    return-void
.end method
