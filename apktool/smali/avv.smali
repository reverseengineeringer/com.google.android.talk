.class final Lavv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavz",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Ljava/util/List;

    .line 1087
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 84
    return-void
.end method
