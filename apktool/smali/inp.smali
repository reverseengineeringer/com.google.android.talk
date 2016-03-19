.class final Linp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lino;


# direct methods
.method constructor <init>(Lino;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Linp;->b:Lino;

    iput-object p2, p0, Linp;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 2

    .prologue
    .line 43
    instance-of v0, p1, Linl;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Linp;->b:Lino;

    iget-object v1, p0, Linp;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lino;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    check-cast p1, Linl;

    invoke-interface {p1, v0}, Linl;->a(Landroid/os/Bundle;)V

    .line 47
    :cond_0
    return-void
.end method
