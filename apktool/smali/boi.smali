.class final Lboi;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lbng;

.field private final c:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Lbpa;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lbfd;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 2

    .prologue
    .line 5067
    iput-object p1, p0, Lboi;->b:Lbng;

    invoke-direct {p0}, Lhbw;-><init>()V

    .line 5068
    const/4 v0, 0x0

    iput v0, p0, Lboi;->a:I

    .line 5072
    new-instance v0, Lhq;

    iget-object v1, p0, Lboi;->b:Lbng;

    .line 5285
    iget-object v1, v1, Lbng;->aI:Lhq;

    .line 5073
    invoke-direct {v0, v1}, Lhq;-><init>(Lif;)V

    iput-object v0, p0, Lboi;->c:Lhq;

    .line 5074
    iget-object v0, p0, Lboi;->b:Lbng;

    .line 6285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 5074
    iput-object v0, p0, Lboi;->e:Lbfd;

    .line 5075
    iget-object v0, p0, Lboi;->b:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->aC:Ljava/lang/String;

    .line 5075
    iput-object v0, p0, Lboi;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 8086
    new-instance v2, Lbfz;

    iget-object v0, p0, Lboi;->b:Lbng;

    .line 8285
    iget-object v0, v0, Lbng;->context:Lill;

    .line 8086
    iget-object v1, p0, Lboi;->e:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 8088
    iget-object v0, p0, Lboi;->c:Lhq;

    invoke-virtual {v0}, Lhq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8089
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8090
    invoke-virtual {v2, v1}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v4

    .line 8091
    if-eqz v4, :cond_0

    .line 8094
    invoke-virtual {v2, v4}, Lbfz;->a(Lbgd;)Ljava/lang/String;

    move-result-object v5

    .line 8095
    const-string v6, "Babel"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "possibly invalid merge detected: %s ==> %s (computed merge key %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 8100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    .line 8101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x2

    aput-object v5, v9, v0

    .line 8097
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v11, [Ljava/lang/Object;

    .line 8095
    invoke-static {v6, v0, v7}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8108
    invoke-static {v1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v4, Lbgd;->c:I

    .line 8109
    invoke-static {v0}, Laal;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboi;->f:Ljava/lang/String;

    .line 8110
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8111
    iget v0, p0, Lboi;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lboi;->a:I

    goto :goto_0

    .line 8114
    :cond_1
    const-string v0, "Babel"

    iget v1, p0, Lboi;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "counted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " non-GV, server-based, conversations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8117
    const/4 v0, 0x0

    .line 5067
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 8079
    iget v0, p0, Lboi;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 8080
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "merged more than one hangouts conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5067
    :cond_0
    return-void
.end method
