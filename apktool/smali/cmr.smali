.class final Lcmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lclm;
.implements Lclo;


# instance fields
.field final synthetic a:Lcmp;


# direct methods
.method constructor <init>(Lcmp;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcmr;->a:Lcmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcmr;->a:Lcmp;

    .line 5037
    invoke-virtual {v0}, Lcmp;->b()V

    .line 180
    return-void
.end method

.method public a(Lclq;Z)V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcmr;->a:Lcmp;

    .line 1037
    invoke-virtual {v0}, Lcmp;->b()V

    .line 168
    if-nez p2, :cond_0

    .line 169
    iget-object v0, p0, Lcmr;->a:Lcmp;

    .line 2037
    iget-object v0, v0, Lcmp;->c:Lcmu;

    .line 169
    new-instance v1, Lcmt;

    invoke-direct {v1}, Lcmt;-><init>()V

    iget-object v2, p0, Lcmr;->a:Lcmp;

    .line 3037
    iget-object v2, v2, Lcmp;->a:Lrf;

    .line 171
    iget-object v3, p0, Lcmr;->a:Lcmp;

    .line 4037
    iget-object v3, v3, Lcmp;->b:Lclp;

    .line 171
    invoke-interface {v3}, Lclp;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lclq;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcmt;->a()Lcmt;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcmt;->b()Lcms;

    move-result-object v1

    .line 169
    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    .line 175
    :cond_0
    return-void
.end method

.method public a(Lkhk;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public b(Lkhk;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public c(Lkhk;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcmr;->a:Lcmp;

    .line 6037
    const/16 v1, 0x8c4

    invoke-virtual {v0, v1}, Lcmp;->a(I)Z

    .line 185
    return-void
.end method
