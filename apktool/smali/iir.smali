.class final Liir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Liiq;


# direct methods
.method constructor <init>(Liiq;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Liir;->b:Liiq;

    iput-object p2, p0, Liir;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 3

    .prologue
    .line 54
    instance-of v0, p1, Lilu;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Liir;->b:Liiq;

    iget-object v0, v0, Liiq;->c:Linz;

    iget-object v1, p0, Liir;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Linz;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 56
    check-cast p1, Lilu;

    iget-object v1, p0, Liir;->b:Liiq;

    iget-object v1, v1, Liiq;->a:Lill;

    iget-object v2, p0, Liir;->b:Liiq;

    iget-object v2, v2, Liiq;->b:Lilh;

    invoke-interface {p1, v1, v2, v0}, Lilu;->a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V

    .line 58
    :cond_0
    return-void
.end method
