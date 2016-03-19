.class final Lilw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lilv;


# direct methods
.method constructor <init>(Lilv;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lilw;->b:Lilv;

    iput-object p2, p0, Lilw;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 3

    .prologue
    .line 40
    instance-of v0, p1, Lilu;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lilw;->b:Lilv;

    .line 1017
    iget-object v0, v0, Lilv;->B:Lipg;

    .line 41
    iget-object v1, p0, Lilw;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lipg;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    check-cast p1, Lilu;

    iget-object v1, p0, Lilw;->b:Lilv;

    iget-object v2, p0, Lilw;->b:Lilv;

    iget-object v2, v2, Lilv;->A:Lilh;

    invoke-interface {p1, v1, v2, v0}, Lilu;->a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V

    .line 45
    :cond_0
    return-void
.end method
