.class final Lhdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhla;

.field final synthetic b:Lhgn;

.field final synthetic c:Lhee;


# direct methods
.method constructor <init>(Lhee;Lhla;Lhgn;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lhdv;->c:Lhee;

    iput-object p2, p0, Lhdv;->a:Lhla;

    iput-object p3, p0, Lhdv;->b:Lhgn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lhdv;->c:Lhee;

    .line 1039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 129
    iget-object v0, p0, Lhdv;->c:Lhee;

    .line 2039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhec;

    .line 130
    iget-object v4, v0, Lhec;->a:Lhla;

    iget-object v5, p0, Lhdv;->a:Lhla;

    invoke-virtual {v4, v5}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const-string v1, "vclib"

    const-string v3, "Resetting output renderer to source %s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lhdv;->b:Lhgn;

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lhdv;->a:Lhla;

    iget-object v2, p0, Lhdv;->b:Lhgn;

    invoke-virtual {v0, v1, v2}, Lhec;->a(Lhla;Lhgn;)V

    .line 139
    :goto_1
    return-void

    .line 128
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "vclib"

    const-string v1, "Creating output renderer for source %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lhdv;->b:Lhgn;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lhec;

    iget-object v1, p0, Lhdv;->c:Lhee;

    iget-object v2, p0, Lhdv;->a:Lhla;

    iget-object v3, p0, Lhdv;->b:Lhgn;

    invoke-direct {v0, v1, v2, v3}, Lhec;-><init>(Lhee;Lhla;Lhgn;)V

    .line 138
    iget-object v1, p0, Lhdv;->c:Lhee;

    .line 3039
    iget-object v1, v1, Lhee;->a:Ljava/util/List;

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
