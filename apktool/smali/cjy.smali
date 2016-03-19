.class final Lcjy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbwl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "HangoutActivity"

    .line 29
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "Main video call UI"

    .line 30
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Lcjy;->a:Lbwl;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcjv;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcjy;->a:Lbwl;

    const-class v1, Lcjw;

    const-class v2, Lcjx;

    invoke-interface {v0, p1, v1, v2}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjv;

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcjy;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()Lcjw;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcjz;

    invoke-direct {v0, p0}, Lcjz;-><init>(Lcjy;)V

    return-object v0
.end method
