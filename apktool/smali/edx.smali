.class public final Ledx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lbwl;

.field final b:Lbwl;

.field private final c:Lbwl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "ConcurrentService Low Risk"

    .line 32
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "UI-level low-risk tasks."

    .line 33
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Ledx;->a:Lbwl;

    .line 41
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "ConcurrentService Medium Risk"

    .line 43
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "UI-level plus background tasks."

    .line 44
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Ledx;->c:Lbwl;

    .line 53
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "ConcurrentService High Risk"

    .line 55
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "HIGH RISK tasks (USE WITH CARE)."

    .line 56
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Ledx;->b:Lbwl;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ledw;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ledy;

    invoke-direct {v0, p0, p1}, Ledy;-><init>(Ledx;Landroid/content/Context;)V

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Ledx;->a:Lbwl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ledx;->c:Lbwl;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ledx;->b:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method
