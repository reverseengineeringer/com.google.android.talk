.class public Lfxs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lfxr;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lfxr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Landroid/os/Bundle;

.field c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lfxw;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/ViewGroup;

.field public final e:Landroid/content/Context;

.field public f:Lfyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfyb",
            "<",
            "Lfxr;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/android/gms/maps/GoogleMapOptions;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgfm;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lfyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfyb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfyb;

    invoke-direct {v0, p0}, Lfyb;-><init>(Lfxs;)V

    iput-object v0, p0, Lfxs;->i:Lfyb;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    .prologue
    .line 2000
    invoke-direct {p0}, Lfxs;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfxs;->h:Ljava/util/List;

    iput-object p1, p0, Lfxs;->d:Landroid/view/ViewGroup;

    iput-object p2, p0, Lfxs;->e:Landroid/content/Context;

    iput-object p3, p0, Lfxs;->g:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method private a(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lfxs;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfxs;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfxw;

    invoke-interface {v0}, Lfxw;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lfxs;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Lfxw;)V
    .locals 1

    iget-object v0, p0, Lfxs;->a:Lfxr;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lfxw;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfxs;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfxs;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lfxs;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lfxs;->b:Landroid/os/Bundle;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lfxs;->b:Landroid/os/Bundle;

    :cond_2
    :goto_1
    iget-object v0, p0, Lfxs;->i:Lfyb;

    invoke-virtual {p0, v0}, Lfxs;->a(Lfyb;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfxs;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Lfxr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lfxs;->a:Lfxr;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lfxt;

    invoke-direct {v0, p0, v1}, Lfxt;-><init>(Lfxs;Landroid/os/Bundle;)V

    invoke-direct {p0, v1, v0}, Lfxs;->a(Landroid/os/Bundle;Lfxw;)V

    return-void
.end method

.method public a(Lfyb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfyb",
            "<",
            "Lfxr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1000
    iput-object p1, p0, Lfxs;->f:Lfyb;

    invoke-virtual {p0}, Lfxs;->e()V

    return-void
.end method

.method public a(Lgfm;)V
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lfxs;->a()Lfxr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfxs;->a()Lfxr;

    move-result-object v0

    check-cast v0, Lfxr;

    invoke-virtual {v0, p1}, Lfxr;->a(Lgfm;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfxs;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lfxv;

    invoke-direct {v1, p0}, Lfxv;-><init>(Lfxs;)V

    invoke-direct {p0, v0, v1}, Lfxs;->a(Landroid/os/Bundle;Lfxw;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lfxs;->a:Lfxr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfxs;->a:Lfxr;

    invoke-virtual {v0}, Lfxr;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lfxs;->a(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lfxs;->a:Lfxr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfxs;->a:Lfxr;

    invoke-virtual {v0}, Lfxr;->c()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfxs;->a(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 3000
    iget-object v0, p0, Lfxs;->f:Lfyb;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfxs;->a()Lfxr;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lfxs;->e:Landroid/content/Context;

    invoke-static {v0}, Lgfl;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lfxs;->e:Landroid/content/Context;

    invoke-static {v0}, Lgjf;->a(Landroid/content/Context;)Lggu;

    move-result-object v0

    iget-object v1, p0, Lfxs;->e:Landroid/content/Context;

    invoke-static {v1}, Lfya;->a(Ljava/lang/Object;)Lfxx;

    move-result-object v1

    iget-object v2, p0, Lfxs;->g:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Lggu;->a(Lfxx;Lcom/google/android/gms/maps/GoogleMapOptions;)Lgfz;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lfxs;->f:Lfyb;

    new-instance v2, Lfxr;

    iget-object v3, p0, Lfxs;->d:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lfxr;-><init>(Landroid/view/ViewGroup;Lgfz;)V

    invoke-virtual {v1, v2}, Lfyb;->a(Lfxr;)V

    iget-object v0, p0, Lfxs;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfm;

    invoke-virtual {p0}, Lfxs;->a()Lfxr;

    move-result-object v1

    check-cast v1, Lfxr;

    invoke-virtual {v1, v0}, Lfxr;->a(Lgfm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfhp; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lfxs;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lfhp; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
