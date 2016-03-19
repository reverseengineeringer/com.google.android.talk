.class final Lbrl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Lbkq;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lbrp;

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbkq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lbrp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbkq;",
            ">;",
            "Lbrp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lbrl;->a:Landroid/content/Context;

    .line 50
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iput v0, p0, Lbrl;->c:I

    .line 51
    iput-object p2, p0, Lbrl;->d:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lbrl;->b:Lbrp;

    .line 53
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 2057
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2058
    iget-object v0, p0, Lbrl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    .line 2059
    iget-object v1, v0, Lbkq;->a:Ljava/lang/String;

    invoke-static {v1}, Laen;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2060
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2063
    :cond_1
    iget-object v1, v0, Lbkq;->c:Lbkr;

    sget-object v4, Lbkr;->b:Lbkr;

    if-eq v1, v4, :cond_2

    iget-object v1, v0, Lbkq;->c:Lbkr;

    sget-object v4, Lbkr;->c:Lbkr;

    if-ne v1, v4, :cond_0

    .line 2065
    :cond_2
    iget-object v1, p0, Lbrl;->a:Landroid/content/Context;

    iget v4, p0, Lbrl;->c:I

    iget-object v5, v0, Lbkq;->c:Lbkr;

    iget-object v6, v0, Lbkq;->b:Ljava/lang/String;

    iget-object v7, v0, Lbkq;->d:Ljava/lang/String;

    .line 2066
    invoke-static {v1, v4, v5, v6, v7}, Lbmo;->a(Landroid/content/Context;ILbkr;Ljava/lang/String;Ljava/lang/String;)Lblb;

    move-result-object v4

    .line 2073
    if-eqz v4, :cond_0

    .line 2074
    iget-object v1, v4, Lblb;->c:Lbkr;

    sget-object v5, Lbkr;->c:Lbkr;

    if-ne v1, v5, :cond_3

    .line 2075
    iget-object v1, p0, Lbrl;->a:Landroid/content/Context;

    const-class v5, Lbjc;

    .line 2076
    invoke-static {v1, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjc;

    .line 2077
    new-instance v5, Lbrm;

    invoke-direct {v5, p0, v4}, Lbrm;-><init>(Lbrl;Lblb;)V

    invoke-interface {v1, v5}, Lbjc;->a(Lbje;)V

    .line 2122
    :cond_3
    iget-object v0, v0, Lbkq;->b:Ljava/lang/String;

    iput-object v0, v4, Lblb;->b:Ljava/lang/String;

    .line 2123
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_4
    return-object v2
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 37
    check-cast p1, Ljava/util/ArrayList;

    .line 1134
    invoke-virtual {p0}, Lbrl;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    iget-object v0, p0, Lbrl;->b:Lbrp;

    invoke-static {p1}, Lksf;->a(Ljava/util/Collection;)Lksf;

    move-result-object v1

    invoke-interface {v0, v1}, Lbrp;->a(Lksf;)V

    .line 37
    :cond_0
    return-void
.end method
