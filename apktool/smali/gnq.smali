.class final Lgnq;
.super Lfkg;


# instance fields
.field b:Lcom/google/android/gms/common/data/DataHolder;

.field c:Landroid/database/Cursor;

.field d:Lgoq;

.field e:Lgoq;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Lgnu;

.field i:Lgnu;

.field final j:Z

.field k:Lgnp;

.field private volatile l:Z

.field private final m:I

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/database/Cursor;Landroid/content/Context;ILgoq;Lgoq;Ljava/util/ArrayList;Ljava/util/HashMap;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0, p1, v2}, Lfkg;-><init>(Lcom/google/android/gms/common/data/DataHolder;C)V

    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lgoq;->a()I

    move-result v0

    if-ne p4, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Laal;->b(Z)V

    invoke-virtual {p6}, Lgoq;->a()I

    move-result v0

    if-ne p4, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Laal;->b(Z)V

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p4, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Laal;->b(Z)V

    iput-object p1, p0, Lgnq;->b:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p2, p0, Lgnq;->c:Landroid/database/Cursor;

    iput p4, p0, Lgnq;->m:I

    iput-object p7, p0, Lgnq;->f:Ljava/util/ArrayList;

    iput-object p3, p0, Lgnq;->n:Landroid/content/Context;

    iput-object p8, p0, Lgnq;->g:Ljava/util/HashMap;

    new-instance v0, Lgnr;

    iget-object v3, p0, Lgnq;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lgnr;-><init>(Lgnq;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lgnq;->h:Lgnu;

    new-instance v0, Lgns;

    iget-object v3, p0, Lgnq;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lgns;-><init>(Lgnq;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lgnq;->i:Lgnu;

    iput-object p5, p0, Lgnq;->d:Lgoq;

    iput-object p6, p0, Lgnq;->e:Lgoq;

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-string v0, "PeopleAggregator"

    const-string v3, "PeopleExtraColumnBitmask.EMAILS is not supported in aggregation.  Ignored."

    .line 1000
    const/4 v4, 0x6

    invoke-static {v4}, Laal;->q(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 0
    :cond_0
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lgnq;->j:Z

    new-instance v0, Lgnp;

    invoke-direct {v0, p10}, Lgnp;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lgnq;->k:Lgnp;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lgnq;->f()V

    iget v0, p0, Lgnq;->m:I

    return v0
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2000
    invoke-virtual {p0}, Lgnq;->f()V

    new-instance v0, Lgnt;

    invoke-direct {v0, p0, p1}, Lgnt;-><init>(Lgnq;I)V

    .line 0
    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lgnq;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnq;->l:Z

    iget-object v0, p0, Lgnq;->b:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->f()V

    iget-object v0, p0, Lgnq;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lgnq;->b:Lcom/google/android/gms/common/data/DataHolder;

    iput-object v1, p0, Lgnq;->c:Landroid/database/Cursor;

    iput-object v1, p0, Lgnq;->d:Lgoq;

    iput-object v1, p0, Lgnq;->e:Lgoq;

    iput-object v1, p0, Lgnq;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lgnq;->g:Ljava/util/HashMap;

    iput-object v1, p0, Lgnq;->n:Landroid/content/Context;

    iput-object v1, p0, Lgnq;->h:Lgnu;

    iput-object v1, p0, Lgnq;->i:Lgnu;

    iput-object v1, p0, Lgnq;->k:Lgnp;

    goto :goto_0
.end method

.method f()V
    .locals 2

    iget-boolean v0, p0, Lgnq;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
