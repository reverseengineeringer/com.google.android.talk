.class public final Ljsr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Liog;

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Latn;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljrc;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lkog;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Latn;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/Set;Ljrc;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set",
            "<",
            "Latn;",
            ">;",
            "Ljrc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lkog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljsr;->g:Z

    .line 42
    iput-object p2, p0, Ljsr;->c:Ljava/util/Set;

    .line 43
    iput-object p1, p0, Ljsr;->b:Landroid/app/Activity;

    .line 44
    instance-of v0, p1, Liof;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Liof;

    invoke-interface {p1}, Liof;->getLifecycle()Liog;

    move-result-object v0

    iput-object v0, p0, Ljsr;->a:Liog;

    .line 49
    :goto_0
    iput-object p3, p0, Ljsr;->d:Ljrc;

    .line 50
    iput-object p4, p0, Ljsr;->e:Ljava/util/Map;

    .line 51
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljsr;->a:Liog;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Ljsr;->a:Liog;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ljsr;->g:Z

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljsr;->f:Ljava/util/Set;

    .line 56
    iget-object v0, p0, Ljsr;->f:Ljava/util/Set;

    iget-object v1, p0, Ljsr;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v1, p0, Ljsr;->d:Ljrc;

    iget-object v0, p0, Ljsr;->b:Landroid/app/Activity;

    .line 2022
    instance-of v2, v0, Ljrz;

    const-string v3, "Given class does not have a peer"

    invoke-static {v2, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 2024
    check-cast v0, Ljrz;

    invoke-interface {v0}, Ljrz;->g()Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljrc;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 59
    iget-object v2, p0, Ljsr;->e:Ljava/util/Map;

    .line 60
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkog;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v2, p0, Ljsr;->f:Ljava/util/Set;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Ljsr;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 66
    iget-object v2, p0, Ljsr;->a:Liog;

    invoke-virtual {v2, v0}, Liog;->a(Lioz;)Lioz;

    goto :goto_1

    .line 68
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljsr;->g:Z

    .line 70
    :cond_3
    return-void
.end method
