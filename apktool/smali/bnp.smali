.class final Lbnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lbno;


# direct methods
.method constructor <init>(Lbno;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lbnp;->b:Lbno;

    iput-object p2, p0, Lbnp;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lbrq;

    iget-object v1, p0, Lbnp;->b:Lbno;

    iget-object v1, v1, Lbno;->a:Lbng;

    .line 1285
    iget-object v1, v1, Lbng;->context:Lill;

    .line 368
    invoke-direct {v0, v1}, Lbrq;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v3, p0, Lbnp;->a:Landroid/content/Intent;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lbrq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method
