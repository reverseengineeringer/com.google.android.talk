.class final Lfdk;
.super Let;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Let",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Let;-><init>(Landroid/content/Context;)V

    .line 79
    iput p2, p0, Lfdk;->f:I

    .line 80
    iput-object p3, p0, Lfdk;->g:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1085
    new-instance v0, Lbfz;

    invoke-virtual {p0}, Lfdk;->n()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lfdk;->f:I

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 1086
    iget-object v1, p0, Lfdk;->g:Ljava/lang/String;

    .line 1087
    invoke-static {v0, v1}, Lbft;->f(Lbfz;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1091
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1094
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1095
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1096
    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1098
    :cond_1
    const-string v0, ", "

    invoke-static {v0}, Lknk;->a(Ljava/lang/String;)Lknk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lknk;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
