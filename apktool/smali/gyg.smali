.class public final Lgyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgxk;"
    }
.end annotation


# instance fields
.field public a:Lgyf;

.field public b:Lfic;


# direct methods
.method private constructor <init>(Lfic;Lgyf;)V
    .locals 0

    .prologue
    .line 2117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2118
    iput-object p1, p0, Lgyg;->b:Lfic;

    .line 2119
    iput-object p2, p0, Lgyg;->a:Lgyf;

    .line 2120
    return-void
.end method

.method public constructor <init>(Lfic;Lgyf;B)V
    .locals 0

    .prologue
    .line 3066
    invoke-direct {p0, p1, p2}, Lgyg;-><init>(Lfic;Lgyf;)V

    .line 3067
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2134
    iget-object v0, p0, Lgyg;->b:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 2135
    return-void
.end method

.method public a(Lgxn;)V
    .locals 2

    .prologue
    .line 2174
    iget-object v0, p0, Lgyg;->b:Lfic;

    iget-object v1, p0, Lgyg;->a:Lgyf;

    invoke-virtual {v1, p1}, Lgyf;->a(Lgxn;)Lfif;

    move-result-object v1

    invoke-interface {v0, v1}, Lfic;->a(Lfif;)V

    .line 2175
    return-void
.end method

.method public a(Lgxo;)V
    .locals 2

    .prologue
    .line 2180
    iget-object v0, p0, Lgyg;->b:Lfic;

    iget-object v1, p0, Lgyg;->a:Lgyf;

    invoke-virtual {v1, p1}, Lgyf;->a(Lgxo;)Lfih;

    move-result-object v1

    invoke-interface {v0, v1}, Lfic;->a(Lfih;)V

    .line 2181
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lgyg;->b:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    .line 2140
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lgyg;->b:Lfic;

    invoke-interface {v0}, Lfic;->e()Z

    move-result v0

    return v0
.end method

.method public d()Lfic;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lgyg;->b:Lfic;

    return-object v0
.end method
