.class final Lalw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajg;
.implements Lake;
.implements Lakf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajg",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lake;",
        "Lakf;"
    }
.end annotation


# instance fields
.field private final a:Lakg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakg",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lakf;

.field private c:I

.field private d:Lakc;

.field private e:Ljava/lang/Object;

.field private volatile f:Laph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laph",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Lakd;


# direct methods
.method public constructor <init>(Lakg;Lakf;)V
    .locals 0
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lalw;->a:Lakg;

    .line 39
    iput-object p2, p0, Lalw;->b:Lakf;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Laiw;Ljava/lang/Exception;Lajf;Lair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Ljava/lang/Exception;",
            "Lajf",
            "<*>;",
            "Lair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lalw;->b:Lakf;

    iget-object v1, p0, Lalw;->f:Laph;

    iget-object v1, v1, Laph;->c:Lajf;

    invoke-interface {v1}, Lajf;->c()Lair;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lakf;->a(Laiw;Ljava/lang/Exception;Lajf;Lair;)V

    .line 143
    return-void
.end method

.method public a(Laiw;Ljava/lang/Object;Lajf;Lair;Laiw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Ljava/lang/Object;",
            "Lajf",
            "<*>;",
            "Lair;",
            "Laiw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lalw;->b:Lakf;

    iget-object v1, p0, Lalw;->f:Laph;

    iget-object v1, v1, Laph;->c:Lajf;

    invoke-interface {v1}, Lajf;->c()Lair;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lakf;->a(Laiw;Ljava/lang/Object;Lajf;Lair;Laiw;)V

    .line 137
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lalw;->b:Lakf;

    iget-object v1, p0, Lalw;->g:Lakd;

    iget-object v2, p0, Lalw;->f:Laph;

    iget-object v2, v2, Laph;->c:Lajf;

    iget-object v3, p0, Lalw;->f:Laph;

    iget-object v3, v3, Laph;->c:Lajf;

    invoke-interface {v3}, Lajf;->c()Lair;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lakf;->a(Laiw;Ljava/lang/Exception;Lajf;Lair;)V

    .line 121
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lalw;->a:Lakg;

    invoke-virtual {v0}, Lakg;->c()Lakr;

    move-result-object v0

    .line 107
    if-eqz p1, :cond_0

    iget-object v1, p0, Lalw;->f:Laph;

    iget-object v1, v1, Laph;->c:Lajf;

    invoke-interface {v1}, Lajf;->c()Lair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakr;->a(Lair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lalw;->e:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lalw;->b:Lakf;

    invoke-interface {v0}, Lakf;->c()V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lalw;->b:Lakf;

    iget-object v1, p0, Lalw;->f:Laph;

    iget-object v1, v1, Laph;->a:Laiw;

    iget-object v2, p0, Lalw;->f:Laph;

    iget-object v3, v2, Laph;->c:Lajf;

    iget-object v2, p0, Lalw;->f:Laph;

    iget-object v2, v2, Laph;->c:Lajf;

    .line 114
    invoke-interface {v2}, Lajf;->c()Lair;

    move-result-object v4

    iget-object v5, p0, Lalw;->g:Lakd;

    move-object v2, p1

    .line 113
    invoke-interface/range {v0 .. v5}, Lakf;->a(Laiw;Ljava/lang/Object;Lajf;Lair;Laiw;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 44
    iget-object v0, p0, Lalw;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lalw;->e:Ljava/lang/Object;

    .line 46
    iput-object v11, p0, Lalw;->e:Ljava/lang/Object;

    .line 1074
    invoke-static {}, Lavm;->a()J

    move-result-wide v4

    .line 1076
    :try_start_0
    iget-object v2, p0, Lalw;->a:Lakg;

    invoke-virtual {v2, v0}, Lakg;->a(Ljava/lang/Object;)Laiu;

    move-result-object v2

    .line 1077
    new-instance v6, Lamw;

    iget-object v7, p0, Lalw;->a:Lakg;

    .line 1078
    invoke-virtual {v7}, Lakg;->e()Laja;

    move-result-object v7

    invoke-direct {v6, v2, v0, v7}, Lamw;-><init>(Laiu;Ljava/lang/Object;Laja;)V

    .line 1079
    new-instance v7, Lakd;

    iget-object v8, p0, Lalw;->f:Laph;

    iget-object v8, v8, Laph;->a:Laiw;

    iget-object v9, p0, Lalw;->a:Lakg;

    invoke-virtual {v9}, Lakg;->f()Laiw;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lakd;-><init>(Laiw;Laiw;)V

    iput-object v7, p0, Lalw;->g:Lakd;

    .line 1080
    iget-object v7, p0, Lalw;->a:Lakg;

    invoke-virtual {v7}, Lakg;->b()Lamu;

    move-result-object v7

    iget-object v8, p0, Lalw;->g:Lakd;

    invoke-interface {v7, v8, v6}, Lamu;->a(Laiw;Lamw;)V

    .line 1081
    const-string v6, "SourceGenerator"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1082
    const-string v6, "Finished encoding source to cache, key: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lalw;->g:Lakd;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-static {v4, v5}, Lavm;->a(J)D

    move-result-wide v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x37

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", encoder: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    :cond_0
    iget-object v0, p0, Lalw;->f:Laph;

    iget-object v0, v0, Laph;->c:Lajf;

    invoke-interface {v0}, Lajf;->a()V

    .line 1092
    new-instance v0, Lakc;

    iget-object v2, p0, Lalw;->f:Laph;

    iget-object v2, v2, Laph;->a:Laiw;

    .line 1093
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lalw;->a:Lakg;

    invoke-direct {v0, v2, v4, p0}, Lakc;-><init>(Ljava/util/List;Lakg;Lakf;)V

    iput-object v0, p0, Lalw;->d:Lakc;

    .line 50
    :cond_1
    iget-object v0, p0, Lalw;->d:Lakc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lalw;->d:Lakc;

    invoke-virtual {v0}, Lakc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 1089
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lalw;->f:Laph;

    iget-object v1, v1, Laph;->c:Lajf;

    invoke-interface {v1}, Lajf;->a()V

    throw v0

    .line 53
    :cond_2
    iput-object v11, p0, Lalw;->d:Lakc;

    .line 55
    iput-object v11, p0, Lalw;->f:Laph;

    move v2, v3

    .line 57
    :cond_3
    :goto_1
    if-nez v2, :cond_6

    .line 2070
    iget v0, p0, Lalw;->c:I

    iget-object v4, p0, Lalw;->a:Lakg;

    invoke-virtual {v4}, Lakg;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    move v0, v1

    .line 57
    :goto_2
    if-eqz v0, :cond_6

    .line 58
    iget-object v0, p0, Lalw;->a:Lakg;

    invoke-virtual {v0}, Lakg;->j()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lalw;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lalw;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laph;

    iput-object v0, p0, Lalw;->f:Laph;

    .line 59
    iget-object v0, p0, Lalw;->f:Laph;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lalw;->a:Lakg;

    .line 60
    invoke-virtual {v0}, Lakg;->c()Lakr;

    move-result-object v0

    iget-object v4, p0, Lalw;->f:Laph;

    iget-object v4, v4, Laph;->c:Lajf;

    invoke-interface {v4}, Lajf;->c()Lair;

    move-result-object v4

    invoke-virtual {v0, v4}, Lakr;->a(Lair;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lalw;->a:Lakg;

    iget-object v4, p0, Lalw;->f:Laph;

    iget-object v4, v4, Laph;->c:Lajf;

    .line 61
    invoke-interface {v4}, Lajf;->d()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lakg;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_4
    iget-object v0, p0, Lalw;->f:Laph;

    iget-object v0, v0, Laph;->c:Lajf;

    iget-object v2, p0, Lalw;->a:Lakg;

    invoke-virtual {v2}, Lakg;->d()Lahs;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lajf;->a(Lahs;Lajg;)V

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v3

    .line 2070
    goto :goto_2

    :cond_6
    move v0, v2

    .line 66
    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lalw;->f:Laph;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v0, v0, Laph;->c:Lajf;

    invoke-interface {v0}, Lajf;->b()V

    .line 102
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
