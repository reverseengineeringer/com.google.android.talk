.class public final Lcjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjq;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcjr;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljug;Landroid/os/Bundle;)Ljug;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 27
    const-string v0, "is_pstn_only"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->b:Ljava/lang/Boolean;

    .line 1202
    sget-object v0, Ldvp;->j:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->c:Ljava/lang/Boolean;

    .line 1221
    sget-object v0, Ldvp;->l:Ldml;

    invoke-virtual {v0, v3}, Ldml;->c(I)J

    move-result-wide v4

    .line 31
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljug;->r:Ljava/lang/Integer;

    .line 1234
    sget-object v0, Ldvp;->m:Ldml;

    invoke-virtual {v0, v3}, Ldml;->c(I)J

    move-result-wide v4

    .line 33
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljug;->w:Ljava/lang/Integer;

    .line 1246
    sget-object v0, Ldvp;->n:Ldml;

    invoke-virtual {v0, v3}, Ldml;->c(I)J

    move-result-wide v4

    .line 35
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljug;->x:Ljava/lang/Integer;

    .line 36
    iget-object v0, p0, Lcjr;->a:Landroid/content/Context;

    const-string v4, "babel_hangout_allow_singlecast"

    .line 37
    invoke-static {v0, v4, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 1289
    sget-object v0, Ldvp;->s:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 42
    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->d:Ljava/lang/Boolean;

    .line 1298
    sget-object v0, Ldvp;->t:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->s:Ljava/lang/Boolean;

    .line 1307
    sget-object v0, Ldvp;->u:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->f:Ljava/lang/Boolean;

    .line 2280
    sget-object v0, Ldvp;->q:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ldvp;->r:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    .line 46
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->g:Ljava/lang/Boolean;

    .line 2424
    sget-object v0, Ldvp;->D:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->m:Ljava/lang/Boolean;

    .line 49
    const-string v0, "enable_one_rpc"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->q:Ljava/lang/Boolean;

    .line 2525
    sget-object v0, Ldvp;->O:Ldml;

    invoke-virtual {v0, v3}, Ldml;->d(I)F

    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p1, Ljug;->t:Ljava/lang/Float;

    .line 3483
    sget-object v0, Ldvp;->J:Ldml;

    invoke-virtual {v0, v3}, Ldml;->c(I)J

    move-result-wide v4

    .line 52
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljug;->u:Ljava/lang/Integer;

    .line 4464
    sget-object v0, Ldvp;->H:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 4474
    sget-object v0, Ldvp;->I:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 54
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->v:Ljava/lang/Boolean;

    .line 4653
    sget-object v0, Ldvp;->X:Ldml;

    invoke-virtual {v0, v3}, Ldml;->b(I)Z

    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->z:Ljava/lang/Boolean;

    .line 57
    return-object p1

    :cond_3
    move v0, v2

    .line 42
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 2280
    goto :goto_1
.end method
