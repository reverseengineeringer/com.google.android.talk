.class public final Levu;
.super Leap;
.source "SourceFile"


# instance fields
.field private a:Levw;

.field private final b:I

.field private c:I

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILevw;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Leap;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Levu;->c:I

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Levu;->d:Landroid/os/Handler;

    .line 26
    new-instance v0, Levv;

    invoke-direct {v0, p0}, Levv;-><init>(Levu;)V

    iput-object v0, p0, Levu;->e:Ljava/lang/Runnable;

    .line 40
    iput p1, p0, Levu;->b:I

    .line 41
    iput-object p2, p0, Levu;->a:Levw;

    .line 42
    return-void
.end method


# virtual methods
.method public a(ILbfd;Leau;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
    iget v1, p0, Levu;->c:I

    if-ne v1, p1, :cond_0

    .line 78
    invoke-virtual {p3}, Leau;->c()Ldqf;

    move-result-object v1

    .line 79
    iget-object v1, v1, Ldqf;->c:Ldsf;

    iget v1, v1, Ldsf;->b:I

    .line 80
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Levu;->a(Z)V

    .line 82
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILbfd;Leff;Ldvn;)V
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Levu;->c:I

    if-ne v0, p1, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levu;->a(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 45
    iget v0, p0, Levu;->b:I

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e(I)I

    move-result v0

    iput v0, p0, Levu;->c:I

    .line 46
    iget v0, p0, Levu;->c:I

    if-gez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levu;->a(Z)V

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "babel_wifi_call_get_voice_account_info_request_timeout"

    const/16 v1, 0x4e20

    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 52
    iget-object v1, p0, Levu;->d:Landroid/os/Handler;

    iget-object v2, p0, Levu;->e:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 64
    iget-object v0, p0, Levu;->d:Landroid/os/Handler;

    iget-object v1, p0, Levu;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Levu;->a:Levw;

    if-eqz v0, :cond_0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Levu;->a:Levw;

    invoke-virtual {v0}, Levw;->a()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Levu;->a:Levw;

    invoke-virtual {v0}, Levw;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Levu;->a:Levw;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Levu;->a(Z)V

    .line 60
    return-void
.end method
