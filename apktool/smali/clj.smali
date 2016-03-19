.class final Lclj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbwl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "IncomingRingActivity"

    .line 23
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "New Lock Screen Incoming Ring UI"

    .line 24
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Lclj;->a:Lbwl;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lclg;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lclj;->a:Lbwl;

    const-class v1, Lclh;

    const-class v2, Lcli;

    invoke-interface {v0, p1, v1, v2}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclg;

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Lclj;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()Lclh;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lclk;

    invoke-direct {v0, p0}, Lclk;-><init>(Lclj;)V

    return-object v0
.end method
