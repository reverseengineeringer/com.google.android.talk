.class public final Lkqa;
.super Lkpp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkpp",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 1777
    invoke-direct {p0, p1}, Lkpp;-><init>(Ljava/lang/Object;)V

    .line 1778
    iput p2, p0, Lkqa;->b:I

    .line 1779
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1783
    iget v0, p0, Lkqa;->b:I

    return v0
.end method
