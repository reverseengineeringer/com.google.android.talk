.class final Lakc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajg;
.implements Lake;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajg",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lake;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laiw;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lakg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakg",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lakf;

.field private d:I

.field private e:Laiw;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lapg",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private volatile h:Laph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laph",
            "<*>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;


# direct methods
.method constructor <init>(Lakg;Lakf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakg",
            "<*>;",
            "Lakf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lakg;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lakc;-><init>(Ljava/util/List;Lakg;Lakf;)V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lakg;Lakf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laiw;",
            ">;",
            "Lakg",
            "<*>;",
            "Lakf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lakc;->d:I

    .line 40
    iput-object p1, p0, Lakc;->a:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lakc;->b:Lakg;

    .line 42
    iput-object p3, p0, Lakc;->c:Lakf;

    .line 43
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lakc;->g:I

    iget-object v1, p0, Lakc;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lakc;->c:Lakf;

    iget-object v1, p0, Lakc;->e:Laiw;

    iget-object v2, p0, Lakc;->h:Laph;

    iget-object v2, v2, Laph;->c:Lajf;

    sget-object v3, Lair;->c:Lair;

    invoke-interface {v0, v1, p1, v2, v3}, Lakf;->a(Laiw;Ljava/lang/Exception;Lajf;Lair;)V

    .line 98
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lakc;->c:Lakf;

    iget-object v1, p0, Lakc;->e:Laiw;

    iget-object v2, p0, Lakc;->h:Laph;

    iget-object v3, v2, Laph;->c:Lajf;

    sget-object v4, Lair;->c:Lair;

    iget-object v5, p0, Lakc;->e:Laiw;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lakf;->a(Laiw;Ljava/lang/Object;Lajf;Lair;Laiw;)V

    .line 93
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lakc;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lakc;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    :cond_1
    iget v0, p0, Lakc;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakc;->d:I

    .line 49
    iget v0, p0, Lakc;->d:I

    iget-object v2, p0, Lakc;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 75
    :cond_2
    return v1

    .line 53
    :cond_3
    iget-object v0, p0, Lakc;->a:Ljava/util/List;

    iget v2, p0, Lakc;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    .line 54
    new-instance v2, Lakd;

    iget-object v3, p0, Lakc;->b:Lakg;

    invoke-virtual {v3}, Lakg;->f()Laiw;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lakd;-><init>(Laiw;Laiw;)V

    .line 55
    iget-object v3, p0, Lakc;->b:Lakg;

    invoke-virtual {v3}, Lakg;->b()Lamu;

    move-result-object v3

    invoke-interface {v3, v2}, Lamu;->a(Laiw;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lakc;->i:Ljava/io/File;

    .line 56
    iget-object v2, p0, Lakc;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 57
    iput-object v0, p0, Lakc;->e:Laiw;

    .line 58
    iget-object v0, p0, Lakc;->b:Lakg;

    iget-object v2, p0, Lakc;->i:Ljava/io/File;

    invoke-virtual {v0, v2}, Lakg;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakc;->f:Ljava/util/List;

    .line 59
    iput v1, p0, Lakc;->g:I

    goto :goto_0

    .line 63
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lakc;->h:Laph;

    .line 65
    :goto_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lakc;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lakc;->f:Ljava/util/List;

    iget v2, p0, Lakc;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lakc;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapg;

    .line 67
    iget-object v2, p0, Lakc;->i:Ljava/io/File;

    iget-object v3, p0, Lakc;->b:Lakg;

    .line 68
    invoke-virtual {v3}, Lakg;->g()I

    move-result v3

    iget-object v4, p0, Lakc;->b:Lakg;

    invoke-virtual {v4}, Lakg;->h()I

    move-result v4

    iget-object v5, p0, Lakc;->b:Lakg;

    .line 69
    invoke-virtual {v5}, Lakg;->e()Laja;

    move-result-object v5

    .line 68
    invoke-interface {v0, v2, v3, v4, v5}, Lapg;->a(Ljava/lang/Object;IILaja;)Laph;

    move-result-object v0

    iput-object v0, p0, Lakc;->h:Laph;

    .line 70
    iget-object v0, p0, Lakc;->h:Laph;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lakc;->b:Lakg;

    iget-object v2, p0, Lakc;->h:Laph;

    iget-object v2, v2, Laph;->c:Lajf;

    invoke-interface {v2}, Lajf;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lakg;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lakc;->h:Laph;

    iget-object v1, v1, Laph;->c:Lajf;

    iget-object v2, p0, Lakc;->b:Lakg;

    invoke-virtual {v2}, Lakg;->d()Lahs;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lajf;->a(Lahs;Lajg;)V

    :goto_2
    move v1, v0

    .line 74
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lakc;->h:Laph;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v0, v0, Laph;->c:Lajf;

    invoke-interface {v0}, Lajf;->b()V

    .line 88
    :cond_0
    return-void
.end method
