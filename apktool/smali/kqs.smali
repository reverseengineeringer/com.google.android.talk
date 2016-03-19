.class final Lkqs;
.super Lkqx;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkqx;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkqm;


# direct methods
.method constructor <init>(Lkqm;Ljava/lang/Object;Ljava/util/List;Lkqv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lkqv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 921
    iput-object p1, p0, Lkqs;->a:Lkqm;

    .line 922
    invoke-direct {p0, p1, p2, p3, p4}, Lkqx;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/List;Lkqv;)V

    .line 923
    return-void
.end method
