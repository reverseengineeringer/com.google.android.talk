.class final Limf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lime;


# direct methods
.method constructor <init>(Lime;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Limf;->b:Lime;

    iput-object p2, p0, Limf;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 3

    .prologue
    .line 55
    instance-of v0, p1, Lilu;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Limf;->b:Lime;

    .line 1021
    iget-object v0, v0, Lime;->ao:Linz;

    .line 56
    iget-object v1, p0, Limf;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Linz;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    check-cast p1, Lilu;

    iget-object v1, p0, Limf;->b:Lime;

    iget-object v1, v1, Lime;->am:Lill;

    iget-object v2, p0, Limf;->b:Lime;

    iget-object v2, v2, Lime;->an:Lilh;

    invoke-interface {p1, v1, v2, v0}, Lilu;->a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V

    .line 59
    :cond_0
    return-void
.end method
