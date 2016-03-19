.class final Lheg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhef;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lhef;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lheg;->a:Lhef;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lheg;->b:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lheg;->c:I

    .line 56
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lheg;->b:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lheg;->c:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 69
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lheg;->b:Z

    .line 71
    const-string v0, "scale"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    const-string v2, "level"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    if-eqz v0, :cond_1

    .line 74
    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    iput v0, p0, Lheg;->c:I

    .line 78
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lheg;->c:I

    goto :goto_1
.end method
