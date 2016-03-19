.class public final Lcem;
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

    .line 21
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "Enable Glide"

    .line 23
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "Enables glide feature to handle image loading and caching."

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

    iput-object v0, p0, Lcem;->a:Lbwl;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lceg;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcem;->a:Lbwl;

    invoke-interface {v0, p1}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcen;

    invoke-direct {v0, p0}, Lcen;-><init>(Lcem;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcem;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method
