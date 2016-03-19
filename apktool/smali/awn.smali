.class public final Lawn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lctd;


# direct methods
.method public constructor <init>(Lctd;)V
    .locals 0

    .prologue
    .line 6098
    iput-object p1, p0, Lawn;->a:Lctd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 1102
    iget-object v0, p0, Lawn;->a:Lctd;

    .line 2063
    iget v0, v0, Lctd;->d:I

    .line 1102
    if-ne v0, p1, :cond_0

    .line 1103
    iget-object v0, p0, Lawn;->a:Lctd;

    .line 3063
    iget-object v0, v0, Lctd;->b:Lhpz;

    .line 1103
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 1104
    const-string v1, "account_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    const-string v2, "effective_gaia_id"

    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    new-instance v2, Lcte;

    invoke-direct {v2, p0, v1, v0}, Lcte;-><init>(Lawn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Laal;->a(Ljava/lang/Runnable;)V

    .line 1112
    iget-object v0, p0, Lawn;->a:Lctd;

    .line 4063
    iget-object v0, v0, Lctd;->a:Lawm;

    .line 1112
    invoke-interface {v0, p0}, Lawm;->b(Lawn;)V

    .line 1114
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 4118
    iget-object v0, p0, Lawn;->a:Lctd;

    .line 5063
    iget v0, v0, Lctd;->d:I

    .line 4118
    if-ne v0, p1, :cond_0

    .line 4119
    new-instance v0, Lctf;

    invoke-direct {v0, p0}, Lctf;-><init>(Lawn;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 4125
    iget-object v0, p0, Lawn;->a:Lctd;

    .line 6063
    iget-object v0, v0, Lctd;->a:Lawm;

    .line 4125
    invoke-interface {v0, p0}, Lawm;->b(Lawn;)V

    .line 4127
    :cond_0
    return-void
.end method
