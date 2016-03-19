.class final Lcgd;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgc;


# direct methods
.method constructor <init>(Lcgc;)V
    .locals 1

    .prologue
    .line 31
    iput-object p1, p0, Lcgd;->a:Lcgc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcgd;->a:Lcgc;

    .line 1026
    iput-object p1, v0, Lcgc;->a:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcgd;->a:Lcgc;

    .line 2026
    invoke-virtual {v0}, Lcgc;->b()V

    .line 38
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcgd;->a:Lcgc;

    .line 3026
    invoke-virtual {v0}, Lcgc;->c()V

    .line 43
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcgd;->a:Lcgc;

    .line 4026
    invoke-virtual {v0}, Lcgc;->c()V

    .line 48
    return-void
.end method
