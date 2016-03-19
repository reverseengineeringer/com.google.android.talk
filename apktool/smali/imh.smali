.class final Limh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Limg;


# direct methods
.method constructor <init>(Limg;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Limh;->b:Limg;

    iput-object p2, p0, Limh;->a:Landroid/os/Bundle;

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
    iget-object v0, p0, Limh;->b:Limg;

    .line 1021
    iget-object v0, v0, Limg;->lifecycle:Linz;

    .line 55
    iget-object v1, p0, Limh;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Linz;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 56
    check-cast p1, Lilu;

    iget-object v1, p0, Limh;->b:Limg;

    iget-object v1, v1, Limg;->context:Lill;

    iget-object v2, p0, Limh;->b:Limg;

    iget-object v2, v2, Limg;->binder:Lilh;

    invoke-interface {p1, v1, v2, v0}, Lilu;->a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V

    .line 58
    :cond_0
    return-void
.end method
