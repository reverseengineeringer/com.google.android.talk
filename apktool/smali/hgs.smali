.class final Lhgs;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgo;


# direct methods
.method constructor <init>(Lhgo;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lhgs;->a:Lhgo;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method

.method private a(Lkja;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p1, Lkja;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lhgs;->a:Lhgo;

    .line 1026
    iget-object v0, v0, Lhgo;->a:Ljava/util/Map;

    .line 266
    iget-object v1, p1, Lkja;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lhfu;->a(Lkja;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Llyi;)V
    .locals 0

    .prologue
    .line 259
    check-cast p1, Lkja;

    invoke-direct {p0, p1}, Lhgs;->a(Lkja;)V

    return-void
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 0

    .prologue
    .line 259
    check-cast p2, Lkja;

    .line 1274
    invoke-direct {p0, p2}, Lhgs;->a(Lkja;)V

    .line 259
    return-void
.end method
