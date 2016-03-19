.class final Lkrk;
.super Lkri;
.source "SourceFile"


# instance fields
.field final d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkri;-><init>(B)V

    .line 139
    iput p1, p0, Lkrk;->d:I

    .line 140
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lkrk;->d:I

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lkri;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lkri;"
        }
    .end annotation

    .prologue
    .line 150
    return-object p0
.end method

.method public a(ZZ)Lkri;
    .locals 0

    .prologue
    .line 175
    return-object p0
.end method

.method public b(ZZ)Lkri;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method
