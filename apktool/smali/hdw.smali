.class final Lhdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhla;

.field final synthetic b:Lhee;


# direct methods
.method constructor <init>(Lhee;Lhla;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lhdw;->b:Lhee;

    iput-object p2, p0, Lhdw;->a:Lhla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lhdw;->b:Lhee;

    .line 1039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 155
    iget-object v0, p0, Lhdw;->b:Lhee;

    .line 2039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhec;

    .line 156
    iget-object v4, v0, Lhec;->a:Lhla;

    iget-object v5, p0, Lhdw;->a:Lhla;

    invoke-virtual {v4, v5}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    const-string v3, "vclib"

    const-string v4, "Destroying output renderer for surface %s bound to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lhdw;->a:Lhla;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, v0, Lhec;->b:Lhgn;

    aput-object v6, v5, v2

    .line 2077
    const/4 v2, 0x3

    invoke-static {v2, v3, v4, v5}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v0}, Lhec;->a()V

    .line 160
    iget-object v0, p0, Lhdw;->b:Lhee;

    .line 3039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 164
    :cond_0
    return-void

    .line 154
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
