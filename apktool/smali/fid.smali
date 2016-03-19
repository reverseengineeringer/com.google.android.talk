.class public final Lfid;
.super Ljava/lang/Object;


# instance fields
.field a:Lba;

.field private b:Landroid/accounts/Account;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfhw",
            "<*>;",
            "Lfkr;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfhw",
            "<*>;",
            "Lfhy;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Lfih;

.field private n:Landroid/os/Looper;

.field private o:Lfho;

.field private p:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<+",
            "Lgra;",
            "Lgqd;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfif;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfih;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lgqe;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfid;->c:Ljava/util/Set;

    new-instance v0, Lgcc;

    invoke-direct {v0}, Lgcc;-><init>()V

    iput-object v0, p0, Lfid;->h:Ljava/util/Map;

    new-instance v0, Lgcc;

    invoke-direct {v0}, Lgcc;-><init>()V

    iput-object v0, p0, Lfid;->j:Ljava/util/Map;

    iput v1, p0, Lfid;->k:I

    iput v1, p0, Lfid;->l:I

    .line 1000
    sget-object v0, Lfho;->b:Lfho;

    .line 0
    iput-object v0, p0, Lfid;->o:Lfho;

    sget-object v0, Lgqw;->c:Lfhx;

    iput-object v0, p0, Lfid;->p:Lfhx;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfid;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfid;->r:Ljava/util/ArrayList;

    new-instance v0, Lgqe;

    invoke-direct {v0}, Lgqe;-><init>()V

    iput-object v0, p0, Lfid;->s:Lgqe;

    iput-object p1, p0, Lfid;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lfid;->n:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfid;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfid;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lfhw;)Lfid;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfhw",
            "<+",
            "Lfhy;",
            ">;)",
            "Lfid;"
        }
    .end annotation

    iget-object v0, p0, Lfid;->j:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfid;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lfhw;->a()Lfhx;

    move-result-object v1

    invoke-virtual {v1}, Lfhx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lfhw;Lfhy;)Lfid;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lfhy;",
            ">(",
            "Lfhw",
            "<TO;>;TO;)",
            "Lfid;"
        }
    .end annotation

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfid;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfid;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lfhw;->a()Lfhx;

    move-result-object v1

    invoke-virtual {v1}, Lfhx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lfif;)Lfid;
    .locals 1

    iget-object v0, p0, Lfid;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lfih;)Lfid;
    .locals 1

    iget-object v0, p0, Lfid;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lfid;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lfid;->b:Landroid/accounts/Account;

    return-object p0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Lfkq;
    .locals 9

    new-instance v0, Lfkq;

    iget-object v1, p0, Lfid;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lfid;->c:Ljava/util/Set;

    iget-object v3, p0, Lfid;->h:Ljava/util/Map;

    iget v4, p0, Lfid;->d:I

    iget-object v5, p0, Lfid;->e:Landroid/view/View;

    iget-object v6, p0, Lfid;->f:Ljava/lang/String;

    iget-object v7, p0, Lfid;->g:Ljava/lang/String;

    iget-object v8, p0, Lfid;->s:Lgqe;

    invoke-virtual {v8}, Lgqe;->a()Lgqd;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lfkq;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lgqd;)V

    return-object v0
.end method

.method a(Lfjz;Lfic;)V
    .locals 2

    iget v0, p0, Lfid;->k:I

    iget-object v1, p0, Lfid;->m:Lfih;

    invoke-virtual {p1, v0, p2, v1}, Lfjz;->a(ILfic;Lfih;)V

    return-void
.end method

.method public b()Lfic;
    .locals 12

    .prologue
    const/4 v10, -0x1

    .line 0
    iget-object v0, p0, Lfid;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Laal;->b(ZLjava/lang/Object;)V

    iget v0, p0, Lfid;->k:I

    if-ltz v0, :cond_2

    .line 2000
    new-instance v0, Lfjj;

    iget-object v1, p0, Lfid;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfid;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Lfid;->a()Lfkq;

    move-result-object v3

    iget-object v4, p0, Lfid;->o:Lfho;

    iget-object v5, p0, Lfid;->p:Lfhx;

    iget-object v6, p0, Lfid;->j:Ljava/util/Map;

    iget-object v7, p0, Lfid;->q:Ljava/util/ArrayList;

    iget-object v8, p0, Lfid;->r:Ljava/util/ArrayList;

    iget v9, p0, Lfid;->k:I

    invoke-direct/range {v0 .. v10}, Lfjj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfkq;Lfho;Lfhx;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    iget-object v1, p0, Lfid;->a:Lba;

    invoke-static {v1}, Lfjz;->a(Lba;)Lfjz;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lfid;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfie;

    invoke-direct {v2, p0, v0}, Lfie;-><init>(Lfid;Lfic;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    move-object v1, v0

    .line 0
    :goto_2
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2000
    :cond_1
    invoke-virtual {p0, v1, v0}, Lfid;->a(Lfjz;Lfic;)V

    goto :goto_1

    .line 0
    :cond_2
    iget v0, p0, Lfid;->l:I

    if-ltz v0, :cond_4

    .line 3000
    iget-object v0, p0, Lfid;->a:Lba;

    invoke-static {v0}, Lfkc;->a(Lba;)Lfkc;

    move-result-object v0

    iget v1, p0, Lfid;->l:I

    invoke-virtual {v0, v1}, Lfkc;->a(I)Lfic;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lfjj;

    iget-object v2, p0, Lfid;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lfid;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Lfid;->a()Lfkq;

    move-result-object v4

    iget-object v5, p0, Lfid;->o:Lfho;

    iget-object v6, p0, Lfid;->p:Lfhx;

    iget-object v7, p0, Lfid;->j:Ljava/util/Map;

    iget-object v8, p0, Lfid;->q:Ljava/util/ArrayList;

    iget-object v9, p0, Lfid;->r:Ljava/util/ArrayList;

    iget v11, p0, Lfid;->l:I

    invoke-direct/range {v1 .. v11}, Lfjj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfkq;Lfho;Lfhx;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_3
    iget v2, p0, Lfid;->l:I

    iget-object v3, p0, Lfid;->m:Lfih;

    invoke-virtual {v0, v2, v1, v3}, Lfkc;->a(ILfic;Lfih;)V

    goto :goto_2

    .line 0
    :cond_4
    new-instance v1, Lfjj;

    iget-object v2, p0, Lfid;->i:Landroid/content/Context;

    iget-object v3, p0, Lfid;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Lfid;->a()Lfkq;

    move-result-object v4

    iget-object v5, p0, Lfid;->o:Lfho;

    iget-object v6, p0, Lfid;->p:Lfhx;

    iget-object v7, p0, Lfid;->j:Ljava/util/Map;

    iget-object v8, p0, Lfid;->q:Ljava/util/ArrayList;

    iget-object v9, p0, Lfid;->r:Ljava/util/ArrayList;

    move v11, v10

    invoke-direct/range {v1 .. v11}, Lfjj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfkq;Lfho;Lfhx;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_2
.end method
