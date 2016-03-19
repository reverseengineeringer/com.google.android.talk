.class final Lehl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbgd;

.field final synthetic c:Lehi;


# direct methods
.method constructor <init>(Lehi;Ljava/lang/String;Lbgd;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lehl;->c:Lehi;

    iput-object p2, p0, Lehl;->a:Ljava/lang/String;

    iput-object p3, p0, Lehl;->b:Lbgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lehl;->c:Lehi;

    iget-object v1, p0, Lehl;->a:Ljava/lang/String;

    iget-object v2, p0, Lehl;->b:Lbgd;

    .line 1113
    invoke-virtual {v0, v1}, Lehi;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1115
    :cond_0
    return-void

    .line 1117
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lehi;->a:Z

    .line 1118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehx;

    .line 1119
    check-cast v0, Lbez;

    .line 1120
    iget-object v0, v0, Lbez;->b:Lehm;

    invoke-interface {v0, v2}, Lehm;->a(Lbgd;)V

    goto :goto_0
.end method
