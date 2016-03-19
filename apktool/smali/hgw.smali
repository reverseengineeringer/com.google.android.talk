.class final Lhgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhb;


# instance fields
.field final synthetic a:Lhgv;


# direct methods
.method constructor <init>(Lhgv;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lhgw;->a:Lhgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lhgw;->a:Lhgv;

    .line 3036
    iget-object v0, v0, Lhgv;->a:Lhhb;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lhgw;->a:Lhgv;

    .line 4036
    iget-object v0, v0, Lhgv;->a:Lhhb;

    .line 237
    invoke-interface {v0, p1, p2}, Lhhb;->a(J)V

    .line 239
    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lhgw;->a:Lhgv;

    .line 1036
    iget-object v0, v0, Lhgv;->a:Lhhb;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lhgw;->a:Lhgv;

    .line 2036
    iget-object v0, v0, Lhgv;->a:Lhhb;

    .line 230
    invoke-interface {v0, p1, p2, p3}, Lhhb;->a(JLjava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method public a(J[B)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lhgw;->a:Lhgv;

    .line 5036
    iget-object v0, v0, Lhgv;->a:Lhhb;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lhgw;->a:Lhgv;

    .line 6036
    iget-object v0, v0, Lhgv;->a:Lhhb;

    .line 244
    invoke-interface {v0, p1, p2, p3}, Lhhb;->a(J[B)V

    .line 246
    :cond_0
    return-void
.end method
