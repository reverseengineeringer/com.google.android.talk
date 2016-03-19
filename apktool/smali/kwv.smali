.class public final Lkwv;
.super Lkxa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkxa",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x8

    iput v0, p0, Lkwv;->a:I

    invoke-direct {p0}, Lkxa;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lkwv;->a:I

    invoke-static {v0}, Lkwj;->a(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
