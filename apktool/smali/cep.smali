.class public final Lcep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcei;


# static fields
.field private static final b:Lhav;

.field private static final c:Lhav;

.field private static final d:Laix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laix",
            "<",
            "Lhav;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private e:Lauk;

.field private f:Lauk;

.field private g:Lauk;

.field private h:Lauk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lhav;

    invoke-direct {v0}, Lhav;-><init>()V

    .line 21
    invoke-virtual {v0}, Lhav;->a()Lhav;

    move-result-object v0

    invoke-virtual {v0}, Lhav;->c()Lhav;

    move-result-object v0

    invoke-virtual {v0}, Lhav;->d()Lhav;

    move-result-object v0

    sput-object v0, Lcep;->b:Lhav;

    .line 23
    new-instance v0, Lhav;

    sget-object v1, Lcep;->b:Lhav;

    invoke-direct {v0, v1}, Lhav;-><init>(Lhav;)V

    .line 24
    invoke-virtual {v0}, Lhav;->b()Lhav;

    move-result-object v0

    sput-object v0, Lcep;->c:Lhav;

    .line 26
    const-string v0, "com.google.android.apps.hangouts.glide.impl.FifeUrlOptions"

    sget-object v1, Lcep;->b:Lhav;

    .line 27
    invoke-static {v0, v1}, Laix;->a(Ljava/lang/String;Ljava/lang/Object;)Laix;

    move-result-object v0

    sput-object v0, Lcep;->d:Laix;

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcep;->a:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lauk;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcep;->h:Lauk;

    if-nez v0, :cond_0

    .line 42
    const/16 v0, 0x400

    .line 43
    invoke-virtual {p0, v0}, Lcep;->b(I)Lauk;

    move-result-object v0

    iget-object v1, p0, Lcep;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {v0, v1}, Lauk;->c(Landroid/content/Context;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    sget-object v1, Lais;->a:Lais;

    .line 45
    invoke-static {v1}, Lauk;->b(Lais;)Lauk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauk;->a(Laug;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    iput-object v0, p0, Lcep;->h:Lauk;

    .line 47
    :cond_0
    iget-object v0, p0, Lcep;->h:Lauk;

    return-object v0
.end method

.method public a(I)Lauk;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcep;->e:Lauk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcep;->e:Lauk;

    .line 1931
    iget v0, v0, Laug;->j:I

    .line 52
    if-eq v0, p1, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcep;->b(I)Lauk;

    move-result-object v0

    iget-object v1, p0, Lcep;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lauk;->e(Landroid/content/Context;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    iput-object v0, p0, Lcep;->e:Lauk;

    .line 55
    :cond_1
    iget-object v0, p0, Lcep;->e:Lauk;

    return-object v0
.end method

.method public b()Laix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laix",
            "<",
            "Lhav;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcep;->d:Laix;

    return-object v0
.end method

.method public b(I)Lauk;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcep;->f:Lauk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcep;->f:Lauk;

    .line 2931
    iget v0, v0, Laug;->j:I

    .line 60
    if-eq v0, p1, :cond_1

    .line 4105
    :cond_0
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    invoke-virtual {v0, p1, p1}, Lauk;->a(II)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    .line 61
    iput-object v0, p0, Lcep;->f:Lauk;

    .line 63
    :cond_1
    iget-object v0, p0, Lcep;->f:Lauk;

    return-object v0
.end method

.method public c(I)Lauk;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    iget-object v0, p0, Lcep;->g:Lauk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcep;->g:Lauk;

    .line 4931
    iget v0, v0, Laug;->j:I

    .line 68
    if-eq v0, p1, :cond_2

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lcep;->b(I)Lauk;

    move-result-object v0

    .line 5740
    :goto_0
    iget-boolean v1, v0, Laug;->v:Z

    if-eqz v1, :cond_1

    .line 5741
    invoke-virtual {v0}, Laug;->b()Laug;

    move-result-object v0

    goto :goto_0

    .line 5744
    :cond_1
    sget-object v1, Lask;->a:Laix;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laug;->a(Laix;Ljava/lang/Object;)Laug;

    .line 5745
    sget-object v1, Lasx;->a:Laix;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laug;->a(Laix;Ljava/lang/Object;)Laug;

    .line 5746
    invoke-virtual {v0}, Laug;->d()Laug;

    move-result-object v0

    .line 71
    check-cast v0, Lauk;

    .line 72
    invoke-virtual {v0}, Lauk;->c()Laug;

    move-result-object v0

    check-cast v0, Lauk;

    sget-object v1, Lcep;->d:Laix;

    sget-object v2, Lcep;->c:Lhav;

    .line 73
    invoke-virtual {v0, v1, v2}, Lauk;->a(Laix;Ljava/lang/Object;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    iput-object v0, p0, Lcep;->g:Lauk;

    .line 75
    :cond_2
    iget-object v0, p0, Lcep;->g:Lauk;

    return-object v0
.end method
