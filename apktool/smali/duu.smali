.class public final Lduu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lhpz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lduu;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lduu;->b:Lhpz;

    .line 38
    return-void
.end method

.method private b(IJ)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lduu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "cachehash_client_hash"

    .line 56
    invoke-virtual {v0, v1, p2, p3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_0
.end method

.method private c(IJ)V
    .locals 2

    .prologue
    .line 93
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lduu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "cachehash_latest_rollup_version"

    .line 98
    invoke-virtual {v0, v1, p2, p3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 134
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lduu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "cachehash_update_ids"

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, v2}, Lhqc;->a(Ljava/lang/String;Ljava/util/Set;)Lhqc;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_0
.end method


# virtual methods
.method public a(I)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 41
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lduu;->b:Lhpz;

    invoke-interface {v2, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v2

    const-string v3, "cachehash_client_hash"

    invoke-interface {v2, v3, v0, v1}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 64
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lduu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "cachehash_client_hash"

    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 69
    add-long/2addr v0, p2

    .line 70
    iget-object v2, p0, Lduu;->b:Lhpz;

    invoke-interface {v2, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v2

    const-string v3, "cachehash_client_hash"

    .line 71
    invoke-virtual {v2, v3, v0, v1}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_0
.end method

.method public a(IJJ)V
    .locals 2

    .prologue
    .line 160
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lduu;->b(IJ)V

    .line 164
    invoke-direct {p0, p1, p4, p5}, Lduu;->c(IJ)V

    .line 165
    invoke-direct {p0, p1}, Lduu;->d(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget-object v1, p0, Lduu;->b:Lhpz;

    invoke-interface {v1, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    const-string v2, "cachehash_update_ids"

    invoke-interface {v1, v2}, Lhqb;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 82
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lduu;->b:Lhpz;

    invoke-interface {v2, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v2

    const-string v3, "cachehash_latest_rollup_version"

    invoke-interface {v2, v3, v0, v1}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lduu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "cachehash_update_ids"

    invoke-interface {v0, v1}, Lhqb;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 117
    if-nez v1, :cond_1

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lduu;->b:Lhpz;

    invoke-interface {v1, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v1

    const-string v2, "cachehash_update_ids"

    .line 125
    invoke-virtual {v1, v2, v0}, Lhqc;->a(Ljava/lang/String;Ljava/util/Set;)Lhqc;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public c(I)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 147
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lduu;->b(IJ)V

    .line 151
    invoke-direct {p0, p1, v2, v3}, Lduu;->c(IJ)V

    .line 152
    invoke-direct {p0, p1}, Lduu;->d(I)V

    goto :goto_0
.end method
