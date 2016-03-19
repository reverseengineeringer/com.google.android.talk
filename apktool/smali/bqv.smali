.class public final Lbqv;
.super Lhtu;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 1043
    const-string v0, "MarkEventObservedTask"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    invoke-direct {p0, p1, v0}, Lhtu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lbqv;->a:Ljava/lang/String;

    .line 36
    iput p3, p0, Lbqv;->b:I

    .line 37
    iput-object p1, p0, Lbqv;->c:Landroid/content/Context;

    .line 38
    iput-boolean p4, p0, Lbqv;->d:Z

    .line 39
    return-void

    .line 1043
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Lhus;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lbfz;

    iget-object v1, p0, Lbqv;->c:Landroid/content/Context;

    iget v2, p0, Lbqv;->b:I

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 66
    iget-object v1, p0, Lbqv;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lbqv;->d:Z

    invoke-virtual {v0, v1, v2}, Lbfz;->a(Ljava/lang/String;Z)Ldne;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ldne;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget v0, p0, Lbqv;->b:I

    .line 1054
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 1055
    invoke-static {v0}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v0

    .line 1056
    new-instance v2, Ldya;

    invoke-direct {v2, v1}, Ldya;-><init>(Ljava/util/List;)V

    .line 1057
    new-array v1, v4, [Leff;

    aput-object v2, v1, v3

    invoke-static {v1}, Laen;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1058
    invoke-virtual {v0, v1, v3}, Ldvm;->a(Ljava/util/Collection;I)V

    .line 73
    new-instance v0, Lhus;

    invoke-direct {v0, v4}, Lhus;-><init>(Z)V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhus;

    invoke-direct {v0, v3}, Lhus;-><init>(Z)V

    goto :goto_0
.end method
