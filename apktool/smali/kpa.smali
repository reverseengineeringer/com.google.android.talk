.class public final Lkpa;
.super Lkoz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkoz",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .prologue
    .line 4393
    iput-object p1, p0, Lkpa;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lkoz;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4397
    invoke-virtual {p0}, Lkpa;->c()Lkqc;

    move-result-object v0

    invoke-virtual {v0}, Lkqc;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
