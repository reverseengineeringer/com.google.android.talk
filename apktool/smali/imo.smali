.class public final Limo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linx;
.implements Liox;
.implements Lioy;
.implements Lioz;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Liog;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limo;->a:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Limo;->d:Z

    .line 38
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 39
    return-void
.end method

.method constructor <init>(Liog;B)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limo;->a:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Limo;->d:Z

    .line 42
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 43
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Limo;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Limo;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 85
    :goto_0
    iget-boolean v1, p0, Limo;->c:Z

    if-ne v0, v1, :cond_2

    .line 91
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_2
    iput-boolean v0, p0, Limo;->c:Z

    .line 1094
    iget-object v0, p0, Limo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Limo;->d:Z

    .line 59
    invoke-direct {p0}, Limo;->b()V

    .line 60
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Limo;->b:Z

    .line 65
    invoke-direct {p0}, Limo;->b()V

    .line 66
    return-void
.end method

.method public t_()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Limo;->b:Z

    .line 71
    invoke-direct {p0}, Limo;->b()V

    .line 72
    return-void
.end method
