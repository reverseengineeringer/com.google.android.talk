.class public final Lhit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lhkt;

.field final b:Lhbp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbp",
            "<",
            "Lkia;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/os/Handler;

.field d:J

.field e:Z

.field private final f:Lhbl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhbl;Lhkt;Lhbp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lhbl;",
            "Lhkt;",
            "Lhbp",
            "<",
            "Lkia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p2, p3, v0, p4}, Lhit;-><init>(Lhbl;Lhkt;Landroid/os/Handler;Lhbp;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lhbl;Lhkt;Landroid/os/Handler;Lhbp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhbl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lhit;->f:Lhbl;

    .line 80
    iput-object p2, p0, Lhit;->a:Lhkt;

    .line 81
    iput-object p3, p0, Lhit;->c:Landroid/os/Handler;

    .line 82
    iput-object p4, p0, Lhit;->b:Lhbp;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhit;->d:J

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhit;->e:Z

    .line 85
    return-void
.end method

.method public static a(Lhkt;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0}, Lhkt;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lhkt;->m()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lhkt;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 107
    invoke-static {p0}, Lhit;->b(Lhkt;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Lhkt;)Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lhkt;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lhkt;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lhkt;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Lkhz;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 241
    new-instance v2, Lkhz;

    invoke-direct {v2}, Lkhz;-><init>()V

    .line 246
    const-string v0, "conversation"

    iget-object v3, p0, Lhit;->a:Lhkt;

    invoke-virtual {v3}, Lhkt;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lkhz;->e:Ljava/lang/Integer;

    .line 250
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lkhz;->d:Ljava/lang/Boolean;

    .line 251
    return-object v2

    .line 248
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhit;->e:Z

    .line 96
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 124
    const-string v0, "Nothing to resolve."

    iget-object v1, p0, Lhit;->a:Lhkt;

    invoke-static {v1}, Lhit;->a(Lhkt;)Z

    move-result v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 126
    iget-boolean v0, p0, Lhit;->e:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "vclib"

    const-string v1, "Resolve flow canceled"

    .line 1081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-static {v0}, Lhit;->b(Lhkt;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    new-instance v1, Lkib;

    invoke-direct {v1}, Lkib;-><init>()V

    .line 1221
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkib;->b:Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkib;->a:Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhit;->a:Lhkt;

    .line 1224
    invoke-virtual {v0}, Lhkt;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1225
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkib;->c:Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkib;->d:Ljava/lang/String;

    .line 1229
    :cond_1
    invoke-direct {p0}, Lhit;->c()Lkhz;

    move-result-object v0

    .line 1230
    iput-object v1, v0, Lkhz;->c:Lkib;

    .line 132
    :goto_1
    const-string v1, "vclib"

    const-string v2, "Issuing resolve request (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lhit;->f:Lhbl;

    const-string v2, "hangouts/resolve"

    const-class v3, Lkia;

    new-instance v4, Lhiu;

    invoke-direct {v4, p0}, Lhiu;-><init>(Lhit;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    goto :goto_0

    .line 1200
    :cond_2
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2211
    new-instance v1, Lkhe;

    invoke-direct {v1}, Lkhe;-><init>()V

    .line 2212
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkhe;->a:Ljava/lang/String;

    .line 2213
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkhe;->b:Ljava/lang/String;

    .line 2214
    invoke-direct {p0}, Lhit;->c()Lkhz;

    move-result-object v0

    .line 2215
    iput-object v1, v0, Lkhz;->a:Lkhe;

    goto :goto_1

    .line 1202
    :cond_3
    iget-object v0, p0, Lhit;->a:Lhkt;

    invoke-virtual {v0}, Lhkt;->m()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2235
    invoke-direct {p0}, Lhit;->c()Lkhz;

    move-result-object v0

    .line 2236
    iget-object v1, p0, Lhit;->a:Lhkt;

    invoke-virtual {v1}, Lhkt;->m()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkhz;->f:Ljava/lang/String;

    goto :goto_1

    .line 1206
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CreateResolve request is not external key, named room or sharing url."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lhit;->b()V

    .line 91
    return-void
.end method
