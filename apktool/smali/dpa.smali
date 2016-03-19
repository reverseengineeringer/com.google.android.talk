.class public Ldpa;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final j:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldtt;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2703
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Ldpa;->j:[I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldtt;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 2720
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2721
    iput-object p1, p0, Ldpa;->a:Ljava/util/List;

    .line 2722
    iput-boolean p3, p0, Ldpa;->d:Z

    .line 2723
    iput-object p2, p0, Ldpa;->b:Ljava/lang/String;

    .line 2724
    iput-boolean p4, p0, Ldpa;->c:Z

    .line 2725
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 2804
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2805
    iget-object v0, p0, Ldpa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 2806
    if-eqz v0, :cond_0

    .line 2807
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2810
    :cond_1
    iput-object v1, p0, Ldpa;->a:Ljava/util/List;

    .line 2811
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3205
    sget-boolean v0, Ldoo;->e:Z

    .line 2763
    if-eqz v0, :cond_0

    .line 2764
    iget-object v0, p0, Ldpa;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GetEntityByIdRequest: lookupSpecs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2767
    :cond_0
    new-instance v7, Lkai;

    invoke-direct {v7}, Lkai;-><init>()V

    .line 2768
    const/4 v0, 0x0

    iget-object v5, p0, Ldpa;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v7, Lkai;->requestHeader:Lkdo;

    .line 2771
    sget-object v0, Ldpa;->j:[I

    iput-object v0, v7, Lkai;->b:[I

    .line 2774
    iget-object v0, p0, Ldpa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 2775
    if-eqz v0, :cond_7

    .line 2776
    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v2, v0

    .line 2778
    goto :goto_0

    .line 2780
    :cond_1
    if-lez v2, :cond_2

    .line 2781
    new-array v0, v2, [Ljzi;

    iput-object v0, v7, Lkai;->a:[Ljzi;

    .line 2783
    :cond_2
    iget-object v0, p0, Ldpa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    move v0, v1

    .line 2786
    :goto_2
    iget-object v2, p0, Ldpa;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v6

    move v4, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 2787
    if-nez v0, :cond_4

    .line 2788
    const-string v0, "Babel_RequestWriter"

    const-string v3, "GetEntityByIdRequest: null spec!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v1

    .line 2789
    goto :goto_3

    :cond_3
    move v0, v6

    .line 2783
    goto :goto_2

    .line 2791
    :cond_4
    iget-object v8, v7, Lkai;->a:[Ljzi;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ldtt;->d()Ljzi;

    move-result-object v0

    aput-object v0, v8, v2

    move v2, v3

    .line 2793
    goto :goto_3

    .line 2797
    :cond_5
    if-eqz v4, :cond_6

    .line 2798
    invoke-direct {p0}, Ldpa;->o()V

    .line 2800
    :cond_6
    return-object v7

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2743
    iget-boolean v0, p0, Ldpa;->c:Z

    if-eqz v0, :cond_0

    .line 2745
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Leay;->b(I)Leay;

    move-result-object v1

    .line 2746
    invoke-virtual {v1}, Leay;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2747
    const-string v2, "Babel_RequestWriter"

    const-string v3, "RefreshParticipantsOperation failed: "

    .line 2748
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 2747
    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2749
    invoke-virtual {v1, v5}, Leay;->a(I)V

    .line 2753
    :cond_0
    iget-boolean v0, p0, Ldpa;->d:Z

    if-nez v0, :cond_2

    .line 2754
    iget-object v0, p0, Ldpa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 2755
    invoke-static {p1}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lehd;->a(Ldtt;)V

    goto :goto_1

    .line 2748
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2758
    :cond_2
    return-void
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 2729
    iget-boolean v0, p0, Ldpa;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ldpf;->a(Lcwk;Ldvn;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 2734
    iget-boolean v0, p0, Ldpa;->d:Z

    if-eqz v0, :cond_0

    .line 2735
    const-wide/16 v0, 0x0

    .line 2738
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Ldpf;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2815
    const-string v0, "contacts/getentitybyid"

    return-object v0
.end method
