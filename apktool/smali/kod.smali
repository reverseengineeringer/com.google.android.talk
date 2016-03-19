.class final Lkod;
.super Ljava/util/Random;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0xc765766f5fa5db6L


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkod;->a:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkod;->a:Z

    .line 121
    return-void
.end method


# virtual methods
.method public setSeed(J)V
    .locals 3

    .prologue
    .line 125
    iget-boolean v0, p0, Lkod;->a:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting the seed on the shared Random object is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 130
    return-void
.end method
