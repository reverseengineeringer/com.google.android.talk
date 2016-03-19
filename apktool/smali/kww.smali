.class final Lkww;
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
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x8

    iput v0, p0, Lkww;->a:I

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
    .line 134
    iget v0, p0, Lkww;->a:I

    invoke-static {v0}, Lkwj;->c(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
