.class final Lals;
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
.field private final a:Lakf;

.field private final b:Lakg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakg",
            "<*>;"
        }
    .end annotation
.end field

.field private c:I

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

.field private j:Lalt;


# direct methods
.method public constructor <init>(Lakg;Lakf;)V
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lals;->c:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lals;->d:I

    .line 36
    iput-object p1, p0, Lals;->b:Lakg;

    .line 37
    iput-object p2, p0, Lals;->a:Lakf;

    .line 38
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lals;->g:I

    iget-object v1, p0, Lals;->f:Ljava/util/List;

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
    .line 107
    iget-object v0, p0, Lals;->a:Lakf;

    iget-object v1, p0, Lals;->j:Lalt;

    iget-object v2, p0, Lals;->h:Laph;

    iget-object v2, v2, Laph;->c:Lajf;

    sget-object v3, Lair;->d:Lair;

    invoke-interface {v0, v1, p1, v2, v3}, Lakf;->a(Laiw;Ljava/lang/Exception;Lajf;Lair;)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lals;->a:Lakf;

    iget-object v1, p0, Lals;->e:Laiw;

    iget-object v2, p0, Lals;->h:Laph;

    iget-object v3, v2, Laph;->c:Lajf;

    sget-object v4, Lair;->d:Lair;

    iget-object v5, p0, Lals;->j:Lalt;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lakf;->a(Laiw;Ljava/lang/Object;Lajf;Lair;Laiw;)V

    .line 103
    return-void
.end method

.method public a()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 42
    iget-object v0, p0, Lals;->b:Lakg;

    invoke-virtual {v0}, Lakg;->k()Ljava/util/List;

    move-result-object v9

    .line 43
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v8

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Lals;->b:Lakg;

    invoke-virtual {v0}, Lakg;->i()Ljava/util/List;

    move-result-object v10

    .line 47
    :cond_2
    :goto_1
    iget-object v0, p0, Lals;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lals;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 48
    :cond_3
    iget v0, p0, Lals;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lals;->d:I

    .line 49
    iget v0, p0, Lals;->d:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 50
    iget v0, p0, Lals;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lals;->c:I

    .line 51
    iget v0, p0, Lals;->c:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    move v1, v8

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iput v8, p0, Lals;->d:I

    .line 57
    :cond_5
    iget v0, p0, Lals;->c:I

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laiw;

    .line 58
    iget v0, p0, Lals;->d:I

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 59
    iget-object v0, p0, Lals;->b:Lakg;

    invoke-virtual {v0, v6}, Lakg;->c(Ljava/lang/Class;)Lajd;

    move-result-object v5

    .line 61
    new-instance v0, Lalt;

    iget-object v2, p0, Lals;->b:Lakg;

    invoke-virtual {v2}, Lakg;->f()Laiw;

    move-result-object v2

    iget-object v3, p0, Lals;->b:Lakg;

    invoke-virtual {v3}, Lakg;->g()I

    move-result v3

    iget-object v4, p0, Lals;->b:Lakg;

    .line 62
    invoke-virtual {v4}, Lakg;->h()I

    move-result v4

    iget-object v7, p0, Lals;->b:Lakg;

    invoke-virtual {v7}, Lakg;->e()Laja;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lalt;-><init>(Laiw;Laiw;IILajd;Ljava/lang/Class;Laja;)V

    iput-object v0, p0, Lals;->j:Lalt;

    .line 63
    iget-object v0, p0, Lals;->b:Lakg;

    invoke-virtual {v0}, Lakg;->b()Lamu;

    move-result-object v0

    iget-object v2, p0, Lals;->j:Lalt;

    invoke-interface {v0, v2}, Lamu;->a(Laiw;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lals;->i:Ljava/io/File;

    .line 64
    iget-object v0, p0, Lals;->i:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 65
    iput-object v1, p0, Lals;->e:Laiw;

    .line 66
    iget-object v0, p0, Lals;->b:Lakg;

    iget-object v1, p0, Lals;->i:Ljava/io/File;

    invoke-virtual {v0, v1}, Lakg;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lals;->f:Ljava/util/List;

    .line 67
    iput v8, p0, Lals;->g:I

    goto :goto_1

    .line 71
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lals;->h:Laph;

    move v1, v8

    .line 73
    :goto_2
    if-nez v1, :cond_0

    invoke-direct {p0}, Lals;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lals;->f:Ljava/util/List;

    iget v2, p0, Lals;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lals;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapg;

    .line 75
    iget-object v2, p0, Lals;->i:Ljava/io/File;

    iget-object v3, p0, Lals;->b:Lakg;

    .line 76
    invoke-virtual {v3}, Lakg;->g()I

    move-result v3

    iget-object v4, p0, Lals;->b:Lakg;

    invoke-virtual {v4}, Lakg;->h()I

    move-result v4

    iget-object v5, p0, Lals;->b:Lakg;

    .line 77
    invoke-virtual {v5}, Lakg;->e()Laja;

    move-result-object v5

    .line 76
    invoke-interface {v0, v2, v3, v4, v5}, Lapg;->a(Ljava/lang/Object;IILaja;)Laph;

    move-result-object v0

    iput-object v0, p0, Lals;->h:Laph;

    .line 78
    iget-object v0, p0, Lals;->h:Laph;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lals;->b:Lakg;

    iget-object v2, p0, Lals;->h:Laph;

    iget-object v2, v2, Laph;->c:Lajf;

    invoke-interface {v2}, Lajf;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lakg;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lals;->h:Laph;

    iget-object v1, v1, Laph;->c:Lajf;

    iget-object v2, p0, Lals;->b:Lakg;

    invoke-virtual {v2}, Lakg;->d()Lahs;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lajf;->a(Lahs;Lajg;)V

    :goto_3
    move v1, v0

    .line 82
    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lals;->h:Laph;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v0, v0, Laph;->c:Lajf;

    invoke-interface {v0}, Lajf;->b()V

    .line 97
    :cond_0
    return-void
.end method
