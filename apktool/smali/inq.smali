.class final Linq;
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
    .line 52
    iput-object p1, p0, Linq;->b:Lino;

    iput-object p2, p0, Linq;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 2

    .prologue
    .line 55
    instance-of v0, p1, Linm;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Linq;->b:Lino;

    iget-object v1, p0, Linq;->a:Landroid/os/Bundle;

    .line 57
    invoke-virtual {v0, p1, v1}, Lino;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method
