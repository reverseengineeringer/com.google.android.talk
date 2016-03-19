.class final Lfys;
.super Lfzn;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lfyr;


# direct methods
.method constructor <init>(Lfyr;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lfys;->b:Lfyr;

    iput-object p2, p0, Lfys;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lfzn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lfij;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    sget-object v0, Lfzj;->d:Lfzh;

    iget-object v1, p0, Lfys;->b:Lfyr;

    .line 1000
    iget-object v1, v1, Lfyr;->b:Lfic;

    .line 0
    iget-object v2, p0, Lfys;->b:Lfyr;

    iget-object v2, v2, Lfyr;->a:Landroid/app/Activity;

    iget-object v3, p0, Lfys;->a:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Lfzh;->a(Lfic;Landroid/app/Activity;Landroid/content/Intent;)Lfij;

    move-result-object v0

    return-object v0
.end method
