.class public final Land;
.super Lavn;
.source "SourceFile"

# interfaces
.implements Lane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavn",
        "<",
        "Laiw;",
        "Lalr",
        "<*>;>;",
        "Lane;"
    }
.end annotation


# instance fields
.field private a:Lanf;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lavn;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lalr;

    .line 1038
    invoke-interface {p1}, Lalr;->d()I

    move-result v0

    .line 12
    return v0
.end method

.method public synthetic a(Laiw;)Lalr;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lavn;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalr;

    return-object v0
.end method

.method public synthetic a(Laiw;Lalr;)Lalr;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lavn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalr;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Land;->a()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Land;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Land;->b(I)V

    goto :goto_0
.end method

.method public a(Lanf;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Land;->a:Lanf;

    .line 27
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 12
    check-cast p2, Lalr;

    .line 1031
    iget-object v0, p0, Land;->a:Lanf;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Land;->a:Lanf;

    invoke-interface {v0, p2}, Lanf;->a(Lalr;)V

    .line 12
    :cond_0
    return-void
.end method
