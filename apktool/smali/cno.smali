.class public final Lcno;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbwl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "volumeCircle"

    .line 21
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "Show volume circle animation when volume level changes in call"

    .line 22
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Lcno;->a:Lbwl;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcnn;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcno;->a:Lbwl;

    const-class v1, Lcns;

    .line 42
    invoke-static {p1, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnn;

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcno;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method
