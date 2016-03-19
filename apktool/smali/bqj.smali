.class final Lbqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liny;
.implements Liow;
.implements Lioz;


# instance fields
.field a:Lbqk;

.field private b:Lbfb;


# direct methods
.method constructor <init>(Lbqk;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lbqj;->a:Lbqk;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    const-string v0, "draft"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbfb;

    .line 75
    iget-object v1, p0, Lbqj;->a:Lbqk;

    invoke-interface {v1, v0}, Lbqk;->b(Lbfb;)V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lbqj;->b:Lbfb;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lbqj;->a:Lbqk;

    iget-object v1, p0, Lbqj;->b:Lbfb;

    invoke-interface {v0, v1}, Lbqk;->b(Lbfb;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lbqj;->a:Lbqk;

    invoke-interface {v0}, Lbqk;->S()V

    goto :goto_0
.end method

.method a(Lbfb;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lbqj;->b:Lbfb;

    .line 59
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    const-string v0, "draft"

    iget-object v1, p0, Lbqj;->a:Lbqk;

    invoke-interface {v1}, Lbqk;->ai()Lbfb;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    return-void
.end method
