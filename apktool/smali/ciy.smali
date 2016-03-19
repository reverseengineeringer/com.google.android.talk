.class public Lciy;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lciu;


# direct methods
.method protected constructor <init>(Lciu;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lciy;->a:Lciu;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lciy;->a:Lciu;

    iget-object v0, v0, Lciu;->a:Lhkx;

    invoke-virtual {v0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lciy;->a:Lciu;

    invoke-virtual {v0, p1}, Lciu;->b(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public c(Lhkx;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lciy;->a:Lciu;

    iget-object v0, v0, Lciu;->a:Lhkx;

    invoke-virtual {v0, p1}, Lhkx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lciy;->a:Lciu;

    iput-object p1, v0, Lciu;->a:Lhkx;

    .line 58
    iget-object v0, p0, Lciy;->a:Lciu;

    invoke-virtual {v0}, Lciu;->i()V

    .line 60
    :cond_0
    return-void
.end method
