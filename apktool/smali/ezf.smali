.class public final Lezf;
.super Lhby;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lhby;-><init>(Landroid/content/Context;[I)V

    .line 33
    iput-object p3, p0, Lezf;->a:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lezf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method protected a(Lkli;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lhby;->a(Lkli;)V

    .line 39
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->g()Lhkv;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lklh;

    invoke-direct {v1}, Lklh;-><init>()V

    iput-object v1, p1, Lkli;->a:Lklh;

    .line 42
    iget-object v1, p1, Lkli;->a:Lklh;

    invoke-virtual {v0}, Lhkv;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lklh;->k:Ljava/lang/String;

    .line 43
    iget-object v1, p1, Lkli;->a:Lklh;

    invoke-virtual {v0}, Lhkv;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lklh;->e:Ljava/lang/String;

    .line 44
    iget-object v1, p1, Lkli;->a:Lklh;

    invoke-virtual {v0}, Lhkv;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lklh;->b:Ljava/lang/String;

    .line 45
    new-instance v1, Ljut;

    invoke-direct {v1}, Ljut;-><init>()V

    iput-object v1, p1, Lkli;->g:Ljut;

    .line 46
    iget-object v1, p1, Lkli;->g:Ljut;

    invoke-virtual {v0}, Lhkv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljut;->d:Ljava/lang/Integer;

    .line 48
    :cond_0
    return-void
.end method
