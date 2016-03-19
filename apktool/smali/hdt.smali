.class final Lhdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcu;


# instance fields
.field final synthetic a:Lhgd;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lhgd;)V
    .locals 0

    .prologue
    .line 2023
    iput-object p1, p0, Lhdt;->a:Lhgd;

    invoke-direct {p0}, Lhdt;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhcu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lhdt;->a:Lhgd;

    .line 2019
    iget-object v0, v0, Lhgd;->a:Ljava/util/List;

    .line 1026
    return-object v0
.end method


# virtual methods
.method public a(Lhcs;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lhdt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 20
    invoke-interface {v0, p1}, Lhcu;->a(Lhcs;)V

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public a(Lhil;Latn;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lhdt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 34
    invoke-interface {v0, p1, p2}, Lhcu;->a(Lhil;Latn;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lhdt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 41
    invoke-interface {v0, p1, p2}, Lhcu;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public a(Lkjs;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public b(Lhcs;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lhdt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 27
    invoke-interface {v0, p1}, Lhcu;->b(Lhcs;)V

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
