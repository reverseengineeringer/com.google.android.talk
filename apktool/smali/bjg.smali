.class final Lbjg;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbjf;


# direct methods
.method constructor <init>(Lbjf;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbjg;->a:Lbjf;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Leff;Ldvn;)V
    .locals 4

    .prologue
    .line 41
    instance-of v0, p3, Ldos;

    if-eqz v0, :cond_1

    .line 42
    check-cast p3, Ldos;

    .line 46
    iget-object v1, p3, Ldos;->j:Ljava/lang/String;

    .line 47
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v2

    .line 49
    iget-object v0, p0, Lbjg;->a:Lbjf;

    .line 1026
    iget-object v0, v0, Lbjf;->a:Ljava/util/Map;

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 50
    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lbjg;->a:Lbjf;

    .line 2026
    iget-object v3, v0, Lbjf;->a:Ljava/util/Map;

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    return-void
.end method
