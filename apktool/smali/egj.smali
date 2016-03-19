.class public final Legj;
.super Legf;
.source "SourceFile"


# static fields
.field private static final d:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final u:I

.field private final v:I

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legj;->d:Z

    return-void
.end method

.method public constructor <init>(Ljzl;IJLkcc;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Legf;-><init>(Ljzl;IJ)V

    .line 35
    iget-object v0, p5, Lkcc;->a:Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 35
    iput v0, p0, Legj;->u:I

    .line 36
    iget-object v0, p5, Lkcc;->c:Ljava/lang/Integer;

    .line 2043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 36
    iput v0, p0, Legj;->v:I

    .line 37
    iget-object v0, p5, Lkcc;->b:[Lkcr;

    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Laal;->a([Lkcr;[Ljxy;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Legj;->w:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method protected b(Lbfz;Ldyy;)V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Legj;->a()Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-boolean v1, Legj;->d:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "processMembershipChange conversationId: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbfz;->a()V

    .line 77
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p0, p2, v1}, Lbft;->a(Lbfz;Legj;Ldyy;Z)V

    .line 79
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p1}, Lbfz;->c()V

    .line 84
    const-string v1, "Babel"

    const-string v2, "updating conversation (name/avatars) because of a memebership change."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {p1, v0}, Lbft;->b(Lbfz;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lbft;->d(Lbfz;)V

    .line 87
    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 88
    invoke-static {p1, v0}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    .line 89
    return-void

    .line 73
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Legj;->u:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Legj;->v:I

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Legj;->w:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    iget-object v1, p0, Legj;->b:Lczb;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Legj;->w:Ljava/util/List;

    return-object v0
.end method
