.class public abstract Ldlj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldli;
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field private final a:Ldll;

.field final b:I

.field final c:Lhpz;

.field private final d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lhqg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Liog;II)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlj;->e:Z

    .line 31
    new-instance v0, Ldlk;

    invoke-direct {v0, p0}, Ldlk;-><init>(Ldlj;)V

    iput-object v0, p0, Ldlj;->h:Lhqg;

    .line 47
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Ldlj;->c:Lhpz;

    .line 48
    const-class v0, Ldll;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldll;

    iput-object v0, p0, Ldlj;->a:Ldll;

    .line 49
    iget-object v0, p0, Ldlj;->c:Lhpz;

    invoke-interface {v0, p3}, Lhpz;->c(I)Z

    move-result v0

    invoke-static {v0}, Laen;->a(Z)V

    .line 51
    iput p3, p0, Ldlj;->b:I

    .line 52
    iput p4, p0, Ldlj;->d:I

    .line 54
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 55
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    iget-object v0, p0, Ldlj;->c:Lhpz;

    iget v1, p0, Ldlj;->b:I

    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldlj;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldlj;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldlj;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Ldlj;->a:Ldll;

    iget v1, p0, Ldlj;->b:I

    iget-object v2, p0, Ldlj;->g:Ljava/lang/String;

    iget v3, p0, Ldlj;->d:I

    invoke-virtual {v0, v1, v2, p0, v3}, Ldll;->a(ILjava/lang/String;Ldli;I)V

    .line 91
    iput-boolean v4, p0, Ldlj;->f:Z

    .line 92
    invoke-virtual {p0, v4}, Ldlj;->a(Z)V

    .line 93
    iget-object v0, p0, Ldlj;->c:Lhpz;

    iget-object v1, p0, Ldlj;->h:Lhqg;

    invoke-interface {v0, v1}, Lhpz;->a(Lhqg;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldlj;->e:Z

    .line 83
    invoke-direct {p0}, Ldlj;->d()V

    .line 84
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlj;->e:Z

    .line 77
    invoke-virtual {p0}, Ldlj;->f()V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldlj;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Ldlj;->f()V

    .line 68
    iput-object p1, p0, Ldlj;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Ldlj;->c()V

    .line 71
    invoke-direct {p0}, Ldlj;->d()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public abstract c()V
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ldlj;->g:Ljava/lang/String;

    return-object v0
.end method

.method f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-boolean v0, p0, Ldlj;->f:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ldlj;->a:Ldll;

    invoke-virtual {v0, p0}, Ldll;->a(Ldli;)V

    .line 100
    iput-boolean v1, p0, Ldlj;->f:Z

    .line 101
    invoke-virtual {p0, v1}, Ldlj;->a(Z)V

    .line 102
    iget-object v0, p0, Ldlj;->c:Lhpz;

    iget-object v1, p0, Ldlj;->h:Lhqg;

    invoke-interface {v0, v1}, Lhpz;->b(Lhqg;)V

    .line 104
    :cond_0
    return-void
.end method
