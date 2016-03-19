.class public final Lkox;
.super Lkoz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkoz",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .prologue
    .line 4461
    iput-object p1, p0, Lkox;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lkoz;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5465
    invoke-virtual {p0}, Lkox;->c()Lkqc;

    move-result-object v0

    .line 4461
    return-object v0
.end method
