.class public final Legg;
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

.field private final x:J

.field private final y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legg;->d:Z

    return-void
.end method

.method public constructor <init>(Ljzl;IJLkaw;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Legf;-><init>(Ljzl;IJ)V

    .line 45
    iget-object v0, p5, Lkaw;->a:Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1074
    add-int/lit8 v0, v0, -0x1

    .line 46
    iput v0, p0, Legg;->u:I

    .line 48
    iget-object v0, p5, Lkaw;->g:Ljava/lang/Integer;

    .line 2043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 48
    iput v0, p0, Legg;->v:I

    .line 49
    iget-object v0, p5, Lkaw;->b:[Lkcr;

    .line 50
    invoke-static {v0, v4}, Laal;->a([Lkcr;[Ljxy;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Legg;->w:Ljava/util/List;

    .line 51
    iget-object v0, p5, Lkaw;->c:Ljava/lang/Long;

    .line 2051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 51
    iput-wide v0, p0, Legg;->x:J

    .line 52
    iget-object v0, p5, Lkaw;->d:Ljxw;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lkaw;->d:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p5, Lkaw;->d:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iput-object v0, p0, Legg;->y:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object v4, p0, Legg;->y:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected b(Lbfz;Ldyy;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p1}, Lbfz;->a()V

    .line 103
    :try_start_0
    invoke-static {p1, p0, p2}, Lbft;->a(Lbfz;Legg;Ldyy;)Z

    move-result v0

    .line 105
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p1}, Lbfz;->c()V

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Legg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 113
    :cond_0
    new-instance v0, Ledo;

    invoke-direct {v0, p0}, Ledo;-><init>(Legg;)V

    invoke-virtual {v0, p1}, Ledo;->b(Lbfz;)V

    .line 114
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Legg;->u:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Legg;->v:I

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 3
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
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Legg;->w:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    iget v1, p0, Legg;->u:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Legg;->b:Lczb;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
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
    .line 83
    iget-object v0, p0, Legg;->w:Ljava/util/List;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Legg;->x:J

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Legg;->y:Ljava/lang/String;

    return-object v0
.end method
