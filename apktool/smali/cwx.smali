.class final Lcwx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcwz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcwz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcwx;->a:I

    .line 20
    iput-object p2, p0, Lcwx;->b:Ljava/util/List;

    .line 21
    sget-boolean v0, Lcxt;->b:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "Babel"

    iget v1, p0, Lcwx;->a:I

    iget-object v2, p0, Lcwx;->b:Ljava/util/List;

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Notification list with : messageCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " conversation count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;IZZZ)Lcwx;
    .locals 8

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcxq;->a(Landroid/content/Context;IZZZ)Lcwx;

    move-result-object v2

    .line 43
    invoke-static {p1}, Lcxo;->b(I)Lcwz;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    const/4 v0, 0x0

    move v1, v0

    .line 46
    :goto_0
    iget-object v0, v2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-wide v4, v3, Lcwz;->g:J

    iget-object v0, v2, Lcwx;->b:Ljava/util/List;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    iget-wide v6, v0, Lcwz;->g:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, v2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 51
    iget-object v0, v2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    :goto_1
    iget v0, v2, Lcwx;->a:I

    iget v1, v3, Lcwz;->i:I

    add-int/2addr v0, v1

    iput v0, v2, Lcwx;->a:I

    .line 58
    :cond_1
    return-object v2

    .line 53
    :cond_2
    iget-object v0, v2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method a()Lexn;
    .locals 4

    .prologue
    .line 63
    new-instance v1, Lexn;

    invoke-direct {v1}, Lexn;-><init>()V

    .line 64
    iget-object v0, p0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 65
    iget-boolean v3, v0, Lcwz;->j:Z

    if-eqz v3, :cond_1

    .line 66
    iget-object v0, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcya;

    .line 67
    check-cast v0, Lcxo;

    .line 68
    iget-object v0, v0, Lcxo;->o:Lcwz;

    iget-object v0, v0, Lcwz;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lexn;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, v0, Lcwz;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lexn;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    return-object v1
.end method
