.class final Lfjc;
.super Lfjh;


# instance fields
.field final synthetic a:Lfiv;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfia;",
            "Lfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfiv;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lfia;",
            "Lfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iput-object p1, p0, Lfjc;->a:Lfiv;

    .line 1000
    invoke-direct {p0, p1}, Lfjh;-><init>(Lfiv;)V

    .line 0
    iput-object p2, p0, Lfjc;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lfjc;->a:Lfiv;

    .line 2000
    iget-object v0, v0, Lfiv;->c:Landroid/content/Context;

    .line 0
    invoke-static {v0}, Lfho;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lfjc;->a:Lfiv;

    .line 3000
    iget-object v0, v0, Lfiv;->a:Lfjj;

    .line 0
    new-instance v2, Lfjd;

    iget-object v3, p0, Lfjc;->a:Lfiv;

    invoke-direct {v2, p0, v3, v1}, Lfjd;-><init>(Lfjc;Lfjs;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lfjj;->a(Lfjo;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lfjc;->a:Lfiv;

    .line 4000
    iget-boolean v0, v0, Lfiv;->e:Z

    .line 0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lfjc;->a:Lfiv;

    .line 5000
    iget-object v0, v0, Lfiv;->d:Lgra;

    .line 0
    invoke-interface {v0}, Lgra;->p()V

    :cond_2
    iget-object v0, p0, Lfjc;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfia;

    iget-object v1, p0, Lfjc;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfig;

    invoke-interface {v0, v1}, Lfia;->a(Lfig;)V

    goto :goto_0
.end method
