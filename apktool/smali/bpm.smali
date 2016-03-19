.class final Lbpm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbpl;


# direct methods
.method constructor <init>(Lbpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lbpm;->c:Lbpl;

    iput-object p2, p0, Lbpm;->a:Ljava/lang/String;

    iput-object p3, p0, Lbpm;->b:Ljava/lang/String;

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
    const/4 v3, 0x0

    .line 1427
    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    invoke-virtual {v0}, Lbng;->an()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    .line 2285
    iget-object v0, v0, Lbng;->h:Lbqi;

    .line 1430
    iget-object v1, p0, Lbpm;->a:Ljava/lang/String;

    iget-object v2, p0, Lbpm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbqi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    iget-object v1, p0, Lbpm;->c:Lbpl;

    iget-object v1, v1, Lbpl;->a:Lbng;

    .line 3285
    invoke-virtual {v1}, Lbng;->N()Landroid/net/Uri;

    move-result-object v1

    .line 4285
    iput-object v1, v0, Lbng;->aA:Landroid/net/Uri;

    .line 1433
    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lbpm;->c:Lbpl;

    iget-object v2, v2, Lbpl;->a:Lbng;

    .line 1434
    invoke-virtual {v0, v1, v3, v2}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    .line 1435
    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    .line 5285
    iget-object v0, v0, Lbng;->aH:Lbkp;

    .line 1435
    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lbpm;->c:Lbpl;

    iget-object v0, v0, Lbpl;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbpm;->c:Lbpl;

    iget-object v2, v2, Lbpl;->a:Lbng;

    .line 1437
    invoke-virtual {v0, v1, v3, v2}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    goto :goto_0
.end method
