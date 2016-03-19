.class final Lbno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lbno;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 362
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 363
    iget-object v0, p0, Lbno;->a:Lbng;

    .line 1285
    iget-object v0, v0, Lbng;->h:Lbqi;

    .line 363
    new-instance v1, Lbnp;

    invoke-direct {v1, p0, p2}, Lbnp;-><init>(Lbno;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lbqi;->a(Lbje;)V

    .line 372
    :cond_0
    return-void
.end method
