.class final Lbsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lbst;


# direct methods
.method constructor <init>(Lbst;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lbsu;->b:Lbst;

    iput-object p2, p0, Lbsu;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lbrq;

    iget-object v1, p0, Lbsu;->b:Lbst;

    iget-object v1, v1, Lbst;->a:Lbsr;

    .line 1044
    iget-object v1, v1, Lbsr;->context:Lill;

    .line 99
    invoke-direct {v0, v1}, Lbrq;-><init>(Landroid/content/Context;)V

    new-array v1, v4, [Landroid/content/Intent;

    iget-object v2, p0, Lbsu;->a:Landroid/content/Intent;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lbrq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    iget-object v0, p0, Lbsu;->b:Lbst;

    iget-object v0, v0, Lbst;->a:Lbsr;

    .line 2044
    iget-object v0, v0, Lbsr;->binder:Lilh;

    .line 101
    const-class v1, Lbvc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x919

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lbvc;->a(IIILjava/lang/Integer;)V

    .line 104
    return-void
.end method
