.class public final Lkun;
.super Lksc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lksc",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final c:Lkuh;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lkuh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0, p1, p2}, Lksc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 670
    iput-object p3, p0, Lkun;->c:Lkuh;

    .line 671
    return-void
.end method
