.class public final Lbeb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbdx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbdw;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbeb;->c:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbeb;->j:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbeb;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lbea;
    .locals 12

    .prologue
    .line 164
    new-instance v0, Lbea;

    iget-object v1, p0, Lbeb;->a:Ljava/lang/String;

    iget-object v2, p0, Lbeb;->b:Ljava/lang/String;

    iget-object v3, p0, Lbeb;->c:Ljava/util/List;

    iget-object v4, p0, Lbeb;->d:Ljava/lang/String;

    iget-object v5, p0, Lbeb;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lbeb;->f:Z

    iget-boolean v7, p0, Lbeb;->g:Z

    iget-boolean v8, p0, Lbeb;->h:Z

    iget-boolean v9, p0, Lbeb;->i:Z

    iget-object v10, p0, Lbeb;->j:Ljava/util/ArrayList;

    iget-object v11, p0, Lbeb;->k:Ljava/util/ArrayList;

    .line 1020
    invoke-direct/range {v0 .. v11}, Lbea;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/util/List;Ljava/util/List;)V

    .line 164
    return-object v0
.end method

.method public a(Lbdx;)Lbeb;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lbeb;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbeb;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbeb;->a:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lbeb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbdx;",
            ">;)",
            "Lbeb;"
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lbeb;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_0
    return-object p0
.end method

.method public a(Z)Lbeb;
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lbeb;->f:Z

    .line 103
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbeb;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lbeb;->b:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lbeb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbdw;",
            ">;)",
            "Lbeb;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lbeb;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    return-object p0
.end method

.method public b(Z)Lbeb;
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lbeb;->g:Z

    .line 108
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbeb;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lbeb;->d:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public c(Ljava/util/Collection;)Lbeb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbee;",
            ">;)",
            "Lbeb;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lbeb;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    return-object p0
.end method

.method public c(Z)Lbeb;
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lbeb;->i:Z

    .line 118
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbeb;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbeb;->e:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lbeb;
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lbeb;->j:Ljava/util/ArrayList;

    new-instance v1, Lbdw;

    invoke-direct {v1, p1}, Lbdw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lbeb;
    .locals 2

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lbeb;->k:Ljava/util/ArrayList;

    new-instance v1, Lbee;

    invoke-direct {v1, p1}, Lbee;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-object p0
.end method
