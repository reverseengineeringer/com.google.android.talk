.class public final Lgma;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgpt;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgpt;",
            ">;"
        }
    .end annotation
.end field

.field e:Lgmb;

.field private f:Lgmc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgmb;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lgma;->a:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgma;->d:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgma;->c:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgma;->b:Ljava/util/List;

    .line 95
    iput-object p2, p0, Lgma;->e:Lgmb;

    .line 96
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lgma;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    iget-object v0, p0, Lgma;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v0, p0, Lgma;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lgma;->e:Lgmb;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_1
    iget-object v0, p0, Lgma;->e:Lgmb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgmb;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 117
    :cond_2
    iput-object p1, p0, Lgma;->b:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lgma;->f:Lgmc;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lgma;->f:Lgmc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgmc;->cancel(Z)Z

    .line 123
    :cond_3
    new-instance v0, Lgmc;

    .line 1173
    invoke-direct {v0, p0}, Lgmc;-><init>(Lgma;)V

    .line 123
    iput-object v0, p0, Lgma;->f:Lgmc;

    .line 124
    iget-object v0, p0, Lgma;->f:Lgmc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lgmc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
